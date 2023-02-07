import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/receive_address/receive_addresses_history_arguments.dart';
import 'package:aqua/data/provider/receive_amount/receive_amount_arguments.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_arguments.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_data.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final receiveQrCodeProvider = Provider.family
    .autoDispose<ReceiveQrCodeProvider, Object?>(
        (ref, arguments) => ReceiveQrCodeProvider(ref, arguments));

class ReceiveQrCodeProvider {
  ReceiveQrCodeProvider(this.ref, this.arguments) {
    ref.onDispose(() {
      _reloadSubject.close();
      _clipboardCopySubject.close();
      _navigateToAddNoteSubject.close();
      _navigateToAmountSubject.close();
      _navigateToHistorySubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? arguments;

  Future<ReceiveQrCodeArguments> argumentsFuture() async {
    try {
      return arguments as ReceiveQrCodeArguments;
    } catch (_) {
      throw ReceiveQrCodeProviderInvalidArgumentsException();
    }
  }

  final PublishSubject<void> _reloadSubject = PublishSubject();
  void reload() {
    _reloadSubject.add(null);
  }

  final PublishSubject<Object?> _handleAmountResultSubject = PublishSubject();
  void handleAmountResult(Object? result) {
    _handleAmountResultSubject.add(result);
  }

  late final Stream<AsyncValue<ReceiveQrCodeData>> _addressLineStream =
      _reloadSubject
          .startWith(null)
          .switchMap((_) => Stream.value(null)
              .asyncMap((_) => argumentsFuture().then((data) => data.asset))
              .switchMap((asset) => Stream.value(asset)
                      .asyncMap((asset) => asset.isBTC
                          ? ref.read(bitcoinProvider).getReceiveAddress()
                          : ref.read(liquidProvider).getReceiveAddress())
                      .map((gdkAddress) => gdkAddress?.address)
                      .asyncMap((address) {
                    if (address == null) {
                      throw ReceiveQrCodeProviderInvalidAddressException();
                    }
                    return address;
                  }).switchMap((address) => _handleAmountResultSubject
                              .switchMap((object) => object is String
                                  ? Stream.value(object)
                                  : const Stream<String?>.empty())
                              .startWith(null)
                              .map((amount) {
                            if (amount != null && amount.isNotEmpty) {
                              final network = asset.isBTC
                                  ? 'bitcoin://'
                                  : 'liquidnetwork://';
                              final amountParameter = '&amount=$amount';
                              final qrImageData =
                                  '$network$address?assetid=${asset.assetId}$amountParameter';
                              return ReceiveQrCodeData(
                                  address: address, qrImageData: qrImageData);
                            } else {
                              final qrImageData = address;
                              return ReceiveQrCodeData(
                                  address: address, qrImageData: qrImageData);
                            }
                          })))
              .map((data) => AsyncValue.data(data))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  final PublishSubject<void> _clipboardCopySubject = PublishSubject();
  void copyAddressToClipboard() {
    _clipboardCopySubject.add(null);
  }

  late final Stream<AsyncValue<void>> _clipboardCopyProcessingStream =
      _clipboardCopySubject
          .switchMap((_) => _addressLineStream
              .switchMap<String>((value) => value.maybeWhen(
                    data: (qrCodeData) => Stream.value(qrCodeData.address),
                    orElse: () => const Stream.empty(),
                  ))
              .first
              .then(
                  (address) => Clipboard.setData(ClipboardData(text: address)))
              .asStream()
              .map((value) => AsyncValue.data(value))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);
  late final Stream<double> _addressCopiedSnackbarOpacityStream =
      _clipboardCopyProcessingStream
          .switchMap((value) => value.maybeWhen(
                data: (_) => Stream.value(1.0).concatWith([
                  Stream.value(0.0).delay(const Duration(milliseconds: 2000)),
                ]),
                orElse: () => Stream.value(0.0),
              ))
          .startWith(0.0);
  late final Stream<double> _addressCopyFailedSnackbarOpacityStream =
      _clipboardCopyProcessingStream
          .switchMap((value) => value.maybeWhen(
                error: (_, __) => Stream.value(1.0).concatWith([
                  Stream.value(0.0).delay(const Duration(milliseconds: 2000)),
                ]),
                orElse: () => Stream.value(0.0),
              ))
          .startWith(0.0);

  final PublishSubject<void> _navigateToAddNoteSubject = PublishSubject();
  void navigateToAddNote() {
    _navigateToAddNoteSubject.add(null);
  }

  Stream<Object?> _navigateToAddNoteStream() =>
      _navigateToAddNoteSubject.switchMap((_) =>
          Stream<Object?>.value(Object()).concatWith([Stream.value(null)]));

  final PublishSubject<void> _navigateToAmountSubject = PublishSubject();
  void navigateToAmount() {
    _navigateToAmountSubject.add(null);
  }

  Stream<ReceiveAmountArguments?> _navigateToAmountStream() =>
      _navigateToAmountSubject.switchMap((_) => Stream.value(_)
          .asyncMap((_) => argumentsFuture())
          .map<ReceiveAmountArguments?>(
              (data) => ReceiveAmountArguments(asset: data.asset))
          .concatWith([Stream.value(null)]).onErrorResumeNext(
              const Stream.empty()));

  final PublishSubject<void> _navigateToHistorySubject = PublishSubject();
  void navigateToHistory() {
    _navigateToHistorySubject.add(null);
  }

  Stream<ReceiveAddressesHistoryArguments?> _navigateToHistoryStream() =>
      _navigateToHistorySubject.switchMap((_) => Stream.value(_)
          .asyncMap((_) => argumentsFuture())
          .map<ReceiveAddressesHistoryArguments?>(
              (data) => ReceiveAddressesHistoryArguments(asset: data.asset))
          .concatWith([Stream.value(null)]).onErrorResumeNext(
              const Stream.empty()));
}

final _receiveQrCodeAddressStreamProvider = StreamProvider.family
    .autoDispose<AsyncValue<ReceiveQrCodeData>, Object?>(
        (ref, arguments) async* {
  yield* ref.watch(receiveQrCodeProvider(arguments))._addressLineStream;
});

final receiveQrCodeAddressProvider = Provider.family
    .autoDispose<AsyncValue<ReceiveQrCodeData>?, Object?>((ref, arguments) {
  return ref.watch(_receiveQrCodeAddressStreamProvider(arguments)).data?.value;
});

final _receiveQrCodeAddressCopiedSnackbarOpacityStreamProvider =
    StreamProvider.family.autoDispose<double, Object?>((ref, arguments) async* {
  yield* ref
      .watch(receiveQrCodeProvider(arguments))
      ._addressCopiedSnackbarOpacityStream;
});

final receiveQrCodeAddressCopiedSnackbarOpacityProvider =
    Provider.family.autoDispose<double, Object?>((ref, arguments) {
  return ref
          .watch(_receiveQrCodeAddressCopiedSnackbarOpacityStreamProvider(
              arguments))
          .data
          ?.value ??
      0.0;
});

final _receiveQrCodeAddressCopyFailedSnackbarOpacityStreamProvider =
    StreamProvider.family.autoDispose<double, Object?>((ref, arguments) async* {
  yield* ref
      .watch(receiveQrCodeProvider(arguments))
      ._addressCopyFailedSnackbarOpacityStream;
});

final receiveQrCodeAddressCopyFailedSnackbarOpacityProvider =
    Provider.family.autoDispose<double, Object?>((ref, arguments) {
  return ref
          .watch(_receiveQrCodeAddressCopyFailedSnackbarOpacityStreamProvider(
              arguments))
          .data
          ?.value ??
      0.0;
});

final _receiveQrCodeAddressAssetFutureProvider = FutureProvider.family
    .autoDispose<ReceiveQrCodeArguments, Object?>((ref, arguments) async {
  return await ref.watch(receiveQrCodeProvider(arguments)).argumentsFuture();
});

final receiveQrCodeAddressAssetProvider = Provider.family
    .autoDispose<ReceiveQrCodeArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_receiveQrCodeAddressAssetFutureProvider(arguments))
      .data
      ?.value;
});

final _receiveQrCodeNavigateToAddNoteStreamProvider = StreamProvider.family
    .autoDispose<Object?, Object?>((ref, arguments) async* {
  yield* ref.watch(receiveQrCodeProvider(arguments))._navigateToAddNoteStream();
});

final receiveQrCodeNavigateToAddNoteProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_receiveQrCodeNavigateToAddNoteStreamProvider(arguments))
      .data
      ?.value;
});

final _receiveQrCodeNavigateToAmountStreamProvider = StreamProvider.family
    .autoDispose<ReceiveAmountArguments?, Object?>((ref, arguments) async* {
  yield* ref.watch(receiveQrCodeProvider(arguments))._navigateToAmountStream();
});

final receiveQrCodeNavigateToAmountProvider = Provider.family
    .autoDispose<ReceiveAmountArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_receiveQrCodeNavigateToAmountStreamProvider(arguments))
      .data
      ?.value;
});

final _receiveQrCodeNavigateToHistoryStreamProvider = StreamProvider.family
    .autoDispose<ReceiveAddressesHistoryArguments?, Object?>(
        (ref, arguments) async* {
  yield* ref.watch(receiveQrCodeProvider(arguments))._navigateToHistoryStream();
});

final receiveQrCodeNavigateToHistoryProvider = Provider.family
    .autoDispose<ReceiveAddressesHistoryArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_receiveQrCodeNavigateToHistoryStreamProvider(arguments))
      .data
      ?.value;
});

class ReceiveQrCodeProviderInvalidAddressException implements Exception {}

class ReceiveQrCodeProviderInvalidArgumentsException implements Exception {}

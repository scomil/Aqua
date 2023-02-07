import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/qr_scanner/qr_scanner_pop_result.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_assets/send_assets_arguments.dart';
import 'package:aqua/data/provider/send_prompt/send_prompt_arguments.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final sendPromptProvider = Provider.family
    .autoDispose<SendPromptProvider, Object?>(
        (ref, arguments) => SendPromptProvider(ref, arguments));

class SendPromptProvider {
  SendPromptProvider(this.ref, this._arguments) {
    ref.onDispose(() {
      _reloadSubject.close();
      _pasteTextSubject.close();
      _updateTextSubject.close();
      _navigateToQrScannerSubject.close();
      _handleQrScannerResultSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? _arguments;
  final PublishSubject<void> _reloadSubject = PublishSubject();
  void reload() {
    _reloadSubject.add(null);
  }

  late final Stream<AsyncValue<String>> _clipboardTextStream = _reloadSubject
      .startWith(null)
      .switchMap((_) => Stream.value(_)
          .asyncMap((_) => Clipboard.getData(Clipboard.kTextPlain))
          .map((data) => data?.text)
          .asyncMap((address) async {
            if (address == null) {
              throw SendPromptInvalidClipboardDataException();
            }
            return address;
          })
          .asyncMap((address) => _validateBitcoinAddress(address)
              .onError((_, __) => _validateLiquidAddress(address))
              .then((_) => address))
          .map((address) => AsyncValue.data(address))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stacktrace) => AsyncValue.error(error, stacktrace)))
      .shareReplay(maxSize: 1);

  late final Stream<bool> _addressInputErrorStream = _updateTextSubject
      .switchMap((address) => address.isEmpty
          ? Stream.value(false)
          : Stream.value(address)
              .asyncMap((address) => _validateBitcoinAddress(address)
                  .onError((_, __) => _validateLiquidAddress(address))
                  .then((_) => address))
              .map((_) => false)
              .onErrorReturnWith((error, stacktrace) => true))
      .shareReplay(maxSize: 1);

  final PublishSubject<String> _pasteTextSubject = PublishSubject();
  void paste(String text) {
    _pasteTextSubject.add(text);
  }

  final PublishSubject<String> _updateTextSubject = PublishSubject();
  void update(String text) {
    _updateTextSubject.add(text);
  }

  Future<void> _validateBitcoinAddress(String address) => Future.value(address)
          .then((address) => ref.read(bitcoinProvider).isValidAddress(address))
          .then((result) {
        if (!result) {
          throw SendPromptInvalidBitcoinAddressException();
        }
        return;
      });

  Future<void> _validateLiquidAddress(String address) => Future.value(address)
          .then((address) => ref.read(liquidProvider).isValidAddress(address))
          .then((result) {
        if (!result) {
          throw SendPromptInvalidLiquidAddressException();
        }
        return;
      });

  final PublishSubject<void> _navigateToQrScannerSubject = PublishSubject();
  void navigateToQrScanner() {
    _navigateToQrScannerSubject.add(null);
  }

  Stream<Object> _unfocusScopeStream() =>
      _navigateToQrScannerSubject.map((event) => Object());

  final PublishSubject<Object?> _handleQrScannerResultSubject =
      PublishSubject();
  void handleQrScannerResult(Object? result) {
    _handleQrScannerResultSubject.add(result);
  }

  Stream<Object> _navigateToQrScannerStream() => Rx.merge([
        _navigateToQrScannerSubject.map((_) => Object()),
        _handleQrScannerResultSubject.switchMap((result) =>
            result is QrScannerPopRequiresRestartResult
                ? Stream.value(Object())
                : const Stream.empty()),
      ]);

  Stream<SendAmountArguments?> _navigateToSendAmountStream() => Rx.merge([
        // If pasted text is bitcoin address then we certainly have asset
        // then redirect to send amount page
        _updateTextSubject.switchMap((address) => Stream.value(address)
            .asyncMap((address) => _validateBitcoinAddress(address))
            .asyncMap((_) => ref.read(aquaProvider).walletAssets().first)
            .map((assets) => assets.firstWhere((asset) => asset.isBTC))
            .map<SendAmountArguments?>((asset) => SendAmountArguments(
                  address: address,
                  asset: asset,
                ))
            .concatWith([Stream.value(null)]).onErrorResume(
                (_, __) => const Stream<SendAmountArguments?>.empty())),
        // If arguments contains asset and pasted text is liquid address
        // then redirect to send amount page because asset provided by arguments
        _updateTextSubject.switchMap((address) => Stream.value(address)
            .asyncMap((_) {
              try {
                final arguments = _arguments as SendPromptArguments;
                return arguments.asset;
              } catch (_) {
                throw SendPromptIllegalArgumentsException();
              }
            })
            .asyncMap<SendAmountArguments?>((asset) =>
                _validateLiquidAddress(address).then((_) => SendAmountArguments(
                      address: address,
                      asset: asset,
                    )))
            .concatWith([Stream.value(null)])
            .onErrorResume(
                (_, __) => const Stream<SendAmountArguments?>.empty())),
        // If scanned qr code or arguments contains asset
        // then redirect to send amount page because asset is provided
        _handleQrScannerResultSubject.switchMap((result) =>
            result is QrScannerPopSuccessResult
                ? Stream.value(result)
                    .asyncMap((result) {
                      final asset = result.asset;
                      if (asset == null) {
                        throw SendPromptIllegalArgumentsException();
                      }
                      return asset;
                    })
                    .onErrorResume((_, __) => Stream.value(_).asyncMap((_) {
                          try {
                            final arguments = _arguments as SendPromptArguments;
                            return arguments.asset;
                          } catch (_) {
                            throw SendPromptIllegalArgumentsException();
                          }
                        }))
                    .map<SendAmountArguments?>((asset) {
                      final address = result.address;
                      final amount = result.amount;
                      final label = result.label;
                      final message = result.message;

                      return SendAmountArguments(
                        address: address,
                        asset: asset,
                        amount: amount,
                        label: label,
                        message: message,
                      );
                    })
                    .concatWith([Stream.value(null)])
                    .onErrorResume(
                        (_, __) => const Stream<SendAmountArguments?>.empty())
                : const Stream<SendAmountArguments?>.empty()),
      ]);

  Stream<SendAssetsArguments?> _navigateToSendAssetsStream() =>
      Stream.value(_arguments).switchMap((arguments) => arguments == null
          ? Rx.merge([
              _updateTextSubject.switchMap((address) => Stream.value(address)
                  .asyncMap((address) => _validateLiquidAddress(address))
                  .map<SendAssetsArguments?>((_) => SendAssetsArguments(
                        address: address,
                        asset: null,
                        amount: null,
                        label: null,
                        message: null,
                      ))
                  .concatWith([Stream.value(null)]).onErrorResume(
                      (_, __) => const Stream<SendAssetsArguments?>.empty())),
              _handleQrScannerResultSubject.switchMap((result) => result
                          is QrScannerPopSuccessResult &&
                      result.asset == null
                  ? Stream.value(result).map<SendAssetsArguments?>((result) {
                      final address = result.address;
                      final asset = result.asset;
                      final amount = result.amount;
                      final label = result.label;
                      final message = result.message;

                      return SendAssetsArguments(
                        address: address,
                        asset: asset,
                        amount: amount,
                        label: label,
                        message: message,
                      );
                    }).concatWith([Stream.value(null)])
                  : const Stream<SendAssetsArguments?>.empty()),
            ])
          : const Stream<SendAssetsArguments?>.empty());
}

final _clipboardTextStreamProvider = StreamProvider.family
    .autoDispose<AsyncValue<String>, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._clipboardTextStream;
});

final clipboardTextProvider =
    Provider.family.autoDispose<AsyncValue<String>?, Object?>((ref, arguments) {
  return ref.watch(_clipboardTextStreamProvider(arguments)).data?.value;
});

final _addressInputErrorStreamProvider =
    StreamProvider.family.autoDispose<bool, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._addressInputErrorStream;
});

final addressInputErrorProvider =
    Provider.family.autoDispose<bool, Object?>((ref, arguments) {
  return ref.watch(_addressInputErrorStreamProvider(arguments)).data?.value ??
      false;
});

final _pasteTextStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._pasteTextSubject;
});

final pasteTextProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref.watch(_pasteTextStreamProvider(arguments)).data?.value;
});

final _sendPromptNavigateToSendAmountStreamProvider = StreamProvider.family
    .autoDispose<SendAmountArguments?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._navigateToSendAmountStream();
});

final sendPromptNavigateToSendAmountProvider = Provider.family
    .autoDispose<SendAmountArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_sendPromptNavigateToSendAmountStreamProvider(arguments))
      .data
      ?.value;
});

final _sendPromptNavigateToSendAssetsStreamProvider = StreamProvider.family
    .autoDispose<SendAssetsArguments?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._navigateToSendAssetsStream();
});

final sendPromptNavigateToSendAssetsProvider = Provider.family
    .autoDispose<SendAssetsArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_sendPromptNavigateToSendAssetsStreamProvider(arguments))
      .data
      ?.value;
});

final _sendPromptClearFocusStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._unfocusScopeStream();
});

final sendPromptClearFocusProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_sendPromptClearFocusStreamProvider(arguments)).data?.value;
});

final _sendPromptNavigateToQrScannerStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(sendPromptProvider(arguments))._navigateToQrScannerStream();
});

final sendPromptNavigateToQrScannerProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_sendPromptNavigateToQrScannerStreamProvider(arguments))
      .data
      ?.value;
});

class SendPromptIllegalArgumentsException implements Exception {}

class SendPromptInvalidClipboardDataException implements Exception {}

class SendPromptInvalidBitcoinAddressException implements Exception {}

class SendPromptInvalidLiquidAddressException implements Exception {}

import 'package:aqua/data/provider/app_links/app_link.dart';
import 'package:aqua/data/provider/app_links/app_links_provider.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/qr_scanner/qr_scanner_pop_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:rxdart/rxdart.dart';

final qrScannerProvider = Provider.family
    .autoDispose<QrScannerProvider, Object?>(
        (ref, _) => QrScannerProvider(ref));

class QrScannerProvider {
  static const _qrParametersKeyAssetId = 'assetid';
  static const _qrParametersKeyAmount = 'amount';
  static const _qrParametersKeyLabel = 'label';
  static const _qrParametersKeyMessage = 'message';

  QrScannerProvider(this.ref) {
    ref.onDispose(() {
      _popWithRequiresRestartResultSubject.close();
      _popWithNoResultSubject.close();
      _permissionSubject.close();
      _scannedDataSubject.close();
      _navigateToMyQrCodeSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final PublishSubject<void> _popWithRequiresRestartResultSubject =
      PublishSubject();
  void popWithRequiresRestartResult() {
    _popWithRequiresRestartResultSubject.add(null);
  }

  final PublishSubject<void> _popWithNoResultSubject = PublishSubject();
  void popWithNoResult() {
    _popWithNoResultSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _initializationStream = Stream.value(null)
      .switchMap((value) => Stream.value(null)
          .delay(const Duration(milliseconds: 2000))
          .map((_) => AsyncValue.data(_))
          .startWith(const AsyncValue.loading()))
      .shareReplay(maxSize: 1);

  final PublishSubject<bool> _permissionSubject = PublishSubject();
  void permissionSet(bool isPermissionSet) {
    _permissionSubject.add(isPermissionSet);
  }

  Stream<Object> _showPermissionAlertDialogStream() =>
      _permissionSubject.switchMap((isPermissionSet) =>
          isPermissionSet ? const Stream.empty() : Stream.value(Object()));

  final PublishSubject<Barcode> _scannedDataSubject = PublishSubject();
  void updateScannedData(Barcode data) {
    _scannedDataSubject.add(data);
  }

  late final Stream<Barcode> _scannedDataStream = _scannedDataSubject
      .throttleTime(const Duration(milliseconds: 100), leading: true);

  Stream<Object> _pauseCameraStream() =>
      _scannedDataStream.map((_) => Object());

  late final Stream<AsyncValue<QrScannerPopResult>> _processAddressValidation =
      _scannedDataStream
          .asyncMap<String>((data) => Stream.value(data.rawValue)
              .switchMap((code) => code != null
                  ? Stream.value(code)
                  : const Stream<String>.empty())
              .first)
          .switchMap((code) => Stream.value(code).asyncMap((code) {
                try {
                  return Uri.parse(code);
                } catch (_) {
                  throw QrScannerInvalidCodeException();
                }
              }).switchMap((uri) => Stream.value(uri)
                  .asyncMap(
                      (uri) => ref.read(appLinkProvider).parseAppLinkUri(uri))
                  .map((appLink) =>
                      appLink is SwapAppLink ? appLink : throw ArgumentError())
                  .map<QrScannerPopResult>((swapAppLink) {
                    return QrScannerPopSwapResult(
                      orderId: swapAppLink.orderId,
                      sendAsset: swapAppLink.sendAsset,
                      sendAmount: swapAppLink.sendAmount,
                      recvAsset: swapAppLink.recvAsset,
                      recvAmount: swapAppLink.recvAmount,
                      uploadUrl: swapAppLink.uploadUrl,
                    );
                  })
                  .onErrorResume((_, __) => Stream.value(uri).map((uri) {
                        if (uri.path.isEmpty) {
                          final host = uri.host;
                          final index = code.toLowerCase().indexOf(host);
                          final address =
                              code.substring(index, index + host.length);
                          return address;
                        } else {
                          return uri.path;
                        }
                      }).asyncMap((address) => Stream.value(address)
                          .map((_) => uri.queryParameters)
                          .asyncMap((params) => Stream.value(params)
                                  .asyncMap((params) => ref
                                      .read(liquidProvider)
                                      .isValidAddress(address))
                                  .map((valid) => valid
                                      ? null
                                      : throw QrScannerInvalidAddressException())
                                  .asyncMap(
                                      (_) => ref.read(aquaProvider).allAssets())
                                  .map((assets) =>
                                      params[_qrParametersKeyAssetId] != null
                                          ? assets.firstWhere((asset) => asset.assetId == params[_qrParametersKeyAssetId])
                                          : null)
                                  .onErrorResume((error, stackTrace) => error is QrScannerInvalidAddressException ? Stream.value(address).asyncMap((params) => ref.read(bitcoinProvider).isValidAddress(address)).map((valid) => valid ? null : throw QrScannerInvalidAddressException()).asyncMap((_) => ref.read(aquaProvider).allAssets()).map((assets) => assets.firstWhere((asset) => asset.isBTC)) : Stream.error(error, stackTrace))
                                  .asyncMap((asset) {
                                try {
                                  final amount =
                                      params.containsKey(_qrParametersKeyAmount)
                                          ? params[_qrParametersKeyAmount]
                                          : null;

                                  final label =
                                      params.containsKey(_qrParametersKeyLabel)
                                          ? params[_qrParametersKeyLabel]
                                          : null;

                                  final message = params
                                          .containsKey(_qrParametersKeyMessage)
                                      ? params[_qrParametersKeyMessage]
                                      : null;

                                  return QrScannerPopSuccessResult(
                                    address: address,
                                    asset: asset,
                                    amount: amount,
                                    label: label,
                                    message: message,
                                  );
                                } catch (_) {
                                  throw QrScannerInvalidQrParametersException();
                                }
                              }).first)
                          .first))
                  .map<AsyncValue<QrScannerPopResult>>((result) => AsyncValue.data(result))
                  .startWith(const AsyncValue.loading())
                  .onErrorReturnWith((error, stackTrace) => AsyncValue.error(error, stackTrace))))
          .shareReplay(maxSize: 1);

  Stream<QrScannerPopResult?> _popStream() => Rx.merge([
        _popWithRequiresRestartResultSubject
            .map((_) => const QrScannerPopRequiresRestartResult()),
        _popWithNoResultSubject.map((_) => null),
        _processAddressValidation.switchMap((value) => value.maybeWhen(
              data: (result) => Stream.value(result),
              orElse: () => const Stream.empty(),
            ))
      ]);

  Stream<Object> _showLoadingOverlayStream() =>
      _processAddressValidation.switchMap((value) => value.maybeWhen(
            loading: () => Stream.value(Object()),
            orElse: () => const Stream.empty(),
          ));

  Stream<Object> _showValidationAlertStream() =>
      _processAddressValidation.switchMap((value) => value.maybeWhen(
            error: (_, __) => Stream.value(Object()),
            orElse: () => const Stream.empty(),
          ));

  final PublishSubject<void> _navigateToMyQrCodeSubject = PublishSubject();
  void navigateToMyQrCode() {
    _navigateToMyQrCodeSubject.add(null);
  }

  Stream<Object?> _navigateToMyQrCodeStream() =>
      _navigateToMyQrCodeSubject.switchMap((_) =>
          Stream<Object?>.value(Object()).concatWith([Stream.value(null)]));
}

final _qrScannerPopStreamProvider = StreamProvider.family
    .autoDispose<QrScannerPopResult?, Object?>((ref, arguments) async* {
  yield* ref.watch(qrScannerProvider(arguments))._popStream();
});

final qrScannerPopProvider =
    Provider.family.autoDispose<QrScannerPopResult?, Object?>((ref, arguments) {
  return ref.watch(_qrScannerPopStreamProvider(arguments)).data?.value;
});

final _qrScannerInitializationStreamProvider = StreamProvider.family
    .autoDispose<AsyncValue<void>, Object?>((ref, arguments) async* {
  yield* ref.watch(qrScannerProvider(arguments))._initializationStream;
});

final qrScannerInitializationProvider =
    Provider.family.autoDispose<AsyncValue<void>, Object?>((ref, arguments) {
  return ref
          .watch(_qrScannerInitializationStreamProvider(arguments))
          .data
          ?.value ??
      const AsyncValue.loading();
});

final _qrScannerShowPermissionAlertStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref
      .watch(qrScannerProvider(arguments))
      ._showPermissionAlertDialogStream();
});

final qrScannerShowPermissionAlertProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_qrScannerShowPermissionAlertStreamProvider(arguments))
      .data
      ?.value;
});

final _qrScannerPauseCameraStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(qrScannerProvider(arguments))._pauseCameraStream();
});

final qrScannerPauseCameraProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_qrScannerPauseCameraStreamProvider(arguments)).data?.value;
});

final _qrScannerShowLoadingStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(qrScannerProvider(arguments))._showLoadingOverlayStream();
});

final qrScannerShowLoadingProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_qrScannerShowLoadingStreamProvider(arguments)).data?.value;
});

final _qrScannerShowValidationAlertStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(qrScannerProvider(arguments))._showValidationAlertStream();
});

final qrScannerShowValidationAlertProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_qrScannerShowValidationAlertStreamProvider(arguments))
      .data
      ?.value;
});

final _qrScannerNavigateToMyQrCodeStreamProvider = StreamProvider.family
    .autoDispose<Object?, Object?>((ref, arguments) async* {
  yield* ref.watch(qrScannerProvider(arguments))._navigateToMyQrCodeStream();
});

final qrScannerNavigateToMyQrCodeProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_qrScannerNavigateToMyQrCodeStreamProvider(arguments))
      .data
      ?.value;
});

class QrScannerInvalidCodeException implements Exception {}

class QrScannerInvalidAddressException implements Exception {}

class QrScannerInvalidQrParametersException implements Exception {}

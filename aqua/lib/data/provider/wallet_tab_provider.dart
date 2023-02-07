import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/qr_scanner/qr_scanner_pop_result.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_assets/send_assets_arguments.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final walletTabProvider =
    Provider.autoDispose<WalletTabProvider>((ref) => WalletTabProvider(ref));

class WalletTabProvider {
  WalletTabProvider(this._ref) {
    _ref.onDispose(() {
      _reloadAssetsSubject.close();
      _onAssetSelectedSubject.close();
      _navigateToQrScannerSubject.close();
      _handleQrScannerResultSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  // TOOD Prevents the same asset list provider to be used accross different places
  // Ideally must be replaced with Riverpod's ProviderScope
  final Future<Object> _uniqueAssetListIdentifier = Future.value(Object());

  final PublishSubject<void> _reloadAssetsSubject = PublishSubject();
  void reloadAssets() {
    _reloadAssetsSubject.add(null);
  }

  final PublishSubject<Asset> _onAssetSelectedSubject = PublishSubject();
  void onAssetSelected(Asset asset) {
    _onAssetSelectedSubject.add(asset);
  }

  Stream<Asset?> _onAssetSelectedStream() => _onAssetSelectedSubject.switchMap(
      (asset) => Stream<Asset?>.value(asset).concatWith([Stream.value(null)]));

  late final Stream<Object> _assetListArgumentsStream = Rx.combineLatest2(
    Stream<int>.periodic(const Duration(seconds: 5), (e) => e).startWith(0),
    _reloadAssetsSubject.startWith(null),
    (_, __) => null,
  )
      .doOnData((_) => logger.d('[Aqua] Reloading assets'))
      .switchMap((_) => Stream.value(_)
          .switchMap((_) => _ref.read(aquaProvider).walletAssets())
          .map((assets) => AsyncValue.data(assets))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .asyncMap((value) => _uniqueAssetListIdentifier
              .then((identifier) => Tuple2(identifier, value))))
      .shareReplay(maxSize: 1);

  final PublishSubject<void> _navigateToQrScannerSubject = PublishSubject();
  void navigateToQrScanner() {
    _navigateToQrScannerSubject.add(null);
  }

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

  Stream<SendAssetsArguments?> _navigateToSendAssetsStream() =>
      _handleQrScannerResultSubject.switchMap((result) =>
          result is QrScannerPopSuccessResult && result.asset == null
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
              : const Stream<SendAssetsArguments?>.empty());

  Stream<SendAmountArguments?> _navigateToSendAmountStream() =>
      _handleQrScannerResultSubject
          .switchMap((result) => result is QrScannerPopSuccessResult
              ? Stream.value(result)
                  .asyncMap((result) {
                    final asset = result.asset;
                    if (asset == null) {
                      throw WalletTabInvalidArgumentException();
                    }
                    return asset;
                  })
                  .onErrorResumeNext(const Stream.empty())
                  .map<SendAmountArguments?>((asset) {
                    final address = result.address;
                    final amount = result.amount;

                    return SendAmountArguments(
                      address: address,
                      asset: asset,
                      amount: amount,
                    );
                  })
                  .concatWith([Stream.value(null)])
              : const Stream<SendAmountArguments?>.empty());

  final PublishSubject<void> _navigateToAddAssetSubject = PublishSubject();
  void navigateToAddAsset() {
    _navigateToAddAssetSubject.add(null);
  }

  Stream<Object?> _navigateToAddAssetStream() =>
      _navigateToAddAssetSubject.switchMap((_) => Stream.value(_)
          .map<Object?>((value) => Object())
          .concatWith([Stream.value(null)]));

  Stream<SideSwapPromptArguments?> _navigateToSwapPromptStream() =>
      _handleQrScannerResultSubject.switchMap((result) =>
          result is QrScannerPopSwapResult
              ? Stream.value(result)
                  .map<SideSwapPromptArguments?>(
                      (result) => SideSwapPromptArguments(
                            orderId: result.orderId,
                            sendAsset: result.sendAsset,
                            sendAmount: result.sendAmount,
                            recvAsset: result.recvAsset,
                            recvAmount: result.recvAmount,
                            uploadUrl: result.uploadUrl,
                          ))
                  .concatWith([Stream.value(null)])
              : const Stream<SideSwapPromptArguments?>.empty());
}

final _walletTabAssetsListArgumentsStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(walletTabProvider)._assetListArgumentsStream;
});

final walletTabAssetsListArgumentsProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_walletTabAssetsListArgumentsStreamProvider).data?.value;
});

final _walletTabOnAssetSelectedStreamProvider =
    StreamProvider.autoDispose<Asset?>((ref) async* {
  yield* ref.watch(walletTabProvider)._onAssetSelectedStream();
});

final walletTabOnAssetSelectedProvider = Provider.autoDispose<Asset?>((ref) {
  return ref.watch(_walletTabOnAssetSelectedStreamProvider).data?.value;
});

final _walletTabNavigateToQrScannerStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(walletTabProvider)._navigateToQrScannerStream();
});

final walletTabNavigateToQrScannerProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_walletTabNavigateToQrScannerStreamProvider).data?.value;
});

final _walletTabNavigateToSendAssetsStreamProvider =
    StreamProvider.autoDispose<SendAssetsArguments?>((ref) async* {
  yield* ref.watch(walletTabProvider)._navigateToSendAssetsStream();
});

final walletTabNavigateToSendAssetsProvider =
    Provider.autoDispose<SendAssetsArguments?>((ref) {
  return ref.watch(_walletTabNavigateToSendAssetsStreamProvider).data?.value;
});

final _walletTabNavigateToSendAmountStreamProvider =
    StreamProvider.autoDispose<SendAmountArguments?>((ref) async* {
  yield* ref.watch(walletTabProvider)._navigateToSendAmountStream();
});

final _walletTabNavigateToSwapPromptStreamProvider =
    StreamProvider.autoDispose<SideSwapPromptArguments?>((ref) async* {
  yield* ref.watch(walletTabProvider)._navigateToSwapPromptStream();
});

final walletTabNavigateToSwapPromptProvider =
    Provider.autoDispose<SideSwapPromptArguments?>((ref) {
  return ref.watch(_walletTabNavigateToSwapPromptStreamProvider).data!.value;
});

final walletTabNavigateToSendAmountProvider =
    Provider.autoDispose<SendAmountArguments?>((ref) {
  return ref.watch(_walletTabNavigateToSendAmountStreamProvider).data?.value;
});

final _walletTabNavigateToAddAssetStreamProvider =
    StreamProvider.autoDispose<Object?>((ref) async* {
  yield* ref.watch(walletTabProvider)._navigateToAddAssetStream();
});

final walletTabNavigateToAddAssetProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_walletTabNavigateToAddAssetStreamProvider).data?.value;
});

class WalletTabInvalidArgumentException implements Exception {}

class WalletTabInvalidAssetItemException implements Exception {}

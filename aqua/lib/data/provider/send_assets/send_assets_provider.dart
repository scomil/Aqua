import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_assets/send_assets_arguments.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final sendAssetsProvider = Provider.family
    .autoDispose<SendAssetsProvider, Object?>(
        (ref, arguments) => SendAssetsProvider(ref, arguments));

class SendAssetsProvider {
  SendAssetsProvider(this._ref, this._arguments) {
    _ref.onDispose(() {
      _reloadAssetsSubject.close();
      _onAssetSelectedSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;
  final Object? _arguments;

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

  late final Stream<AsyncValue<SendAssetsArguments>> _argumentsStream =
      Stream.value(_arguments)
          .asyncMap((arguments) {
            try {
              return arguments as SendAssetsArguments;
            } catch (_) {
              throw SendAssetsInvalidArgumentsException();
            }
          })
          .map((arguments) => AsyncValue.data(arguments))
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace));

  late final Stream<Object> _assetListArgumentsStream = _reloadAssetsSubject
      .startWith(null)
      .switchMap((_) => Stream.value(_)
          .switchMap((_) => _ref.read(aquaProvider).walletAssets())
          .map((assets) => assets.where((asset) => !asset.isBTC).toList())
          .map((assets) => AsyncValue.data(assets))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .asyncMap((value) => _uniqueAssetListIdentifier
              .then((identifier) => Tuple2(identifier, value))))
      .shareReplay(maxSize: 1);

  Stream<SendAmountArguments?> _onAssetSelectedStream() =>
      _argumentsStream.switchMap((value) => value.maybeWhen(
            data: (arguments) => _onAssetSelectedSubject
                .map<SendAmountArguments?>((asset) => SendAmountArguments(
                      address: arguments.address,
                      asset: asset,
                      amount: arguments.amount,
                      label: arguments.label,
                      message: arguments.message,
                    ))
                .concatWith([Stream.value(null)]),
            orElse: () => const Stream.empty(),
          ));
}

final _sendAssetsListArgumentsStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAssetsProvider(arguments))._assetListArgumentsStream;
});

final sendAssetsListArgumentsProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_sendAssetsListArgumentsStreamProvider(arguments))
      .data
      ?.value;
});

final _sendAssetsOnSelectedStreamProvider = StreamProvider.family
    .autoDispose<SendAmountArguments?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendAssetsProvider(arguments))._onAssetSelectedStream();
});

final sendAssetsOnSelectedProvider = Provider.family
    .autoDispose<SendAmountArguments?, Object?>((ref, arguments) {
  return ref.watch(_sendAssetsOnSelectedStreamProvider(arguments)).data?.value;
});

class SendAssetsInvalidArgumentsException implements Exception {}

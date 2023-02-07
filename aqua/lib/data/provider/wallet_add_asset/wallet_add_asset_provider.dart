import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/sqlite_database/sqlite_database_provider.dart';
import 'package:aqua/data/provider/wallet_add_asset/wallet_add_asset_item_model.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final walletAddAssetProvider = Provider.autoDispose<WalletAddAssetProvider>(
    (ref) => WalletAddAssetProvider(ref));

class WalletAddAssetProvider {
  WalletAddAssetProvider(this._ref) {
    _ref.onDispose(() {
      _retrySubject.close();
      _searchSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  final PublishSubject<String> _searchSubject = PublishSubject();
  void search(String text) {
    _searchSubject.add(text);
  }

  final PublishSubject<void> _retrySubject = PublishSubject();
  late final Stream<AsyncValue<List<Tuple2<Asset, bool>>>> _dataStream =
      _retrySubject
          .startWith(null)
          .switchMap((_) => Stream.value(_)
              .asyncMap((_) => _ref.read(aquaProvider).allAssets())
              .asyncMap(
                  (assets) => Stream.fromIterable(assets).asyncMap((asset) {
                        final unselectable = asset.isBTC ||
                            asset.isUSDt ||
                            asset.isLBTC ||
                            asset.amount > 0;
                        return Tuple2(asset, unselectable);
                      }).toList())
              .map((tuples) => AsyncValue.data(tuples))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  late final Stream<List<Tuple2<Asset, bool>>> _dataItemsStream = _dataStream
      .switchMap((value) => value.maybeWhen(
            data: (allTuples) => _searchSubject
                .startWith('')
                .debounceTime(const Duration(milliseconds: 300))
                .switchMap(
                  (text) => text.isNotEmpty
                      ? Stream.value(allTuples).map((allTuples) => allTuples
                          .where((tuple) =>
                              tuple.item1.name
                                  .toLowerCase()
                                  .contains(text.toLowerCase()) ||
                              tuple.item1.ticker
                                  .toLowerCase()
                                  .contains(text.toLowerCase()))
                          .take(8)
                          .toList())
                      : Stream.value(allTuples)
                          .asyncMap((_) =>
                              _ref.read(liquidProvider).highlightedAssets)
                          .switchMap((defaultAssets) => _ref
                                  .read(sqliteDatabaseProvider)
                                  .assetsStream()
                                  .map((favorites) {
                                final assets = <String>{};
                                assets.addAll(defaultAssets);
                                assets.addAll(favorites);
                                return assets;
                              }))
                          .map((defaultAssets) => allTuples
                              .where((tuple) =>
                                  tuple.item1.isBTC ||
                                  defaultAssets.contains(tuple.item1.assetId) ||
                                  tuple.item1.amount > 0)
                              .toList())
                          .map((defaultTuples) => defaultTuples.sorted((a, b) {
                                if (a.item1.isBTC) {
                                  return -1;
                                } else if (b.item1.isBTC) {
                                  return 1;
                                } else if (a.item1.isLBTC) {
                                  return -1;
                                } else if (b.item1.isLBTC) {
                                  return 1;
                                } else if (a.item1.isUSDt) {
                                  return -1;
                                } else if (b.item1.isUSDt) {
                                  return 1;
                                } else if (a.item1.amount > 0) {
                                  return -1;
                                } else if (b.item1.amount > 0) {
                                  return 1;
                                }
                                return 0;
                              })),
                ),
            orElse: () => const Stream<List<Tuple2<Asset, bool>>>.empty(),
          ))
      .shareReplay(maxSize: 1);

  Stream<List<WalletAddAssetListItemModel>> _listItemsStream() =>
      _dataItemsStream.asyncMap((tuples) => Stream.fromIterable(tuples)
          .flatMap((tuple) => Stream.value(tuple).asyncMap((tuple) async {
                try {
                  final asset = tuple.item1;
                  final unselectable = tuple.item2;

                  final icon = await _ref
                      .read(assetIconsCacheProvider)
                      .getImageDataForAssetId(asset.assetId);
                  final name = asset.name;
                  final ticker = asset.ticker;

                  final uiModel = WalletAddAssetItemUiModel(
                    icon: icon,
                    name: name,
                    ticker: ticker,
                  );

                  return WalletAddAssetListDataItemModel(
                    uiModel: uiModel,
                    asset: asset,
                    unselectable: unselectable,
                  );
                } catch (e) {
                  throw _WalletAddAssetInvalidItemException();
                }
              }).onErrorResumeNext(const Stream.empty()))
          .toList()
          .then((models) => models.isEmpty
              ? [const WalletAddAssetListEmptyItemModel()]
              : models.sorted((a, b) => a.unselectable ? -1 : 1)));
}

final _walletAddAssetDataStreamProvider =
    StreamProvider.autoDispose<AsyncValue<List<Tuple2<Asset, bool>>>>(
        (ref) async* {
  yield* ref.watch(walletAddAssetProvider)._dataStream;
});

final walletAddAssetDataProvider =
    Provider.autoDispose<AsyncValue<List<Tuple2<Asset, bool>>>>((ref) {
  return ref.watch(_walletAddAssetDataStreamProvider).data?.value ??
      const AsyncValue.loading();
});

final _walletAddAssetItemsStreamProvider =
    StreamProvider.autoDispose<List<Tuple2<Asset, bool>>>((ref) async* {
  yield* ref.watch(walletAddAssetProvider)._dataItemsStream;
});

final walletAddAssetItemsProvider =
    Provider.autoDispose<List<Tuple2<Asset, bool>>>((ref) {
  return ref.watch(_walletAddAssetItemsStreamProvider).data?.value ?? [];
});

final _walletAddAssetListItemsStreamProvider =
    StreamProvider.autoDispose<List<WalletAddAssetListItemModel>>((ref) async* {
  yield* ref.watch(walletAddAssetProvider)._listItemsStream();
});

final walletAddAssetListItemsProvider =
    Provider.autoDispose<List<WalletAddAssetListItemModel>>((ref) {
  return ref.watch(_walletAddAssetListItemsStreamProvider).data?.value ?? [];
});

class _WalletAddAssetInvalidItemException implements Exception {}

final walletAddAssetItemProvider = Provider.family
    .autoDispose<WalletAddAssetItemProvider, Asset>(
        (ref, arguments) => WalletAddAssetItemProvider(ref, arguments));

class WalletAddAssetItemProvider {
  WalletAddAssetItemProvider(this._ref, this._arguments);

  final AutoDisposeProviderReference _ref;
  final Asset _arguments;

  Stream<WalletAddAssetControlUiModel> _controlUiModel(
          BuildContext context, bool unselectable) =>
      Stream.value(unselectable).switchMap((unselectable) => !unselectable
          ? _ref
              .read(sqliteDatabaseProvider)
              .assetsStream()
              .map((assets) => assets.contains(_arguments.assetId))
              .map((selected) {
              final icon = selected
                  ? Icons.remove_circle_outline
                  : Icons.add_circle_outline;
              final color = selected
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.onPrimary;
              final onPressed = selected
                  ? () {
                      _ref
                          .read(sqliteDatabaseProvider)
                          .deleteAsset(_arguments.assetId);
                    }
                  : () {
                      _ref
                          .read(sqliteDatabaseProvider)
                          .insertAsset(_arguments.assetId);
                    };
              return WalletAddAssetControlUiModel(
                icon: icon,
                color: color,
                onPressed: onPressed,
              );
            })
          : Stream.value(null).map((_) {
              const icon = Icons.remove_circle_outline;
              final color = Theme.of(context).colorScheme.onBackground;
              return WalletAddAssetControlUiModel(
                icon: icon,
                color: color,
                onPressed: null,
              );
            }));
}

final _walletAddAssetControlUiModelStreamProvider = StreamProvider.family
    .autoDispose<WalletAddAssetControlUiModel,
        Tuple3<Asset, bool, BuildContext>>((ref, arguments) async* {
  final asset = arguments.item1;
  final unselectable = arguments.item2;
  final context = arguments.item3;
  yield* ref
      .watch(walletAddAssetItemProvider(asset))
      ._controlUiModel(context, unselectable);
});

final walletAddAssetControlUiModelProvider = Provider.family.autoDispose<
    WalletAddAssetControlUiModel?,
    Tuple3<Asset, bool, BuildContext>>((ref, arguments) {
  return ref
      .watch(_walletAddAssetControlUiModelStreamProvider(arguments))
      .data
      ?.value;
});

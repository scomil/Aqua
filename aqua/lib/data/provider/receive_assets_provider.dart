import 'dart:typed_data';

import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_arguments.dart';
import 'package:aqua/data/provider/sideshift/sideshift_order_provider.dart';
import 'package:aqua/data/provider/sqlite_database/sqlite_database_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'package:collection/collection.dart';
import 'package:tuple/tuple.dart';

final receiveAssetsProvider = Provider.autoDispose<ReceiveAssetsProvider>(
    (ref) => ReceiveAssetsProvider(ref));

class ReceiveAssetsProvider {
  ReceiveAssetsProvider(this._ref) {
    _ref.onDispose(() {
      _onAssetSelectedSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  // Asset selection callback

  final _onAssetSelectedSubject = PublishSubject<Tuple2<Asset, bool>>();

  void onAssetSelected(Asset asset) {
    _onAssetSelectedSubject.add(Tuple2(asset, false));
  }

  void onGenericAssetSelected() {
    final asset = Asset(
      assetId: lbtcAssetId,
      isLBTC: true,
      isUSDt: false,
    );
    _onAssetSelectedSubject.add(Tuple2(asset, true));
  }

  Stream<ReceiveQrCodeArguments?> _onAssetSelectedStream() =>
      _onAssetSelectedSubject
          .map((tuple) => ReceiveQrCodeArguments(
                asset: tuple.item1,
                isGenericAsset: tuple.item2,
              ))
          .cast<ReceiveQrCodeArguments?>()
          .concatWith([Stream.value(null)]);

  // Search

  final PublishSubject<String> _searchSubject = PublishSubject();

  void search(String text) {
    _searchSubject.add(text);
  }

  // Assets

  late final Stream<AsyncValue<List<Asset>>> _dataStream = Stream.value(null)
      .asyncMap((_) => _ref.read(aquaProvider).allAssets())
      .switchMap((allAssets) => _searchSubject
          .startWith('')
          .debounceTime(const Duration(milliseconds: 300))
          .switchMap((text) => text.isNotEmpty
              ? Stream.value(null).map((_) => allAssets
                  .where((asset) =>
                      asset.name.toLowerCase().contains(text.toLowerCase()) ||
                      asset.ticker.toLowerCase().contains(text.toLowerCase()))
                  .take(8)
                  .toList())
              : Stream.value(allAssets)
                  .asyncMap((_) => _ref.read(liquidProvider).highlightedAssets)
                  .switchMap((defaultAssets) => _ref
                      .read(sqliteDatabaseProvider)
                      .assetsStream()
                      .map((favorites) => [...defaultAssets, ...favorites]))
                  .map((defaultAssets) => allAssets.where((asset) {
                        return asset.isBTC ||
                            defaultAssets.contains(asset.assetId) ||
                            asset.amount > 0;
                      }).toList())
                  .map((defaultAssets) => defaultAssets.sorted((a, b) {
                        if (a.isBTC) {
                          return -1;
                        } else if (b.isBTC) {
                          return 1;
                        } else if (a.isLBTC) {
                          return -1;
                        } else if (b.isLBTC) {
                          return 1;
                        } else if (a.amount > 0) {
                          return -1;
                        } else if (b.amount > 0) {
                          return 1;
                        }
                        return 0;
                      }))))
      .map((assets) => AsyncValue.data(assets))
      .startWith(const AsyncValue.loading())
      .onErrorReturnWith((e, stackTrace) => AsyncValue.error(e, stackTrace))
      .shareReplay(maxSize: 1);

  // Asset list item

  Future<AssetListItemUiModel> _assetItemUiModel(Asset asset) async {
    try {
      final icon = await _ref
          .read(assetIconsCacheProvider)
          .getImageDataForAssetId(asset.assetId);
      final name = asset.name;
      final ticker = asset.ticker;
      final amount = await _ref.read(formatterProvider).formatAssetAmount(
            amount: asset.amount,
            precision: asset.precision,
          );

      // ignore: prefer_function_declarations_over_variables
      final onTap = () => onAssetSelected(asset);
      return AssetListItemUiModel(
        icon: icon,
        name: name,
        ticker: ticker,
        amount: amount,
        onTap: onTap,
      );
    } catch (_) {
      throw _AssetListInvalidItemException();
    }
  }
}

// Assets

final _receiveAssetsStreamProvider =
    StreamProvider.autoDispose<AsyncValue<List<Asset>>>((ref) async* {
  yield* ref.watch(receiveAssetsProvider)._dataStream;
});

final receiveAssetItemsProvider =
    Provider.autoDispose<AsyncValue<List<Asset>>>((ref) {
  return ref.watch(_receiveAssetsStreamProvider).data?.value ??
      const AsyncValue.loading();
});

// Asset list item

final _assetListItemUiModelFutureProvider = FutureProvider.family
    .autoDispose<AssetListItemUiModel, Asset>((ref, asset) async {
  return await ref.watch(receiveAssetsProvider)._assetItemUiModel(asset);
});

final assetListItemUiModelProvider =
    Provider.family.autoDispose<AssetListItemUiModel?, Asset>((ref, asset) {
  return ref.watch(_assetListItemUiModelFutureProvider(asset)).data?.value;
});

// Asset selection callback

final _receiveAssetsOnSelectedStreamProvider =
    StreamProvider.autoDispose<ReceiveQrCodeArguments?>((ref) async* {
  yield* ref.watch(receiveAssetsProvider)._onAssetSelectedStream();
});

final receiveAssetsOnSelectedProvider =
    Provider.autoDispose<ReceiveQrCodeArguments?>((ref) {
  return ref.watch(_receiveAssetsOnSelectedStreamProvider).data?.value;
});

// Errors

class _AssetListInvalidItemException implements Exception {}

class ReceiveAssetsInvalidArgumentException implements Exception {}

// UI Models

class AssetListItemUiModel {
  AssetListItemUiModel({
    required this.icon,
    required this.name,
    required this.ticker,
    required this.amount,
    required this.onTap,
  });

  final Uint8List icon;
  final String name;
  final String ticker;
  final String amount;
  final VoidCallback onTap;
}

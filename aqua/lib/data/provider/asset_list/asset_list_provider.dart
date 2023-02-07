import 'dart:math';

import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/nft.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/asset_list/asset_list_ui_model.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final assetListProvider = Provider.family
    .autoDispose<AssetListProvider, Object>(
        (ref, arguments) => AssetListProvider(ref, arguments));

class AssetListProvider {
  AssetListProvider(this._ref, this._arguments) {
    _ref.onDispose(() {
      _selectedTabSubject.close();
      _onAssetSelectedSubject.close();
      _reloadAssetsSubject.close();
      _reloadNftsSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;
  final Object _arguments;

  final BehaviorSubject<int> _selectedTabSubject = BehaviorSubject.seeded(0);
  void onTabSelected(int index) {
    _selectedTabSubject.add(index);
  }

  final PublishSubject<Asset> _onAssetSelectedSubject = PublishSubject();
  Stream<Asset?> _onAssetSelectedStream() => _onAssetSelectedSubject.switchMap(
      (asset) => Stream<Asset?>.value(asset).concatWith([Stream.value(null)]));

  final PublishSubject<void> _reloadAssetsSubject = PublishSubject();
  Stream<Object?> _reloadAssetsStream() => _reloadAssetsSubject.switchMap(
      (_) => Stream<Object?>.value(Object()).concatWith([Stream.value(null)]));

  late final Stream<AsyncValue<List<Asset>>> _dataStream =
      Stream.value(_arguments)
          .map((arguments) {
            if (arguments is! Tuple2<Object, AsyncValue<List<Asset>>>) {
              throw _AssetListInvalidArgumentsException();
            }
            return arguments.item2;
          })
          .onErrorReturnWith((error, stackTrace) =>
              AsyncValue<List<Asset>>.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  final PublishSubject<void> _reloadNftsSubject = PublishSubject();

  late final Stream<AsyncValue<List<Nft>>> _nftsStream = _reloadNftsSubject
      .startWith(null)
      .switchMap((_) => Stream.value(_)
          .asyncMap((_) async {
            return [
              Nft(
                id: 'abcde12345',
                title: 'Light Nite',
                assets: 12,
              ),
              Nft(
                id: 'fghijk67890',
                title: 'Raretoshi',
                assets: 6,
              ),
            ];
          })
          .map((objects) => AsyncValue.data(objects))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace)))
      .shareReplay(maxSize: 1);

  Future<AssetListNftItemUiModel> _buildNftItemUiModel(
      BuildContext context, Nft nft) async {
    try {
      final title = nft.title;
      final count = Random().nextInt(10);
      final assets = AppLocalizations.of(context)!.nftsAssets('$count');
      return AssetListNftItemUiModel(
        title: title,
        assets: assets,
      );
    } catch (_) {
      throw _AssetListInvalidItemException();
    }
  }

  Future<AssetListAssetItemUiModel> _assetItemUiModel(
      BuildContext context, Asset asset) async {
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
      final onTap = () {
        _onAssetSelectedSubject.add(asset);
      };
      return AssetListAssetItemUiModel(
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

  Future<AssetListErrorUiModel> _errorUiModelFuture(
      BuildContext context) async {
    final buttonTitle = AppLocalizations.of(context)!.unknownErrorButton;
    // ignore: prefer_function_declarations_over_variables
    final buttonAction = () {
      _reloadAssetsSubject.add(null);
    };
    return AssetListErrorUiModel(
      buttonTitle: buttonTitle,
      buttonAction: buttonAction,
    );
  }
}

final _assetListDataStreamProvider = StreamProvider.family
    .autoDispose<AsyncValue<List<Asset>>, Object>((ref, arguments) async* {
  yield* ref.watch(assetListProvider(arguments))._dataStream;
});

final assetListDataProvider = Provider.family
    .autoDispose<AsyncValue<List<Asset>>, Object>((ref, arguments) {
  return ref.watch(_assetListDataStreamProvider(arguments)).data?.value ??
      const AsyncValue.loading();
});

final _assetListTabStreamProvider =
    StreamProvider.family.autoDispose<int, Object>((ref, arguments) async* {
  yield* ref.watch(assetListProvider(arguments))._selectedTabSubject;
});

final assetListTabProvider =
    Provider.family.autoDispose<int, Object>((ref, arguments) {
  return ref.watch(_assetListTabStreamProvider(arguments)).data?.value ?? 0;
});

final _assetListItemSelectedStreamProvider =
    StreamProvider.family.autoDispose<Asset?, Object>((ref, arguments) async* {
  yield* ref.watch(assetListProvider(arguments))._onAssetSelectedStream();
});

final assetListItemSelectedProvider =
    Provider.family.autoDispose<Asset?, Object>((ref, arguments) {
  return ref.watch(_assetListItemSelectedStreamProvider(arguments)).data?.value;
});

final _assetListReloadAssetsStreamProvider =
    StreamProvider.family.autoDispose<Object?, Object>((ref, arguments) async* {
  yield* ref.watch(assetListProvider(arguments))._reloadAssetsStream();
});

final assetListReloadAssetsProvider =
    Provider.family.autoDispose<Object?, Object>((ref, arguments) {
  return ref.watch(_assetListReloadAssetsStreamProvider(arguments)).data?.value;
});

final _assetListItemUiModelFutureProvider = FutureProvider.family.autoDispose<
    AssetListAssetItemUiModel,
    Tuple3<Object, BuildContext, Asset>>((ref, tuple) async {
  final arguments = tuple.item1;
  final context = tuple.item2;
  final asset = tuple.item3;
  return await ref
      .watch(assetListProvider(arguments))
      ._assetItemUiModel(context, asset);
});

final assetListItemUiModelProvider = Provider.family.autoDispose<
    AssetListAssetItemUiModel?,
    Tuple3<Object, BuildContext, Asset>>((ref, tuple) {
  return ref.watch(_assetListItemUiModelFutureProvider(tuple)).data?.value;
});

final _assetListErrorUiModelFutureProvider = FutureProvider.family
    .autoDispose<AssetListErrorUiModel, Tuple2<Object, BuildContext>>(
        (ref, tuple) async {
  final arguments = tuple.item1;
  final context = tuple.item2;
  return await ref
      .watch(assetListProvider(arguments))
      ._errorUiModelFuture(context);
});

final assetListErrorUiModelProvider = Provider.family
    .autoDispose<AssetListErrorUiModel?, Tuple2<Object, BuildContext>>(
        (ref, tuple) {
  return ref.watch(_assetListErrorUiModelFutureProvider(tuple)).data?.value;
});

class _AssetListInvalidArgumentsException implements Exception {}

class _AssetListInvalidItemException implements Exception {}

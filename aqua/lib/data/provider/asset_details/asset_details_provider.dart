import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/asset_details/asset_details_exception.dart';
import 'package:aqua/data/provider/asset_details/asset_details_item_ui_model.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tuple/tuple.dart';

final assetDetailsProvider = Provider.family
    .autoDispose<AssetDetailsProvider, Object?>(
        (ref, arguments) => AssetDetailsProvider(ref, arguments));

class AssetDetailsProvider {
  AssetDetailsProvider(this.ref, this.arguments) {
    ref.onDispose(() {
      _clipboardCopySubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? arguments;

  late final Stream<AsyncValue<Asset>> _assetStream = Stream.value(arguments)
      .asyncMap((value) async {
        try {
          return arguments as Asset;
        } catch (_) {
          throw AssetDetailsProviderInvalidArgumentsException();
        }
      })
      .map((asset) => AsyncValue.data(asset))
      .startWith(const AsyncValue.loading())
      .onErrorReturnWith(
          (error, stackTrace) => AsyncValue.error(error, stackTrace))
      .shareReplay(maxSize: 1);

  Stream<List<AssetDetailsItemUiModel?>> _itemUiModels(BuildContext context) =>
      _assetStream.switchMap((value) => value.when(
            data: (asset) => Stream.value(asset).asyncMap((asset) async {
              if (asset.isBTC) {
                return [
                  AssetDetailsHeaderItemUiModel(
                    icon: await ref
                        .read(assetIconsCacheProvider)
                        .getImageDataForAssetId(asset.assetId),
                    name: asset.name,
                    ticker: asset.ticker,
                  ),
                  AssetDetailsIntroItemUiModel(
                    intro: AppLocalizations.of(context)!.assetDetailsBtcIntro,
                  ),
                ];
              } else {
                final domain = asset.domain;
                return [
                  AssetDetailsHeaderItemUiModel(
                    icon: await ref
                        .read(assetIconsCacheProvider)
                        .getImageDataForAssetId(asset.assetId),
                    name: asset.name,
                    ticker: asset.ticker,
                  ),
                  domain != null
                      ? AssetDetailsIssuerItemUiModel(issuer: domain)
                      : asset.isLBTC
                          ? AssetDetailsIssuerItemUiModel(
                              issuer: AppLocalizations.of(context)!
                                  .assetDetailsLbtcIssuer,
                            )
                          : null,
                  AssetDetailsIdItemUiModel(
                    id: asset.assetId,
                  ),
                  asset.isLBTC
                      ? AssetDetailsIntroItemUiModel(
                          intro: AppLocalizations.of(context)!
                              .assetDetailsLbtcIntro,
                        )
                      : null,
                ];
              }
            }).onErrorReturnWith(
                (error, _) => [_buildErrorItemUiModel(context)]),
            loading: () =>
                Stream.value([const AssetDetailsLoadingItemUiModel()]),
            error: (error, __) =>
                Stream.value([_buildErrorItemUiModel(context)]),
          ));

  AssetDetailsErrorItemUiModel _buildErrorItemUiModel(BuildContext context) =>
      AssetDetailsErrorItemUiModel(
          buttonTitle: AppLocalizations.of(context)!.assetDetailsErrorButton,
          buttonAction: () {
            Navigator.of(context).pop();
          });

  final PublishSubject<void> _clipboardCopySubject = PublishSubject();
  late final Stream<AsyncValue<void>> _clipboardCopyProcessingStream =
      _clipboardCopySubject
          .switchMap((_) => _assetStream
              .switchMap<String>((value) => value.maybeWhen(
                    data: (asset) => Stream.value(asset.assetId),
                    orElse: () => const Stream.empty(),
                  ))
              .first
              .then((id) => Clipboard.setData(ClipboardData(text: id)))
              .asStream()
              .map((value) => AsyncValue.data(value))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);
  late final Stream<double> _idCopiedSnackbarOpacityStream =
      _clipboardCopyProcessingStream
          .switchMap((value) => value.maybeWhen(
                data: (_) => Stream.value(1.0).concatWith([
                  Stream.value(0.0).delay(const Duration(milliseconds: 2000)),
                ]),
                orElse: () => Stream.value(0.0),
              ))
          .startWith(0.0);
  late final Stream<double> _idCopyFailedSnackbarOpacityStream =
      _clipboardCopyProcessingStream
          .switchMap((value) => value.maybeWhen(
                error: (_, __) => Stream.value(1.0).concatWith([
                  Stream.value(0.0).delay(const Duration(milliseconds: 2000)),
                ]),
                orElse: () => Stream.value(0.0),
              ))
          .startWith(0.0);

  void copyId() {
    _clipboardCopySubject.add(null);
  }
}

final _assetDetailsItemUiModelsStreamProvider = StreamProvider.family
    .autoDispose<List<AssetDetailsItemUiModel?>, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref.watch(assetDetailsProvider(arguments))._itemUiModels(context);
});

final assetDetailsItemUiModelsProvider = Provider.family
    .autoDispose<List<AssetDetailsItemUiModel?>, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetDetailsItemUiModelsStreamProvider(tuple))
          .data
          ?.value ??
      [];
});

final _assetDetailsIdCopiedSnackbarOpacityStreamProvider =
    StreamProvider.family.autoDispose<double, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetDetailsProvider(arguments))
      ._idCopiedSnackbarOpacityStream;
});

final assetDetailsIdCopiedSnackbarOpacityProvider =
    Provider.family.autoDispose<double, Object?>((ref, arguments) {
  return ref
          .watch(_assetDetailsIdCopiedSnackbarOpacityStreamProvider(arguments))
          .data
          ?.value ??
      0.0;
});

final _assetDetailsIdCopyFailedSnackbarOpacityStreamProvider =
    StreamProvider.family.autoDispose<double, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetDetailsProvider(arguments))
      ._idCopyFailedSnackbarOpacityStream;
});

final assetDetailsIdCopyFailedSnackbarOpacityProvider =
    Provider.family.autoDispose<double, Object?>((ref, arguments) {
  return ref
          .watch(
              _assetDetailsIdCopyFailedSnackbarOpacityStreamProvider(arguments))
          .data
          ?.value ??
      0.0;
});

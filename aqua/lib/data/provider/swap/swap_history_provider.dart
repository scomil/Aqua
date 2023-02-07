import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_item_ui_model.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_ui_model.dart';
import 'package:aqua/data/provider/fiat_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final assetTransactionsProvider = Provider.autoDispose
    .family<AssetTransactionsProvider, Asset>(
        (ref, asset) => AssetTransactionsProvider(ref, asset));

class AssetTransactionsProvider {
  AssetTransactionsProvider(this.ref, this.arguments) {
    ref.onDispose(() {
      _onTransactionSelectedSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Asset arguments;

  final PublishSubject<Tuple2<Asset, GdkTransaction>>
      _onTransactionSelectedSubject = PublishSubject();
  Stream<Tuple2<Asset, GdkTransaction>?> _onTransactionSelectedStream() =>
      _onTransactionSelectedSubject.switchMap((data) =>
          Stream<Tuple2<Asset, GdkTransaction>?>.value(data)
              .concatWith([Stream.value(null)]));

  late final Stream<AsyncValue<Asset>> _assetStream = Stream.value(arguments)
      .map((asset) => AsyncValue.data(asset))
      .startWith(const AsyncValue.loading())
      .onErrorReturnWith(
          (error, stackTrace) => AsyncValue.error(error, stackTrace))
      .shareReplay(maxSize: 1);

  Stream<AssetTransactionsUiModel> _assetTransactionsUiModel(
          BuildContext context) =>
      _assetStream.switchMap((value) => value.when(
            data: (asset) => Stream.value(asset)
                .asyncMap<AssetTransactionsUiModel>((asset) => ref
                    .read(formatterProvider)
                    .formatAssetAmount(
                        amount: asset.amount, precision: asset.precision)
                    .then((cryptoAmountText) => ref
                            .read(assetIconsCacheProvider)
                            .getImageDataForAssetId(asset.assetId)
                            .then((icon) {
                          final titleText = asset.name;
                          final cryptoCurrencyText = asset.ticker;
                          return AssetTransactionsSuccessUiModel(
                            icon: icon,
                            titleText: titleText,
                            cryptoAmountText: cryptoAmountText,
                            cryptoCurrencyText: cryptoCurrencyText,
                          );
                        })))
                .startWith(const AssetTransactionsLoadingUiModel())
                .onErrorReturnWith((_, __) => AssetTransactionsErrorUiModel(
                      description:
                          AppLocalizations.of(context)!.unknownErrorSubtitle,
                      buttonTitle: AppLocalizations.of(context)!
                          .assetTransactionsErrorButton,
                      buttonAction: () {},
                    )),
            loading: () =>
                Stream.value(const AssetTransactionsLoadingUiModel()),
            error: (_, __) => Stream.value(AssetTransactionsErrorUiModel(
              description: AppLocalizations.of(context)!.unknownErrorSubtitle,
              buttonTitle:
                  AppLocalizations.of(context)!.assetTransactionsErrorButton,
              buttonAction: () {},
            )),
          ));

  Stream<String> _conversionStream() =>
      _assetStream.switchMap((value) => value.maybeWhen(
            data: (asset) => ref
                .read(fiatProvider)
                .satoshiToFiatWithCurrencyStream(asset, asset.amount),
            orElse: () => const Stream.empty(),
          ));

  // TODO Replace Tuple4 with data model
  late final Stream<AsyncValue<List<Tuple4<GdkTransaction, GdkAssetInformation?, bool, Decimal?>>>>
      _transactionsStream = _assetStream
          .switchMap((value) => value.maybeWhen(
                data: (asset) => Stream.value(asset),
                orElse: () => const Stream<Asset>.empty(),
              ))
          .switchMap((asset) => Stream.value(null)
              .switchMap((_) => ref
                  .read(liquidProvider)
                  .transactionEventSubject
                  .startWith(null)
                  .asyncMap((_) => ref.read(liquidProvider).getTransactions())
                  .map((transactions) => transactions
                      ?.where((t) => t.satoshi?[asset.assetId] != null)
                      .where((t) => t.type == GdkTransactionTypeEnum.swap)
                      .toList()))
              .map((transactions) => transactions ?? <GdkTransaction>[])
              .asyncMap((transactions) => Stream.fromIterable(transactions)
                      .asyncMap((transaction) async {
                    if (transaction.type == GdkTransactionTypeEnum.swap) {
                      GdkAssetInformation? secondAsset;
                      if (asset.assetId == transaction.swapOutgoingAssetId) {
                        secondAsset = await ref
                            .read(aquaProvider)
                            .gdkRawAssetForAssetId(
                                transaction.swapIncomingAssetId!);
                        return Tuple2(transaction, secondAsset);
                      }

                      secondAsset = await ref
                          .read(aquaProvider)
                          .gdkRawAssetForAssetId(
                              transaction.swapOutgoingAssetId!);

                      return Tuple2(transaction, secondAsset);
                    }

                    return Tuple2(transaction, null);
                  }).toList())
              .switchMap((tuples) => ref
                  .read(liquidProvider)
                  .blockHeightEventSubject
                  .asyncMap((currentBlockHeight) =>
                      Stream.fromIterable(tuples).map((tuple) {
                        final transactionBlockHeight =
                            tuple.item1.blockHeight ?? 0;
                        final confirmationCount = transactionBlockHeight == 0
                            ? 0
                            : currentBlockHeight - transactionBlockHeight + 1;

                        final pending = confirmationCount < 2;
                        return Tuple3(tuple.item1, tuple.item2, pending);
                      }).toList()))
              .switchMap((tuples) => asset.hasFiatRate
                  ? ref.read(fiatProvider).rateStream.take(1).asyncMap((rate) => Stream.fromIterable(tuples).asyncMap((tuple) async {
                        final transaction = tuple.item1;
                        final amount =
                            transaction.satoshi?[asset.assetId] as int;
                        final correspondingAsset = tuple.item2;
                        final pending = tuple.item3;
                        final fiat = await ref
                            .read(fiatProvider)
                            .satoshiToFiat(asset, amount, rate);

                        return Tuple4(
                            transaction, correspondingAsset, pending, fiat);
                      }).toList())
                  : Stream.value(tuples).asyncMap((tuples) => Stream.fromIterable(tuples).asyncMap((tuple) async {
                        final transaction = tuple.item1;
                        final correspondingAsset = tuple.item2;
                        final pending = tuple.item3;

                        return Tuple4(
                            transaction, correspondingAsset, pending, null);
                      }).toList()))
              .map((transactions) => AsyncValue.data(transactions))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith((error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  Stream<AssetTransactionsListUiModel> _listUiModelStream(
          BuildContext context) =>
      _transactionsStream.asyncMap((value) => value.when(
            data: (tuples) => tuples.isNotEmpty
                ? Future.value(const AssetTransactionsSuccessListUiModel())
                : _assetStream
                    .switchMap((value) => value.maybeWhen(
                          data: (asset) => asset.isBTC
                              ? Stream.value(
                                  const AssetTransactionsEmptyBitcoinListUiModel())
                              : Stream.value(
                                  AssetTransactionsEmptyLiquidListUiModel(
                                  description: AppLocalizations.of(context)!
                                      .assetTransactionsLiquidEmptyList(
                                          asset.name),
                                )),
                          orElse: () => const Stream<
                              AssetTransactionsListUiModel>.empty(),
                        ))
                    .first,
            loading: () =>
                Future.value(const AssetTransactionsLoadingListUiModel()),
            error: (_, __) => Future.value(AssetTransactionsErrorListUiModel(
              description: AppLocalizations.of(context)!.unknownErrorSubtitle,
              buttonTitle: AppLocalizations.of(context)!.unknownErrorButton,
              buttonAction: () {},
            )),
          ));

  Stream<List<AssetTransactionsItemUiModel>> _itemUiModelsStream(
          BuildContext context) =>
      _assetStream
          .switchMap((value) => value.maybeWhen(
                data: (asset) => Stream.value(asset),
                orElse: () => const Stream<Asset>.empty(),
              ))
          .switchMap((asset) => _transactionsStream
              .switchMap((value) => value.maybeWhen(
                    data: (tuples) => Stream.value(tuples),
                    orElse: () => const Stream<
                        List<
                            Tuple4<GdkTransaction, GdkAssetInformation?, bool,
                                Decimal?>>>.empty(),
                  ))
              .asyncMap((tuples) => Stream.fromIterable(tuples)
                  .flatMap((tuple) => Stream.value(tuple)
                          .asyncMap<AssetTransactionsItemUiModel>(
                              (tuple) async {
                        final transaction = tuple.item1;
                        final correspondingAsset = tuple.item2;
                        final pending = tuple.item3;
                        final fiat = tuple.item4;
                        final assetName = () {
                          return pending
                              ? 'assets/pending.svg'
                              : 'assets/exchange.svg';
                        }.call();
                        final createdAt = transaction.createdAtTs != null
                            ? DateFormat.yMMMd().format(
                                DateTime.fromMicrosecondsSinceEpoch(
                                    transaction.createdAtTs!))
                            : '';
                        final type = () {
                          if (asset.assetId ==
                              transaction.swapOutgoingAssetId) {
                            return AppLocalizations.of(context)!
                                .assetTransactionsTypeSwapTo(
                                    correspondingAsset?.ticker ?? '');
                          }

                          return AppLocalizations.of(context)!
                              .assetTransactionsTypeSwapFrom(
                                  correspondingAsset?.ticker ?? '');
                        }.call();
                        final amount =
                            transaction.satoshi?[asset.assetId] as int;
                        final formattedAmount = await () async {
                          return await ref
                              .read(formatterProvider)
                              .signedFormatAssetAmount(
                                amount: amount,
                                precision: asset.precision,
                              );
                        }.call();
                        final cryptoAmount = '$formattedAmount ${asset.ticker}';
                        final formattedFiatWithCurrency = await () async {
                          if (fiat != null) {
                            final formattedFiat = await ref
                                .read(fiatProvider)
                                .formattedFiat(fiat);
                            final currency = await ref
                                .read(fiatProvider)
                                .currencyStream
                                .first;
                            return '$currency $formattedFiat';
                          } else {
                            return '';
                          }
                        }.call();
                        // ignore: prefer_function_declarations_over_variables
                        final onPressed = () {
                          final data = Tuple2(asset, transaction);
                          _onTransactionSelectedSubject.add(data);
                        };
                        return AssetTransactionsDataItemUiModel(
                          assetName: assetName,
                          createdAt: createdAt,
                          type: type,
                          gdkType: transaction.type,
                          cryptoAmount: cryptoAmount,
                          fiat: formattedFiatWithCurrency,
                          onPressed: onPressed,
                        );
                      }).onErrorReturn(
                              const AssetTransactionsErrorItemUiModel()))
                  .toList())
              .startWith([const AssetTransactionsLoadingItemUiModel()]));
}

final _assetTransactionsOnSelectedStreamProvider = StreamProvider.autoDispose
    .family<Tuple2<Asset, GdkTransaction>?, Asset>((ref, asset) async* {
  yield* ref
      .watch(assetTransactionsProvider(asset))
      ._onTransactionSelectedStream();
});

final assetTransactionsOnSelectedProvider = Provider.autoDispose
    .family<Tuple2<Asset, GdkTransaction>?, Asset>((ref, asset) {
  return ref
      .watch(_assetTransactionsOnSelectedStreamProvider(asset))
      .data
      ?.value;
});

final _assetTransactionsUiModelStreamProvider = StreamProvider.autoDispose
    .family<AssetTransactionsUiModel, Tuple2<Asset, BuildContext>>(
        (ref, tuple) async* {
  final asset = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionsProvider(asset))
      ._assetTransactionsUiModel(context);
});

final assetTransactionsUiModelProvider = Provider.autoDispose
    .family<AssetTransactionsUiModel, Tuple2<Asset, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetTransactionsUiModelStreamProvider(tuple))
          .data
          ?.value ??
      const AssetTransactionsLoadingUiModel();
});

final _assetTransactionsConversionStreamProvider =
    StreamProvider.autoDispose.family<String, Asset>((ref, asset) async* {
  yield* ref.watch(assetTransactionsProvider(asset))._conversionStream();
});

final assetTransactionsConversionProvider =
    Provider.autoDispose.family<String?, Asset>((ref, asset) {
  return ref
      .watch(_assetTransactionsConversionStreamProvider(asset))
      .data
      ?.value;
});

final _assetTransactionsListUiModelStreamProvider = StreamProvider.autoDispose
    .family<AssetTransactionsListUiModel, Tuple2<Asset, BuildContext>>(
        (ref, tuple) async* {
  final asset = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionsProvider(asset))
      ._listUiModelStream(context);
});

final assetTransactionsListUiModelProvider = Provider.autoDispose
    .family<AssetTransactionsListUiModel, Tuple2<Asset, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetTransactionsListUiModelStreamProvider(tuple))
          .data
          ?.value ??
      const AssetTransactionsLoadingListUiModel();
});

final _assetTransactionsItemUiModelsStreamProvider = StreamProvider.autoDispose
    .family<List<AssetTransactionsItemUiModel>, Tuple2<Asset, BuildContext>>(
        (ref, tuple) async* {
  final asset = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionsProvider(asset))
      ._itemUiModelsStream(context);
});

final assetTransactionsItemUiModelsProvider = Provider.autoDispose
    .family<List<AssetTransactionsItemUiModel>, Tuple2<Asset, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetTransactionsItemUiModelsStreamProvider(tuple))
          .data
          ?.value ??
      [const AssetTransactionsLoadingItemUiModel()];
});

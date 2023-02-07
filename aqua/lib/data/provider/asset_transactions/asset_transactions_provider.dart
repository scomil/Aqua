import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_item_ui_model.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_ui_model.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/fiat_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_arguments.dart';
import 'package:aqua/data/provider/send_prompt/send_prompt_arguments.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

final assetTransactionsProvider = Provider.family
    .autoDispose<AssetTransactionsProvider, Object?>(
        (ref, arguments) => AssetTransactionsProvider(ref, arguments));

class AssetTransactionsProvider {
  AssetTransactionsProvider(this.ref, this.arguments) {
    ref.onDispose(() {
      _popSubject.close();
      _onTransactionSelectedSubject.close();
      _reloadSubject.close();
      _navigateToReceiveSubject.close();
      _navigateToSendPromptSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? arguments;

  final PublishSubject<void> _popSubject = PublishSubject();
  Stream<Object> _popStream() => _popSubject.map((_) => Object());

  final PublishSubject<Tuple2<Asset, GdkTransaction>>
      _onTransactionSelectedSubject = PublishSubject();
  Stream<Tuple2<Asset, GdkTransaction>?> _onTransactionSelectedStream() =>
      _onTransactionSelectedSubject.switchMap((data) =>
          Stream<Tuple2<Asset, GdkTransaction>?>.value(data)
              .concatWith([Stream.value(null)]));

  late final Stream<AsyncValue<Asset>> _assetStream = Stream.value(arguments)
      .asyncMap((value) async {
        try {
          return arguments as Asset;
        } catch (_) {
          throw AssetTransactionsProviderInvalidArgumentsException();
        }
      })
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
                .onErrorResumeNext(
                    Stream.error(AssetTransactionsInvalidUiModelException()))
                .onErrorReturnWith((_, __) => AssetTransactionsErrorUiModel(
                    description:
                        AppLocalizations.of(context)!.unknownErrorSubtitle,
                    buttonTitle: AppLocalizations.of(context)!
                        .assetTransactionsErrorButton,
                    buttonAction: () {
                      _popSubject.add(null);
                    })),
            loading: () =>
                Stream.value(const AssetTransactionsLoadingUiModel()),
            error: (_, __) => Stream.value(AssetTransactionsErrorUiModel(
              description: AppLocalizations.of(context)!.unknownErrorSubtitle,
              buttonTitle:
                  AppLocalizations.of(context)!.assetTransactionsErrorButton,
              buttonAction: () {
                _popSubject.add(null);
              },
            )),
          ));

  Stream<String> _conversionStream() =>
      _assetStream.switchMap((value) => value.maybeWhen(
            data: (asset) => ref
                .read(fiatProvider)
                .satoshiToFiatWithCurrencyStream(asset, asset.amount),
            orElse: () => const Stream.empty(),
          ));

  final PublishSubject<void> _reloadSubject = PublishSubject();
  void reload() {
    _reloadSubject.add(null);
  }

  // TODO Replace Tuple4 with data model
  late final Stream<AsyncValue<List<Tuple4<GdkTransaction, GdkAssetInformation?, bool, Decimal?>>>>
      _transactionsStream = _assetStream
          .switchMap((value) => value.maybeWhen(
                data: (asset) => Stream.value(asset),
                orElse: () => const Stream<Asset>.empty(),
              ))
          .switchMap((asset) => _reloadSubject
              .startWith(null)
              .switchMap((_) {
                return asset.isBTC
                    ? ref
                        .read(bitcoinProvider)
                        .transactionEventSubject
                        .startWith(null)
                        .asyncMap(
                            (_) => ref.read(bitcoinProvider).getTransactions())
                    : ref
                        .read(liquidProvider)
                        .transactionEventSubject
                        .startWith(null)
                        .asyncMap(
                            (_) => ref.read(liquidProvider).getTransactions())
                        .map((transactions) => transactions
                            ?.where((transaction) =>
                                transaction.satoshi?[asset.assetId] != null)
                            .toList());
              })
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
              .switchMap((tuples) => Stream.value(asset)
                  .switchMap((asset) => asset.isBTC
                      ? ref.read(bitcoinProvider).blockHeightEventSubject
                      : ref.read(liquidProvider).blockHeightEventSubject)
                  .asyncMap((currentBlockHeight) =>
                      Stream.fromIterable(tuples).map((tuple) {
                        final transactionBlockHeight =
                            tuple.item1.blockHeight ?? 0;
                        final confirmationCount = transactionBlockHeight == 0
                            ? 0
                            : currentBlockHeight - transactionBlockHeight + 1;

                        final pending = asset.isBTC
                            ? (confirmationCount < 6)
                            : (confirmationCount < 2);
                        return Tuple3(tuple.item1, tuple.item2, pending);
                      }).toList()))
              .switchMap((tuples) => asset.hasFiatRate
                  ? ref
                      .read(fiatProvider)
                      .rateStream
                      .take(1)
                      .asyncMap((rate) => Stream.fromIterable(tuples).asyncMap((tuple) async {
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
              buttonAction: () {
                _reloadSubject.add(null);
              },
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
                          if (pending) {
                            return 'assets/pending.svg';
                          } else {
                            switch (transaction.type) {
                              case GdkTransactionTypeEnum.incoming:
                                return 'assets/incoming.svg';
                              case GdkTransactionTypeEnum.outgoing:
                                return 'assets/outgoing.svg';
                              case GdkTransactionTypeEnum.redeposit:
                              case GdkTransactionTypeEnum.swap:
                                return 'assets/exchange.svg';
                              default:
                                throw AssetTransactionsInvalidTypeException();
                            }
                          }
                        }.call();
                        final createdAt = transaction.createdAtTs != null
                            ? DateFormat.yMMMd().format(
                                DateTime.fromMicrosecondsSinceEpoch(
                                    transaction.createdAtTs!))
                            : '';
                        final type = () {
                          switch (transaction.type) {
                            case GdkTransactionTypeEnum.incoming:
                              return AppLocalizations.of(context)!
                                  .assetTransactionsTypeReceived;
                            case GdkTransactionTypeEnum.outgoing:
                              return AppLocalizations.of(context)!
                                  .assetTransactionsTypeSent;
                            case GdkTransactionTypeEnum.redeposit:
                              return AppLocalizations.of(context)!
                                  .assetTransactionsTypeRedeposit;
                            case GdkTransactionTypeEnum.swap:
                              if (asset.assetId ==
                                  transaction.swapOutgoingAssetId) {
                                return AppLocalizations.of(context)!
                                    .assetTransactionsTypeSwapTo(
                                        correspondingAsset?.ticker ?? '');
                              }

                              return AppLocalizations.of(context)!
                                  .assetTransactionsTypeSwapFrom(
                                      correspondingAsset?.ticker ?? '');
                            default:
                              throw AssetTransactionsInvalidTypeException();
                          }
                        }.call();
                        final amount =
                            transaction.satoshi?[asset.assetId] as int;
                        final formattedAmount = await () async {
                          switch (transaction.type) {
                            case GdkTransactionTypeEnum.incoming:
                              return await ref
                                  .read(formatterProvider)
                                  .signedFormatAssetAmount(
                                    amount: amount,
                                    precision: asset.precision,
                                  );
                            case GdkTransactionTypeEnum.outgoing:
                              return await ref
                                  .read(formatterProvider)
                                  .signedFormatAssetAmount(
                                    amount: -amount,
                                    precision: asset.precision,
                                  );
                            case GdkTransactionTypeEnum.redeposit:
                              return await ref
                                  .read(formatterProvider)
                                  .signedFormatAssetAmount(
                                    amount: -amount,
                                    precision: asset.precision,
                                  );
                            case GdkTransactionTypeEnum.swap:
                              return await ref
                                  .read(formatterProvider)
                                  .signedFormatAssetAmount(
                                    amount: amount,
                                    precision: asset.precision,
                                  );
                            default:
                              throw AssetTransactionsInvalidTypeException();
                          }
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

  final PublishSubject<void> _navigateToReceiveSubject = PublishSubject();
  void navigateToReceive() {
    _navigateToReceiveSubject.add(null);
  }

  Stream<ReceiveQrCodeArguments?> _navigateToReceiveStream() =>
      _navigateToReceiveSubject
          .switchMap((_) => _assetStream)
          .switchMap((value) => value.maybeWhen(
                data: (asset) => Stream.value(asset)
                    .map<ReceiveQrCodeArguments?>(
                        (asset) => ReceiveQrCodeArguments(asset: asset))
                    .concatWith([Stream.value(null)]),
                orElse: () => const Stream.empty(),
              ));

  final PublishSubject<void> _navigateToSendPromptSubject = PublishSubject();
  void navigateToSendPrompt() {
    _navigateToSendPromptSubject.add(null);
  }

  Stream<SendPromptArguments?> _navigateToSendPromptStream() =>
      _navigateToSendPromptSubject.switchMap((_) => Stream.value(_)
          .asyncMap((_) => _assetStream
              .switchMap<Asset>((value) => value.maybeWhen(
                    data: (asset) => Stream.value(asset),
                    orElse: () => const Stream.empty(),
                  ))
              .first)
          .map<SendPromptArguments?>(
              (asset) => SendPromptArguments(asset: asset))
          .concatWith([Stream.value(null)]));
}

final _assetTransactionsPopStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(assetTransactionsProvider(arguments))._popStream();
});

final assetTransactionsPopProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_assetTransactionsPopStreamProvider(arguments)).data?.value;
});

final _assetTransactionsOnSelectedStreamProvider = StreamProvider.family
    .autoDispose<Tuple2<Asset, GdkTransaction>?, Object?>(
        (ref, arguments) async* {
  yield* ref
      .watch(assetTransactionsProvider(arguments))
      ._onTransactionSelectedStream();
});

final assetTransactionsOnSelectedProvider = Provider.family
    .autoDispose<Tuple2<Asset, GdkTransaction>?, Object?>((ref, arguments) {
  return ref
      .watch(_assetTransactionsOnSelectedStreamProvider(arguments))
      .data
      ?.value;
});

final _assetTransactionsUiModelStreamProvider = StreamProvider.family
    .autoDispose<AssetTransactionsUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionsProvider(arguments))
      ._assetTransactionsUiModel(context);
});

final assetTransactionsUiModelProvider = Provider.family
    .autoDispose<AssetTransactionsUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetTransactionsUiModelStreamProvider(tuple))
          .data
          ?.value ??
      const AssetTransactionsLoadingUiModel();
});

final _assetTransactionsConversionStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(assetTransactionsProvider(arguments))._conversionStream();
});

final assetTransactionsConversionProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref
      .watch(_assetTransactionsConversionStreamProvider(arguments))
      .data
      ?.value;
});

final _assetTransactionsListUiModelStreamProvider = StreamProvider.family
    .autoDispose<AssetTransactionsListUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionsProvider(arguments))
      ._listUiModelStream(context);
});

final assetTransactionsListUiModelProvider = Provider.family
    .autoDispose<AssetTransactionsListUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetTransactionsListUiModelStreamProvider(tuple))
          .data
          ?.value ??
      const AssetTransactionsLoadingListUiModel();
});

final _assetTransactionsItemUiModelsStreamProvider = StreamProvider.family
    .autoDispose<List<AssetTransactionsItemUiModel>,
        Tuple2<Object?, BuildContext>>((ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionsProvider(arguments))
      ._itemUiModelsStream(context);
});

final assetTransactionsItemUiModelsProvider = Provider.family.autoDispose<
    List<AssetTransactionsItemUiModel>,
    Tuple2<Object?, BuildContext>>((ref, tuple) {
  return ref
          .watch(_assetTransactionsItemUiModelsStreamProvider(tuple))
          .data
          ?.value ??
      [const AssetTransactionsLoadingItemUiModel()];
});

final _assetTransactionsNavigateToReceiveStreamProvider = StreamProvider.family
    .autoDispose<ReceiveQrCodeArguments?, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionsProvider(arguments))
      ._navigateToReceiveStream();
});

final assetTransactionsNavigateToReceiveProvider = Provider.family
    .autoDispose<ReceiveQrCodeArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_assetTransactionsNavigateToReceiveStreamProvider(arguments))
      .data
      ?.value;
});

final _assetTransactionsNavigateToSendPromptStreamProvider = StreamProvider
    .family
    .autoDispose<SendPromptArguments?, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionsProvider(arguments))
      ._navigateToSendPromptStream();
});

final assetTransactionsNavigateToSendPromptProvider = Provider.family
    .autoDispose<SendPromptArguments?, Object?>((ref, arguments) {
  return ref
      .watch(_assetTransactionsNavigateToSendPromptStreamProvider(arguments))
      .data
      ?.value;
});

class AssetTransactionsProviderInvalidArgumentsException implements Exception {}

class AssetTransactionsInvalidTypeException implements Exception {}

class AssetTransactionsInvalidUiModelException implements Exception {}

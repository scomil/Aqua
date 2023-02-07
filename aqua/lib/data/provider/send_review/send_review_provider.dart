import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_list/asset_list_provider.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/fiat_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:aqua/data/provider/send_review/send_review_arguments.dart';
import 'package:aqua/data/provider/send_review/send_review_processing_result.dart';
import 'package:aqua/data/provider/send_review/send_review_ui_model.dart';
import 'package:aqua/data/provider/wallet_tab_provider.dart';
import 'package:aqua/screens/send/send_summary_screen.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final sendReviewProvider = Provider.family
    .autoDispose<SendReviewProvider, Object?>(
        (ref, arguments) => SendReviewProvider(ref, arguments));

class SendReviewProvider {
  SendReviewProvider(this._ref, this._arguments) {
    _ref.onDispose(() {
      _selectNetworkFeeSubject.close();
      _selectFeeOptionSubject.close();
      _customFeeSubject.close();
      _memoTextSubject.close();
      _popToPreviousRouteSubject.close();
      _popToFirstRouteSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;
  final Object? _arguments;

  late final Stream<AsyncValue<Tuple5<Asset, String, String, int, Asset>>>
      _dataStream = Stream.value(_arguments)
          .asyncMap((arguments) async {
            try {
              return arguments as SendReviewArguments;
            } catch (_) {
              throw SendReviewInvalidArgumentsException();
            }
          })
          .asyncMap((arguments) async {
            final asset = arguments.asset;
            final address = arguments.address;
            final amount = arguments.amount;
            final satoshi = await _ref
                .read(formatterProvider)
                .parseAssetAmount(amount: amount, precision: asset.precision);
            final allAssets = await _ref.read(aquaProvider).allAssets();
            final feeAsset =
                allAssets.firstWhere((a) => asset.isBTC ? a.isBTC : a.isLBTC);

            return Tuple5(asset, address, amount, satoshi, feeAsset);
          })
          .map((arguments) => AsyncValue.data(arguments))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  Stream<SendReviewUiModel> _uiModelStream() =>
      _dataStream.switchMap((value) => value.maybeWhen(
            data: (tuple) => Stream.value(tuple).asyncMap((tuple) async {
              final asset = tuple.item1;
              final amount = '${tuple.item3} ${asset.ticker}';
              final address = tuple.item2;
              final detailsItemUiModel = SendReviewDetailsItemUiModel(
                amount: amount,
                address: address,
              );
              const memoItemUiModel = SendReviewMemoItemUiModel();
              const spacerItemUiModel = SendReviewSpacerItemUiModel();
              const buttonItemUiModel = SendReviewButtonItemUiModel();
              return SendReviewSuccessUiModel(items: [
                detailsItemUiModel,
                memoItemUiModel,
                spacerItemUiModel,
                buttonItemUiModel,
              ]);
            }),
            orElse: () => const Stream.empty(),
          ));

  Stream<String?> _conversionStream() =>
      _dataStream.switchMap((value) => value.maybeWhen(
            data: (data) => _ref
                .read(fiatProvider)
                .satoshiToFiatWithCurrencyStream(data.item1, data.item4)
                .map((e) => e.split(' ').reversed.join(' '))
                .map((e) => '≈ $e'),
            orElse: () => const Stream.empty(),
          ));

  final PublishSubject<void> _selectNetworkFeeSubject = PublishSubject();
  void selectNetworkFee() {
    _selectNetworkFeeSubject.add(null);
  }

  late final Stream<bool> _networkFeeSelectionStream = _selectNetworkFeeSubject
      .scan<bool>((accumulated, value, index) => !accumulated, false)
      .shareReplay(maxSize: 1);

  late final Stream<IconData> _networkFeeButtonIconStream =
      _networkFeeSelectionStream
          .map((value) => value ? Icons.expand_less : Icons.expand_more);

  final BehaviorSubject<int> _selectFeeOptionSubject =
      BehaviorSubject.seeded(0);
  void selectFeeOption(int index) {
    _selectFeeOptionSubject.add(index);
  }

  final BehaviorSubject<String> _customFeeSubject = BehaviorSubject.seeded('');
  void updateCustomFee(String customFee) {
    _customFeeSubject.add(customFee);
  }

  late final Stream<AsyncValue<int>> _feeStream = _selectFeeOptionSubject
      .startWith(0)
      .switchMap((selectedOption) => Stream.value(selectedOption)
          .switchMap((selectedOption) => () {
                switch (selectedOption) {
                  case 0:
                    return _dataStream
                        .switchMap<Asset>((value) => value.maybeWhen(
                              data: (tuple) => Stream.value(tuple.item1),
                              orElse: () => const Stream.empty(),
                            ))
                        .asyncMap((asset) => asset.isBTC
                            ? _ref.read(bitcoinProvider).getDefaultFees()
                            : _ref.read(liquidProvider).getDefaultFees());
                  case 1:
                    return _dataStream
                        .switchMap<Asset>((value) => value.maybeWhen(
                              data: (tuple) => Stream.value(tuple.item1),
                              orElse: () => const Stream.empty(),
                            ))
                        .asyncMap((asset) => asset.isBTC
                            ? _ref.read(bitcoinProvider).getFastFees()
                            : _ref.read(liquidProvider).getFastFees());
                  case 2:
                    return _customFeeSubject.asyncMap(
                        // User enters sat/byte, convert to sat per 1000 bytes.
                        (text) => (double.parse(text) * 1000).round());
                  default:
                    throw SendReviewInvalidFeeOptionException();
                }
              }.call())
          .map((fee) => AsyncValue.data(fee))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stacktrace) => AsyncValue.error(error, stacktrace)))
      .shareReplay(maxSize: 1);

  final _customFeeErrorSubject =
      PublishSubject<SendReviewInvalidCustomFeeException?>();
  void updateCustomFeeError(SendReviewInvalidCustomFeeException? error) {
    _customFeeErrorSubject.add(error);
  }

  Stream<SendReviewFeeUiModel> _feeUiModelStream(BuildContext context) =>
      _feeStream.switchMap((value) => value.when(
            data: (fee) => Stream.value(fee)
                .map((fee) {
                  final feeRateInSat = fee.toDouble() / 1000;
                  return "$feeRateInSat sat/byte";
                })
                .map<SendReviewFeeUiModel>(
                    (value) => SendReviewFeeSuccessUiModel(value: value))
                .startWith(const SendReviewFeeLoadingUiModel())
                .onErrorReturn(SendReviewFeeErrorUiModel(
                  title:
                      AppLocalizations.of(context)!.sendReviewFeeNotAvailable,
                )),
            loading: () => Stream.value(const SendReviewFeeLoadingUiModel()),
            error: (_, __) => Stream.value(SendReviewFeeErrorUiModel(
              title: AppLocalizations.of(context)!.sendReviewFeeNotAvailable,
            )),
          ));

  late final Stream<bool> _customFeeVisibleStream = _networkFeeSelectionStream
      .switchMap((selected) => selected
          ? _selectFeeOptionSubject.map((value) => value == 2)
          : Stream.value(false))
      .shareReplay(maxSize: 1);

  final BehaviorSubject<String> _memoTextSubject = BehaviorSubject.seeded('');
  void updateMemoText(String memoText) {
    _memoTextSubject.add(memoText);
  }

  final PublishSubject<void> _sendSubject = PublishSubject();
  void send() {
    _sendSubject.add(null);
  }

  late final Stream<AsyncValue<GdkNewTransactionReply>> _sendProcessingStream =
      _sendSubject
          .switchMap((value) {
            final selection = _selectFeeOptionSubject.valueOrNull ?? 0;
            final customFee = _customFeeSubject.valueOrNull;
            if (selection == 2 && (customFee == null || customFee.isEmpty)) {
              updateCustomFeeError(SendReviewInvalidCustomFeeException());
              return const Stream<void>.empty();
            } else {
              updateCustomFeeError(null);
              return Stream<void>.value(value);
            }
          })
          .switchMap((_) => _dataStream
              .switchMap((value) => value.maybeWhen(
                    data: (tuple) => Stream.value(tuple),
                    orElse: () => const Stream<
                        Tuple5<Asset, String, String, int, Asset>>.empty(),
                  ))
              .asyncMap((tuple) => Stream.value(tuple)
                  .asyncMap((_) => _feeStream
                      .switchMap((value) => value.maybeWhen(
                            data: (data) => Stream.value(data),
                            orElse: () => const Stream<int>.empty(),
                          ))
                      .first)
                  .map((feeRate) {
                    final address = tuple.item2;
                    final satoshi = tuple.item4;
                    final asset = tuple.item1;
                    final assetId = asset.assetId;

                    final addressee = GdkAddressee(
                      address: address,
                      satoshi: satoshi,
                      assetId: asset.isBTC ? null : assetId,
                    );

                    return GdkNewTransaction(
                      addressees: [addressee],
                      feeRate: feeRate,
                      sendAll: satoshi == asset.amount,
                      subaccount: 0,
                      utxoStrategy: GdkUtxoStrategyEnum.defaultStrategy,
                    );
                  })
                  .asyncMap((transaction) => Stream.value(transaction)
                      .map((_) => tuple.item1.isBTC
                          ? _ref.read(bitcoinProvider)
                          : _ref.read(liquidProvider))
                      .asyncMap((network) => Stream.value(network)
                          .asyncMap((network) =>
                              network.createTransaction(transaction))
                          .asyncMap((reply) async {
                            if (reply == null) {
                              throw SendReviewCreateTransactionException();
                            }
                            return reply;
                          })
                          .asyncMap((reply) => _memoTextSubject
                              .map((memo) => reply.copyWith(memo: memo))
                              .first)
                          .asyncMap((reply) => network.signTransaction(reply))
                          .asyncMap((reply) async {
                            if (reply == null) {
                              throw SendReviewSignTransactionException();
                            }
                            return reply;
                          })
                          .asyncMap((reply) => network.sendTransaction(reply))
                          .asyncMap((reply) async {
                            if (reply == null) {
                              throw SendReviewSendTransactionException();
                            }
                            return reply;
                          })
                          .first)
                      .first)
                  .first)
              .map((reply) => AsyncValue.data(reply))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stacktrace) => AsyncValue.error(error, stacktrace)))
          .shareReplay(maxSize: 1);

  Stream<SendReviewProcessingResult> _processingResultStream(
          BuildContext context) =>
      _sendProcessingStream
          .switchMap((value) => Stream.value(value).asyncMap(
                (value) => value.when(
                  data: (data) {
                    // TODO Better not cover null values with default values, but send them as they are
                    final amount = data.addressees?.first.satoshi ?? 0;
                    final fee = data.fee ?? 0;
                    final memo = data.memo ?? '';
                    final address = data.addressees?.first.address ?? '';
                    final txhash = data.txhash ?? '';
                    return Future.value(SendReviewSuccessProcessingResult(
                      amount: amount,
                      fee: fee,
                      memo: memo,
                      address: address,
                      txhash: txhash,
                    ));
                  },
                  loading: () => Future.value(SendReviewLoadingProcessingResult(
                    description:
                        AppLocalizations.of(context)!.sendReviewSending,
                  )),
                  error: (error, __) => error is GdkNetworkInsufficientFunds
                      ? _dataStream
                          .switchMap((value) => value.maybeWhen(
                                data: (tuple) =>
                                    Stream.value(tuple.item1.ticker),
                                orElse: () => const Stream<String>.empty(),
                              ))
                          .first
                          .then((ticker) async {
                          return SendReviewAmountFailureProcessingResult(
                            title: AppLocalizations.of(context)!
                                .sendReviewInsufficientFundsAlertTitle,
                            subtitle: AppLocalizations.of(context)!
                                .sendReviewInsufficientFundsAlertSubtitle(
                                    ticker),
                            cancelButtonTitle: AppLocalizations.of(context)!
                                .sendReviewInsufficientFundsAlertCancelButton,
                            getButtonTitle: AppLocalizations.of(context)!
                                .sendReviewInsufficientFundsAlertGetButton(
                                    ticker),
                            onGetButtonPressed: () {
                              _popToFirstRouteSubject.add(Object());
                            },
                            onCancelButtonPressed: () {
                              _popToPreviousRouteSubject.add(Object());
                            },
                          );
                        })
                      : Future.value(SendReviewGenericFailureProcessingResult(
                          title:
                              AppLocalizations.of(context)!.unknownErrorTitle,
                          subtitle: AppLocalizations.of(context)!
                              .unknownErrorSubtitle,
                          buttonTitle:
                              AppLocalizations.of(context)!.unknownErrorButton,
                          onButtonPressed: () {
                            _popToFirstRouteSubject.add(Object());
                          },
                        )),
                ),
              ))
          .onErrorReturn(SendReviewGenericFailureProcessingResult(
            title: AppLocalizations.of(context)!.unknownErrorTitle,
            subtitle: AppLocalizations.of(context)!.unknownErrorSubtitle,
            buttonTitle: AppLocalizations.of(context)!.unknownErrorButton,
            onButtonPressed: () {
              _popToFirstRouteSubject.add(Object());
            },
          ));

  Stream<SendSummaryScreenData> _navigateToSummaryStream(
          BuildContext context) =>
      _processingResultStream(context).switchMap((value) => value.maybeMap(
            success: (data) => _dataStream.switchMap((value) => value.maybeWhen(
                  data: (tuple) {
                    final asset = tuple.item1;
                    final amount = data.amount;
                    final fee = data.fee;
                    final memo = data.memo;
                    final address = data.address;
                    final txhash = data.txhash;
                    final feeAsset = tuple.item5;

                    final summaryData = SendSummaryScreenData(
                      asset: asset,
                      amount: amount,
                      fee: fee,
                      feeAsset: feeAsset,
                      memo: memo,
                      address: address,
                      txhash: txhash,
                    );
                    return Stream.value(summaryData);
                  },
                  orElse: () => const Stream.empty(),
                )),
            orElse: () => const Stream.empty(),
          ));

  final PublishSubject<Object> _popToPreviousRouteSubject = PublishSubject();
  final PublishSubject<Object> _popToFirstRouteSubject = PublishSubject();

  Stream<SendReviewInsufficientFeeUiModel?> _insufficientFeeUiModelsStream(
          BuildContext context) =>
      Rx.combineLatest2(
        Stream.value(Tuple2(_arguments, context))
            .asyncMap((e) => _feeStream
                .switchMap((value) => value.maybeWhen(
                      data: (data) => Stream.value(data),
                      orElse: () => const Stream<int>.empty(),
                    ))
                .first)
            .asyncMap((fee) async =>
                await _ref.read(formatterProvider).formatAssetAmount(
                      amount: fee,
                      precision: 8,
                    )),
        Stream.value(null)
            .asyncMap((_) async {
              final arguments = _ref.read(walletTabAssetsListArgumentsProvider);
              final assets = _ref.read(assetListDataProvider(arguments!));
              return assets.data?.value;
            })
            .whereNotNull()
            .asyncMap((assets) => Future.wait(assets.map((asset) async {
                  final amount =
                      await _ref.read(formatterProvider).formatAssetAmount(
                            amount: asset.amount,
                            precision: asset.precision,
                          );
                  return Tuple2(asset, amount);
                }))),
        (fee, assets) {
          // TODO: Fetch LiquidTaxi fee
          const feeUsdt = '0.5';
          final lbtcBalance =
              assets.firstWhereOrNull((e) => e.item1.isLBTC)?.item2 ?? '0';
          final usdtBalance =
              assets.firstWhereOrNull((e) => e.item1.isUSDt)?.item2 ?? '0';

          final feeLbtcAmount = double.tryParse(fee) ?? 0;
          final usdtFeeLbtcAmount = double.tryParse(feeUsdt) ?? 0;
          final lbtcBalanceAmount = double.tryParse(lbtcBalance) ?? 0;
          final usdtBalanceAmount = double.tryParse(usdtBalance) ?? 0;
          logger.d('[Aqua] Fee: $fee, LBTC: $lbtcBalance, USDT: $usdtBalance');

          final isInsufficientLbtc = feeLbtcAmount > lbtcBalanceAmount;
          final canPayInUsdt = usdtFeeLbtcAmount <= usdtBalanceAmount;
          if (isInsufficientLbtc && canPayInUsdt) {
            return SendReviewInsufficientFeeUiModel.success(
              requiredFeeLbtc: fee,
              requiredFeeUsdt: feeUsdt,
              currentLbtcBalance: lbtcBalance,
              currentUsdtBalance: usdtBalance,
            );
          }
          return null;
        },
      ).doOnError((error, stackTrace) {
        logger.d(error);
        logger.d(stackTrace);
      });
}

final _sendReviewUiModelStreamProvider = StreamProvider.family
    .autoDispose<SendReviewUiModel, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._uiModelStream();
});

final sendReviewUiModelProvider =
    Provider.family.autoDispose<SendReviewUiModel?, Object?>((ref, arguments) {
  return ref.watch(_sendReviewUiModelStreamProvider(arguments)).data?.value;
});

final _sendReviewConversionStreamProvider = StreamProvider.family
    .autoDispose<String?, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._conversionStream();
});

final sendReviewConversionProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref.watch(_sendReviewConversionStreamProvider(arguments)).data?.value;
});

final _sendReviewNetworkFeeButtonIconStreamProvider = StreamProvider.family
    .autoDispose<IconData, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._networkFeeButtonIconStream;
});

final sendReviewNetworkFeeButtonIconProvider =
    Provider.family.autoDispose<IconData, Object?>((ref, arguments) {
  return ref
          .watch(_sendReviewNetworkFeeButtonIconStreamProvider(arguments))
          .data
          ?.value ??
      Icons.expand_more;
});

final _sendReviewFeeOptionsVisibleStreamProvider =
    StreamProvider.family.autoDispose<bool, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._networkFeeSelectionStream;
});

final sendReviewFeeOptionsVisibleProvider =
    Provider.family.autoDispose<bool, Object?>((ref, arguments) {
  return ref
          .watch(_sendReviewFeeOptionsVisibleStreamProvider(arguments))
          .data
          ?.value ??
      false;
});

final _sendReviewSelectedFeeOptionStreamProvider =
    StreamProvider.family.autoDispose<int, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._selectFeeOptionSubject;
});

final sendReviewSelectedFeeOptionProvider =
    Provider.family.autoDispose<int, Object?>((ref, arguments) {
  return ref
          .watch(_sendReviewSelectedFeeOptionStreamProvider(arguments))
          .data
          ?.value ??
      0;
});

final _sendReviewCustomFeeVisibleStreamProvider =
    StreamProvider.family.autoDispose<bool, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._customFeeVisibleStream;
});

final sendReviewCustomFeeVisibleProvider =
    Provider.family.autoDispose<bool, Object?>((ref, arguments) {
  return ref
          .watch(_sendReviewCustomFeeVisibleStreamProvider(arguments))
          .data
          ?.value ??
      false;
});

final _sendReviewFeeUiModelStreamProvider = StreamProvider.family
    .autoDispose<SendReviewFeeUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref.watch(sendReviewProvider(arguments))._feeUiModelStream(context);
});

final sendReviewFeeUiModelProvider = Provider.family
    .autoDispose<SendReviewFeeUiModel?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref.watch(_sendReviewFeeUiModelStreamProvider(tuple)).data?.value;
});

final _sendReviewProcessingResultStreamProvider = StreamProvider.family
    .autoDispose<SendReviewProcessingResult, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(sendReviewProvider(arguments))
      ._processingResultStream(context);
});

final sendReviewProcessingResultProvider = Provider.family
    .autoDispose<SendReviewProcessingResult?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
      .watch(_sendReviewProcessingResultStreamProvider(tuple))
      .data
      ?.value;
});

final _sendReviewNavigateToSummaryStreamProvider = StreamProvider.family
    .autoDispose<SendSummaryScreenData, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(sendReviewProvider(arguments))
      ._navigateToSummaryStream(context);
});

final sendReviewNavigateToSummaryProvider = Provider.family
    .autoDispose<SendSummaryScreenData?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
      .watch(_sendReviewNavigateToSummaryStreamProvider(tuple))
      .data
      ?.value;
});

final _sendReviewPopToPreviousRouteStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._popToPreviousRouteSubject;
});

final sendReviewPopToPreviousRouteProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_sendReviewPopToPreviousRouteStreamProvider(arguments))
      .data
      ?.value;
});

final _sendReviewPopToFirstRouteStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._popToFirstRouteSubject;
});

final sendReviewPopToFirstRouteProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_sendReviewPopToFirstRouteStreamProvider(arguments))
      .data
      ?.value;
});

final _sendReviewInsufficientFeeUiModelProvider = StreamProvider.family
    .autoDispose<SendReviewInsufficientFeeUiModel?,
        Tuple2<Object?, BuildContext>>((ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .read(sendReviewProvider(arguments))
      ._insufficientFeeUiModelsStream(context);
});

final sendReviewInsufficientFeeUiModelProvider = Provider.family.autoDispose<
    SendReviewInsufficientFeeUiModel?,
    Tuple2<Object?, BuildContext>>((ref, tuple) {
  return ref
      .watch(_sendReviewInsufficientFeeUiModelProvider(tuple))
      .data
      ?.value;
});

final _sendReviewCustomFeeErrorProvider = StreamProvider.family
    .autoDispose<SendReviewInvalidCustomFeeException?, Object?>(
        (ref, arguments) async* {
  yield* ref.watch(sendReviewProvider(arguments))._customFeeErrorSubject;
});

final sendReviewCustomFeeErrorProvider = Provider.family
    .autoDispose<SendReviewInvalidCustomFeeException?, Object?>(
        (ref, arguments) {
  return ref.watch(_sendReviewCustomFeeErrorProvider(arguments)).data?.value;
});

class SendReviewInvalidArgumentsException implements Exception {}

class SendReviewInvalidFeeOptionException implements Exception {}

class SendReviewInvalidCustomFeeException implements Exception {}

class SendReviewCreateTransactionException implements Exception {}

class SendReviewSignTransactionException implements Exception {}

class SendReviewSendTransactionException implements Exception {}

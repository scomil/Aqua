import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:aqua/data/provider/sideshift/sideshift_http_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_transaction_state.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

const lbtcAssetId =
    '6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
const usdtAssetId =
    'ce091c998b83c78bb71a632313ba3760f1763d9cfcffae02258ffa9865a37bd2';
const btcAssetId = 'btc';

// Providers //////////////////////////////////////////////////////////////////

// Transaction state

final _transactionStateProvider =
    StreamProvider.autoDispose<SideshiftTransactionState>((ref) async* {
  yield* ref.watch(sideshiftOrderProvider)._transactionStateSubject;
});

final transactionStateProvider =
    Provider.autoDispose<SideshiftTransactionState>((ref) {
  return ref.watch(_transactionStateProvider).data?.value ??
      const SideshiftTransactionState.complete();
});

// Order In Progress

final inProgressOrderProvider =
    Provider.autoDispose<SideshiftOrderStatusResponse?>((ref) {
  final order = ref.watch(_orderStatusStreamProvider).data?.value;
  logger.d('[Sideshift] inProgressOrderProvider: $order');
  if (order?.status == OrderStatus.waiting && order?.type == OrderType.fixed) {
    // Send update only for internal transactions
    return order;
  }
  return null;
});

// Pending Order

final _pendingOrderStreamProvider =
    StreamProvider.autoDispose<SideshiftOrder?>((ref) async* {
  yield* ref.watch(sideshiftOrderProvider)._pendingOrderSubject;
});

final pendingOrderProvider = Provider.autoDispose<SideshiftOrder?>((ref) {
  return ref.watch(_pendingOrderStreamProvider).data?.value;
});

// Order Result

final orderResultProvider = Provider.autoDispose<SideshiftOrder?>((ref) {
  return ref.watch(_pendingOrderStreamProvider).data?.value;
});

// Order status

final _orderStatusStreamProvider =
    StreamProvider.autoDispose<SideshiftOrderStatusResponse>((ref) async* {
  yield* ref.watch(sideshiftOrderProvider)._orderStatusStream;
});

final orderStatusProvider =
    Provider.autoDispose<SideshiftOrderStatusResponse?>((ref) {
  return ref.watch(_orderStatusStreamProvider).data?.value;
});

// Order State Provider

final sideshiftOrderProvider = Provider<SideshiftOrderProvider>((ref) {
  return SideshiftOrderProvider(ref);
});

class SideshiftOrderProvider {
  SideshiftOrderProvider(this._ref) {
    _ref.onDispose(() {
      _transactionStateSubject.close();
      _pendingOrderSubject.close();
    });
  }

  final ProviderReference _ref;

  // Transaction state

  final _transactionStateSubject = BehaviorSubject<SideshiftTransactionState>();

  void setTransactionState(SideshiftTransactionState state) {
    _transactionStateSubject.add(state);
    logger.d('[SideShift] setTransactionState: $state');
  }

  // Pending order

  final _pendingOrderSubject = PublishSubject<SideshiftOrder?>();

  void setPendingOrder(SideshiftOrder? order) {
    _pendingOrderSubject.add(order);
    logger.d('[SideShift] SetPendingOrder ${order?.id}');
  }

  // Order status

  late final Stream<SideshiftOrderStatusResponse> _orderStatusStream =
      Rx.combineLatest2(
    Stream<int>.periodic(const Duration(seconds: 5), (e) => e).startWith(0),
    _pendingOrderSubject.stream,
    (_, order) => order?.id,
  ).doOnData((id) {
    logger.d('[Sideshift] Checking status for order $id');
  }).switchMap((orderId) {
    return orderId == null
        ? const Stream<SideshiftOrderStatusResponse>.empty()
        : Stream.value(null).asyncMap((_) async {
            final response = await _ref
                .read(sideshiftHttpProvider)
                .fetchOrderStatus(orderId);
            logger.d('[Sideshift] Order $orderId status: ${response.status}');
            return Future.value(response);
          });
  }).doOnError((error, stackTrace) {
    logger.e(error);
    logger.e(stackTrace);
  }).asBroadcastStream();

  // Order placement

  Future<void> placeOrder({
    required SideshiftAsset deliverAsset,
    required SideshiftAsset receiveAsset,
    String? refundAddress,
    String? receiveAddress,
    required TransactionTypes transactionType,
    required double? amount,
    required SideShiftAssetPairInfo exchangeRate,
  }) async {
    try {
      assert(refundAddress?.isNotEmpty == true);
      logger.d('[SideShift] Order: $deliverAsset-$receiveAsset');
      logger.d('[SideShift] $amount ($refundAddress-$receiveAddress)');

      var refundAddressValue = refundAddress;
      var receiveAddressValue = receiveAddress;

      final isIncoming =
          transactionType == TransactionTypes.internalToInternal ||
              transactionType == TransactionTypes.externalToInternal;
      final isDeliveringInternal =
          transactionType == TransactionTypes.internalToInternal ||
              transactionType == TransactionTypes.internalToExternal;

      _ref.read(sideShiftScreenProvider)
        ..setDeliverAmountError(null)
        ..setRefundAddressError(null)
        ..setReceivingAddressError(null);

      if (isIncoming) {
        final isBTC = receiveAsset.network == bitcoinNetwork;
        final address = isBTC
            ? await _ref.read(bitcoinProvider).getReceiveAddress()
            : await _ref.read(liquidProvider).getReceiveAddress();
        receiveAddressValue = address?.address;
        logger
            .d('[SideShift] $amount $refundAddressValue-$receiveAddressValue');
      }

      if (refundAddressValue == null) {
        logger.d('[SideShift] Deliver address is null');
        final error = RefundAddressException();
        _ref.read(sideShiftScreenProvider).setRefundAddressError(error);
        return Future.error(error);
      }

      if (receiveAddressValue == null) {
        logger.d('[SideShift] Receive address is null');
        final error = ReceivingAddressException();
        _ref.read(sideShiftScreenProvider).setReceivingAddressError(error);
        return Future.error(error);
      }

      if (isDeliveringInternal) {
        if (amount == null) {
          logger.d('[SideShift] Deliver amount is null');
          final error = DeliverAmountRequiredException();
          _ref.read(sideShiftScreenProvider).setDeliverAmountError(error);
          return Future.error(error);
        }

        final lbtcAsset = _ref
            .read(sideShiftAssetsListProvider)
            .data
            ?.value
            .firstWhereOrNull((e) => e.id == lbtcId);
        final lbtcBalance =
            lbtcAsset == null ? 0 : _ref.read(walletBalanceProvider(lbtcAsset));
        if (lbtcBalance <= 0) {
          logger.d('[SideShift] Not enough LBTC to pay network fee');
          final error = FeeBalanceException();
          _ref.read(sideShiftScreenProvider).setFeeBalanceError(error);
          return Future.error(error);
        }

        final balance = _ref.read(walletBalanceProvider(deliverAsset));
        if (isDeliveringInternal && amount > balance) {
          logger.d('[SideShift] Deliver amount exceed wallet balance');
          final error = DeliverAmountExceedBalanceException();
          _ref.read(sideShiftScreenProvider).setDeliverAmountError(error);
          return Future.error(error);
        }

        final min = double.tryParse(exchangeRate.min) ?? 0;
        if (amount < min) {
          logger.d('[Sideshift] Deliver Amount Error: $amount <= $min');
          final error = MinDeliverAmountException(min, deliverAsset.id);
          _ref.read(sideShiftScreenProvider).setDeliverAmountError(error);
          return Future.error(error);
        }

        final max = double.tryParse(exchangeRate.max) ?? 0;
        if (amount > max) {
          logger.d('[Sideshift] Deliver Amount Error: $amount <= $min');
          final error = MaxDeliverAmountException(max, deliverAsset.id);
          _ref.read(sideShiftScreenProvider).setDeliverAmountError(error);
          return Future.error(error);
        }

        setTransactionState(const SideshiftTransactionState.loading());
        final quote = await _ref.read(sideshiftHttpProvider).requestQuote(
              fromAsset: deliverAsset,
              toAsset: receiveAsset,
              deliverAmount: amount,
            );
        await placeInternalOrder(
          deliverAsset: deliverAsset,
          receiveAsset: receiveAsset,
          refundAddress: refundAddressValue,
          receiveAddress: receiveAddressValue,
          transactionType: transactionType,
          amount: amount,
          quote: quote,
        );
      } else {
        setTransactionState(const SideshiftTransactionState.loading());
        await placeExternalOrder(
          deliverAsset: deliverAsset,
          receiveAsset: receiveAsset,
          receiveAddress: receiveAddressValue,
        );
      }
    } catch (e) {
      if (e is GdkNetworkException) {
        setOrderError(GdkTransactionException(e));
      } else if (e is OrderException) {
        setOrderError(e);
      } else if (e is OrderQuoteException) {
        setOrderError(e);
      }
      logger.d('[SideShift] Place Order Error:');
      logger.e('[SideShift]', e);
      setTransactionState(const SideshiftTransactionState.complete());
    }
  }

  // External Order

  Future<void> placeExternalOrder({
    required SideshiftAsset deliverAsset,
    required SideshiftAsset receiveAsset,
    required String receiveAddress,
  }) async {
    setTransactionState(const SideshiftTransactionState.loading());
    final response =
        await _ref.read(sideshiftHttpProvider).requestVariableOrder(
              receiveAddress: receiveAddress,
              depositCoin: deliverAsset.coin.toLowerCase(),
              depositNetwork: deliverAsset.network.toLowerCase(),
              settleCoin: receiveAsset.coin.toLowerCase(),
              settleNetwork: receiveAsset.network.toLowerCase(),
            );
    setPendingOrder(response);
  }

  // Internal Order

  Future<void> placeInternalOrder({
    required SideshiftAsset deliverAsset,
    required SideshiftAsset receiveAsset,
    required String refundAddress,
    required String receiveAddress,
    required TransactionTypes transactionType,
    required double amount,
    required SideshiftQuoteResponse quote,
  }) async {
    setTransactionState(const SideshiftTransactionState.loading());

    final isLBTC = deliverAsset.id == lbtcId;
    final isBTC = deliverAsset.id == btcId;

    final response = await _ref.read(sideshiftHttpProvider).requestFixedOrder(
          quoteId: quote.id,
          refundAddress: refundAddress,
          receiveAddress: receiveAddress,
        );

    logger.d('[SideShift] Internal Order Quote ID: ${quote.id}');
    logger.d('[SideShift] Internal Order Order Response: $response');

    final assetBalance = _ref.read(walletBalanceProvider(deliverAsset));
    final assetBalanceSatoshi = await _ref
        .read(formatterProvider)
        .parseAssetAmount(amount: assetBalance.toString(), precision: 8);
    final amountSatoshi = await _ref
        .read(formatterProvider)
        .parseAssetAmount(amount: response.depositAmount!, precision: 8);
    final sendAll = amountSatoshi == assetBalanceSatoshi && (isBTC || isLBTC);

    final initialTransactionReply = await createGdkTransaction(
      amountSatoshi: amountSatoshi,
      sendAll: sendAll,
      response: response,
    );

    // If the order is set to send max amount from wallet then recreate the
    // sideshift fixed rate order with fee deducted from it. Pass it to gdk
    // as well.
    //
    // Note: This use case is specific to BTC and L-BTC assets, all other
    // assets should be sent as is wether it is partial or maximum amount.
    final Tuple2<GdkNewTransactionReply, SideshiftFixedOrderResponse> gdkArgs;
    if (sendAll) {
      final gdkRate = initialTransactionReply.feeRate;
      final gdkFee = initialTransactionReply.fee;
      if (gdkFee == null) {
        throw Exception('Transaction fee not found in initial request');
      }
      if (gdkRate == null) {
        throw Exception('Transaction fee rate not found in initial request');
      }

      final fee = gdkFee / 100000000;
      logger.d('[SideShift] Fiat Fee: $fee');

      if (fee <= 0) {
        throw Exception('Transaction fee cannot be less than zero');
      }

      final revisedQuote = await _ref.read(sideshiftHttpProvider).requestQuote(
            fromAsset: deliverAsset,
            toAsset: receiveAsset,
            deliverAmount: amount - fee,
          );
      logger.d('[SideShift] Revised Quote ID: ${revisedQuote.id}');
      logger.d('[SideShift] Revised Order Quote: $revisedQuote');

      final revisedOrderResponse =
          await _ref.read(sideshiftHttpProvider).requestFixedOrder(
                quoteId: revisedQuote.id,
                refundAddress: refundAddress,
                receiveAddress: receiveAddress,
                checkPermission: false,
              );
      setPendingOrder(revisedOrderResponse);

      logger.d('[SideShift] Revised Order Response: $revisedOrderResponse');

      final revisedTxnResult = await createGdkTransaction(
        amountSatoshi: assetBalanceSatoshi,
        sendAll: sendAll,
        response: revisedOrderResponse,
      );
      gdkArgs = Tuple2(revisedTxnResult, revisedOrderResponse);
    } else {
      setPendingOrder(response);
      gdkArgs = Tuple2(initialTransactionReply, response);
    }

    final txn = await execGdkTransaction(gdkArgs);
    logger.d('[SideShift] NewTransaction: Hash ${txn?.txhash}');
  }

  // GDK Order

  Future<GdkNewTransactionReply> createGdkTransaction({
    required int amountSatoshi,
    required bool sendAll,
    required SideshiftFixedOrderResponse response,
  }) async {
    final receiveAddress = response.depositAddress;
    assert(receiveAddress?.isNotEmpty == true);

    final isBTC = response.depositNetwork == bitcoinNetwork;
    final isLiquid = response.depositNetwork == liquidNetwork;
    final isUSDT = !isBTC &&
        '${response.depositCoin}-$liquidNetwork'.toLowerCase() == usdtId;
    final network =
        isBTC ? _ref.read(bitcoinProvider) : _ref.read(liquidProvider);

    if (!isBTC && !isUSDT && !isLiquid) {
      logger.e('[Sideshift] Error: external asset used for internal txn');
      throw InvalidGdkTransactionException();
    }

    final addressee = GdkAddressee(
      address: receiveAddress,
      satoshi: amountSatoshi,
      assetId: isBTC
          ? null
          : isUSDT
              ? usdtAssetId
              : lbtcAssetId,
    );
    final transaction = GdkNewTransaction(
      addressees: [addressee],
      feeRate: await network.getDefaultFees(),
      sendAll: sendAll,
      subaccount: 0,
      utxoStrategy: GdkUtxoStrategyEnum.defaultStrategy,
    );
    final reply = await network.createTransaction(transaction);
    if (reply == null) {
      throw Exception('Failed to create gdk transaction');
    }
    return reply;
  }

  Future<GdkNewTransactionReply?> execGdkTransaction(
    Tuple2<GdkNewTransactionReply, SideshiftFixedOrderResponse> gdkArgs,
  ) async {
    final reply = gdkArgs.item1;
    final res = gdkArgs.item2;
    final isBTC = res.depositNetwork == bitcoinNetwork;
    final network =
        isBTC ? _ref.read(bitcoinProvider) : _ref.read(liquidProvider);

    final signedReply = await network.signTransaction(reply);
    if (signedReply != null) {
      final response = await network.sendTransaction(signedReply);
      if (response != null) {
        logger.d('[SideShift] Order (I-I) Response: $response');
        logger.d('[SideShift] Hash: ${response.transaction}');
        return response;
      } else {
        logger.e('[SideShift] Order (I-I) Response Error: $response');
      }
    } else {
      logger.e('[SideShift] Order (I-I) Signing Error: $signedReply');
    }
    return null;
  }
}

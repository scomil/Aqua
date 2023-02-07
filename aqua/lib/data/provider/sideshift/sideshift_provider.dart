import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_http_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_icons_cache.dart';
import 'package:aqua/data/provider/wallet_tab_provider.dart';
import 'package:collection/collection.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

const liquidNetwork = 'liquid';
const bitcoinNetwork = 'bitcoin';
const btcId = 'btc-bitcoin';
const lbtcId = 'btc-liquid';
const usdtId = 'usdt-liquid';

enum TransactionTypes {
  internalToInternal,
  internalToExternal,
  externalToInternal,
  externalToExternal,
}

class AmountInput {
  AmountInput(
    this.deliverAmountText,
    this.receiveAmountText,
    this.exchangeInfo,
    this.isDeliverFocused,
  );

  final String? deliverAmountText;
  final String? receiveAmountText;
  final SideShiftAssetPairInfo exchangeInfo;
  final bool isDeliverFocused;

  double? get exchangeRate => double.tryParse(exchangeInfo.rate);

  double? get deliverAmount => double.tryParse(deliverAmountText ?? '');

  double? get receiveAmount => double.tryParse(receiveAmountText ?? '');

  @override
  String toString() =>
      'Input ($deliverAmountText, $receiveAmountText, $exchangeInfo,$isDeliverFocused';
}

// Errors /////////////////////////////////////////////////////////////////////

abstract class DeliverAmountException implements Exception {}

class DeliverAmountRequiredException implements DeliverAmountException {}

class DeliverAmountExceedBalanceException implements DeliverAmountException {}

class MinDeliverAmountException implements DeliverAmountException {
  MinDeliverAmountException(this.min, this.assetId);

  final double min;
  final String assetId;
}

class MaxDeliverAmountException implements DeliverAmountException {
  MaxDeliverAmountException(this.max, this.assetId);

  final double max;
  final String assetId;
}

class ReceivingAddressException implements Exception {}

class RefundAddressException implements Exception {}

class FeeBalanceException implements Exception {}

// Providers //////////////////////////////////////////////////////////////////

// Assets list

final sideShiftAssetsListProvider =
    FutureProvider.autoDispose<List<SideshiftAsset>>(
  (ref) async {
    final items =
        await ref.read(sideshiftHttpProvider).fetchSideShiftAssetsList();
    final fallback = items.first;
    final defDeliverAsset = items.firstWhere(
      (e) => e.id == btcId,
      orElse: () => fallback,
    );
    final defReceiveAsset = items.firstWhere(
      (e) => e.id == usdtId,
      orElse: () => fallback,
    );
    ref.read(sideShiftScreenProvider).setDeliverAsset(defDeliverAsset);
    ref.read(sideShiftScreenProvider).setReceiveAsset(defReceiveAsset);
    return items;
  },
);

final isAssetExternalProvider =
    Provider.family<bool, SideshiftAsset>((ref, asset) {
  return ref.read(externalAssetsListProvider).contains(asset);
});

final assetSelectorListProvider = Provider.autoDispose<List<SideshiftAsset>>(
  (ref) {
    final query = ref.watch(queryProvider).toLowerCase();
    final items = ref.watch(selectedTabIndexProvider) == 0
        ? ref.read(internalAssetsListProvider)
        : ref.read(externalAssetsListProvider);

    return items.where((e) {
      return e.name.toLowerCase().contains(query) ||
          e.network.toLowerCase().contains(query);
    }).sorted((a, b) {
      if (query.isNotEmpty) {
        if (a.name.toLowerCase().startsWith(query)) {
          return -1;
        } else if (b.name.toLowerCase().startsWith(query)) {
          return 1;
        }
      }
      final nameComparison = a.name.compareTo(b.name);
      return nameComparison == 0
          ? a.network.compareTo(b.network)
          : nameComparison;
    }).toList();
  },
);

final gdkAssetProvider = FutureProvider.autoDispose
    .family<Asset?, SideshiftAsset>((ref, shiftAsset) async {
  final arguments = ref.read(walletTabAssetsListArgumentsProvider);
  if (arguments == null) {
    return null;
  }

  final args = arguments as Tuple2<Object, AsyncValue<List<Asset>>>;
  final assets = args.item2.data?.value ?? [];
  return assets.firstWhereOrNull((e) {
    final isLbtc = e.isLBTC && shiftAsset.id == lbtcId;
    final isBtc = e.isBTC && shiftAsset.id == btcId;
    final isUsdt = e.isUSDt && shiftAsset.id == usdtId;
    return e.assetId == shiftAsset.coin || isLbtc || isBtc || isUsdt;
  });
});

final internalAssetsListProvider =
    Provider.autoDispose<List<SideshiftAsset>>((ref) {
  final assets = ref.watch(sideShiftAssetsListProvider).data?.value;
  return assets
          ?.where((e) =>
              e.network.toLowerCase() == liquidNetwork ||
              e.network.toLowerCase() == bitcoinNetwork)
          .toList() ??
      [];
});

final externalAssetsListProvider =
    Provider.autoDispose<List<SideshiftAsset>>((ref) {
  final assets = ref.watch(sideShiftAssetsListProvider).data?.value;
  return assets
          ?.where((e) =>
              e.network.toLowerCase() != liquidNetwork &&
              e.network.toLowerCase() != bitcoinNetwork)
          .toList() ??
      [];
});

// Search query

final _queryStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._querySubject;
});

final queryProvider = Provider.autoDispose<String>((ref) {
  return ref.watch(_queryStreamProvider).data?.value ?? '';
});

// Tab index

final _selectedTabIndexStreamProvider =
    StreamProvider.autoDispose<int>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._selectedTabIndexSubject;
});

final selectedTabIndexProvider = Provider.autoDispose<int>((ref) {
  return ref.watch(_selectedTabIndexStreamProvider).data?.value ?? 0;
});

// Selected transfer type

final selectedTransactionTypeProvider = Provider.autoDispose<TransactionTypes>(
  (ref) {
    final assets = ref.read(internalAssetsListProvider);
    final deliverAsset = ref.watch(deliverAssetProvider);
    final receiveAsset = ref.watch(receiveAssetProvider);
    final isUnspecified = deliverAsset == null && receiveAsset == null;
    final isDeliverInternal = assets.any((e) => e.id == deliverAsset?.id);
    final isReceiveInternal = assets.any((e) => e.id == receiveAsset?.id);
    if (isUnspecified || (isDeliverInternal && isReceiveInternal)) {
      return TransactionTypes.internalToInternal;
    } else if (!isDeliverInternal && isReceiveInternal) {
      return TransactionTypes.externalToInternal;
    } else if (isDeliverInternal && !isReceiveInternal) {
      return TransactionTypes.internalToExternal;
    } else {
      return TransactionTypes.externalToExternal;
    }
  },
);

// Deliver ////////////////////////////////////////////////////////////////////

// Deliver asset

final _deliverAssetStreamProvider =
    StreamProvider.autoDispose<SideshiftAsset>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._deliverAssetSubject;
});

final deliverAssetProvider = Provider.autoDispose<SideshiftAsset?>((ref) {
  return ref.watch(_deliverAssetStreamProvider).data?.value;
});

// Deliver amount input text

final _deliverAmountTextStreamProvider =
    StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._deliverAmountTextStream;
});

final deliverAmountTextProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_deliverAmountTextStreamProvider).data?.value;
});

// Deliver amount error

final _deliverAmountErrorStreamProvider =
    StreamProvider.autoDispose<DeliverAmountException?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._deliverAmountErrorSubject;
});

final deliverAmountErrorProvider =
    Provider.autoDispose<DeliverAmountException?>((ref) {
  return ref.watch(_deliverAmountErrorStreamProvider).data?.value;
});

// Receive ////////////////////////////////////////////////////////////////////

// Receive asset

final _receiveAssetStreamProvider =
    StreamProvider.autoDispose<SideshiftAsset>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._receiveAssetSubject;
});

final receiveAssetProvider = Provider.autoDispose<SideshiftAsset?>((ref) {
  return ref.watch(_receiveAssetStreamProvider).data?.value;
});

// Receive amount input text

final _receiveAmountTextStreamProvider =
    StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._receiveAmountTextStream;
});

final receiveAmountTextProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_receiveAmountTextStreamProvider).data?.value;
});

//////////////////////////////////////////////////////////////////////////////

// Exchange rate

final _exchangeRateStreamProvider =
    StreamProvider.autoDispose<SideShiftAssetPairInfo?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._exchangeRateInfoStream;
});

final exchangeRateProvider =
    Provider.autoDispose<SideShiftAssetPairInfo?>((ref) {
  return ref.watch(_exchangeRateStreamProvider).data?.value;
});

// Receive address

final _receivingAddressStreamProvider =
    StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._receivingAddressSubject;
});

final receivingAddressProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_receivingAddressStreamProvider).data?.value;
});

final _receivingAddressErrorStreamProvider =
    StreamProvider.autoDispose<ReceivingAddressException?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._receivingAddressErrorSubject;
});

final receivingAddressErrorProvider =
    Provider.autoDispose<ReceivingAddressException?>((ref) {
  return ref.watch(_receivingAddressErrorStreamProvider).data?.value;
});

// Autogenerated Address to Internal Wallet

final autogenInternalAddressProvider = FutureProvider.autoDispose
    .family<String, String>((ref, receiveAssetId) async {
  final assets = ref.watch(sideShiftAssetsListProvider).data?.value ?? [];
  final receiveAsset = assets.firstWhere((e) => e.id == receiveAssetId);
  final isBitcoin = receiveAsset.network.toLowerCase() == bitcoinNetwork;
  final address = isBitcoin
      ? await ref.read(bitcoinProvider).getReceiveAddress()
      : await ref.read(liquidProvider).getReceiveAddress();
  return address?.address ?? '';
});

// Icons

final assetIconUrlProvider =
    Provider.autoDispose.family<String, String>((ref, assetId) {
  return '$baseUrl/coins/icon/$assetId';
});

final assetIconMemCacheProvider =
    Provider.autoDispose<ScalableImageCache>((ref) {
  ref.maintainState = true;
  return ScalableImageCache();
});

final assetIconPersistentCacheProvider =
    Provider.autoDispose<InMemorySICache>((ref) {
  ref.maintainState = true;
  final storage = ref.read(sideshiftAssetIconStorageProvider);
  return InMemorySICache(storage);
});

// Wallet balance

final walletBalanceProviderStr = FutureProvider.autoDispose
    .family<String?, SideshiftAsset>((ref, shiftAsset) async {
  final arguments = ref.watch(walletTabAssetsListArgumentsProvider);
  if (arguments == null) {
    return '';
  }

  final args = arguments as Tuple2<Object, AsyncValue<List<Asset>>>;
  final assets = args.item2.data?.value ?? [];
  final asset = assets.firstWhereOrNull((e) {
    final isLbtc = e.isLBTC && shiftAsset.id == lbtcId;
    final isBtc = e.isBTC && shiftAsset.id == btcId;
    final isUsdt = e.isUSDt && shiftAsset.id == usdtId;
    return e.assetId == shiftAsset.coin || isLbtc || isBtc || isUsdt;
  });
  final isExternal =
      asset == null || (!asset.isLBTC && !asset.isBTC && !asset.isUSDt);
  final balance = !isExternal
      ? await ref.read(formatterProvider).formatAssetAmount(
            amount: asset.amount,
            precision: asset.precision,
          )
      : null;
  logger.d('[Sideshift] Asset ($balance): $asset');
  return balance;
});

final walletBalanceProvider =
    Provider.autoDispose.family<double, SideshiftAsset>((ref, asset) {
  final balance = ref.watch(walletBalanceProviderStr(asset)).data?.value;
  return Decimal.parse(balance ?? '0').toDouble();
});

final _deliverAssetBalanceProvider = Provider.autoDispose<double>((ref) {
  final asset = ref.read(deliverAssetProvider);
  final balance = asset != null
      ? ref.watch(walletBalanceProviderStr(asset)).data?.value ?? ''
      : '';
  return Decimal.parse(balance).toDouble();
});

// Deliver amount field focus

final _amountFieldFocusStreamProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._amountFieldFocusSubject;
});

final amountFieldFocusProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(_amountFieldFocusStreamProvider).data?.value ?? false;
});

// Error dialog visibility

final _errorVisibilityStreamProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._errorVisibilitySubject;
});

final errorVisibilityProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(_errorVisibilityStreamProvider).data?.value ?? false;
});

// LBTC Fee Error

final _feeBalanceErrorStreamProvider =
    StreamProvider.autoDispose<FeeBalanceException?>((ref) async* {
  yield* ref.watch(sideShiftScreenProvider)._feeBalanceErrorSubject;
});

final feeBalanceErrorProvider =
    Provider.autoDispose<FeeBalanceException?>((ref) {
  return ref.watch(_feeBalanceErrorStreamProvider).data?.value;
});

// Screen state

final sideShiftScreenProvider = Provider.autoDispose<SideShiftScreenProvider>(
    (ref) => SideShiftScreenProvider(ref));

class SideShiftScreenProvider {
  final AutoDisposeProviderReference ref;

  SideShiftScreenProvider(this.ref) {
    ref.onDispose(() {
      _querySubject.close();
      _selectedTabIndexSubject.close();
      _exchangeRateSubject.close();
      _deliverAssetSubject.close();
      _deliverAmountTextSubject.close();
      _deliverAmountErrorSubject.close();
      _receiveAssetSubject.close();
      _receiveAmountTextSubject.close();
      _receivingAddressSubject.close();
      _receivingAddressErrorSubject.close();
      _refundAddressErrorSubject.close();
      _feeBalanceErrorSubject.close();
      _amountFieldFocusSubject.close();
      _errorVisibilitySubject.close();
    });
  }

  // Asset selector search query

  final _querySubject = PublishSubject<String>();

  void onQueryChanged(String query) {
    _querySubject.add(query);
  }

  // Asset selector tab index

  final _selectedTabIndexSubject = BehaviorSubject<int>();

  void onTabChanged(int index) {
    _selectedTabIndexSubject.add(index);
  }

  // Exchange rate

  final _exchangeRateSubject = BehaviorSubject<SideShiftAssetPairInfo>();

  late final Stream<SideShiftAssetPairInfo> _exchangeRateInfoStream =
      Rx.combineLatest([
    Stream<int>.periodic(const Duration(seconds: 5), (e) => e).startWith(0),
    _deliverAssetSubject.map((_) => 0),
    _receiveAssetSubject.map((_) => 0),
  ], (e) => e).switchMap((_) {
    final deliverAsset = _deliverAssetSubject.value;
    final receiveAsset = _receiveAssetSubject.value;

    return Stream.value(1).asyncMap((value) async {
      try {
        final info = await ref
            .read(sideshiftHttpProvider)
            .fetchSideShiftAssetPair(deliverAsset, receiveAsset);
        _exchangeRateSubject.add(info);
        return Future.value(info);
      } catch (e) {
        if (e is LoadPairsException) {
          ref.read(sideshiftHttpProvider).setAssetRateInfoError(e);
        }
        return Future.error(e);
      }
    });
  });

  //////////////////////////////////////////////////////////////////////////////

  // Amount input stream

  late final _amountInputStream = Rx.combineLatest4(
    _deliverAmountTextSubject.stream.startWith(null),
    _receiveAmountTextSubject.stream.startWith(null),
    _exchangeRateSubject.stream,
    _amountFieldFocusSubject.stream.startWith(true),
    (deliver, receive, rate, focus) =>
        AmountInput(deliver, receive, rate, focus),
  ).doOnData((e) => logger.d('[Sideshift] New input: $e')).asBroadcastStream();

  // Deliver //////////////////////////////////////////////////////////////////

  // Deliver asset

  final _deliverAssetSubject = BehaviorSubject<SideshiftAsset>();

  void setDeliverAsset(SideshiftAsset asset) {
    setDeliverAmountError(null);
    setDeliverAmountText(null);
    setReceiveAmountText(null);
    _deliverAssetSubject.add(asset);
    ref.read(sideshiftHttpProvider).setAssetRateInfoError(null);
    logger.d('[SideShift] setDeliverAssetId: $asset');
  }

  // Deliver amount input text

  final _deliverAmountTextSubject = BehaviorSubject<String?>.seeded(null);

  void setDeliverAmountText(String? text) {
    _deliverAmountTextSubject.add(text);
    logger.d('[SideShift] setDeliverAmount: $text');
  }

  late final Stream<String?> _deliverAmountTextStream =
      _amountInputStream.switchMap((input) {
    final rate = input.exchangeRate;
    final receive = input.receiveAmount;
    final amount = receive != null && rate != null ? receive / rate : null;
    final fractionDigits = amount != null && amount > 10000 ? 2 : 8;
    final converted = amount?.toStringAsFixed(fractionDigits);
    logger.d('[Sideshift] Deliver: $amount');
    return input.isDeliverFocused
        ? Stream.value(input.deliverAmountText)
        : Stream.value(converted);
  }).doOnError((error, stackTrace) {
    logger.e(error);
    logger.e(stackTrace);
  }).asBroadcastStream();

  // Deliver amount percentage

  void setDeliverPercentAmount(double percent) {
    final balance = ref.read(_deliverAssetBalanceProvider);
    final amount = balance * percent / 100;
    final percentAmount = Decimal.parse(amount.toStringAsFixed(8)).toDouble();
    _deliverAmountTextSubject.add(percentAmount.toString());
    logger.d('[SideShift] setDeliverAmount %: $percent');
  }

  // Deliver amount error

  final _deliverAmountErrorSubject = BehaviorSubject<DeliverAmountException?>();

  void setDeliverAmountError(DeliverAmountException? error) {
    _deliverAmountErrorSubject.add(error);
  }

  // Receive //////////////////////////////////////////////////////////////////

  // Receive asset

  final _receiveAssetSubject = BehaviorSubject<SideshiftAsset>();

  void setReceiveAsset(SideshiftAsset asset) {
    setDeliverAmountError(null);
    setDeliverAmountText(null);
    setReceiveAmountText(null);
    _receiveAssetSubject.add(asset);
    ref.read(sideshiftHttpProvider).setAssetRateInfoError(null);
    logger.d('[SideShift] setReceiveAssetId: $asset');
  }

  // Receive amount input text

  final _receiveAmountTextSubject = BehaviorSubject<String?>();

  void setReceiveAmountText(String? text) {
    _receiveAmountTextSubject.add(text);
    logger.d('[SideShift] setReceiveAmount: $text');
  }

  late final Stream<String?> _receiveAmountTextStream =
      _amountInputStream.switchMap((input) {
    final rate = input.exchangeRate;
    final deliver = input.deliverAmount;
    final amount = deliver != null && rate != null ? deliver * rate : null;
    final fractionDigits = amount != null && amount > 10000 ? 2 : 8;
    final converted = amount?.toStringAsFixed(fractionDigits);
    logger.d('[Sideshift] Receive: $amount');
    return input.isDeliverFocused
        ? Stream.value(converted)
        : Stream.value(input.receiveAmountText);
  }).doOnError((error, stackTrace) {
    logger.e(error);
    logger.e(stackTrace);
  }).asBroadcastStream();

  //////////////////////////////////////////////////////////////////////////////

  // Receiving Address

  final _receivingAddressSubject = BehaviorSubject<String?>();

  void setReceivingAddress(String? address) {
    _receivingAddressSubject.add(address);
    logger.d('[SideShift] setReceivingAddress: $address');
  }

  final _receivingAddressErrorSubject =
      BehaviorSubject<ReceivingAddressException?>();

  void setReceivingAddressError(ReceivingAddressException? error) {
    _receivingAddressErrorSubject.add(error);
    logger.d('[SideShift] setReceivingAddressError: $error');
  }

  // Refund address error

  final _refundAddressErrorSubject = BehaviorSubject<RefundAddressException?>();

  void setRefundAddressError(RefundAddressException? error) {
    _refundAddressErrorSubject.add(error);
    logger.d('[SideShift] setRefundAddressError: $error');
  }

  // Fee balance error

  final _feeBalanceErrorSubject = BehaviorSubject<FeeBalanceException?>();

  void setFeeBalanceError(FeeBalanceException? error) {
    _feeBalanceErrorSubject.add(error);
    logger.d('[SideShift] setFeeBalanceError: $error');
  }

  // Asset Swapping

  void swapAssets({
    required SideshiftAsset? deliverAsset,
    required SideshiftAsset? receiveAsset,
    required TransactionTypes transactionType,
  }) {
    assert(receiveAsset != null && deliverAsset != null);
    setDeliverAmountError(null);
    setDeliverAsset(receiveAsset!);
    setReceiveAsset(deliverAsset!);
  }

  Stream<void> precacheAssetIcons() => Stream.value(null)
      .asyncMap(
          (_) => ref.read(sideshiftHttpProvider).fetchSideShiftAssetsList())
      .doOnData((e) => logger.d('[Sideshift] Precaching started (${e.length})'))
      .switchMap((assets) => Stream.fromIterable(assets)
          .map((asset) => asset.id)
          .doOnData((id) => logger.d('[Sideshift] Precaching $id'))
          .flatMap((id) => Stream.value('$baseUrl/coins/icon/$id')
                  .doOnDone(() => logger.d('[Sideshift] Precaching done $id'))
                  .asyncMap((url) async {
                final source = await ScalableImageSource.fromSvgHttpUrl(
                  Uri.parse(url),
                  compact: true,
                  bigFloats: true,
                ).createSI();
                await ref
                    .read(sideshiftAssetIconStorageProvider)
                    .store(key: url, value: source.toSIBytes());
              }))
          .doOnError((e, _) => logger.e('[Sideshift] Precaching error: $e')))
      .doOnData((_) => logger.d('[Sideshift] Precaching complete'))
      .onErrorResumeNext(const Stream.empty());

  // Amount field focus subject

  final _amountFieldFocusSubject = BehaviorSubject<bool>();

  void setAmountFieldFocus(bool focus) {
    _amountFieldFocusSubject.add(focus);
    logger.d('[SideShift] setAmountFieldFocus: $focus');
  }

  // Error dialog visibility subject

  final _errorVisibilitySubject = BehaviorSubject<bool>();

  void setErrorVisibility(bool visible) {
    _errorVisibilitySubject.add(visible);
    logger.d('[SideShift] setErrorVisibility: $visible');
  }
}

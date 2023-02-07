import 'dart:convert';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

// TODO: Should be environment variables?
const baseUrl = 'https://sideshift.ai/api/v2';
const apiKey = '36d9e44b268bce899255d80e1a65157f';
const affiliateId = 'vxsn0ricn';

// Errors //////////////////////////////////////////////////////////////////////

abstract class OrderError {}

class GdkTransactionException implements OrderError {
  GdkTransactionException(this.exception);

  final GdkNetworkException exception;
}

class InvalidGdkTransactionException implements OrderError {}

class NoPermissionsException implements Exception, OrderError {}

class OrderException implements Exception, OrderError {
  OrderException(this.message);

  final String? message;
}

class OrderQuoteException implements Exception, OrderError {
  OrderQuoteException(this.message);

  final String? message;
}

class LoadAssetsException implements Exception {}

class LoadPairsException implements Exception {}

class CheckPermissionsException implements Exception {}

// Providers //////////////////////////////////////////////////////////////////

// Order Error

final _orderErrorSubject = PublishSubject<OrderError?>();

final _orderErrorStreamProvider =
    StreamProvider.autoDispose<OrderError?>((ref) async* {
  yield* _orderErrorSubject.stream;
});

final orderErrorProvider = Provider.autoDispose<OrderError?>((ref) {
  return ref.watch(_orderErrorStreamProvider).data?.value;
});

void setOrderError(OrderError? error) {
  _orderErrorSubject.add(error);
  logger.d('[SideShift] setOrderError: $error');
}

// Asset List Error

final _assetListErrorSubject = PublishSubject<LoadAssetsException?>();

final _assetListErrorStreamProvider =
    StreamProvider.autoDispose<LoadAssetsException?>((ref) async* {
  yield* _assetListErrorSubject.stream;
});

final assetListErrorProvider =
    Provider.autoDispose<LoadAssetsException?>((ref) {
  return ref.watch(_assetListErrorStreamProvider).data?.value;
});

void setAssetListError(LoadAssetsException? error) {
  _assetListErrorSubject.add(error);
  logger.d('[SideShift] setAssetListError: $error');
}

// Asset Rate Info Error

final _assetsRateInfoErrorStreamProvider =
    StreamProvider.autoDispose<LoadPairsException?>((ref) async* {
  yield* ref.read(sideshiftHttpProvider)._assetsRateInfoErrorSubject.stream;
});

final assetsRateInfoErrorProvider =
    Provider.autoDispose<LoadPairsException?>((ref) {
  return ref.watch(_assetsRateInfoErrorStreamProvider).data?.value;
});

// Permissions Error

final _permissionErrorSubject = PublishSubject<CheckPermissionsException?>();

final _permissionErrorStreamProvider =
    StreamProvider.autoDispose<CheckPermissionsException?>((ref) async* {
  yield* _permissionErrorSubject.stream;
});

final permissionErrorProvider =
    Provider.autoDispose<CheckPermissionsException?>((ref) {
  return ref.watch(_permissionErrorStreamProvider).data?.value;
});

void setPermissionError(CheckPermissionsException? error) {
  _permissionErrorSubject.add(error);
  logger.d('[SideShift] setPermissionError: $error');
}

// Sideshift Http

final sideshiftHttpProvider =
    Provider.autoDispose<SideshiftHttpProvider>((ref) {
  return SideshiftHttpProvider(ref);
});

class SideshiftHttpProvider {
  SideshiftHttpProvider(this._ref);

  final AutoDisposeProviderReference _ref;

  Future<List<SideshiftAsset>> fetchSideShiftAssetsList() async {
    const url = "$baseUrl/coins";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final assets = jsonDecode(response.body) as List;
      return assets
          .cast<Map<String, dynamic>>()
          .map((e) => SideshiftAssetResponse.fromJson(e))
          .where((e) => e.networks.isNotEmpty == true)
          .expand((e) =>
              e.networks.map((n) => SideshiftAsset.create(e, network: n)))
          .toSet()
          .toList();
    } else {
      final error = LoadAssetsException();
      setAssetListError(error);
      return Future.error(error);
    }
  }

  Future<SideShiftAssetPairInfo> fetchSideShiftAssetPair(
    SideshiftAsset fromAsset,
    SideshiftAsset toAsset,
  ) async {
    logger.d('[SideShift] Pair ${fromAsset.id}/${toAsset.id}');
    final url = "$baseUrl/pair/${fromAsset.id}/${toAsset.id}";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      setAssetRateInfoError(null);
      return SideShiftAssetPairInfo.fromJson(json);
    } else {
      final error = LoadPairsException();
      setAssetRateInfoError(error);
      return Future.error(error);
    }
  }

  Future<SideshiftQuoteResponse> requestQuote({
    required SideshiftAsset fromAsset,
    required SideshiftAsset toAsset,
    required double deliverAmount,
  }) async {
    const url = "$baseUrl/quotes";
    logger.d('[SideShift] Requesting order quote: $url');
    final amount = deliverAmount.toStringAsFixed(8);
    final request = SideshiftQuoteRequest(
      depositCoin: fromAsset.coin,
      settleCoin: toAsset.coin,
      depositNetwork: fromAsset.network,
      settleNetwork: toAsset.network,
      depositAmount: amount,
      affiliateId: affiliateId,
    );
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'x-sideshift-secret': apiKey,
      },
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return SideshiftQuoteResponse.fromJson(json);
    } else {
      logger.d('[SideShift] Order Quote Error: ${response.body}');
      String? message;
      try {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        message = json['error']['message'] as String;
      } catch (e) {
        // No-op
        message = null;
      }
      final error = OrderQuoteException(message);
      setOrderError(error);
      return Future.error(error);
    }
  }

  Future<SideshiftPermissionsResponse> checkPermissions() async {
    const url = '$baseUrl/permissions';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      logger.d('[SideShift] Check Permissions: $json');
      return SideshiftPermissionsResponse.fromJson(json);
    } else {
      logger.d('[SideShift] Check Permissions Error: ${response.body}');
      final error = CheckPermissionsException();
      setPermissionError(error);
      return Future.error(error);
    }
  }

  Future<SideshiftFixedOrderResponse> requestFixedOrder({
    required String quoteId,
    required String receiveAddress,
    String? refundAddress,
    bool checkPermission = true,
  }) async {
    const url = "$baseUrl/shifts/fixed";
    logger.d('[SideShift] Placing fixed rate order: $url');
    setOrderError(null);
    if (checkPermission) {
      final permissions = await checkPermissions();
      if (!permissions.createShift) {
        final error = NoPermissionsException();
        setOrderError(error);
        return Future.error(error);
      }
    }

    final request = SideshiftFixedOrderRequest(
      quoteId: quoteId,
      settleAddress: receiveAddress,
      refundAddress: refundAddress,
      affiliateId: affiliateId,
    );
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'x-sideshift-secret': apiKey,
      },
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return SideshiftFixedOrderResponse.fromJson(json);
    } else {
      logger.d('[SideShift] Fixed Order Error: ${response.body}');
      String? message;
      try {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        message = json['error']['message'] as String;
      } catch (e) {
        // No-op
        message = null;
      }
      final error = OrderException(message);
      setOrderError(error);
      return Future.error(error);
    }
  }

  Future<SideshiftVariableOrderResponse> requestVariableOrder({
    required String receiveAddress,
    required String depositCoin,
    required String depositNetwork,
    required String settleCoin,
    required String settleNetwork,
    String? refundAddress,
    bool checkPermission = true,
  }) async {
    const url = "$baseUrl/shifts/variable";
    logger.d('[SideShift] Placing variable rate order: $url');
    setOrderError(null);
    if (checkPermission) {
      final permissions = await checkPermissions();
      if (!permissions.createShift) {
        final error = NoPermissionsException();
        setOrderError(error);
        return Future.error(error);
      }
    }

    final request = SideshiftVariableOrderRequest(
      settleAddress: receiveAddress,
      refundAddress: refundAddress,
      settleCoin: settleCoin,
      settleNetwork: settleNetwork,
      depositCoin: depositCoin,
      depositNetwork: depositNetwork,
      affiliateId: affiliateId,
    );
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'x-sideshift-secret': apiKey,
      },
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return SideshiftVariableOrderResponse.fromJson(json);
    } else {
      logger.d('[SideShift] Variable Order Error: ${response.body}');
      String? message;
      try {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        message = json['error']['message'] as String;
      } catch (e) {
        // No-op
        message = null;
      }
      final error = OrderException(message);
      setOrderError(error);
      return Future.error(error);
    }
  }

  Future<SideshiftOrderStatusResponse> fetchOrderStatus(String orderId) async {
    final url = "$baseUrl/shifts/$orderId";
    logger.d('[SideShift] Checking order status: $url');
    final response = await http.get(
      Uri.parse(url),
      // headers: {
      //   'Content-Type': 'application/json',
      //   'x-sideshift-secret': apiKey,
      // },
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return SideshiftOrderStatusResponse.fromJson(json);
    } else {
      logger.d('[SideShift] Order Status Error: ${response.body}');
      String? message;
      try {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        message = json['error']['message'] as String;
      } catch (e) {
        // No-op
        message = null;
      }
      final error = OrderException(message);
      setOrderError(error);
      return Future.error(error);
    }
  }

  final _assetsRateInfoErrorSubject = PublishSubject<LoadPairsException?>();

  void setAssetRateInfoError(LoadPairsException? error) {
    _assetsRateInfoErrorSubject.add(error);
    if (error != null) {
      logger.d('[SideShift] setAssetRateInfoError: $error');
    }
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sideshift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SideshiftAssetResponse _$$_SideshiftAssetResponseFromJson(Map json) =>
    _$_SideshiftAssetResponse(
      coin: json['coin'] as String,
      networks:
          (json['networks'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      hasMemo: json['hasMemo'] as bool?,
    );

Map<String, dynamic> _$$_SideshiftAssetResponseToJson(
    _$_SideshiftAssetResponse instance) {
  final val = <String, dynamic>{
    'coin': instance.coin,
    'networks': instance.networks,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hasMemo', instance.hasMemo);
  return val;
}

_$_SideShiftAssetPairInfo _$$_SideShiftAssetPairInfoFromJson(Map json) =>
    _$_SideShiftAssetPairInfo(
      rate: json['rate'] as String,
      min: json['min'] as String,
      max: json['max'] as String,
      depositCoin: json['depositCoin'] as String?,
      settleCoin: json['settleCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleNetwork: json['settleNetwork'] as String?,
    );

Map<String, dynamic> _$$_SideShiftAssetPairInfoToJson(
    _$_SideShiftAssetPairInfo instance) {
  final val = <String, dynamic>{
    'rate': instance.rate,
    'min': instance.min,
    'max': instance.max,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleNetwork', instance.settleNetwork);
  return val;
}

_$_SideshiftPermissionsResponse _$$_SideshiftPermissionsResponseFromJson(
        Map json) =>
    _$_SideshiftPermissionsResponse(
      createdAt: json['createdAt'] as String?,
      createShift: json['createShift'] as bool,
    );

Map<String, dynamic> _$$_SideshiftPermissionsResponseToJson(
    _$_SideshiftPermissionsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt);
  val['createShift'] = instance.createShift;
  return val;
}

_$_SideshiftQuoteRequest _$$_SideshiftQuoteRequestFromJson(Map json) =>
    _$_SideshiftQuoteRequest(
      depositCoin: json['depositCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleCoin: json['settleCoin'] as String?,
      settleNetwork: json['settleNetwork'] as String?,
      depositAmount: json['depositAmount'] as String?,
      settleAmount: json['settleAmount'] as String?,
      affiliateId: json['affiliateId'] as String?,
      commissionRate: json['commissionRate'] as String?,
    );

Map<String, dynamic> _$$_SideshiftQuoteRequestToJson(
    _$_SideshiftQuoteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('settleNetwork', instance.settleNetwork);
  writeNotNull('depositAmount', instance.depositAmount);
  writeNotNull('settleAmount', instance.settleAmount);
  writeNotNull('affiliateId', instance.affiliateId);
  writeNotNull('commissionRate', instance.commissionRate);
  return val;
}

_$_SideshiftQuoteResponse _$$_SideshiftQuoteResponseFromJson(Map json) =>
    _$_SideshiftQuoteResponse(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      depositCoin: json['depositCoin'] as String?,
      settleCoin: json['settleCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleNetwork: json['settleNetwork'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      depositAmount: json['depositAmount'] as String?,
      settleAmount: json['settleAmount'] as String?,
      rate: json['rate'] as String?,
      affiliateId: json['affiliateId'] as String?,
    );

Map<String, dynamic> _$$_SideshiftQuoteResponseToJson(
    _$_SideshiftQuoteResponse instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleNetwork', instance.settleNetwork);
  writeNotNull('expiresAt', instance.expiresAt?.toIso8601String());
  writeNotNull('depositAmount', instance.depositAmount);
  writeNotNull('settleAmount', instance.settleAmount);
  writeNotNull('rate', instance.rate);
  writeNotNull('affiliateId', instance.affiliateId);
  return val;
}

_$_SideshiftFixedOrderRequest _$$_SideshiftFixedOrderRequestFromJson(
        Map json) =>
    _$_SideshiftFixedOrderRequest(
      settleAddress: json['settleAddress'] as String?,
      affiliateId: json['affiliateId'] as String?,
      quoteId: json['quoteId'] as String?,
      refundAddress: json['refundAddress'] as String?,
    );

Map<String, dynamic> _$$_SideshiftFixedOrderRequestToJson(
    _$_SideshiftFixedOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('settleAddress', instance.settleAddress);
  writeNotNull('affiliateId', instance.affiliateId);
  writeNotNull('quoteId', instance.quoteId);
  writeNotNull('refundAddress', instance.refundAddress);
  return val;
}

_$_SideshiftFixedOrderResponse _$$_SideshiftFixedOrderResponseFromJson(
        Map json) =>
    _$_SideshiftFixedOrderResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      depositCoin: json['depositCoin'] as String?,
      settleCoin: json['settleCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleNetwork: json['settleNetwork'] as String?,
      depositAddress: json['depositAddress'] as String?,
      settleAddress: json['settleAddress'] as String?,
      depositMin: json['depositMin'] as String?,
      depositMax: json['depositMax'] as String?,
      type: $enumDecodeNullable(_$OrderTypeEnumMap, json['type']),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      refundAddress: json['refundAddress'] as String,
      quoteId: json['quoteId'] as String?,
      depositAmount: json['depositAmount'] as String?,
      settleAmount: json['settleAmount'] as String?,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      rate: json['rate'] as String?,
    );

Map<String, dynamic> _$$_SideshiftFixedOrderResponseToJson(
    _$_SideshiftFixedOrderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleNetwork', instance.settleNetwork);
  writeNotNull('depositAddress', instance.depositAddress);
  writeNotNull('settleAddress', instance.settleAddress);
  writeNotNull('depositMin', instance.depositMin);
  writeNotNull('depositMax', instance.depositMax);
  writeNotNull('type', _$OrderTypeEnumMap[instance.type]);
  writeNotNull('expiresAt', instance.expiresAt?.toIso8601String());
  val['refundAddress'] = instance.refundAddress;
  writeNotNull('quoteId', instance.quoteId);
  writeNotNull('depositAmount', instance.depositAmount);
  writeNotNull('settleAmount', instance.settleAmount);
  writeNotNull('status', _$OrderStatusEnumMap[instance.status]);
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('rate', instance.rate);
  return val;
}

const _$OrderTypeEnumMap = {
  OrderType.variable: 'variable',
  OrderType.fixed: 'fixed',
};

const _$OrderStatusEnumMap = {
  OrderStatus.waiting: 'waiting',
  OrderStatus.pending: 'pending',
  OrderStatus.processing: 'processing',
  OrderStatus.review: 'review',
  OrderStatus.settling: 'settling',
  OrderStatus.settled: 'settled',
  OrderStatus.refund: 'refund',
  OrderStatus.refunding: 'refunding',
  OrderStatus.refunded: 'refunded',
};

_$_SideshiftVariableOrderRequest _$$_SideshiftVariableOrderRequestFromJson(
        Map json) =>
    _$_SideshiftVariableOrderRequest(
      settleAddress: json['settleAddress'] as String?,
      refundAddress: json['refundAddress'] as String?,
      affiliateId: json['affiliateId'] as String?,
      depositCoin: json['depositCoin'] as String?,
      settleCoin: json['settleCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleNetwork: json['settleNetwork'],
      commissionRate: json['commissionRate'] as String?,
    );

Map<String, dynamic> _$$_SideshiftVariableOrderRequestToJson(
    _$_SideshiftVariableOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('settleAddress', instance.settleAddress);
  writeNotNull('refundAddress', instance.refundAddress);
  writeNotNull('affiliateId', instance.affiliateId);
  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleNetwork', instance.settleNetwork);
  writeNotNull('commissionRate', instance.commissionRate);
  return val;
}

_$_SideshiftVariableOrderResponse _$$_SideshiftVariableOrderResponseFromJson(
        Map json) =>
    _$_SideshiftVariableOrderResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      depositCoin: json['depositCoin'] as String?,
      settleCoin: json['settleCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleNetwork: json['settleNetwork'] as String?,
      depositAddress: json['depositAddress'] as String?,
      settleAddress: json['settleAddress'] as String?,
      depositMin: json['depositMin'] as String?,
      depositMax: json['depositMax'] as String?,
      type: $enumDecodeNullable(_$OrderTypeEnumMap, json['type']),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_SideshiftVariableOrderResponseToJson(
    _$_SideshiftVariableOrderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleNetwork', instance.settleNetwork);
  writeNotNull('depositAddress', instance.depositAddress);
  writeNotNull('settleAddress', instance.settleAddress);
  writeNotNull('depositMin', instance.depositMin);
  writeNotNull('depositMax', instance.depositMax);
  writeNotNull('type', _$OrderTypeEnumMap[instance.type]);
  writeNotNull('expiresAt', instance.expiresAt?.toIso8601String());
  writeNotNull('status', instance.status);
  return val;
}

_$_SideshiftOrderStatusResponse _$$_SideshiftOrderStatusResponseFromJson(
        Map json) =>
    _$_SideshiftOrderStatusResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      depositCoin: json['depositCoin'] as String?,
      settleCoin: json['settleCoin'] as String?,
      depositNetwork: json['depositNetwork'] as String?,
      settleNetwork: json['settleNetwork'] as String?,
      depositAddress: json['depositAddress'] as String?,
      settleAddress: json['settleAddress'] as String?,
      depositMin: json['depositMin'] as String?,
      depositMax: json['depositMax'] as String?,
      type: $enumDecodeNullable(_$OrderTypeEnumMap, json['type']),
      depositAmount: json['depositAmount'] as String?,
      settleAmount: json['settleAmount'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      depositHash: json['depositHash'] as String?,
      settleHash: json['settleHash'] as String?,
      depositReceivedAt: json['depositReceivedAt'] == null
          ? null
          : DateTime.parse(json['depositReceivedAt'] as String),
      rate: json['rate'] as String?,
    );

Map<String, dynamic> _$$_SideshiftOrderStatusResponseToJson(
    _$_SideshiftOrderStatusResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('depositCoin', instance.depositCoin);
  writeNotNull('settleCoin', instance.settleCoin);
  writeNotNull('depositNetwork', instance.depositNetwork);
  writeNotNull('settleNetwork', instance.settleNetwork);
  writeNotNull('depositAddress', instance.depositAddress);
  writeNotNull('settleAddress', instance.settleAddress);
  writeNotNull('depositMin', instance.depositMin);
  writeNotNull('depositMax', instance.depositMax);
  writeNotNull('type', _$OrderTypeEnumMap[instance.type]);
  writeNotNull('depositAmount', instance.depositAmount);
  writeNotNull('settleAmount', instance.settleAmount);
  writeNotNull('expiresAt', instance.expiresAt?.toIso8601String());
  writeNotNull('status', _$OrderStatusEnumMap[instance.status]);
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('depositHash', instance.depositHash);
  writeNotNull('settleHash', instance.settleHash);
  writeNotNull(
      'depositReceivedAt', instance.depositReceivedAt?.toIso8601String());
  writeNotNull('rate', instance.rate);
  return val;
}

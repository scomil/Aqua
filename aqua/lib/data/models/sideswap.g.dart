// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sideswap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerStatusResponse _$$_ServerStatusResponseFromJson(Map json) =>
    _$_ServerStatusResponse(
      id: json['id'] as int?,
      method: json['method'] as String?,
      result: json['result'] == null
          ? null
          : ServerStatusResult.fromJson(
              Map<String, dynamic>.from(json['result'] as Map)),
    );

Map<String, dynamic> _$$_ServerStatusResponseToJson(
    _$_ServerStatusResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('result', instance.result);
  return val;
}

_$_ServerStatusResult _$$_ServerStatusResultFromJson(Map json) =>
    _$_ServerStatusResult(
      bitcoinFeeRates: (json['bitcoin_fee_rates'] as List<dynamic>?)
          ?.map((e) =>
              BitcoinFeeRate.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      elementsFeeRate: (json['elements_fee_rate'] as num?)?.toDouble(),
      minPegInAmount: json['min_peg_in_amount'] as int?,
      minPegOutAmount: json['min_peg_out_amount'] as int?,
      minSubmitAmount: json['min_submit_amount'] as int?,
      priceBand: (json['price_band'] as num?)?.toDouble(),
      serverFeePercentPegIn:
          (json['server_fee_percent_peg_in'] as num?)?.toDouble(),
      serverFeePercentPegOut:
          (json['server_fee_percent_peg_out'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ServerStatusResultToJson(
    _$_ServerStatusResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bitcoin_fee_rates', instance.bitcoinFeeRates);
  writeNotNull('elements_fee_rate', instance.elementsFeeRate);
  writeNotNull('min_peg_in_amount', instance.minPegInAmount);
  writeNotNull('min_peg_out_amount', instance.minPegOutAmount);
  writeNotNull('min_submit_amount', instance.minSubmitAmount);
  writeNotNull('price_band', instance.priceBand);
  writeNotNull('server_fee_percent_peg_in', instance.serverFeePercentPegIn);
  writeNotNull('server_fee_percent_peg_out', instance.serverFeePercentPegOut);
  return val;
}

_$_BitcoinFeeRate _$$_BitcoinFeeRateFromJson(Map json) => _$_BitcoinFeeRate(
      blocks: json['blocks'] as int?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_BitcoinFeeRateToJson(_$_BitcoinFeeRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blocks', instance.blocks);
  writeNotNull('value', instance.value);
  return val;
}

_$_SubscribePriceStreamRequest _$$_SubscribePriceStreamRequestFromJson(
        Map json) =>
    _$_SubscribePriceStreamRequest(
      asset: json['asset'] as String?,
      sendBitcoins: json['send_bitcoins'] as bool? ?? true,
      sendAmount: json['send_amount'] as int?,
      recvAmount: json['recv_amount'] as int?,
    );

Map<String, dynamic> _$$_SubscribePriceStreamRequestToJson(
    _$_SubscribePriceStreamRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset', instance.asset);
  writeNotNull('send_bitcoins', instance.sendBitcoins);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('recv_amount', instance.recvAmount);
  return val;
}

_$_SubscribePriceStreamResponse _$$_SubscribePriceStreamResponseFromJson(
        Map json) =>
    _$_SubscribePriceStreamResponse(
      id: json['id'] as int?,
      method: json['method'] as String?,
      result: json['result'] == null
          ? null
          : PriceStreamResult.fromJson(
              Map<String, dynamic>.from(json['result'] as Map)),
    );

Map<String, dynamic> _$$_SubscribePriceStreamResponseToJson(
    _$_SubscribePriceStreamResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('result', instance.result);
  return val;
}

_$_UpdatePriceStreamResponse _$$_UpdatePriceStreamResponseFromJson(Map json) =>
    _$_UpdatePriceStreamResponse(
      id: json['id'] as int?,
      method: json['method'] as String?,
      params: json['params'] == null
          ? null
          : PriceStreamResult.fromJson(
              Map<String, dynamic>.from(json['params'] as Map)),
    );

Map<String, dynamic> _$$_UpdatePriceStreamResponseToJson(
    _$_UpdatePriceStreamResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('params', instance.params);
  return val;
}

_$_PriceStreamResult _$$_PriceStreamResultFromJson(Map json) =>
    _$_PriceStreamResult(
      asset: json['asset'] as String?,
      errorMsg: json['error_msg'] as String?,
      fixedFee: json['fixed_fee'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      recvAmount: json['recv_amount'] as int?,
      sendAmount: json['send_amount'] as int?,
      sendBitcoins: json['send_bitcoins'] as bool?,
      subscribeId: json['subscribe_id'] as int?,
    );

Map<String, dynamic> _$$_PriceStreamResultToJson(
    _$_PriceStreamResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset', instance.asset);
  writeNotNull('error_msg', instance.errorMsg);
  writeNotNull('fixed_fee', instance.fixedFee);
  writeNotNull('price', instance.price);
  writeNotNull('recv_amount', instance.recvAmount);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('send_bitcoins', instance.sendBitcoins);
  writeNotNull('subscribe_id', instance.subscribeId);
  return val;
}

_$_SideSwapAsset _$$_SideSwapAssetFromJson(Map json) => _$_SideSwapAsset(
      assetId: json['asset_id'] as String?,
      icon: json['icon'] as String?,
      iconUrl: json['icon_url'] as String?,
      instantSwaps: json['instant_swaps'] as bool?,
      name: json['name'] as String?,
      precision: json['precision'] as int?,
      ticker: json['ticker'] as String?,
    );

Map<String, dynamic> _$$_SideSwapAssetToJson(_$_SideSwapAsset instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset_id', instance.assetId);
  writeNotNull('icon', instance.icon);
  writeNotNull('icon_url', instance.iconUrl);
  writeNotNull('instant_swaps', instance.instantSwaps);
  writeNotNull('name', instance.name);
  writeNotNull('precision', instance.precision);
  writeNotNull('ticker', instance.ticker);
  return val;
}

_$_AssetsRequest _$$_AssetsRequestFromJson(Map json) => _$_AssetsRequest(
      embeddedIcons: json['embedded_icons'] as bool?,
    );

Map<String, dynamic> _$$_AssetsRequestToJson(_$_AssetsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('embedded_icons', instance.embeddedIcons);
  return val;
}

_$_AssetsResult _$$_AssetsResultFromJson(Map json) => _$_AssetsResult(
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) =>
              SideSwapAsset.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_AssetsResultToJson(_$_AssetsResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('assets', instance.assets);
  return val;
}

_$_AssetsResponse _$$_AssetsResponseFromJson(Map json) => _$_AssetsResponse(
      id: json['id'] as int?,
      method: json['method'] as String?,
      result: json['result'] == null
          ? null
          : AssetsResult.fromJson(
              Map<String, dynamic>.from(json['result'] as Map)),
    );

Map<String, dynamic> _$$_AssetsResponseToJson(_$_AssetsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('result', instance.result);
  return val;
}

_$_SwapStartWebRequest _$$_SwapStartWebRequestFromJson(Map json) =>
    _$_SwapStartWebRequest(
      asset: json['asset'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      sendBitcoins: json['send_bitcoins'] as bool?,
      sendAmount: json['send_amount'] as int?,
      recvAmount: json['recv_amount'] as int?,
    );

Map<String, dynamic> _$$_SwapStartWebRequestToJson(
    _$_SwapStartWebRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset', instance.asset);
  writeNotNull('price', instance.price);
  writeNotNull('send_bitcoins', instance.sendBitcoins);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('recv_amount', instance.recvAmount);
  return val;
}

_$_SwapStartWebResponse _$$_SwapStartWebResponseFromJson(Map json) =>
    _$_SwapStartWebResponse(
      id: json['id'] as int?,
      method: json['method'] as String?,
      result: json['result'] == null
          ? null
          : SwapStartWebResult.fromJson(
              Map<String, dynamic>.from(json['result'] as Map)),
    );

Map<String, dynamic> _$$_SwapStartWebResponseToJson(
    _$_SwapStartWebResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('result', instance.result);
  return val;
}

_$_SwapStartWebResult _$$_SwapStartWebResultFromJson(Map json) =>
    _$_SwapStartWebResult(
      orderId: json['order_id'] as String?,
      sendAsset: json['send_asset'] as String?,
      sendAmount: json['send_amount'] as int?,
      recvAsset: json['recv_asset'] as String?,
      recvAmount: json['recv_amount'] as int?,
      uploadUrl: json['upload_url'] as String?,
    );

Map<String, dynamic> _$$_SwapStartWebResultToJson(
    _$_SwapStartWebResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('send_asset', instance.sendAsset);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('recv_asset', instance.recvAsset);
  writeNotNull('recv_amount', instance.recvAmount);
  writeNotNull('upload_url', instance.uploadUrl);
  return val;
}

_$_HttpStartWebRequest _$$_HttpStartWebRequestFromJson(Map json) =>
    _$_HttpStartWebRequest(
      id: json['id'] as int?,
      method: json['method'] as String?,
      params: json['params'] == null
          ? null
          : HttpStartWebParams.fromJson(
              Map<String, dynamic>.from(json['params'] as Map)),
    );

Map<String, dynamic> _$$_HttpStartWebRequestToJson(
    _$_HttpStartWebRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('params', instance.params);
  return val;
}

_$_HttpStartWebParams _$$_HttpStartWebParamsFromJson(Map json) =>
    _$_HttpStartWebParams(
      orderId: json['order_id'] as String?,
      inputs: (json['inputs'] as List<dynamic>?)
          ?.map((e) =>
              GdkCreatePsetInputs.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      recvAddr: json['recv_addr'] as String?,
      changeAddr: json['change_addr'] as String?,
      sendAsset: json['send_asset'] as String?,
      sendAmount: json['send_amount'] as int?,
      recvAsset: json['recv_asset'] as String?,
      recvAmount: json['recv_amount'] as int?,
    );

Map<String, dynamic> _$$_HttpStartWebParamsToJson(
    _$_HttpStartWebParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('inputs', instance.inputs);
  writeNotNull('recv_addr', instance.recvAddr);
  writeNotNull('change_addr', instance.changeAddr);
  writeNotNull('send_asset', instance.sendAsset);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('recv_asset', instance.recvAsset);
  writeNotNull('recv_amount', instance.recvAmount);
  return val;
}

_$_HttpSwapSignRequest _$$_HttpSwapSignRequestFromJson(Map json) =>
    _$_HttpSwapSignRequest(
      id: json['id'] as int?,
      method: json['method'] as String?,
      params: json['params'] == null
          ? null
          : HttpSwapSignParams.fromJson(
              Map<String, dynamic>.from(json['params'] as Map)),
    );

Map<String, dynamic> _$$_HttpSwapSignRequestToJson(
    _$_HttpSwapSignRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('params', instance.params);
  return val;
}

_$_HttpSwapSignParams _$$_HttpSwapSignParamsFromJson(Map json) =>
    _$_HttpSwapSignParams(
      orderId: json['order_id'] as String?,
      pset: json['pset'] as String?,
      submitId: json['submit_id'] as String?,
    );

Map<String, dynamic> _$$_HttpSwapSignParamsToJson(
    _$_HttpSwapSignParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('pset', instance.pset);
  writeNotNull('submit_id', instance.submitId);
  return val;
}

_$_SwapDoneResponse _$$_SwapDoneResponseFromJson(Map json) =>
    _$_SwapDoneResponse(
      id: json['id'] as int?,
      method: json['method'] as String?,
      params: json['params'] == null
          ? null
          : SwapDoneParams.fromJson(
              Map<String, dynamic>.from(json['params'] as Map)),
    );

Map<String, dynamic> _$$_SwapDoneResponseToJson(_$_SwapDoneResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method', instance.method);
  writeNotNull('params', instance.params);
  return val;
}

_$_SwapDoneParams _$$_SwapDoneParamsFromJson(Map json) => _$_SwapDoneParams(
      networkFee: json['network_fee'] as int?,
      orderId: json['order_id'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      recvAmount: json['recv_amount'] as int?,
      recvAsset: json['recv_asset'] as String?,
      sendAmount: json['send_amount'] as int?,
      sendAsset: json['send_asset'] as String?,
      status: $enumDecodeNullable(_$SwapDoneStatusEnumEnumMap, json['status']),
      txid: json['txid'] as String?,
    );

Map<String, dynamic> _$$_SwapDoneParamsToJson(_$_SwapDoneParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('network_fee', instance.networkFee);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('price', instance.price);
  writeNotNull('recv_amount', instance.recvAmount);
  writeNotNull('recv_asset', instance.recvAsset);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('send_asset', instance.sendAsset);
  writeNotNull('status', _$SwapDoneStatusEnumEnumMap[instance.status]);
  writeNotNull('txid', instance.txid);
  return val;
}

const _$SwapDoneStatusEnumEnumMap = {
  SwapDoneStatusEnum.success: 'Success',
  SwapDoneStatusEnum.clientError: 'ClientError',
};

_$_Error _$$_ErrorFromJson(Map json) => _$_Error(
      error: json['error'] == null
          ? null
          : ErrorClass.fromJson(
              Map<String, dynamic>.from(json['error'] as Map)),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error);
  writeNotNull('id', instance.id);
  return val;
}

_$_ErrorClass _$$_ErrorClassFromJson(Map json) => _$_ErrorClass(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorClassToJson(_$_ErrorClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  return val;
}

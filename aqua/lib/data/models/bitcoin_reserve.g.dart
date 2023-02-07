// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitcoin_reserve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Status _$$_StatusFromJson(Map json) => _$_Status(
      code: $enumDecodeNullable(_$BrResponseStatusEnumMap, json['return_code']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_code', _$BrResponseStatusEnumMap[instance.code]);
  writeNotNull('message', instance.message);
  return val;
}

const _$BrResponseStatusEnumMap = {
  BrResponseStatus.success: 'SUCCESS',
  BrResponseStatus.error: 'ERROR',
  BrResponseStatus.failure: 'FAIL',
};

_$_BrUserBalanceResponse _$$_BrUserBalanceResponseFromJson(Map json) =>
    _$_BrUserBalanceResponse(
      status: json['status'] == null
          ? null
          : Status.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
      data: (json['response_data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : UserBalanceItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_BrUserBalanceResponseToJson(
    _$_BrUserBalanceResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('response_data', instance.data);
  return val;
}

_$_UserBalanceItem _$$_UserBalanceItemFromJson(Map json) => _$_UserBalanceItem(
      currency: json['currency'] as String?,
      balance: json['balance'] as String?,
    );

Map<String, dynamic> _$$_UserBalanceItemToJson(_$_UserBalanceItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('balance', instance.balance);
  return val;
}

_$_BrLoginRequest _$$_BrLoginRequestFromJson(Map json) => _$_BrLoginRequest(
      username: json['username'] as String?,
      password: json['password'] as String?,
      description: json['description'] as String?,
      tfaCode: json['tfa_code'] as String?,
    );

Map<String, dynamic> _$$_BrLoginRequestToJson(_$_BrLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('description', instance.description);
  writeNotNull('tfa_code', instance.tfaCode);
  return val;
}

_$_BrLoginResponse _$$_BrLoginResponseFromJson(Map json) => _$_BrLoginResponse(
      status: json['status'] == null
          ? null
          : Status.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
      data: json['response_data'] == null
          ? null
          : LoginResponseData.fromJson(
              Map<String, dynamic>.from(json['response_data'] as Map)),
    );

Map<String, dynamic> _$$_BrLoginResponseToJson(_$_BrLoginResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('response_data', instance.data);
  return val;
}

_$_LoginResponseData _$$_LoginResponseDataFromJson(Map json) =>
    _$_LoginResponseData(
      token: json['sign-in-token'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDataToJson(
    _$_LoginResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sign-in-token', instance.token);
  return val;
}

_$_BrTransactionsResponse _$$_BrTransactionsResponseFromJson(Map json) =>
    _$_BrTransactionsResponse(
      status: json['status'] == null
          ? null
          : Status.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
      data: json['response_data'] == null
          ? null
          : TransactionsResponseData.fromJson(
              Map<String, dynamic>.from(json['response_data'] as Map)),
    );

Map<String, dynamic> _$$_BrTransactionsResponseToJson(
    _$_BrTransactionsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('response_data', instance.data);
  return val;
}

_$_TransactionsResponseData _$$_TransactionsResponseDataFromJson(Map json) =>
    _$_TransactionsResponseData(
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(Map<String, dynamic>.from(json['stats'] as Map)),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map(
              (e) => Transaction.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_TransactionsResponseDataToJson(
    _$_TransactionsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stats', instance.stats);
  writeNotNull('transactions', instance.transactions);
  return val;
}

_$_Stats _$$_StatsFromJson(Map json) => _$_Stats(
      totalTransactionCount: json['total_transaction_count'] as int?,
      page: json['page'] as int?,
      totalNumberOfPages: json['total_number_of_pages'] as int?,
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total_transaction_count', instance.totalTransactionCount);
  writeNotNull('page', instance.page);
  writeNotNull('total_number_of_pages', instance.totalNumberOfPages);
  return val;
}

_$_Transaction _$$_TransactionFromJson(Map json) => _$_Transaction(
      transactionId: json['transaction_id'] as String?,
      transactionStatus: $enumDecodeNullable(
          _$BrTransactionStatusEnumMap, json['transaction_status']),
      transactionType: $enumDecodeNullable(
          _$BrTransactionTypeEnumMap, json['transaction_type']),
      transactionTime: json['transaction_time'] as String?,
      inCurrency: json['in_currency'] as String?,
      inAmount: json['in_amount'] as String?,
      outCurrency: json['out_currency'] as String?,
      outAmount: json['out_amount'] as String?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('transaction_status',
      _$BrTransactionStatusEnumMap[instance.transactionStatus]);
  writeNotNull(
      'transaction_type', _$BrTransactionTypeEnumMap[instance.transactionType]);
  writeNotNull('transaction_time', instance.transactionTime);
  writeNotNull('in_currency', instance.inCurrency);
  writeNotNull('in_amount', instance.inAmount);
  writeNotNull('out_currency', instance.outCurrency);
  writeNotNull('out_amount', instance.outAmount);
  return val;
}

const _$BrTransactionStatusEnumMap = {
  BrTransactionStatus.done: 'DONE',
  BrTransactionStatus.pending: 'PENDING',
};

const _$BrTransactionTypeEnumMap = {
  BrTransactionType.deposit: 'DEPOSIT',
  BrTransactionType.withdrawal: 'WITHDRAWAL',
  BrTransactionType.marketBuy: 'MARKET BUY',
  BrTransactionType.marketSell: 'MARKET SELL',
  BrTransactionType.sepaWireIn: 'SEPA_WIRE_IN',
  BrTransactionType.sepaWireOut: 'SEPA_WIRE_OUT',
};

_$_BrTransactionDetailsResponse _$$_BrTransactionDetailsResponseFromJson(
        Map json) =>
    _$_BrTransactionDetailsResponse(
      status: json['status'] == null
          ? null
          : Status.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
      data: json['response_data'] == null
          ? null
          : TransactionDetailsResponseData.fromJson(
              Map<String, dynamic>.from(json['response_data'] as Map)),
    );

Map<String, dynamic> _$$_BrTransactionDetailsResponseToJson(
    _$_BrTransactionDetailsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('response_data', instance.data);
  return val;
}

_$_TransactionDetailsResponseData _$$_TransactionDetailsResponseDataFromJson(
        Map json) =>
    _$_TransactionDetailsResponseData(
      transactionId: json['transaction_id'] as String?,
      transactionType: $enumDecodeNullable(
          _$BrTransactionTypeEnumMap, json['transaction_type']),
      transactionStatus: $enumDecodeNullable(
          _$BrTransactionStatusEnumMap, json['transaction_status']),
      assetBought: json['asset_bought'] as String?,
      assetUnitsBought: json['asset_units_bought'] as String?,
      satsBought: json['sats_bought'] as String?,
      fiatSpent: json['fiat_spent'] as String?,
      fiatCurrency: json['fiat_currency'] as String?,
      withdrawals: (json['withdrawals'] as List<dynamic>?)
          ?.map((e) => Withdrawal.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_TransactionDetailsResponseDataToJson(
    _$_TransactionDetailsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull(
      'transaction_type', _$BrTransactionTypeEnumMap[instance.transactionType]);
  writeNotNull('transaction_status',
      _$BrTransactionStatusEnumMap[instance.transactionStatus]);
  writeNotNull('asset_bought', instance.assetBought);
  writeNotNull('asset_units_bought', instance.assetUnitsBought);
  writeNotNull('sats_bought', instance.satsBought);
  writeNotNull('fiat_spent', instance.fiatSpent);
  writeNotNull('fiat_currency', instance.fiatCurrency);
  writeNotNull('withdrawals', instance.withdrawals);
  return val;
}

_$_Withdrawal _$$_WithdrawalFromJson(Map json) => _$_Withdrawal(
      rails: json['rails'] as String?,
      transactionId: json['transaction_id'] as String?,
      transactionType: $enumDecodeNullable(
          _$BrTransactionTypeEnumMap, json['transaction_type']),
      serialNumber: json['transaction_serial_number'] as int?,
      transactionStatus: $enumDecodeNullable(
          _$BrTransactionStatusEnumMap, json['transaction_status']),
      transactionAddress: json['transaction_address'] as String?,
      transactionFee: json['transaction_fee'] as String?,
      transactionCurrency: json['transaction_currency'] as String?,
      transactionIdentifier: json['transaction_identifier'] as String?,
    );

Map<String, dynamic> _$$_WithdrawalToJson(_$_Withdrawal instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rails', instance.rails);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull(
      'transaction_type', _$BrTransactionTypeEnumMap[instance.transactionType]);
  writeNotNull('transaction_serial_number', instance.serialNumber);
  writeNotNull('transaction_status',
      _$BrTransactionStatusEnumMap[instance.transactionStatus]);
  writeNotNull('transaction_address', instance.transactionAddress);
  writeNotNull('transaction_fee', instance.transactionFee);
  writeNotNull('transaction_currency', instance.transactionCurrency);
  writeNotNull('transaction_identifier', instance.transactionIdentifier);
  return val;
}

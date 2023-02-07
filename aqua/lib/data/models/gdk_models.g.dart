// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gdk_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GdkConfig _$$_GdkConfigFromJson(Map json) => _$_GdkConfig(
      dataDir: json['datadir'] as String?,
      torDir: json['tordir'] as String?,
      registryDir: json['registrydir'] as String?,
      logLevel: $enumDecodeNullable(
              _$GdkConfigLogLevelEnumEnumMap, json['log_level']) ??
          GdkConfigLogLevelEnum.info,
    );

Map<String, dynamic> _$$_GdkConfigToJson(_$_GdkConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('datadir', instance.dataDir);
  writeNotNull('tordir', instance.torDir);
  writeNotNull('registrydir', instance.registryDir);
  writeNotNull('log_level', _$GdkConfigLogLevelEnumEnumMap[instance.logLevel]);
  return val;
}

const _$GdkConfigLogLevelEnumEnumMap = {
  GdkConfigLogLevelEnum.debug: 'debug',
  GdkConfigLogLevelEnum.info: 'info',
  GdkConfigLogLevelEnum.warn: 'warn',
  GdkConfigLogLevelEnum.error: 'error',
  GdkConfigLogLevelEnum.none: 'none',
};

_$_GdkConnectionParams _$$_GdkConnectionParamsFromJson(Map json) =>
    _$_GdkConnectionParams(
      name: json['name'] as String?,
      proxy: json['proxy'] as String?,
      useTor: json['use_tor'] as bool? ?? false,
      userAgent: json['user_agent'] as String? ?? 'aqua',
      spvEnabled: json['spv_enabled'] as bool?,
      certExpiryThreshold: json['cert_expiry_threshold'] as int?,
    );

Map<String, dynamic> _$$_GdkConnectionParamsToJson(
    _$_GdkConnectionParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('proxy', instance.proxy);
  writeNotNull('use_tor', instance.useTor);
  writeNotNull('user_agent', instance.userAgent);
  writeNotNull('spv_enabled', instance.spvEnabled);
  writeNotNull('cert_expiry_threshold', instance.certExpiryThreshold);
  return val;
}

_$_GdkPinData _$$_GdkPinDataFromJson(Map json) => _$_GdkPinData(
      encryptedData: json['encrypted_data'] as String?,
      pinIdentifier: json['pin_identifier'] as String?,
      salt: json['salt'] as String?,
    );

Map<String, dynamic> _$$_GdkPinDataToJson(_$_GdkPinData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('encrypted_data', instance.encryptedData);
  writeNotNull('pin_identifier', instance.pinIdentifier);
  writeNotNull('salt', instance.salt);
  return val;
}

_$_GdkLoginCredentials _$$_GdkLoginCredentialsFromJson(Map json) =>
    _$_GdkLoginCredentials(
      mnemonic: json['mnemonic'] as String,
      username: json['username'] as String?,
      password: json['password'] as String? ?? '',
      bip39Passphrase: json['bip39_passphrase'] as String?,
      pin: json['pin'] as String?,
      pinData: json['pin_data'] == null
          ? null
          : GdkPinData.fromJson(
              Map<String, dynamic>.from(json['pin_data'] as Map)),
    );

Map<String, dynamic> _$$_GdkLoginCredentialsToJson(
    _$_GdkLoginCredentials instance) {
  final val = <String, dynamic>{
    'mnemonic': instance.mnemonic,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  val['password'] = instance.password;
  writeNotNull('bip39_passphrase', instance.bip39Passphrase);
  writeNotNull('pin', instance.pin);
  writeNotNull('pin_data', instance.pinData);
  return val;
}

_$_GdkDevice _$$_GdkDeviceFromJson(Map json) => _$_GdkDevice(
      name: json['name'] as String?,
      supportsAeProtocol: json['supports_ae_protocol'] as int?,
      supportsArbitraryScripts: json['supports_arbitrary_scripts'] as bool?,
      supportsHostUnblinding: json['supports_host_unblinding'] as bool?,
      supportsLiquid: json['supports_liquid'] as int?,
      supportsLowR: json['supports_low_r'] as bool?,
    );

Map<String, dynamic> _$$_GdkDeviceToJson(_$_GdkDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('supports_ae_protocol', instance.supportsAeProtocol);
  writeNotNull('supports_arbitrary_scripts', instance.supportsArbitraryScripts);
  writeNotNull('supports_host_unblinding', instance.supportsHostUnblinding);
  writeNotNull('supports_liquid', instance.supportsLiquid);
  writeNotNull('supports_low_r', instance.supportsLowR);
  return val;
}

_$_GdkHwDevice _$$_GdkHwDeviceFromJson(Map json) => _$_GdkHwDevice(
      device: json['device'] == null
          ? null
          : GdkDevice.fromJson(
              Map<String, dynamic>.from(json['device'] as Map)),
    );

Map<String, dynamic> _$$_GdkHwDeviceToJson(_$_GdkHwDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('device', instance.device);
  return val;
}

_$_GdkSubaccount _$$_GdkSubaccountFromJson(Map json) => _$_GdkSubaccount(
      hidden: json['hidden'] as bool? ?? false,
      name: json['name'] as String? ?? 'Managed Assets',
      pointer: json['pointer'] as int?,
      receivingId: json['receiving_id'] as String?,
      recoveryChainCode: json['recovery_chain_code'] as String?,
      recoveryPubKey: json['recovery_pub_key'] as String?,
      recoveryXpub: json['recovery_xpub'] as String?,
      requiredCa: json['required_ca'] as int?,
      type: $enumDecodeNullable(_$GdkSubaccountTypeEnumEnumMap, json['type']) ??
          GdkSubaccountTypeEnum.type_p2sh_p2wpkh,
      bip44Discovered: json['bip44_discovered'] as bool?,
    );

Map<String, dynamic> _$$_GdkSubaccountToJson(_$_GdkSubaccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hidden', instance.hidden);
  writeNotNull('name', instance.name);
  writeNotNull('pointer', instance.pointer);
  writeNotNull('receiving_id', instance.receivingId);
  writeNotNull('recovery_chain_code', instance.recoveryChainCode);
  writeNotNull('recovery_pub_key', instance.recoveryPubKey);
  writeNotNull('recovery_xpub', instance.recoveryXpub);
  writeNotNull('required_ca', instance.requiredCa);
  writeNotNull('type', _$GdkSubaccountTypeEnumEnumMap[instance.type]);
  writeNotNull('bip44_discovered', instance.bip44Discovered);
  return val;
}

const _$GdkSubaccountTypeEnumEnumMap = {
  GdkSubaccountTypeEnum.type_2of2: '2of2',
  GdkSubaccountTypeEnum.type_2of3: '2of3',
  GdkSubaccountTypeEnum.type_2of2_no_recovery: '2of2_no_recovery',
  GdkSubaccountTypeEnum.type_p2pkh: 'p2pkh',
  GdkSubaccountTypeEnum.type_p2wpkh: 'p2wpkh',
  GdkSubaccountTypeEnum.type_p2sh_p2wpkh: 'p2sh-p2wpkh',
};

_$_GdkLoginUser _$$_GdkLoginUserFromJson(Map json) => _$_GdkLoginUser(
      walletHashId: json['wallet_hash_id'] as String?,
    );

Map<String, dynamic> _$$_GdkLoginUserToJson(_$_GdkLoginUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wallet_hash_id', instance.walletHashId);
  return val;
}

_$_GdkGetBalance _$$_GdkGetBalanceFromJson(Map json) => _$_GdkGetBalance(
      subaccount: json['subaccount'] as int? ?? 0,
      numConfs: json['num_confs'] as int? ?? 0,
      allCoins: json['all_coins'] as bool? ?? true,
      expiredAt: json['expired_at'] as int?,
      confidential: json['confidential'] as bool? ?? false,
      dustLimit: json['dust_limit'] as int?,
    );

Map<String, dynamic> _$$_GdkGetBalanceToJson(_$_GdkGetBalance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('num_confs', instance.numConfs);
  writeNotNull('all_coins', instance.allCoins);
  writeNotNull('expired_at', instance.expiredAt);
  writeNotNull('confidential', instance.confidential);
  writeNotNull('dust_limit', instance.dustLimit);
  return val;
}

_$_GdkAssetsParameters _$$_GdkAssetsParametersFromJson(Map json) =>
    _$_GdkAssetsParameters(
      icons: json['icons'] as bool? ?? true,
      assets: json['assets'] as bool? ?? true,
      refresh: json['refresh'] as bool? ?? true,
    );

Map<String, dynamic> _$$_GdkAssetsParametersToJson(
    _$_GdkAssetsParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icons', instance.icons);
  writeNotNull('assets', instance.assets);
  writeNotNull('refresh', instance.refresh);
  return val;
}

_$_GdkAuthHandlerStatusResult _$$_GdkAuthHandlerStatusResultFromJson(
        Map json) =>
    _$_GdkAuthHandlerStatusResult(
      loginUser: json['login_user'] == null
          ? null
          : GdkLoginUser.fromJson(
              Map<String, dynamic>.from(json['login_user'] as Map)),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) =>
              GdkTransaction.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      balance: (json['balance'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      getSubaccount: json['get_subaccount'] == null
          ? null
          : GdkWallet.fromJson(
              Map<String, dynamic>.from(json['get_subaccount'] as Map)),
      getReceiveAddress: json['get_receive_address'] == null
          ? null
          : GdkReceiveAddressDetails.fromJson(
              Map<String, dynamic>.from(json['get_receive_address'] as Map)),
      lastPointer: json['last_pointer'] as int?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) =>
              GdkPreviousAddress.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      createTransaction: json['create_transaction'] == null
          ? null
          : GdkNewTransactionReply.fromJson(
              Map<String, dynamic>.from(json['create_transaction'] as Map)),
      signTx: json['sign_tx'] == null
          ? null
          : GdkNewTransactionReply.fromJson(
              Map<String, dynamic>.from(json['sign_tx'] as Map)),
      sendRawTx: json['send_raw_tx'] == null
          ? null
          : GdkNewTransactionReply.fromJson(
              Map<String, dynamic>.from(json['send_raw_tx'] as Map)),
      createPset: json['create_pset'] == null
          ? null
          : GdkCreatePsetDetailsReply.fromJson(
              Map<String, dynamic>.from(json['create_pset'] as Map)),
      signPset: json['sign_pset'] == null
          ? null
          : GdkSignPsetDetailsReply.fromJson(
              Map<String, dynamic>.from(json['sign_pset'] as Map)),
      unspentOutputs: json['unspent_outputs'] == null
          ? null
          : GdkUnspentOutputsReply.fromJson(
              Map<String, dynamic>.from(json['unspent_outputs'] as Map)),
    );

Map<String, dynamic> _$$_GdkAuthHandlerStatusResultToJson(
    _$_GdkAuthHandlerStatusResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('login_user', instance.loginUser);
  writeNotNull('transactions', instance.transactions);
  writeNotNull('balance', instance.balance);
  writeNotNull('get_subaccount', instance.getSubaccount);
  writeNotNull('get_receive_address', instance.getReceiveAddress);
  writeNotNull('last_pointer', instance.lastPointer);
  writeNotNull('list', instance.list);
  writeNotNull('create_transaction', instance.createTransaction);
  writeNotNull('sign_tx', instance.signTx);
  writeNotNull('send_raw_tx', instance.sendRawTx);
  writeNotNull('create_pset', instance.createPset);
  writeNotNull('sign_pset', instance.signPset);
  writeNotNull('unspent_outputs', instance.unspentOutputs);
  return val;
}

_$_GdkAuthHandlerStatus _$$_GdkAuthHandlerStatusFromJson(Map json) =>
    _$_GdkAuthHandlerStatus(
      status: $enumDecode(_$GdkAuthHandlerStatusEnumEnumMap, json['status']),
      result: json['result'] == null
          ? null
          : GdkAuthHandlerStatusResult.fromJson(
              Map<String, dynamic>.from(json['result'] as Map)),
      methods:
          (json['methods'] as List<dynamic>?)?.map((e) => e as String).toList(),
      error: json['error'] as String?,
      action: json['action'] as String?,
      authData: (json['auth_data'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      attemptsRemaining: json['attempts_remaining'] as int?,
      device: json['device'] as String?,
      message: json['message'] as String?,
      authHandlerId: json['authHandlerId'] as String?,
      requiredData: (json['required_data'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
    );

Map<String, dynamic> _$$_GdkAuthHandlerStatusToJson(
    _$_GdkAuthHandlerStatus instance) {
  final val = <String, dynamic>{
    'status': _$GdkAuthHandlerStatusEnumEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('result', instance.result);
  writeNotNull('methods', instance.methods);
  writeNotNull('error', instance.error);
  writeNotNull('action', instance.action);
  writeNotNull('auth_data', instance.authData);
  writeNotNull('attempts_remaining', instance.attemptsRemaining);
  writeNotNull('device', instance.device);
  writeNotNull('message', instance.message);
  writeNotNull('authHandlerId', instance.authHandlerId);
  writeNotNull('required_data', instance.requiredData);
  return val;
}

const _$GdkAuthHandlerStatusEnumEnumMap = {
  GdkAuthHandlerStatusEnum.done: 'done',
  GdkAuthHandlerStatusEnum.error: 'error',
  GdkAuthHandlerStatusEnum.requestCode: 'request_code',
  GdkAuthHandlerStatusEnum.resolveCode: 'resolve_code',
  GdkAuthHandlerStatusEnum.call: 'call',
};

_$_GdkGetTransactionsDetails _$$_GdkGetTransactionsDetailsFromJson(Map json) =>
    _$_GdkGetTransactionsDetails(
      subaccount: json['subaccount'] as int? ?? 0,
      first: json['first'] as int? ?? 0,
      count: json['count'] as int? ?? 100,
    );

Map<String, dynamic> _$$_GdkGetTransactionsDetailsToJson(
    _$_GdkGetTransactionsDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('first', instance.first);
  writeNotNull('count', instance.count);
  return val;
}

_$_GdkTransactionInOut _$$_GdkTransactionInOutFromJson(Map json) =>
    _$_GdkTransactionInOut(
      address: json['address'] as String?,
      addressType: json['address_type'] as String?,
      isOutput: json['is_output'] as bool?,
      isRelevant: json['is_relevant'] as bool?,
      isSpent: json['is_spent'] as bool?,
      pointer: json['pointer'] as int?,
      ptIdx: json['pt_idx'] as int?,
      satoshi: json['satoshi'] as int?,
      scriptType: json['script_type'] as int?,
      subaccount: json['subaccount'] as int?,
      subtype: json['subtype'] as int?,
      assetId: json['asset_id'] as String?,
      assetBlinder: json['assetblinder'] as String?,
      amountBlinder: json['amountblinder'] as String?,
    );

Map<String, dynamic> _$$_GdkTransactionInOutToJson(
    _$_GdkTransactionInOut instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('address_type', instance.addressType);
  writeNotNull('is_output', instance.isOutput);
  writeNotNull('is_relevant', instance.isRelevant);
  writeNotNull('is_spent', instance.isSpent);
  writeNotNull('pointer', instance.pointer);
  writeNotNull('pt_idx', instance.ptIdx);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('script_type', instance.scriptType);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('subtype', instance.subtype);
  writeNotNull('asset_id', instance.assetId);
  writeNotNull('assetblinder', instance.assetBlinder);
  writeNotNull('amountblinder', instance.amountBlinder);
  return val;
}

_$_GdkTransaction _$$_GdkTransactionFromJson(Map json) => _$_GdkTransaction(
      addressees: (json['addressees'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      blockHeight: json['block_height'] as int?,
      calculatedFeeRate: json['calculated_fee_rate'] as int?,
      canCpfp: json['can_cpfp'] as bool?,
      canRbf: json['can_rbf'] as bool?,
      createdAtTs: json['created_at_ts'] as int?,
      fee: json['fee'] as int?,
      feeRate: json['fee_rate'] as int?,
      hasPaymentRequest: json['has_payment_request'] as bool?,
      inputs: (json['inputs'] as List<dynamic>?)
          ?.map((e) =>
              GdkTransactionInOut.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      instant: json['instant'] as bool?,
      memo: json['memo'] as String?,
      outputs: (json['outputs'] as List<dynamic>?)
          ?.map((e) =>
              GdkTransactionInOut.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      rbfOptin: json['rbf_optin'] as bool?,
      satoshi: (json['satoshi'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as int),
      ),
      serverSigned: json['server_signed'] as bool?,
      spvVerified: json['spv_verified'] as String?,
      transaction: json['transaction'] as String?,
      transactionLocktime: json['transaction_locktime'] as int?,
      transactionOutputs: (json['transaction_outputs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      transactionSize: json['transaction_size'] as int?,
      transactionVersion: json['transaction_version'] as int?,
      transactionVsize: json['transaction_vsize'] as int?,
      transactionWeight: json['transaction_weight'] as int?,
      txhash: json['txhash'] as String?,
      type: $enumDecodeNullable(_$GdkTransactionTypeEnumEnumMap, json['type']),
      userSigned: json['user_signed'] as bool?,
      vsize: json['vsize'] as int?,
      swapOutgoingAssetId: json['swapOutgoingAssetId'] as String?,
      swapOutgoingSatoshi: json['swapOutgoingSatoshi'] as int?,
      swapIncomingAssetId: json['swapIncomingAssetId'] as String?,
      swapIncomingSatoshi: json['swapIncomingSatoshi'] as int?,
    );

Map<String, dynamic> _$$_GdkTransactionToJson(_$_GdkTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressees', instance.addressees);
  writeNotNull('block_height', instance.blockHeight);
  writeNotNull('calculated_fee_rate', instance.calculatedFeeRate);
  writeNotNull('can_cpfp', instance.canCpfp);
  writeNotNull('can_rbf', instance.canRbf);
  writeNotNull('created_at_ts', instance.createdAtTs);
  writeNotNull('fee', instance.fee);
  writeNotNull('fee_rate', instance.feeRate);
  writeNotNull('has_payment_request', instance.hasPaymentRequest);
  writeNotNull('inputs', instance.inputs);
  writeNotNull('instant', instance.instant);
  writeNotNull('memo', instance.memo);
  writeNotNull('outputs', instance.outputs);
  writeNotNull('rbf_optin', instance.rbfOptin);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('server_signed', instance.serverSigned);
  writeNotNull('spv_verified', instance.spvVerified);
  writeNotNull('transaction', instance.transaction);
  writeNotNull('transaction_locktime', instance.transactionLocktime);
  writeNotNull('transaction_outputs', instance.transactionOutputs);
  writeNotNull('transaction_size', instance.transactionSize);
  writeNotNull('transaction_version', instance.transactionVersion);
  writeNotNull('transaction_vsize', instance.transactionVsize);
  writeNotNull('transaction_weight', instance.transactionWeight);
  writeNotNull('txhash', instance.txhash);
  writeNotNull('type', _$GdkTransactionTypeEnumEnumMap[instance.type]);
  writeNotNull('user_signed', instance.userSigned);
  writeNotNull('vsize', instance.vsize);
  writeNotNull('swapOutgoingAssetId', instance.swapOutgoingAssetId);
  writeNotNull('swapOutgoingSatoshi', instance.swapOutgoingSatoshi);
  writeNotNull('swapIncomingAssetId', instance.swapIncomingAssetId);
  writeNotNull('swapIncomingSatoshi', instance.swapIncomingSatoshi);
  return val;
}

const _$GdkTransactionTypeEnumEnumMap = {
  GdkTransactionTypeEnum.incoming: 'incoming',
  GdkTransactionTypeEnum.outgoing: 'outgoing',
  GdkTransactionTypeEnum.redeposit: 'redeposit',
  GdkTransactionTypeEnum.unknown: 'unknown',
  GdkTransactionTypeEnum.swap: 'swap',
};

_$_GdkEntity _$$_GdkEntityFromJson(Map json) => _$_GdkEntity(
      domain: json['domain'] as String?,
    );

Map<String, dynamic> _$$_GdkEntityToJson(_$_GdkEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('domain', instance.domain);
  return val;
}

_$_GdkContract _$$_GdkContractFromJson(Map json) => _$_GdkContract(
      entity: json['entity'] == null
          ? null
          : GdkEntity.fromJson(
              Map<String, dynamic>.from(json['entity'] as Map)),
      issuerPubkey: json['issuer_pubkey'] as String?,
      name: json['name'] as String?,
      nonce: json['nonce'] as String?,
      precision: json['precision'] as int?,
      ticker: json['ticker'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$$_GdkContractToJson(_$_GdkContract instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity);
  writeNotNull('issuer_pubkey', instance.issuerPubkey);
  writeNotNull('name', instance.name);
  writeNotNull('nonce', instance.nonce);
  writeNotNull('precision', instance.precision);
  writeNotNull('ticker', instance.ticker);
  writeNotNull('version', instance.version);
  return val;
}

_$_GdkIssuance _$$_GdkIssuanceFromJson(Map json) => _$_GdkIssuance(
      txid: json['txid'] as String?,
      vout: json['vout'] as int?,
      vin: json['vin'] as int?,
    );

Map<String, dynamic> _$$_GdkIssuanceToJson(_$_GdkIssuance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txid', instance.txid);
  writeNotNull('vout', instance.vout);
  writeNotNull('vin', instance.vin);
  return val;
}

_$_GdkAssetInformation _$$_GdkAssetInformationFromJson(Map json) =>
    _$_GdkAssetInformation(
      assetId: json['asset_id'] as String?,
      contract: json['contract'] == null
          ? null
          : GdkContract.fromJson(
              Map<String, dynamic>.from(json['contract'] as Map)),
      entity: json['entity'] == null
          ? null
          : GdkEntity.fromJson(
              Map<String, dynamic>.from(json['entity'] as Map)),
      issuancePrevout: json['issuance_prevout'] == null
          ? null
          : GdkIssuance.fromJson(
              Map<String, dynamic>.from(json['issuance_prevout'] as Map)),
      issuanceTxin: json['issuance_txin'] == null
          ? null
          : GdkIssuance.fromJson(
              Map<String, dynamic>.from(json['issuance_txin'] as Map)),
      issuerPubkey: json['issuer_pubkey'] as String?,
      name: json['name'] as String?,
      precision: json['precision'] as int?,
      ticker: json['ticker'] as String?,
      version: json['version'] as int?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_GdkAssetInformationToJson(
    _$_GdkAssetInformation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset_id', instance.assetId);
  writeNotNull('contract', instance.contract);
  writeNotNull('entity', instance.entity);
  writeNotNull('issuance_prevout', instance.issuancePrevout);
  writeNotNull('issuance_txin', instance.issuanceTxin);
  writeNotNull('issuer_pubkey', instance.issuerPubkey);
  writeNotNull('name', instance.name);
  writeNotNull('precision', instance.precision);
  writeNotNull('ticker', instance.ticker);
  writeNotNull('version', instance.version);
  writeNotNull('icon', instance.icon);
  return val;
}

_$_GdkNetworks _$$_GdkNetworksFromJson(Map json) => _$_GdkNetworks(
      allNetworks: (json['allNetworks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      networks: (json['networks'] as Map?)?.map(
        (k, e) => MapEntry(k as String,
            GdkNetwork.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$_GdkNetworksToJson(_$_GdkNetworks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allNetworks', instance.allNetworks);
  writeNotNull('networks', instance.networks);
  return val;
}

_$_GdkNetwork _$$_GdkNetworkFromJson(Map json) => _$_GdkNetwork(
      addressExplorerUrl: json['address_explorer_url'] as String?,
      assetRegistryOnionUrl: json['address_registry_onion_url'] as String?,
      assetRegistryUrl: json['asset_registry_url'] as String?,
      bech32Prefix: json['bech32_prefix'] as String?,
      bip21Prefix: json['bip21_prefix'] as String?,
      blech32Prefix: json['blech32_prefix'] as String?,
      blindedPrefix: json['blinded_prefix'] as int?,
      csvBuckets: (json['csv_buckets'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      ctBits: json['ct_bits'] as int?,
      ctExponent: json['ct_exponent'] as int?,
      development: json['development'] as bool?,
      electrumTls: json['electrum_tls'] as bool?,
      electrumUrl: json['electrum_url'] as String?,
      liquid: json['liquid'] as bool?,
      mainnet: json['mainnet'] as bool?,
      name: json['name'] as String?,
      network: json['network'] as String?,
      p2PkhVersion: json['p2pkh_version'] as int?,
      p2ShVersion: json['p2sh_version'] as int?,
      policyAsset: json['policy_asset'] as String?,
      serverType:
          $enumDecodeNullable(_$ServerTypeEnumEnumMap, json['server_type']),
      serviceChainCode: json['service_chain_code'] as String?,
      servicePubkey: json['service_pubkey'] as String?,
      spvEnabled: json['spv_enabled'] as bool?,
      spvMulti: json['spv_multi'] as bool?,
      spvServers: json['spv_servers'] as List<dynamic>?,
      txExplorerUrl: json['tx_explorer_url'] as String?,
      wampCertPins: (json['wamp_cert_pins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wampCertRoots: (json['wamp_cert_roots'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wampOnionUrl: json['wamp_onion_url'] as String?,
      wampUrl: json['wamp_url'] as String?,
    );

Map<String, dynamic> _$$_GdkNetworkToJson(_$_GdkNetwork instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_explorer_url', instance.addressExplorerUrl);
  writeNotNull('address_registry_onion_url', instance.assetRegistryOnionUrl);
  writeNotNull('asset_registry_url', instance.assetRegistryUrl);
  writeNotNull('bech32_prefix', instance.bech32Prefix);
  writeNotNull('bip21_prefix', instance.bip21Prefix);
  writeNotNull('blech32_prefix', instance.blech32Prefix);
  writeNotNull('blinded_prefix', instance.blindedPrefix);
  writeNotNull('csv_buckets', instance.csvBuckets);
  writeNotNull('ct_bits', instance.ctBits);
  writeNotNull('ct_exponent', instance.ctExponent);
  writeNotNull('development', instance.development);
  writeNotNull('electrum_tls', instance.electrumTls);
  writeNotNull('electrum_url', instance.electrumUrl);
  writeNotNull('liquid', instance.liquid);
  writeNotNull('mainnet', instance.mainnet);
  writeNotNull('name', instance.name);
  writeNotNull('network', instance.network);
  writeNotNull('p2pkh_version', instance.p2PkhVersion);
  writeNotNull('p2sh_version', instance.p2ShVersion);
  writeNotNull('policy_asset', instance.policyAsset);
  writeNotNull('server_type', _$ServerTypeEnumEnumMap[instance.serverType]);
  writeNotNull('service_chain_code', instance.serviceChainCode);
  writeNotNull('service_pubkey', instance.servicePubkey);
  writeNotNull('spv_enabled', instance.spvEnabled);
  writeNotNull('spv_multi', instance.spvMulti);
  writeNotNull('spv_servers', instance.spvServers);
  writeNotNull('tx_explorer_url', instance.txExplorerUrl);
  writeNotNull('wamp_cert_pins', instance.wampCertPins);
  writeNotNull('wamp_cert_roots', instance.wampCertRoots);
  writeNotNull('wamp_onion_url', instance.wampOnionUrl);
  writeNotNull('wamp_url', instance.wampUrl);
  return val;
}

const _$ServerTypeEnumEnumMap = {
  ServerTypeEnum.electrum: 'electrum',
  ServerTypeEnum.green: 'green',
  ServerTypeEnum.greenlight: 'greenlight',
};

_$_GdkWallet _$$_GdkWalletFromJson(Map json) => _$_GdkWallet(
      hasTransactions: json['has_transactions'] as bool?,
      hidden: json['hidden'] as bool?,
      name: json['name'] as String?,
      pointer: json['pointer'] as int?,
      receivingId: json['receiving_id'] as String?,
      requiredCa: json['required_ca'] as int?,
      satoshi: (json['satoshi'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as int),
      ),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_GdkWalletToJson(_$_GdkWallet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('has_transactions', instance.hasTransactions);
  writeNotNull('hidden', instance.hidden);
  writeNotNull('name', instance.name);
  writeNotNull('pointer', instance.pointer);
  writeNotNull('receiving_id', instance.receivingId);
  writeNotNull('required_ca', instance.requiredCa);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('type', instance.type);
  return val;
}

_$_GdkReceiveAddressDetails _$$_GdkReceiveAddressDetailsFromJson(Map json) =>
    _$_GdkReceiveAddressDetails(
      address: json['address'] as String?,
      addressType: $enumDecodeNullable(
              _$GdkAddressTypeEnumEnumMap, json['address_type']) ??
          GdkAddressTypeEnum.csv,
      branch: json['branch'] as int?,
      pointer: json['pointer'] as int?,
      script: json['script'] as String?,
      scriptType: json['script_type'] as int?,
      subaccount: json['subaccount'] as int? ?? 0,
      subtype: json['subtype'] as int?,
      userPath:
          (json['user_path'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_GdkReceiveAddressDetailsToJson(
    _$_GdkReceiveAddressDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull(
      'address_type', _$GdkAddressTypeEnumEnumMap[instance.addressType]);
  writeNotNull('branch', instance.branch);
  writeNotNull('pointer', instance.pointer);
  writeNotNull('script', instance.script);
  writeNotNull('script_type', instance.scriptType);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('subtype', instance.subtype);
  writeNotNull('user_path', instance.userPath);
  return val;
}

const _$GdkAddressTypeEnumEnumMap = {
  GdkAddressTypeEnum.csv: 'csv',
  GdkAddressTypeEnum.p2sh: 'p2sh',
  GdkAddressTypeEnum.p2wsh: 'p2wsh',
  GdkAddressTypeEnum.p2pkh: 'p2pkh',
  GdkAddressTypeEnum.p2sh_p2wpkh: 'p2sh-p2wpkh',
  GdkAddressTypeEnum.p2wpkh: 'p2wpkh',
};

_$_GdkPreviousAddressesDetails _$$_GdkPreviousAddressesDetailsFromJson(
        Map json) =>
    _$_GdkPreviousAddressesDetails(
      subaccount: json['subaccount'] as int? ?? 0,
      lastPointer: json['last_pointer'] as int?,
      isInternal: json['is_internal'] as bool?,
    );

Map<String, dynamic> _$$_GdkPreviousAddressesDetailsToJson(
    _$_GdkPreviousAddressesDetails instance) {
  final val = <String, dynamic>{
    'subaccount': instance.subaccount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_pointer', instance.lastPointer);
  writeNotNull('is_internal', instance.isInternal);
  return val;
}

_$_GdkPreviousAddress _$$_GdkPreviousAddressFromJson(Map json) =>
    _$_GdkPreviousAddress(
      address: json['address'] as String?,
      addressType: json['address_type'] as String?,
      subaccount: json['subaccount'] as int?,
      isInternal: json['is_internal'] as bool?,
      pointer: json['pointer'] as int?,
      scriptPubkey: json['script_pubkey'] as String?,
      userPath:
          (json['user_path'] as List<dynamic>?)?.map((e) => e as int).toList(),
      txCount: json['tx_count'] as int?,
      isBlinded: json['is_blinded'] as bool?,
      unblindedAddress: json['unblinded_address'] as String?,
      blindingScript: json['blinding_script'] as String?,
      blindingKey: json['blinding_key'] as String?,
    );

Map<String, dynamic> _$$_GdkPreviousAddressToJson(
    _$_GdkPreviousAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('address_type', instance.addressType);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('is_internal', instance.isInternal);
  writeNotNull('pointer', instance.pointer);
  writeNotNull('script_pubkey', instance.scriptPubkey);
  writeNotNull('user_path', instance.userPath);
  writeNotNull('tx_count', instance.txCount);
  writeNotNull('is_blinded', instance.isBlinded);
  writeNotNull('unblinded_address', instance.unblindedAddress);
  writeNotNull('blinding_script', instance.blindingScript);
  writeNotNull('blinding_key', instance.blindingKey);
  return val;
}

_$_GdkCreatePsetDetails _$$_GdkCreatePsetDetailsFromJson(Map json) =>
    _$_GdkCreatePsetDetails(
      addressees: (json['addressees'] as List<dynamic>?)
          ?.map(
              (e) => GdkAddressee.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      subaccount: json['subaccount'] as int? ?? 0,
      sendAsset: json['send_asset'] as String?,
      sendAmount: json['send_amount'] as int?,
      recvAsset: json['recv_asset'] as String?,
      recvAmount: json['recv_amount'] as int?,
    );

Map<String, dynamic> _$$_GdkCreatePsetDetailsToJson(
    _$_GdkCreatePsetDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressees', instance.addressees);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('send_asset', instance.sendAsset);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('recv_asset', instance.recvAsset);
  writeNotNull('recv_amount', instance.recvAmount);
  return val;
}

_$_GdkCreatePsetInputs _$$_GdkCreatePsetInputsFromJson(Map json) =>
    _$_GdkCreatePsetInputs(
      asset: json['asset'] as String?,
      assetBf: json['asset_bf'] as String?,
      txid: json['txid'] as String?,
      value: json['value'] as int?,
      valueBf: json['value_bf'] as String?,
      vout: json['vout'] as int?,
    );

Map<String, dynamic> _$$_GdkCreatePsetInputsToJson(
    _$_GdkCreatePsetInputs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset', instance.asset);
  writeNotNull('asset_bf', instance.assetBf);
  writeNotNull('txid', instance.txid);
  writeNotNull('value', instance.value);
  writeNotNull('value_bf', instance.valueBf);
  writeNotNull('vout', instance.vout);
  return val;
}

_$_GdkCreatePsetDetailsReply _$$_GdkCreatePsetDetailsReplyFromJson(Map json) =>
    _$_GdkCreatePsetDetailsReply(
      changeAddr: json['change_addr'] as String?,
      inputs: (json['inputs'] as List<dynamic>?)
          ?.map((e) =>
              GdkCreatePsetInputs.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      recvAddr: json['recv_addr'] as String?,
    );

Map<String, dynamic> _$$_GdkCreatePsetDetailsReplyToJson(
    _$_GdkCreatePsetDetailsReply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('change_addr', instance.changeAddr);
  writeNotNull('inputs', instance.inputs);
  writeNotNull('recv_addr', instance.recvAddr);
  return val;
}

_$_GdkSignPsetDetails _$$_GdkSignPsetDetailsFromJson(Map json) =>
    _$_GdkSignPsetDetails(
      addressees: (json['addressees'] as List<dynamic>?)
          ?.map(
              (e) => GdkAddressee.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      subaccount: json['subaccount'] as int? ?? 0,
      pset: json['pset'] as String?,
      sendAsset: json['send_asset'] as String?,
      sendAmount: json['send_amount'] as int?,
      recvAsset: json['recv_asset'] as String?,
      recvAmount: json['recv_amount'] as int?,
    );

Map<String, dynamic> _$$_GdkSignPsetDetailsToJson(
    _$_GdkSignPsetDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressees', instance.addressees);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('pset', instance.pset);
  writeNotNull('send_asset', instance.sendAsset);
  writeNotNull('send_amount', instance.sendAmount);
  writeNotNull('recv_asset', instance.recvAsset);
  writeNotNull('recv_amount', instance.recvAmount);
  return val;
}

_$_GdkSignPsetDetailsReply _$$_GdkSignPsetDetailsReplyFromJson(Map json) =>
    _$_GdkSignPsetDetailsReply(
      addressees: (json['addressees'] as List<dynamic>?)
          ?.map(
              (e) => GdkAddressee.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      pset: json['pset'] as String?,
    );

Map<String, dynamic> _$$_GdkSignPsetDetailsReplyToJson(
    _$_GdkSignPsetDetailsReply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressees', instance.addressees);
  writeNotNull('pset', instance.pset);
  return val;
}

_$_GdkGetFeeEstimatesEvent _$$_GdkGetFeeEstimatesEventFromJson(Map json) =>
    _$_GdkGetFeeEstimatesEvent(
      fees: (json['fees'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_GdkGetFeeEstimatesEventToJson(
    _$_GdkGetFeeEstimatesEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fees', instance.fees);
  return val;
}

_$_GdkBlockEvent _$$_GdkBlockEventFromJson(Map json) => _$_GdkBlockEvent(
      blockHash: json['block_hash'] as String?,
      blockHeight: json['block_height'] as int?,
      initialTimestamp: json['initial_timestamp'] as int?,
      previousHash: json['previous_hash'] as String?,
    );

Map<String, dynamic> _$$_GdkBlockEventToJson(_$_GdkBlockEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('block_hash', instance.blockHash);
  writeNotNull('block_height', instance.blockHeight);
  writeNotNull('initial_timestamp', instance.initialTimestamp);
  writeNotNull('previous_hash', instance.previousHash);
  return val;
}

_$_GdkSettingsEventNotifications _$$_GdkSettingsEventNotificationsFromJson(
        Map json) =>
    _$_GdkSettingsEventNotifications(
      emailIncoming: json['emailIncoming'] as bool?,
      emailOutgoing: json['emailOutgoing'] as bool?,
    );

Map<String, dynamic> _$$_GdkSettingsEventNotificationsToJson(
    _$_GdkSettingsEventNotifications instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emailIncoming', instance.emailIncoming);
  writeNotNull('emailOutgoing', instance.emailOutgoing);
  return val;
}

_$_GdkSettingsEvent _$$_GdkSettingsEventFromJson(Map json) =>
    _$_GdkSettingsEvent(
      altimeout: json['altimeout'] as int?,
      csvtime: json['csvtime'] as int?,
      nlocktime: json['nlocktime'] as int?,
      notifications: json['notifications'] == null
          ? null
          : GdkSettingsEventNotifications.fromJson(
              Map<String, dynamic>.from(json['notifications'] as Map)),
      pgp: json['pgp'] as String?,
      pricing: json['pricing'] == null
          ? null
          : GdkPricing.fromJson(
              Map<String, dynamic>.from(json['pricing'] as Map)),
      requiredNumBlocks: json['required_num_blocks'] as int?,
      sound: json['sound'] as bool?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$_GdkSettingsEventToJson(_$_GdkSettingsEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('altimeout', instance.altimeout);
  writeNotNull('csvtime', instance.csvtime);
  writeNotNull('nlocktime', instance.nlocktime);
  writeNotNull('notifications', instance.notifications);
  writeNotNull('pgp', instance.pgp);
  writeNotNull('pricing', instance.pricing);
  writeNotNull('required_num_blocks', instance.requiredNumBlocks);
  writeNotNull('sound', instance.sound);
  writeNotNull('unit', instance.unit);
  return val;
}

_$_GdkTransactionEvent _$$_GdkTransactionEventFromJson(Map json) =>
    _$_GdkTransactionEvent(
      satoshi: json['satoshi'] as int?,
      subaccounts: (json['subaccounts'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      txhash: json['txhash'] as String?,
      type: $enumDecodeNullable(_$GdkTransactionEventEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$_GdkTransactionEventToJson(
    _$_GdkTransactionEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('subaccounts', instance.subaccounts);
  writeNotNull('txhash', instance.txhash);
  writeNotNull('type', _$GdkTransactionEventEnumEnumMap[instance.type]);
  return val;
}

const _$GdkTransactionEventEnumEnumMap = {
  GdkTransactionEventEnum.incoming: 'incoming',
  GdkTransactionEventEnum.outgoing: 'outgoing',
  GdkTransactionEventEnum.redeposit: 'redeposit',
};

_$_GdkPricing _$$_GdkPricingFromJson(Map json) => _$_GdkPricing(
      currency: json['currency'] as String?,
      exchange: json['exchange'] as String?,
    );

Map<String, dynamic> _$$_GdkPricingToJson(_$_GdkPricing instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('exchange', instance.exchange);
  return val;
}

_$_GdkAddressee _$$_GdkAddresseeFromJson(Map json) => _$_GdkAddressee(
      address: json['address'] as String?,
      satoshi: json['satoshi'] as int?,
      assetId: json['asset_id'] as String?,
    );

Map<String, dynamic> _$$_GdkAddresseeToJson(_$_GdkAddressee instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('asset_id', instance.assetId);
  return val;
}

_$_GdkNewTransaction _$$_GdkNewTransactionFromJson(Map json) =>
    _$_GdkNewTransaction(
      addressees: (json['addressees'] as List<dynamic>?)
          ?.map(
              (e) => GdkAddressee.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      subaccount: json['subaccount'] as int? ?? 0,
      feeRate: json['fee_rate'] as int? ?? 1000,
      sendAll: json['send_all'] as bool? ?? false,
      utxoStrategy: $enumDecodeNullable(
              _$GdkUtxoStrategyEnumEnumMap, json['utxo_strategy']) ??
          GdkUtxoStrategyEnum.defaultStrategy,
      usedUtxos: json['used_utxos'] as String?,
      memo: json['memo'] as String?,
      utxos: (json['utxos'] as Map?)?.map(
        (k, e) => MapEntry(
            k as String,
            (e as List<dynamic>)
                .map((e) => GdkUnspentOutputs.fromJson(
                    Map<String, dynamic>.from(e as Map)))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_GdkNewTransactionToJson(
    _$_GdkNewTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressees', instance.addressees);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('fee_rate', instance.feeRate);
  writeNotNull('send_all', instance.sendAll);
  writeNotNull(
      'utxo_strategy', _$GdkUtxoStrategyEnumEnumMap[instance.utxoStrategy]);
  writeNotNull('used_utxos', instance.usedUtxos);
  writeNotNull('memo', instance.memo);
  writeNotNull('utxos', instance.utxos);
  return val;
}

const _$GdkUtxoStrategyEnumEnumMap = {
  GdkUtxoStrategyEnum.manualStrategy: 'manual',
  GdkUtxoStrategyEnum.defaultStrategy: 'default',
};

_$_GdkNewTransactionReply _$$_GdkNewTransactionReplyFromJson(Map json) =>
    _$_GdkNewTransactionReply(
      addressees: (json['addressees'] as List<dynamic>?)
          ?.map(
              (e) => GdkAddressee.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      addresseesHaveAssets: json['addressees_have_assets'] as bool?,
      addresseesReadOnly: json['addressees_read_only'] as bool?,
      changesUsed: json['changes_used'] as int?,
      confidentialUtxosOnly: json['confidential_utxos_only'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      error: json['error'] as String?,
      fee: json['fee'] as int?,
      feeRate: json['fee_rate'] as int?,
      isSweep: json['is_sweep'] as bool?,
      network: json['network'] as String?,
      numConfs: json['num_confs'] as int?,
      rbfOptin: json['rbf_optin'] as bool? ?? true,
      satoshi: (json['satoshi'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      sendAll: json['send_all'] as bool?,
      spvVerified: json['spv_verified'] as String?,
      subaccount: json['subaccount'] as int?,
      timestamp: json['timestamp'] as int?,
      transaction: json['transaction'] as String?,
      transactionSize: json['transaction_size'] as int?,
      transactionVsize: json['transaction_vsize'] as int?,
      transactionWeight: json['transaction_weight'] as int?,
      transactionVersion: json['transaction_version'] as int?,
      transactionLocktime: json['transaction_locktime'] as int?,
      transactionOutputs: json['transaction_outputs'],
      usedUtxos: json['used_utxos'],
      txhash: json['txhash'] as String?,
      type: $enumDecodeNullable(_$GdkTransactionTypeEnumEnumMap, json['type']),
      userSigned: json['user_signed'] as bool?,
      utxoStrategy: json['utxo_strategy'] as String?,
      memo: json['memo'] as String?,
      utxos: (json['utxos'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
    );

Map<String, dynamic> _$$_GdkNewTransactionReplyToJson(
    _$_GdkNewTransactionReply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressees', instance.addressees);
  writeNotNull('addressees_have_assets', instance.addresseesHaveAssets);
  writeNotNull('addressees_read_only', instance.addresseesReadOnly);
  writeNotNull('changes_used', instance.changesUsed);
  writeNotNull('confidential_utxos_only', instance.confidentialUtxosOnly);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('error', instance.error);
  writeNotNull('fee', instance.fee);
  writeNotNull('fee_rate', instance.feeRate);
  writeNotNull('is_sweep', instance.isSweep);
  writeNotNull('network', instance.network);
  writeNotNull('num_confs', instance.numConfs);
  writeNotNull('rbf_optin', instance.rbfOptin);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('send_all', instance.sendAll);
  writeNotNull('spv_verified', instance.spvVerified);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('transaction', instance.transaction);
  writeNotNull('transaction_size', instance.transactionSize);
  writeNotNull('transaction_vsize', instance.transactionVsize);
  writeNotNull('transaction_weight', instance.transactionWeight);
  writeNotNull('transaction_version', instance.transactionVersion);
  writeNotNull('transaction_locktime', instance.transactionLocktime);
  writeNotNull('transaction_outputs', instance.transactionOutputs);
  writeNotNull('used_utxos', instance.usedUtxos);
  writeNotNull('txhash', instance.txhash);
  writeNotNull('type', _$GdkTransactionTypeEnumEnumMap[instance.type]);
  writeNotNull('user_signed', instance.userSigned);
  writeNotNull('utxo_strategy', instance.utxoStrategy);
  writeNotNull('memo', instance.memo);
  writeNotNull('utxos', instance.utxos);
  return val;
}

_$_GdkRegisterNetworkData _$$_GdkRegisterNetworkDataFromJson(Map json) =>
    _$_GdkRegisterNetworkData(
      name: json['name'] as String?,
      networkDetails: json['networkDetails'] == null
          ? null
          : GdkNetwork.fromJson(
              Map<String, dynamic>.from(json['networkDetails'] as Map)),
    );

Map<String, dynamic> _$$_GdkRegisterNetworkDataToJson(
    _$_GdkRegisterNetworkData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('networkDetails', instance.networkDetails);
  return val;
}

_$_GdkSessionEvent _$$_GdkSessionEventFromJson(Map json) => _$_GdkSessionEvent(
      connected: json['connected'] as bool?,
    );

Map<String, dynamic> _$$_GdkSessionEventToJson(_$_GdkSessionEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connected', instance.connected);
  return val;
}

_$_GdkNetworkEvent _$$_GdkNetworkEventFromJson(Map json) => _$_GdkNetworkEvent(
      waitMs: json['wait_ms'] as int?,
      currentState: $enumDecodeNullable(
          _$GdkNetworkEventStateEnumEnumMap, json['current_state']),
      nextState: $enumDecodeNullable(
          _$GdkNetworkEventStateEnumEnumMap, json['next_state']),
    );

Map<String, dynamic> _$$_GdkNetworkEventToJson(_$_GdkNetworkEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wait_ms', instance.waitMs);
  writeNotNull('current_state',
      _$GdkNetworkEventStateEnumEnumMap[instance.currentState]);
  writeNotNull(
      'next_state', _$GdkNetworkEventStateEnumEnumMap[instance.nextState]);
  return val;
}

const _$GdkNetworkEventStateEnumEnumMap = {
  GdkNetworkEventStateEnum.connected: 'connected',
  GdkNetworkEventStateEnum.disconnected: 'disconnected',
};

_$_GdkConvertData _$$_GdkConvertDataFromJson(Map json) => _$_GdkConvertData(
      satoshi: json['satoshi'] as int? ?? 0,
      bits: json['bits'] as String?,
      fiatCurrency: json['fiat_currenct'] as String?,
      fiatRate: json['fiat_rate'] as String?,
    );

Map<String, dynamic> _$$_GdkConvertDataToJson(_$_GdkConvertData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('bits', instance.bits);
  writeNotNull('fiat_currenct', instance.fiatCurrency);
  writeNotNull('fiat_rate', instance.fiatRate);
  return val;
}

_$_GdkAmountData _$$_GdkAmountDataFromJson(Map json) => _$_GdkAmountData(
      bits: json['bits'] as String?,
      btc: json['btc'] as String?,
      fiat: json['fiat'] as String?,
      fiatCurrency: json['fiat_currency'] as String?,
      fiatRate: json['fiat_rate'] as String?,
      mbtc: json['mbtc'] as String?,
      satoshi: json['satoshi'] as int?,
      sats: json['sats'] as String?,
      subaccount: json['subaccount'] as int?,
      ubtc: json['ubtc'] as String?,
      isCurrent: json['is_current'] as bool?,
    );

Map<String, dynamic> _$$_GdkAmountDataToJson(_$_GdkAmountData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bits', instance.bits);
  writeNotNull('btc', instance.btc);
  writeNotNull('fiat', instance.fiat);
  writeNotNull('fiat_currency', instance.fiatCurrency);
  writeNotNull('fiat_rate', instance.fiatRate);
  writeNotNull('mbtc', instance.mbtc);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('sats', instance.sats);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('ubtc', instance.ubtc);
  writeNotNull('is_current', instance.isCurrent);
  return val;
}

_$_GdkGetUnspentOutputs _$$_GdkGetUnspentOutputsFromJson(Map json) =>
    _$_GdkGetUnspentOutputs(
      subaccount: json['subaccount'] as int? ?? 0,
      numConfs: json['num_confs'] as int? ?? 0,
      allCoins: json['all_coins'] as bool? ?? false,
      expiredAt: json['expired_at'] as int?,
      confidential: json['confidential'] as bool? ?? false,
      dustLimit: json['dust_limit'] as int?,
    );

Map<String, dynamic> _$$_GdkGetUnspentOutputsToJson(
    _$_GdkGetUnspentOutputs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('num_confs', instance.numConfs);
  writeNotNull('all_coins', instance.allCoins);
  writeNotNull('expired_at', instance.expiredAt);
  writeNotNull('confidential', instance.confidential);
  writeNotNull('dust_limit', instance.dustLimit);
  return val;
}

_$_GdkUnspentOutputsReply _$$_GdkUnspentOutputsReplyFromJson(Map json) =>
    _$_GdkUnspentOutputsReply(
      unsentOutputs: (json['unspent_outputs'] as Map?)?.map(
        (k, e) => MapEntry(
            k as String,
            (e as List<dynamic>)
                .map((e) => GdkUnspentOutputs.fromJson(
                    Map<String, dynamic>.from(e as Map)))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_GdkUnspentOutputsReplyToJson(
    _$_GdkUnspentOutputsReply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unspent_outputs', instance.unsentOutputs);
  return val;
}

_$_GdkUnspentOutputs _$$_GdkUnspentOutputsFromJson(Map json) =>
    _$_GdkUnspentOutputs(
      addressType: json['address_type'] as String?,
      blockHeight: json['block_height'] as int?,
      isInternal: json['is_internal'] as bool?,
      pointer: json['pointer'] as int?,
      ptIdx: json['pt_idx'] as int?,
      satoshi: json['satoshi'] as int?,
      subaccount: json['subaccount'] as int?,
      txhash: json['txhash'] as String?,
      prevoutScript: json['prevout_script'] as String?,
      userPath:
          (json['user_path'] as List<dynamic>?)?.map((e) => e as int).toList(),
      publicKey: json['public_key'] as String?,
      expiryHeight: json['expiry_height'] as int?,
      scriptType: json['script_type'] as int?,
      userStatus: json['user_status'] as int?,
      subtype: json['subtype'] as int?,
      confidential: json['confidential'] as bool?,
      assetId: json['asset_id'] as String?,
      assetBlinder: json['assetblinder'] as String?,
      amountBlinder: json['amountblinder'] as String?,
      assetTag: json['asset_tag'] as String?,
      commitment: json['commitment'] as String?,
      nonceCommitment: json['nonce_commitment'] as String?,
    );

Map<String, dynamic> _$$_GdkUnspentOutputsToJson(
    _$_GdkUnspentOutputs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_type', instance.addressType);
  writeNotNull('block_height', instance.blockHeight);
  writeNotNull('is_internal', instance.isInternal);
  writeNotNull('pointer', instance.pointer);
  writeNotNull('pt_idx', instance.ptIdx);
  writeNotNull('satoshi', instance.satoshi);
  writeNotNull('subaccount', instance.subaccount);
  writeNotNull('txhash', instance.txhash);
  writeNotNull('prevout_script', instance.prevoutScript);
  writeNotNull('user_path', instance.userPath);
  writeNotNull('public_key', instance.publicKey);
  writeNotNull('expiry_height', instance.expiryHeight);
  writeNotNull('script_type', instance.scriptType);
  writeNotNull('user_status', instance.userStatus);
  writeNotNull('subtype', instance.subtype);
  writeNotNull('confidential', instance.confidential);
  writeNotNull('asset_id', instance.assetId);
  writeNotNull('assetblinder', instance.assetBlinder);
  writeNotNull('amountblinder', instance.amountBlinder);
  writeNotNull('asset_tag', instance.assetTag);
  writeNotNull('commitment', instance.commitment);
  writeNotNull('nonce_commitment', instance.nonceCommitment);
  return val;
}

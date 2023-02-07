// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokerchip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokerChipAsset _$$_PokerChipAssetFromJson(Map json) => _$_PokerChipAsset(
      txid: json['txid'] as String?,
      vout: json['vout'] as int?,
      status: json['status'] == null
          ? null
          : Status.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
      value: json['value'] as int,
      asset: json['asset'] as String,
    );

Map<String, dynamic> _$$_PokerChipAssetToJson(_$_PokerChipAsset instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txid', instance.txid);
  writeNotNull('vout', instance.vout);
  writeNotNull('status', instance.status);
  val['value'] = instance.value;
  val['asset'] = instance.asset;
  return val;
}

_$_Status _$$_StatusFromJson(Map json) => _$_Status(
      confirmed: json['confirmed'] as bool?,
      blockHeight: json['block_height'] as int?,
      blockHash: json['block_hash'] as String?,
      blockTime: json['block_time'] as int?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('block_height', instance.blockHeight);
  writeNotNull('block_hash', instance.blockHash);
  writeNotNull('block_time', instance.blockTime);
  return val;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokerchip.freezed.dart';
part 'pokerchip.g.dart';

@freezed
class PokerChipAsset with _$PokerChipAsset {
  factory PokerChipAsset({
    String? txid,
    int? vout,
    Status? status,
    required int value,
    required String asset,
  }) = _PokerChipAsset;

  factory PokerChipAsset.fromJson(Map<String, dynamic> json) =>
      _$PokerChipAssetFromJson(json);
}

@freezed
class Status with _$Status {
  factory Status({
    bool? confirmed,
    @JsonKey(name: 'block_height') int? blockHeight,
    @JsonKey(name: 'block_hash') String? blockHash,
    @JsonKey(name: 'block_time') int? blockTime,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

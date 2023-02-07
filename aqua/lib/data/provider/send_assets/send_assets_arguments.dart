import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_assets_arguments.freezed.dart';

@freezed
class SendAssetsArguments with _$SendAssetsArguments {
  const factory SendAssetsArguments({
    required String address,
    Asset? asset,
    String? amount,
    String? label,
    String? message,
  }) = _SendAssetsArguments;
}

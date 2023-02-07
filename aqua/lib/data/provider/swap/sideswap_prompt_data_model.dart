import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sideswap_prompt_data_model.freezed.dart';

@freezed
class SideSwapPromptDataModel with _$SideSwapPromptDataModel {
  const factory SideSwapPromptDataModel({
    required Asset sendAsset,
    required int sendAmount,
    required Asset recvAsset,
    required int recvAmount,
  }) = _SideSwapPromptDataModel;
}

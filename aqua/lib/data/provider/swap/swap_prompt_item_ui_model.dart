import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'swap_prompt_item_ui_model.freezed.dart';

@freezed
class SwapPromptItemUiModel with _$SwapPromptItemUiModel {
  const factory SwapPromptItemUiModel.data({
    required String sendAmount,
    required String sendTicker,
    required Uint8List sendIcon,
    required String recvAmount,
    required String recvTicker,
    required Uint8List recvIcon,
  }) = SwapPromptItemUiModelData;
  const factory SwapPromptItemUiModel.loading() = SwapPromptItemUiModelLoading;
  const factory SwapPromptItemUiModel.error({
    required String message,
  }) = SwapPromptItemUiModelError;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'biometric_prompt_ui_model.freezed.dart';

@freezed
class BiometricPromptUiModel with _$BiometricPromptUiModel {
  const factory BiometricPromptUiModel({
    required String assetName,
    required String title,
    required String subtitle,
    required String infoTitle,
    required String securityDialogTitle,
    required String securityDialogDescription,
  }) = _BiometricPromptUiModel;
}

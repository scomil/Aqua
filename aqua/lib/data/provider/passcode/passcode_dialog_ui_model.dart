import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'passcode_dialog_ui_model.freezed.dart';

@freezed
class PasscodeDialogUiModel with _$PasscodeDialogUiModel {
  const factory PasscodeDialogUiModel({
    required String title,
    required String subtitle,
    required String buttonTitle,
    required VoidCallback onButtonPressed,
  }) = _PasscodeDialogUiModel;
}

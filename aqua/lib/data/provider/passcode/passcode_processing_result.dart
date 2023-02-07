import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'passcode_processing_result.freezed.dart';

@freezed
class PasscodeProcessingResult with _$PasscodeProcessingResult {
  const factory PasscodeProcessingResult.success({
    Object? arguments,
  }) = PasscodeProcessingSuccessResult;
  const factory PasscodeProcessingResult.loading({
    required String description,
  }) = PasscodeProcessingLoadingResult;
  const factory PasscodeProcessingResult.failure({
    required String title,
    required String subtitle,
    required String buttonTitle,
    required VoidCallback onButtonPressed,
  }) = PasscodeProcessingFailureResult;
}

@freezed
class PasscodeUnlockResult with _$PasscodeUnlockResult {
  const factory PasscodeUnlockResult.success() = PasscodeUnlockSuccessResult;
  const factory PasscodeUnlockResult.failure() = PasscodeUnlockFailureResult;
}

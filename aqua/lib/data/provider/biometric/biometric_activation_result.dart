import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'biometric_activation_result.freezed.dart';

@freezed
class BiometricActivationResult with _$BiometricActivationResult {
  const factory BiometricActivationResult.success() =
      BiometricActivationSuccessResult;
  const factory BiometricActivationResult.reject() =
      BiometricActivationRejectResult;
  const factory BiometricActivationResult.loading() =
      BiometricActivationLoadingResult;
  const factory BiometricActivationResult.failure() =
      BiometricActivationFailureResult;
}

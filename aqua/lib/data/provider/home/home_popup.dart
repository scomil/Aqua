import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_popup.freezed.dart';

@freezed
class HomePopup with _$HomePopup {
  const factory HomePopup.pinProtection() = HomePinProtectionPopup;
  const factory HomePopup.biometricProtection() = HomeBiometricProtectionPopup;
  const factory HomePopup.walletBackup() = HomeWalletBackupPopup;
  const factory HomePopup.pinUnlock() = HomePinUnlockPopup;
}

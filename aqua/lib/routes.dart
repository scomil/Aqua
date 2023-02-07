import 'package:aqua/screens/asset/asset_details_screen.dart';
import 'package:aqua/screens/asset/asset_transaction_confirm_screen.dart';
import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:aqua/screens/asset/asset_transactions_screen.dart';
import 'package:aqua/screens/common/webview_screen.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_buy_screen.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_screen.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_sell_screen.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_in_progress_screen.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_result_screen.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_screen.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_waiting_funds_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_history_item_details_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_prompt.dart';
import 'package:aqua/screens/exchange/swap/swap_screen.dart';
import 'package:aqua/screens/exchange/swap/tutorial/tutorial_completion_screen.dart';
import 'package:aqua/screens/home/home.dart';
import 'package:aqua/screens/marketplace/marketplace_menu_screen.dart';
import 'package:aqua/screens/onboarding/backup_invite.dart';
import 'package:aqua/screens/onboarding/env_switch_page.dart';
import 'package:aqua/screens/onboarding/passcode_confirm.dart';
import 'package:aqua/screens/onboarding/passcode_create.dart';
import 'package:aqua/screens/onboarding/passcode_enable.dart';
import 'package:aqua/screens/onboarding/wallet_backup_confirmation.dart';
import 'package:aqua/screens/onboarding/wallet_backup_confirmation_failure.dart';
import 'package:aqua/screens/onboarding/wallet_backup_confirmation_success.dart';
import 'package:aqua/screens/onboarding/wallet_backup_prompt.dart';
import 'package:aqua/screens/onboarding/wallet_biometric_prompt.dart';
import 'package:aqua/screens/onboarding/wallet_recovery_phrase_screen.dart';
import 'package:aqua/screens/onboarding/wallet_restore/wallet_restore_input.dart';
import 'package:aqua/screens/onboarding/wallet_restore/wallet_restore_prompt.dart';
import 'package:aqua/screens/onboarding/welcome.dart';
import 'package:aqua/screens/pockerchip/pocker_chip_balance_screen.dart';
import 'package:aqua/screens/pockerchip/pocker_chip_scanner_screen.dart';
import 'package:aqua/screens/profile/profile_about_screen.dart';
import 'package:aqua/screens/profile/profile_liquid_screen.dart';
import 'package:aqua/screens/profile/profile_recovery_phrase_screen.dart';
import 'package:aqua/screens/profile/profile_tos_screen.dart';
import 'package:aqua/screens/profile/settings/profile_passcode_confirm.dart';
import 'package:aqua/screens/profile/settings/profile_passcode_create.dart';
import 'package:aqua/screens/profile/settings/profile_passcode_enable.dart';
import 'package:aqua/screens/profile/settings/profile_settings_screen.dart';
import 'package:aqua/screens/profile/profile_support_screen.dart';
import 'package:aqua/screens/protection/protection_passcode_lock_screen.dart';
import 'package:aqua/screens/qrscanner/qr_scanner_screen.dart';
import 'package:aqua/screens/add_note/add_note_screen.dart';
import 'package:aqua/screens/receive/receive_amount_screen.dart';
import 'package:aqua/screens/receive/receive_choose_asset_screen.dart';
import 'package:aqua/screens/receive/receive_addresses_history_screen.dart';
import 'package:aqua/screens/receive/receive_qr_code_screen.dart';
import 'package:aqua/screens/send/send_assets_screen.dart';
import 'package:aqua/screens/send/send_prompt_screen.dart';
import 'package:aqua/screens/send/send_review_screen.dart';
import 'package:aqua/screens/send/send_summary_screen.dart';
import 'package:aqua/screens/send/send_amount_screen.dart';
import 'package:aqua/screens/wallet/wallet_add_asset_screen.dart';
import 'package:flutter/material.dart';

class AquaCustomRoute<T> extends MaterialPageRoute<T> {
  AquaCustomRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    this.isInitialRoute = false,
  }) : super(builder: builder, settings: settings);

  final bool isInitialRoute;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (isInitialRoute) {
      return child;
    }
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return FadeTransition(opacity: animation, child: child);
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 250);
}

mixin Routes {
  static final Map<String,
      AquaCustomRoute<Object> Function(RouteSettings settings)> pages = {
    WalletRecoveryPhraseScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletRecoveryPhraseScreen(),
        settings: settings,
      );
    },
    EnvSwitchPage.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const EnvSwitchPage(),
        settings: settings,
      );
    },
    Welcome.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const Welcome(),
        settings: settings,
      );
    },
    BackupInvite.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const BackupInvite(),
        settings: settings,
      );
    },
    WalletBackupPrompt.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletBackupPrompt(),
        settings: settings,
      );
    },
    WalletBackupConfirmation.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletBackupConfirmation(),
        settings: settings,
      );
    },
    WalletBackupConfirmationFailure.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletBackupConfirmationFailure(),
        settings: settings,
      );
    },
    WalletBackupConfirmationSuccess.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletBackupConfirmationSuccess(),
        settings: settings,
      );
    },
    WalletRestorePrompt.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletRestorePrompt(),
        settings: settings,
      );
    },
    WalletRestoreInput.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletRestoreInput(),
        settings: settings,
      );
    },
    WalletBiometricPrompt.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletBiometricPrompt(),
        settings: settings,
      );
    },
    PasscodeEnable.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const PasscodeEnable(),
        settings: settings,
      );
    },
    PasscodeCreate.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const PasscodeCreate(),
        settings: settings,
      );
    },
    PasscodeConfirm.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const PasscodeConfirm(),
        settings: settings,
      );
    },
    Home.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const Home(),
        settings: settings,
      );
    },
    WalletAddAssetScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WalletAddAssetScreen(),
        settings: settings,
      );
    },
    QrScannerScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const QrScannerScreen(),
        settings: settings,
      );
    },
    SendPromptScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SendPromptScreen(),
        settings: settings,
      );
    },
    SendAssetsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SendAssetsScreen(),
        settings: settings,
      );
    },
    SendAmountScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SendAmountScreen(),
        settings: settings,
      );
    },
    SendReviewScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SendReviewScreen(),
        settings: settings,
      );
    },
    SendSummaryScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SendSummaryScreen(),
        settings: settings,
      );
    },
    SwapPromptScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SwapPromptScreen(),
        settings: settings,
      );
    },
    ReceiveChooseAssetScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ReceiveChooseAssetScreen(),
        settings: settings,
      );
    },
    ReceiveQrCodeScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ReceiveQrCodeScreen(),
        settings: settings,
      );
    },
    ReceiveAmountScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ReceiveAmountScreen(),
        settings: settings,
      );
    },
    AddNoteScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const AddNoteScreen(),
        settings: settings,
      );
    },
    ReceiveAddressesHistoryScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ReceiveAddressesHistoryScreen(),
        settings: settings,
      );
    },
    SwapScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SwapScreen(),
        settings: settings,
      );
    },
    SideshiftScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SideshiftScreen(),
        settings: settings,
      );
    },
    BitcoinReserveScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const BitcoinReserveScreen(),
        settings: settings,
      );
    },
    BitcoinReserveBuyScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => BitcoinReserveBuyScreen(),
        settings: settings,
      );
    },
    BitcoinReserveSellScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const BitcoinReserveSellScreen(),
        settings: settings,
      );
    },
    ProfileSupportScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfileSupportScreen(),
        settings: settings,
      );
    },
    ProfileRecoveryPhraseScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfileRecoveryPhraseScreen(),
        settings: settings,
      );
    },
    ProtectionPasscodeLockScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProtectionPasscodeLockScreen(),
        settings: settings,
      );
    },
    ProfileSettingsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfileSettingsScreen(),
        settings: settings,
      );
    },
    ProfilePasscodeEnable.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfilePasscodeEnable(),
        settings: settings,
      );
    },
    ProfilePasscodeCreate.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfilePasscodeCreate(),
        settings: settings,
      );
    },
    ProfilePasscodeConfirm.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfilePasscodeConfirm(),
        settings: settings,
      );
    },
    ProfileAboutScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfileAboutScreen(),
        settings: settings,
      );
    },
    ProfileTosScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfileTosScreen(),
        settings: settings,
      );
    },
    ProfileLiquidScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const ProfileLiquidScreen(),
        settings: settings,
      );
    },
    AssetTransactionsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const AssetTransactionsScreen(),
        settings: settings,
      );
    },
    AssetDetailsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const AssetDetailsScreen(),
        settings: settings,
      );
    },
    AssetTransactionDetailsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const AssetTransactionDetailsScreen(),
        settings: settings,
      );
    },
    SwapHistoryItemDetailsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SwapHistoryItemDetailsScreen(),
        settings: settings,
      );
    },
    AssetTransactionConfirmScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const AssetTransactionConfirmScreen(),
        settings: settings,
      );
    },
    SwapTutorialCompleteScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SwapTutorialCompleteScreen(),
        settings: settings,
      );
    },
    MarketplaceMenuScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const MarketplaceMenuScreen(),
        settings: settings,
      );
    },
    SideshiftOrderResultScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SideshiftOrderResultScreen(),
        settings: settings,
      );
    },
    SideshiftOrderInProgressScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SideshiftOrderInProgressScreen(),
        settings: settings,
      );
    },
    SideshiftOrderWaitingFundsScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const SideshiftOrderWaitingFundsScreen(),
        settings: settings,
      );
    },
    WebViewScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const WebViewScreen(),
        settings: settings,
      );
    },
    PokerChipScannerScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const PokerChipScannerScreen(),
        settings: settings,
      );
    },
    PokerChipBalanceScreen.routeName: (settings) {
      return AquaCustomRoute<Object>(
        builder: (context) => const PokerChipBalanceScreen(),
        settings: settings,
      );
    },
  };
}

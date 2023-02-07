import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/common/widgets/wallet_backup_confirmation_content.dart';
import 'package:aqua/data/provider/wallet_backup_provider.dart';
import 'package:aqua/screens/onboarding/wallet_backup_confirmation_failure.dart';
import 'package:aqua/screens/onboarding/wallet_backup_confirmation_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WalletBackupConfirmation extends StatelessWidget {
  static const routeName = '/walletBackupConfirmation';

  const WalletBackupConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AsyncValue<void>?>(
      provider: walletBackupConfirmationResultProvider,
      onChange: (context, asyncValue) {
        asyncValue?.when(
          data: (_) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                WalletBackupConfirmationSuccess.routeName,
                (route) =>
                    route is! RawDialogRoute &&
                    route.settings.name != WalletBackupConfirmation.routeName);
          },
          loading: () {
            showLoadingDialog(context,
                AppLocalizations.of(context)!.backupInviteLoadingIndicator);
          },
          error: (_, __) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                WalletBackupConfirmationFailure.routeName,
                (route) =>
                    route is! RawDialogRoute &&
                    route.settings.name != WalletBackupConfirmation.routeName);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
              child: const WalletBackupConfirmationContent()),
        ),
      ),
    );
  }
}

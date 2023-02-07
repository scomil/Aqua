import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/recovery_phrase_widget.dart';
import 'package:aqua/screens/onboarding/wallet_backup_confirmation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class WalletRecoveryPhraseScreen extends StatelessWidget {
  static const routeName = '/walletRecoveryPhraseScreen';

  const WalletRecoveryPhraseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 12.h, left: 24.w, right: 24.w, bottom: 24.h),
          child: Column(
            children: [
              const RecoveryPhraseWidget(),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: AquaElevatedButton(
                  child: Text(
                      AppLocalizations.of(context)!.backupRecoveryPhraseButton),
                  onPressed: () async {
                    Navigator.of(context).pushReplacementNamed(
                        WalletBackupConfirmation.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

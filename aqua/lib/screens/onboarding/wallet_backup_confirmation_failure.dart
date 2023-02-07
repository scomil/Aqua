import 'package:aqua/screens/onboarding/wallet_recovery_phrase_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletBackupConfirmationFailure extends StatelessWidget {
  static const routeName = '/walletBackupConfirmationFailure';

  const WalletBackupConfirmationFailure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 110.h),
                child: Row(
                  children: [
                    Expanded(
                      child: SvgPicture.asset(
                        'assets/failure.svg',
                        width: 240.w,
                        height: 158.h,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 42.h),
                child: Text(
                  AppLocalizations.of(context)!.backupFailureTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontSize: 27.sp),
                ),
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      child: Text(
                        AppLocalizations.of(context)!.backupFailureQuitButton,
                      ),
                      onPressed: () async {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(width: 12.w),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(AppLocalizations.of(context)!
                          .backupFailureRetryButton),
                      onPressed: () async {
                        Navigator.of(context).pushReplacementNamed(
                          WalletRecoveryPhraseScreen.routeName,
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

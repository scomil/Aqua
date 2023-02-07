import 'package:aqua/screens/onboarding/wallet_recovery_phrase_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletBackupPrompt extends StatelessWidget {
  static const routeName = '/walletBackupPrompt';

  const WalletBackupPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(children: [
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ]),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: [
                Expanded(
                  child: SvgPicture.asset(
                    'assets/backup_wallet.svg',
                    width: 172.w,
                    height: 209.h,
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(top: 84.h),
                child: Text(
                  AppLocalizations.of(context)!.backupPromptTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontSize: 27.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Text(
                  AppLocalizations.of(context)!.backupPromptSubtitle,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        height: 1.25,
                        fontSize: 14.sp,
                      ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.maxFinite,
                height: 48.h,
                child: ElevatedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 24.w,
                        child: SvgPicture.asset('assets/face_id.svg'),
                      ),
                      SizedBox(width: 8.w),
                      Text(AppLocalizations.of(context)!.backupPromptButton),
                    ],
                  ),
                  onPressed: () async {
                    Navigator.of(context).pushReplacementNamed(
                      WalletRecoveryPhraseScreen.routeName,
                    );
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

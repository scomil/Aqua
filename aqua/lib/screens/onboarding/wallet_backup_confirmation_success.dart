import 'package:aqua/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletBackupConfirmationSuccess extends StatelessWidget {
  static const routeName = '/walletBackupConfirmationSuccess';

  const WalletBackupConfirmationSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                // TODO: Add svg info to file
                child: SvgPicture.asset(
                  "assets/success_treasure.svg",
                  width: 240.w,
                  height: 194.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.w, right: 8.w, top: 60.h),
                child: Text(
                  AppLocalizations.of(context)!.backupSuccessTitle,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontSize: 27.sp,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 39.h),
                child: Text(
                  AppLocalizations.of(context)!.backupSuccessSubtitle,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontSize: 14.sp,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
              const Spacer(),
              Row(children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: ElevatedButton(
                      child: Text(
                          AppLocalizations.of(context)!.backupSuccessButton),
                      onPressed: () async {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            Home.routeName, (route) => false);
                      },
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

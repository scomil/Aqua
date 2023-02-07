import 'package:aqua/screens/profile/settings/profile_passcode_create.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePasscodeEnable extends StatelessWidget {
  static const routeName = '/profilePasscodeEnable';

  const ProfilePasscodeEnable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/passcode.svg',
                      width: 69.w,
                      height: 80.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28.h),
                      child: Text(
                        AppLocalizations.of(context)!.passcodeEnableTitle,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        AppLocalizations.of(context)!.passcodeEnableSubtitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 48.h,
                child: ElevatedButton(
                  child: Text(
                    AppLocalizations.of(context)!.passcodeEnableButton,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ProfilePasscodeCreate.routeName);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 48.h,
                  child: TextButton(
                    child:
                        Text(AppLocalizations.of(context)!.passcodeSkipButton),
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

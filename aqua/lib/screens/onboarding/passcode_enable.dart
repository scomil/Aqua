import 'package:aqua/data/provider/passcode/passcode_provider.dart';
import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/aqua_text_button.dart';
import 'package:aqua/screens/onboarding/passcode_create.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasscodeEnable extends StatelessWidget {
  static const routeName = '/passcodeEnable';
  const PasscodeEnable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: enablePasscodeNavigateForwardProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context)
                  .pushReplacementNamed(PasscodeCreate.routeName);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: enablePasscodePopProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context).pop();
            }
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 0,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 142.h, bottom: 24.h),
              child: Column(
                children: [
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
                  Container(
                    padding: EdgeInsets.only(top: 20.h),
                    margin: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      AppLocalizations.of(context)!.passcodeEnableSubtitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  const Spacer(),
                  AquaElevatedButton(
                    child: Text(
                      AppLocalizations.of(context)!.passcodeEnableButton,
                    ),
                    onPressed: () {
                      context.read(enablePasscodeProvider).enable();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: AquaTextButton(
                      style: TextButton.styleFrom(
                        primary: Theme.of(context).colorScheme.onPrimary,
                      ),
                      onPressed: () async {
                        context.read(enablePasscodeProvider).skip();
                      },
                      child: Text(
                        AppLocalizations.of(context)!.passcodeSkipButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/aqua_text_button.dart';
import 'package:aqua/data/provider/welcome_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeProfileTab extends StatelessWidget {
  const WelcomeProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.profileTitle,
            style: Theme.of(context).textTheme.headline4,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Expanded(
                    child: AquaElevatedButton(
                      child: Text(AppLocalizations.of(context)!
                          .welcomeProfileCreateButton),
                      onPressed: () {
                        context.read(welcomeProvider).navigateToCreateWallet();
                      },
                    ),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(top: 32.h, left: 8.w),
                  child: Text(
                    AppLocalizations.of(context)!.welcomeProfileRestorePrompt,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
                AquaTextButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(AppLocalizations.of(context)!
                          .welcomeProfileRestoreButton),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 12.w,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    context.read(welcomeProvider).navigateToRestoreWallet();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

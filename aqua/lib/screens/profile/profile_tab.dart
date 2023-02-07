import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/menu_item.dart';
import 'package:aqua/data/provider/profile_provider.dart';
import 'package:aqua/screens/profile/profile_about_screen.dart';
import 'package:aqua/screens/profile/profile_recovery_phrase_screen.dart';
import 'package:aqua/screens/profile/profile_tos_screen.dart';
import 'package:aqua/screens/profile/settings/profile_settings_screen.dart';
import 'package:aqua/screens/profile/profile_support_screen.dart';
import 'package:aqua/screens/protection/protection_passcode_lock_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<AsyncValue<void>?>(
          provider: profileProcessLinkOpeningProvider,
          onChange: (context, asyncValue) {
            asyncValue?.maybeWhen(
              error: (_, __) {
                showDialog<CustomAlertDialog>(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomAlertDialog.unableToOpenLink(
                          context: context);
                    });
              },
              orElse: () {},
            );
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: profileShowRecoveryPhraseLockProvider,
          onChange: (context, arguments) async {
            if (arguments != null) {
              await Navigator.of(context)
                  .pushNamed(
                    ProtectionPasscodeLockScreen.routeName,
                    arguments: arguments,
                  )
                  .then((result) => context
                      .read(profileProvider)
                      .handlePasscodeUnlockResult(result));
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: profileShowRecoveryPhraseProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context)
                  .pushNamed(ProfileRecoveryPhraseScreen.routeName);
            }
          },
          child: Container(),
        ),
        Container(
          margin: EdgeInsets.only(top: 60.h),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.profileTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 24.h),
                  children: [
                    MenuItemWidget.arrow(
                      context: context,
                      assetName: 'assets/profile_settings.svg',
                      title: AppLocalizations.of(context)!.profileItemSettings,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ProfileSettingsScreen.routeName);
                      },
                    ),
                    MenuItemWidget.arrow(
                      context: context,
                      assetName: 'assets/profile_phrase.svg',
                      title: AppLocalizations.of(context)!.profileItemPhrase,
                      onPressed: () {
                        context.read(profileProvider).openRecoveryPhrase();
                      },
                    ),
                    MenuItemWidget.arrow(
                      context: context,
                      assetName: 'assets/profile_terms.svg',
                      title: AppLocalizations.of(context)!.profileItemTerms,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ProfileTosScreen.routeName);
                      },
                    ),
                    MenuItemWidget.arrow(
                      context: context,
                      assetName: 'assets/profile_support.svg',
                      title: AppLocalizations.of(context)!.profileItemSupport,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ProfileSupportScreen.routeName);
                      },
                    ),
                    MenuItemWidget.arrow(
                      context: context,
                      assetName: 'assets/profile_about.svg',
                      title: AppLocalizations.of(context)!.profileItemAbout,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ProfileAboutScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

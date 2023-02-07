import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/menu_item.dart';
import 'package:aqua/data/provider/profile_about_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAboutScreen extends StatelessWidget {
  static const routeName = '/profileAboutScreen';

  const ProfileAboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AsyncValue<void>?>(
      provider: profileAboutProcessLinkOpeningProvider,
      onChange: (context, asyncValue) {
        asyncValue?.maybeWhen(
          error: (_, __) {
            showDialog<CustomAlertDialog>(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog.unableToOpenLink(context: context);
                });
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: 12.h, left: 16.w, right: 16.w, bottom: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.profileAboutTitle,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Expanded(
                  child: Consumer(builder: (context, watch, _) {
                    final twitterLink = watch(profileAboutTwitterLinkProvider);
                    final websiteLink = watch(profileAboutWebsiteLinkProvider);
                    return ListView(
                      padding: EdgeInsets.only(top: 24.h),
                      children: [
                        MenuItemWidget(
                          title: AppLocalizations.of(context)!
                              .profileAboutItemTwitter,
                          onPressed: () {
                            context
                                .read(profileAboutProvider)
                                .openLink(twitterLink.link);
                          },
                          trailing: Row(
                            children: [
                              Text(
                                twitterLink.text ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryVariant,
                                      fontSize: 13.sp,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: SvgPicture.asset(
                                  'assets/external_link.svg',
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  width: 20.w,
                                  height: 20.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MenuItemWidget(
                          title: AppLocalizations.of(context)!
                              .profileAboutItemWebsite,
                          onPressed: () async {
                            context
                                .read(profileAboutProvider)
                                .openLink(websiteLink.link);
                          },
                          trailing: Row(
                            children: [
                              Text(
                                websiteLink.text ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryVariant,
                                      fontSize: 13.sp,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: SvgPicture.asset(
                                  'assets/external_link.svg',
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  width: 20.w,
                                  height: 20.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

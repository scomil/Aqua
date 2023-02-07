import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/menu_item.dart';
import 'package:aqua/data/provider/profile_support_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_app_review/in_app_review.dart';

class ProfileSupportScreen extends StatelessWidget {
  static const routeName = '/profileSupportScreen';

  const ProfileSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AsyncValue<void>?>(
      provider: profileSupportProcessLinkOpeningProvider,
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
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.profileSupportTitle,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Expanded(
                  child: Consumer(builder: (context, watch, _) {
                    return ListView(
                      padding: EdgeInsets.only(top: 24.h),
                      children: [
                        MenuItemWidget.arrow(
                          context: context,
                          title: AppLocalizations.of(context)!
                              .profileSupportItemSupport,
                          onPressed: () {
                            final supportLink =
                                watch(profileSupportLinkProvider);
                            context
                                .read(profileSupportProvider)
                                .openLink(supportLink.link);
                          },
                        ),
                        MenuItemWidget.arrow(
                          context: context,
                          title: AppLocalizations.of(context)!
                              .profileSupportItemRate,
                          onPressed: () {
                            final rateIds = watch(profileSupportRateProvider);
                            final InAppReview inAppReview =
                                InAppReview.instance;
                            inAppReview.openStoreListing(
                                appStoreId: rateIds.appStoreId);
                          },
                        ),
                        MenuItemWidget(
                          title: AppLocalizations.of(context)!
                              .profileSupportItemUpdates,
                          onPressed: () {
                            final updatesLink =
                                watch(profileSupportUpdatesLinkProvider);
                            context
                                .read(profileSupportProvider)
                                .openLink(updatesLink.link);
                          },
                          trailing: SvgPicture.asset(
                            'assets/external_link.svg',
                            color: Theme.of(context).colorScheme.onBackground,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 8.w, right: 8.w, top: 20.h),
                          child: Consumer(builder: (context, watch, _) {
                            final versions = watch(profileVersionsProvider);
                            return versions != null
                                ? Text(
                                    AppLocalizations.of(context)!
                                        .profileSupportVersions(
                                      versions.item1,
                                      versions.item2,
                                    ),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          fontSize: 13.sp,
                                          height: 1.4,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                        ),
                                  )
                                : Container();
                          }),
                        )
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

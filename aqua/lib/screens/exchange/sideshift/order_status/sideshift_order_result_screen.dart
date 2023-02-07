import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/home/home_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_order_provider.dart';
import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_theme.dart';
import 'package:aqua/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideshiftOrderResultScreen extends ConsumerWidget {
  static const routeName = '/orderResultScreen';

  const SideshiftOrderResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final response = ModalRoute.of(context)?.settings.arguments
        as SideshiftOrderStatusResponse;

    return Theme(
      data: SideshiftTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/sideshift_full.svg',
            width: 109.w,
            height: 13.h,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .exchangeSideshiftOrderConfirmTitle,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 26.h),
                SideshiftTransactionDetailsDataItemWidget(
                  title:
                      AppLocalizations.of(context)!.assetTransactionDetailsFrom,
                  value: response.depositAddress ?? '',
                ),
                SideshiftTransactionDetailsDataItemWidget(
                  title:
                      AppLocalizations.of(context)!.assetTransactionDetailsTo,
                  value: response.settleAddress ?? '',
                ),
                SideshiftTransactionDetailsDataItemWidget(
                  title:
                      AppLocalizations.of(context)!.assetTransactionDetailsRate,
                  value: response.rate ?? '',
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: DashedDivider(
                    color: SideshiftTheme.of(context).backgroundColor,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!
                      .assetTransactionDetailsTransactionId,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: SideshiftTheme.of(context).colorScheme.onSurface,
                      ),
                ),
                SizedBox(height: 8.w),
                Text(
                  response.depositHash ?? '',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 20.h),
                Text(
                  AppLocalizations.of(context)!.assetTransactionDetailsOrderId,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: SideshiftTheme.of(context).colorScheme.onSurface,
                      ),
                ),
                SizedBox(height: 8.w),
                Text(
                  response.id ?? '',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 48.h,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read(sideshiftOrderProvider)
                          .setPendingOrder(null);
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        Home.routeName,
                        (r) => r.settings.name == '/',
                      );
                      context.read(homeProvider).selectTab(0);
                    },
                    child: Text(
                      AppLocalizations.of(context)!
                          .exchangeSideshiftOrderConfirmDoneButton,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SideshiftTransactionDetailsDataItemWidget extends StatelessWidget {
  const SideshiftTransactionDetailsDataItemWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}

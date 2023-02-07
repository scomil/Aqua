import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_result_screen.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_asset_icon.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_order_status_label.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SideshiftOrderInProgressScreen extends StatelessWidget {
  static const routeName = '/orderInProgressScreen';

  const SideshiftOrderInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final order = ModalRoute.of(context)?.settings.arguments
        as SideshiftOrderStatusResponse;

    return Theme(
      data: SideshiftTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints.tightForFinite(),
              onPressed: () => Navigator.of(context).pop(),
            ),
            SizedBox(width: 16.w),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SideshiftAssetIcon(
                    assetId: '${order.depositCoin}-${order.depositNetwork}',
                    size: 100.r,
                  ),
                  SizedBox(width: 8.w),
                  SideshiftAssetIcon(
                    assetId: '${order.settleCoin}-${order.settleNetwork}',
                    size: 100.r,
                  ),
                ],
              ),
              Text(
                AppLocalizations.of(context)!
                    .exchangeSideshiftOrderInProgressTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 20.h),
              Text(
                AppLocalizations.of(context)!
                    .exchangeSideshiftOrderInProgressDescription,
                style: Theme.of(context).textTheme.caption?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
              ),
              SizedBox(height: 30.h),
              Row(children: [
                Text(
                  AppLocalizations.of(context)!
                      .exchangeSideshiftOrderWaitShareStatus,
                  style: SideshiftTheme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                        color: SideshiftTheme.of(context).colorScheme.onSurface,
                      ),
                ),
                const Spacer(),
                const SideshiftOrderStatusLabel(),
              ]),
              SizedBox(height: 16.h),
              SideshiftTransactionDetailsDataItemWidget(
                title: AppLocalizations.of(context)!
                    .exchangeSideshiftOrderInProgressDeliver,
                value:
                    '${order.depositAmount} ${order.depositCoin} (${order.depositNetwork})',
              ),
              SideshiftTransactionDetailsDataItemWidget(
                title: AppLocalizations.of(context)!
                    .exchangeSideshiftOrderInProgressReceive,
                value:
                    '${order.settleAmount} ${order.settleCoin} (${order.settleNetwork})',
              ),
              SideshiftTransactionDetailsDataItemWidget(
                title: AppLocalizations.of(context)!
                    .exchangeSideshiftOrderInProgressAddress,
                value: order.settleAddress ?? '-',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

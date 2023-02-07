import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepositLimit extends ConsumerWidget {
  const DepositLimit(
    this.order, {
    Key? key,
  }) : super(key: key);

  final SideshiftOrder order;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deliverAsset = watch(deliverAssetProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 6.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
              width: 1.w,
            ),
          ),
          child: Text(
            AppLocalizations.of(context)!.exchangeSideShiftSendLabel,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        SizedBox(height: 8.h),
        DepositAmountLimitLabel(
          label: AppLocalizations.of(context)!.exchangeSideShiftSendMin,
          quantity: order.depositMin!,
          assetId: deliverAsset?.id.toUpperCase() ?? '',
        ),
        SizedBox(height: 8.h),
        DepositAmountLimitLabel(
          label: AppLocalizations.of(context)!.exchangeSideShiftSendMax,
          quantity: order.depositMax!,
          assetId: deliverAsset?.id.toUpperCase() ?? '',
        ),
      ],
    );
  }
}

class DepositAmountLimitLabel extends ConsumerWidget {
  const DepositAmountLimitLabel({
    Key? key,
    required this.label,
    required this.quantity,
    required this.assetId,
  }) : super(key: key);

  final String label;
  final String quantity;
  final String assetId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
      constraints: BoxConstraints(minWidth: 100.w),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 12.sp,
                  color:
                      Theme.of(context).colorScheme.onPrimary.withOpacity(.5),
                ),
          ),
          SizedBox(width: 4.w),
          Text(
            '$quantity $assetId',
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

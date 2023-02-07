import 'package:aqua/data/models/sideshift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReceivingAddress extends StatelessWidget {
  const ReceivingAddress(
    this.order, {
    Key? key,
  }) : super(key: key);

  final SideshiftOrder order;

  @override
  Widget build(BuildContext context) {
    final address = order.settleAddress!;
    final clippedAddress = address.length >= 17
        ? address.replaceRange(7, address.length - 7, '...')
        : address;
    return Container(
      constraints: BoxConstraints(maxWidth: 120.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.exchangeSideShiftReceivingAddress,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 10.sp,
                  color:
                      Theme.of(context).colorScheme.onPrimary.withOpacity(.5),
                ),
          ),
          Text(
            clippedAddress,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ],
      ),
    );
  }
}

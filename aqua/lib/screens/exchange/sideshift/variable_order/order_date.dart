import 'package:aqua/data/models/sideshift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class OrderDate extends StatelessWidget {
  const OrderDate(
    this.order, {
    Key? key,
  }) : super(key: key);

  final SideshiftOrder order;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 120.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppLocalizations.of(context)!.exchangeSideShiftOrderCreatedAt,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 10.sp,
                  color:
                      Theme.of(context).colorScheme.onPrimary.withOpacity(.5),
                ),
          ),
          Text(
            order.createdAt != null
                ? DateFormat('yyyy-MM-dd hh:ss').format(order.createdAt!)
                : '-',
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

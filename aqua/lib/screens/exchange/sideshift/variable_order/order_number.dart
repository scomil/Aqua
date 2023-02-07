import 'package:aqua/data/models/sideshift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderNumber extends StatelessWidget {
  const OrderNumber(this.order, {Key? key}) : super(key: key);

  final SideshiftOrder order;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          AppLocalizations.of(context)!.exchangeSideShiftOrderNumber,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontSize: 10.sp,
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(.5),
              ),
        ),
        Text(
          order.id!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ],
    );
  }
}

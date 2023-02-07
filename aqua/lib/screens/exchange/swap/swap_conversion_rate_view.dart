import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapConversionRateView extends StatelessWidget {
  const SwapConversionRateView({Key? key, required this.amount})
      : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.w),
      child: Container(
        constraints: BoxConstraints(minWidth: 172.w),
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.r),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        alignment: Alignment.center,
        child: Text(
          amount,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontSize: 14.sp,
                color: const Color(0xFF090C15),
              ),
        ),
      ),
    );
  }
}

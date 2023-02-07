import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapPercentValueMenu extends StatelessWidget {
  const SwapPercentValueMenu({
    Key? key,
    this.onPressed,
    this.onMaxPressed,
    this.on25PercentPressed,
    this.on50PercentPressed,
    this.containerColor,
    this.textColor,
    this.buttonColor,
  }) : super(key: key);

  final Color? containerColor;
  final Color? textColor;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final VoidCallback? onMaxPressed;
  final VoidCallback? on25PercentPressed;
  final VoidCallback? on50PercentPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor ?? Theme.of(context).backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16.w),
            child: KeyboardAssetAllocationValueItem(
              text: AppLocalizations.of(context)!.exchangeSwap25Percent,
              textColor: textColor,
              buttonColor: buttonColor,
              onTap: () {
                on25PercentPressed?.call();
                onPressed?.call();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            child: KeyboardAssetAllocationValueItem(
              text: AppLocalizations.of(context)!.exchangeSwap50Percent,
              textColor: textColor,
              buttonColor: buttonColor,
              onTap: () {
                on50PercentPressed?.call();
                onPressed?.call();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 16.w),
            child: KeyboardAssetAllocationValueItem(
              text: AppLocalizations.of(context)!.exchangeSwapMax,
              textColor: textColor,
              buttonColor: buttonColor,
              onTap: () {
                onMaxPressed?.call();
                onPressed?.call();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class KeyboardAssetAllocationValueItem extends StatelessWidget {
  const KeyboardAssetAllocationValueItem({
    Key? key,
    this.textColor,
    this.buttonColor,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Color? buttonColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 24.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: buttonColor ?? Colors.black87,
          onPrimary:
              textColor ?? Theme.of(context).colorScheme.secondaryContainer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
          textStyle:
              Theme.of(context).textTheme.button?.copyWith(fontSize: 16.sp),
        ),
        child: Text(text),
      ),
    );
  }
}

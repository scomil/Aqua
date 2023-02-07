import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SwapAssetsButton extends StatelessWidget {
  const SwapAssetsButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircularSvgButton(
      onPressed: onPressed,
      backgroundColor: SideshiftColors.ogreOdor,
      size: 48.r,
      svgIcon: SvgPicture.asset(
        'assets/exchange_swap.svg',
        width: 12.w,
        height: 16.h,
        color: Colors.white,
      ),
    );
  }
}

class CircularSvgButton extends StatelessWidget {
  const CircularSvgButton({
    Key? key,
    this.size,
    this.onPressed,
    this.backgroundColor,
    required this.svgIcon,
  }) : super(key: key);

  final double? size;
  final Widget svgIcon;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? 40.r,
      height: size ?? 40.r,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: Container(
            width: size ?? 40.r,
            height: size ?? 40.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: backgroundColor,
            ),
            child: Center(child: svgIcon),
          ),
        ),
      ),
    );
  }
}

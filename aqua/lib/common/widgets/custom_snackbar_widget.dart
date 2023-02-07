import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSnackbarWidget extends StatelessWidget {
  const CustomSnackbarWidget({
    Key? key,
    required this.opacity,
    required this.text,
    required this.color,
    this.bottom,
  }) : super(key: key);

  final double opacity;
  final String text;
  final Color color;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: bottom ?? 24.h),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: opacity,
          curve: Curves.fastOutSlowIn,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 12.h,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(24.r)),
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AquaElevatedButton extends StatelessWidget {
  const AquaElevatedButton({
    Key? key,
    this.child,
    this.onPressed,
    this.style,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 48.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: child,
      ),
    );
  }
}

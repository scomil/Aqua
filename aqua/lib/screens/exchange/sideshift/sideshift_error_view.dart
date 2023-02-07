import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideshiftErrorView extends StatelessWidget {
  const SideshiftErrorView({
    Key? key,
    this.isRightAligned = true,
    required this.message,
  }) : super(key: key);

  final String message;
  final bool isRightAligned;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isRightAligned ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Icon(
          Ionicons.ios_warning,
          size: 15.r,
          color: Theme.of(context).colorScheme.error,
        ),
        SizedBox(width: 4.w),
        Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.error,
              ),
        ),
      ],
    );
  }
}

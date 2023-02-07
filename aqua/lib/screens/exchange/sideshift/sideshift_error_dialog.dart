import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showSideshiftErrorDialog({
  required BuildContext context,
  required String title,
  required String message,
  required String buttonText,
  VoidCallback? onPressed,
}) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) => _SideshiftErrorDialogView(
      context: context,
      title: title,
      message: message,
      buttonText: buttonText,
      onPressed: onPressed,
    ),
  );
}

class _SideshiftErrorDialogView extends StatelessWidget {
  const _SideshiftErrorDialogView({
    Key? key,
    required this.context,
    required this.title,
    required this.message,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18.w),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 6.h),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontSize: 21.sp),
              ),
              SizedBox(height: 26.h),
              Text(
                message,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 14.sp),
              ),
              SizedBox(height: 36.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

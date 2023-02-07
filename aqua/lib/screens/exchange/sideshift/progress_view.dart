import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 3.r,
        valueColor: AlwaysStoppedAnimation(
          Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
    );
  }
}

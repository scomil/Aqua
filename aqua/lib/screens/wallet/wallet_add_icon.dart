import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletAddIcon extends StatelessWidget {
  const WalletAddIcon({
    Key? key,
    this.icon,
    this.size,
    required this.onTap,
  }) : super(key: key);

  final IconData? icon;
  final double? size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 24.r,
      height: size ?? 24.r,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(vertical: 16.h),
      child: Material(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(100),
          child: Icon(
            icon ?? Icons.add,
            size: 18.r,
          ),
        ),
      ),
    );
  }
}

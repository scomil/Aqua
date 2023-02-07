import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetTile extends StatelessWidget {
  const AssetTile({
    Key? key,
    required this.name,
    required this.ticker,
    this.amount,
    this.conversionAmount,
    this.onTap,
    this.icon,
    this.showDivider = true,
  }) : super(key: key);

  final String name;
  final String ticker;
  final String? amount;
  final String? conversionAmount;
  final GestureTapCallback? onTap;
  final Image? icon;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 78.h,
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 32.w,
                  height: 32.w,
                  child: icon,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 22.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                              Text(
                                amount ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: SizedBox(
                            height: 18.h,
                            child: Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ticker,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                          fontSize: 13.sp,
                                        ),
                                  ),
                                  Text(
                                    conversionAmount ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                          fontSize: 13.sp,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            if (showDivider)
              const Divider(
                height: 1,
                thickness: 1,
                color: AquaColors.darkJungleGreen,
              ),
          ],
        ),
      ),
    );
  }
}

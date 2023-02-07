import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MarketplaceMenuItemData {
  const MarketplaceMenuItemData({
    this.iconSvg,
    this.iconPng,
    required this.title,
    this.description,
    this.buttonLabel,
    this.onTap,
  });

  final String? iconSvg;
  final String? iconPng;
  final String title;
  final String? description;
  final String? buttonLabel;
  final Function()? onTap;
}

class MarketplaceMenu extends StatelessWidget {
  const MarketplaceMenu({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<MarketplaceMenuItemData> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      itemCount: items.length,
      separatorBuilder: (_, __) => SizedBox(height: 12.h),
      itemBuilder: (_, index) => _MarketplaceMenuItem(items[index]),
    );
  }
}

class _MarketplaceMenuItem extends StatelessWidget {
  const _MarketplaceMenuItem(
    this.data, {
    Key? key,
  }) : super(key: key);

  final MarketplaceMenuItemData data;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(12.r),
      child: InkWell(
        onTap: data.onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          height: 90.h,
          padding: EdgeInsets.only(right: 13.w, left: 7.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (data.iconSvg != null)
                SvgPicture.asset(
                  data.iconSvg!,
                  width: 54.r,
                  height: 54.r,
                ),
              if (data.iconPng != null)
                Image.asset(
                  data.iconPng!,
                  width: 54.r,
                  height: 54.r,
                ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        data.description ?? '',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              if (data.buttonLabel != null)
                ElevatedButton(
                  onPressed: data.onTap,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 2.h,
                    ),
                    textStyle: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(fontSize: 12.sp),
                  ),
                  child: Text(data.buttonLabel!),
                )
              else
                Icon(
                  Icons.chevron_right,
                  color: Theme.of(context).hintColor,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

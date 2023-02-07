import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigationBar extends BottomNavigationBar {
  CustomBottomNavigationBar._({
    required List<BottomNavigationBarItem> items,
    required int currentIndex,
    required ValueChanged<int> onTap,
  }) : super(
          items: items,
          currentIndex: currentIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10.sp,
          unselectedFontSize: 10.sp,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 10.sp,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 10.sp,
          ),
        );

  factory CustomBottomNavigationBar.create({
    required BuildContext context,
    required int currentIndex,
    required ValueChanged<int> onTap,
  }) {
    return CustomBottomNavigationBar._(
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        _CustomBottomNavigationBarItem.withSvgAssetIcon(
          context: context,
          svgAssetName: 'assets/tab_wallet.svg',
          label: AppLocalizations.of(context)!.homeTabWalletTitle,
          width: 20.w,
          height: 20.h,
        ),
        _CustomBottomNavigationBarItem.withSvgAssetIcon(
          context: context,
          svgAssetName: 'assets/marketplace.svg',
          label: AppLocalizations.of(context)!.homeTabMarketplaceTitle,
          width: 18.w,
          height: 24.h,
        ),
        // _CustomBottomNavigationBarItem.withSvgAssetIcon(
        //   context: context,
        //   svgAssetName: 'assets/nft.svg',
        //   label: AppLocalizations.of(context)!.homeTabNftTitle,
        //   width: 20.r,
        //   height: 20.r,
        // ),
        _CustomBottomNavigationBarItem.withSvgAssetIcon(
          context: context,
          svgAssetName: 'assets/tab_profile.svg',
          label: AppLocalizations.of(context)!.homeTabProfileTitle,
          width: 19.23.w,
          height: 20.h,
        ),
      ],
      onTap: onTap,
    );
  }
}

class _CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  _CustomBottomNavigationBarItem({
    required Color? inactiveColor,
    required Color? backgroundColor,
    required Color? activeColor,
    required String svgAssetName,
    required String label,
    required double width,
    required double height,
  }) : super(
          backgroundColor: backgroundColor,
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.h),
            child: SizedBox(
              width: 28.r,
              height: 28.r,
              child: Center(
                child: SvgPicture.asset(
                  svgAssetName,
                  width: width,
                  height: height,
                  color: inactiveColor,
                ),
              ),
            ),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.only(bottom: 3.h),
            child: SizedBox(
              width: 28.r,
              height: 28.r,
              child: Center(
                child: SvgPicture.asset(
                  svgAssetName,
                  width: width,
                  height: height,
                  color: activeColor,
                ),
              ),
            ),
          ),
          label: label,
        );

  factory _CustomBottomNavigationBarItem.withSvgAssetIcon({
    required BuildContext context,
    required String svgAssetName,
    required String label,
    required double width,
    required double height,
  }) {
    return _CustomBottomNavigationBarItem(
      backgroundColor: AquaColors.onyx,
      inactiveColor:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      activeColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      svgAssetName: svgAssetName,
      label: label,
      width: width,
      height: height,
    );
  }
}

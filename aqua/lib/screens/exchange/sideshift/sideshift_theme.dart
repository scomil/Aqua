import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SideshiftTheme {
  static ThemeData of(BuildContext context) {
    final colorScheme = ColorScheme.fromSwatch(
      primarySwatch: SideshiftColors.wenge,
      accentColor: SideshiftColors.ogreOdor,
    ).copyWith(
      brightness: Brightness.dark,
      primary: SideshiftColors.wenge,
      secondary: SideshiftColors.darkPuce,
      background: SideshiftColors.licorice,
      // primaryContainer: AquaColors.darkJungleGreen,
      // secondaryContainer: AquaColors.robinEggBlue,
      surface: SideshiftColors.eerieBlack,
      error: AquaColors.radicalRed,
      onSurface: SideshiftColors.englishLavender,
      // onSecondary: AquaColors.mediumJungleGreen,
      // onSurface: AquaColors.cadetGrey,
      // onBackground: AquaColors.auroMetalSaurus,
      // onError: AquaColors.isabelline,
    );
    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.r),
    );

    return Theme.of(context).copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colorScheme.background,
      hintColor: colorScheme.primary,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: colorScheme.background,
        shadowColor: Colors.transparent,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: colorScheme.secondaryContainer),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return SideshiftColors.ogreOdor;
              } else if (states.contains(MaterialState.disabled)) {
                return colorScheme.secondary;
              }
              return SideshiftColors.ogreOdor;
            },
          ),
          elevation: MaterialStateProperty.resolveWith((_) => 0.0),
          shape: MaterialStateProperty.resolveWith((_) => buttonShape),
          foregroundColor: MaterialStateProperty.resolveWith(
            (_) => colorScheme.onPrimary,
          ),
          textStyle: MaterialStateProperty.resolveWith(
            (_) => GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: colorScheme.onPrimary,
            ),
          ),
          padding: MaterialStateProperty.resolveWith(
            (_) => EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
          ),
        ),
      ),
    );
  }
}

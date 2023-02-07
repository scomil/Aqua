import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/entry_point/entry_point.dart';
import 'package:aqua/data/provider/entry_point/entry_point_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:aqua/painters/preload_background_painter.dart';
import 'package:aqua/routes.dart';
import 'package:aqua/screens/exchange/swap/swap_prompt.dart';
import 'package:aqua/screens/home/home.dart';
import 'package:aqua/screens/onboarding/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppMain extends StatelessWidget {
  const AppMain({
    Key? key,
  }) : super(key: key);

  ThemeData _theme() {
    const colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: AquaColors.onyx,
      primaryContainer: AquaColors.darkJungleGreen,
      secondary: AquaColors.persianGreen,
      secondaryContainer: AquaColors.robinEggBlue,
      surface: AquaColors.charcoal,
      background: AquaColors.onyx,
      error: AquaColors.radicalRed,
      onPrimary: AquaColors.isabelline,
      onSecondary: AquaColors.mediumJungleGreen,
      onSurface: AquaColors.cadetGrey,
      onBackground: AquaColors.auroMetalSaurus,
      onError: AquaColors.isabelline,
    );

    final subtitle1TextStyle = GoogleFonts.inter(
      fontSize: 15.sp,
      color: Colors.white,
    );

    final captionTextStyle = GoogleFonts.inter(
      fontSize: 10.sp,
    );

    final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.r),
    );
    return ThemeData(
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      fontFamily: GoogleFonts.inter().fontFamily,
      textTheme: TextTheme(
        headline4: GoogleFonts.inter(
          fontSize: 27.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headline6: GoogleFonts.inter(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          height: 1.5,
        ),
        subtitle1: subtitle1TextStyle,
        subtitle2: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          height: 1.67,
        ),
        bodyText1: GoogleFonts.inter(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyText2: GoogleFonts.inter(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        caption: GoogleFonts.inter(
          fontSize: 10.sp,
        ),
        button: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AquaColors.onyx,
        shadowColor: Colors.transparent,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          height: 1.66,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return colorScheme.secondary.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return const Color(0xFF4D586E);
              }
              return colorScheme.secondary;
            },
          ),
          elevation: MaterialStateProperty.resolveWith((_) => 0.0),
          shape: MaterialStateProperty.resolveWith(
            (_) => roundedRectangleBorder,
          ),
          textStyle: MaterialStateProperty.resolveWith(
            (_) => GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (state) => state.contains(MaterialState.disabled)
                ? colorScheme.onPrimary.withOpacity(.6)
                : colorScheme.onPrimary,
          ),
          minimumSize: MaterialStateProperty.resolveWith(
            (_) => Size(100.w, 48.h),
          ),
          padding: MaterialStateProperty.resolveWith(
            (_) => EdgeInsets.symmetric(horizontal: 8.w),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.secondaryContainer,
          backgroundColor: colorScheme.surface,
          shape: roundedRectangleBorder,
          side: BorderSide(color: colorScheme.surface),
          minimumSize: Size(100.w, 48.h),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.onPrimary,
          shape: roundedRectangleBorder,
        ),
      ),
      chipTheme: ChipThemeData(
        brightness: Brightness.dark,
        selectedColor: colorScheme.secondary,
        backgroundColor: AquaColors.mediumJungleGreen,
        secondarySelectedColor: colorScheme.secondary,
        disabledColor: AquaColors.mediumJungleGreen,
        padding: const EdgeInsets.all(0.0),
        labelStyle: subtitle1TextStyle,
        secondaryLabelStyle: subtitle1TextStyle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.secondaryContainer,
        selectionColor: colorScheme.secondaryContainer,
        selectionHandleColor: colorScheme.secondaryContainer,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.background,
        selectedItemColor: colorScheme.secondaryContainer,
        unselectedItemColor: colorScheme.onBackground,
        unselectedLabelStyle: captionTextStyle,
        selectedLabelStyle: captionTextStyle,
      ),
      cardColor: AquaColors.darkJungleGreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PreloadBackgroundPainter(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) => ProviderScope(
          child: MaterialApp(
            theme: _theme(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
            onGenerateRoute: (settings) {
              final route = Routes.pages[settings.name];

              if (route == null) {
                assert(false, 'Need to implement ${settings.name}');
                return null;
              }

              return route(settings);
            },
            title: 'Aqua',
            debugShowCheckedModeBanner: false,
            home: Stack(
              children: [
                ProviderListener<EntryPoint?>(
                  provider: entryPointProvider,
                  onChange: (context, entryPoint) {
                    entryPoint?.maybeWhen(
                      home: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                      },
                      welcome: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                      },
                      error: (error, __) {
                        if (error is AquaProviderBiometricFailureException) {
                          SystemNavigator.pop();
                        }
                      },
                      orElse: () {
                        // TODO show error or loading dialog/widget
                      },
                    );
                  },
                  child: Container(),
                ),
                ProviderListener<SideSwapPromptArguments?>(
                  provider: entryPointNavigateToSwapPromptProvider,
                  onChange: (context, arguments) {
                    if (arguments != null) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        SwapPromptScreen.routeName,
                        (route) =>
                            route.settings.name != SwapPromptScreen.routeName,
                        arguments: arguments,
                      );
                    }
                  },
                  child: Container(),
                ),
                Consumer(builder: (_, watch, __) {
                  final entryPoint = watch(entryPointProvider);
                  return entryPoint?.maybeWhen(
                        home: () => const Home(),
                        welcome: () => const Welcome(),
                        orElse: () => Center(
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 160.w,
                                    height: 130.h,
                                    child: SvgPicture.asset(
                                      'assets/welcome_logo.svg',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(48.h),
                                    child: const CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation(
                                          Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ) ??
                      Container();
                }),
              ],
            ),
            builder: (context, child) {
              return Stack(
                children: [
                  child ?? Container(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

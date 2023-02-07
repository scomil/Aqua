import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/provider/env_switch_provider.dart';
import 'package:aqua/data/provider/welcome_provider.dart';
import 'package:aqua/screens/onboarding/env_switch_page.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeWalletTab extends StatelessWidget {
  const WelcomeWalletTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004B66),
      body: Stack(
        children: [
          ProviderListener(
            provider: tapEnvSwitchProvider,
            onChange: (_, __) {
              Navigator.of(context).pushNamed(EnvSwitchPage.routeName);
            },
            child: Container(),
          ),
          GestureDetector(
            onTap: () {
              context.read(envSwitchProvider).setTapEnv();
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 430.h,
              child: Stack(
                children: [
                  const _WelcomeTabAnimatedBackground(),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment(0.0, -1.4),
                        radius: 1.3,
                        colors: [
                          Color(0x0013CDC2),
                          Color(0xFF004C66),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Stack(
              children: const [
                _WelcomeTabTitle(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _WelcomeBottomPanel(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeTabTitle extends StatelessWidget {
  const _WelcomeTabTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(bottom: 445.h),
        child: Text(
          AppLocalizations.of(context)!.welcomeLogoTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xEEFFFFFF),
          ),
        ),
      ),
    );
  }
}

class _WelcomeTabBackgroundGradient extends StatelessWidget {
  const _WelcomeTabBackgroundGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            const Color(0xFF004B66).withOpacity(0.7),
            const Color(0xFF004B66),
            const Color(0xFF004B66),
          ],
          stops: const [
            0.58,
            0.7,
            0.84,
            1.0,
          ],
        ),
      ),
    );
  }
}

class _WelcomeTabAnimatedBackground extends StatelessWidget {
  const _WelcomeTabAnimatedBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF039BB1),
      ),
      child: Stack(
        children: [
          const _WelcomeTabBackgroundGradient(),
          Positioned(
            top: -30.h,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const FlareActor(
                "assets/animations/mellow.flr",
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                animation: "Animations",
                snapToEnd: false,
                isPaused: false,
                shouldClip: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeBottomPanel extends StatelessWidget {
  const _WelcomeBottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: Column(children: [
        SizedBox(height: 29.h),
        Text(
          AppLocalizations.of(context)!.welcomeBottomPanelTitle,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: AquaColors.cadetGrey,
          ),
        ),
        SizedBox(height: 23.h),
        _WelcomePanelButton(
          svgIcon: 'assets/wallet_import.svg',
          title: AppLocalizations.of(context)!.welcomeImportTitle,
          description: AppLocalizations.of(context)!.welcomeImportDescription,
          onTap: () => context.read(welcomeProvider).navigateToRestoreWallet(),
        ),
        SizedBox(height: 23.h),
        _WelcomePanelButton(
          svgIcon: 'assets/wallet_create.svg',
          title: AppLocalizations.of(context)!.welcomeCreateTitle,
          description: AppLocalizations.of(context)!.welcomeCreateDescription,
          onTap: () => context.read(welcomeProvider).navigateToCreateWallet(),
        ),
      ]),
    );
  }
}

class _WelcomePanelButton extends StatelessWidget {
  const _WelcomePanelButton({
    Key? key,
    required this.title,
    required this.description,
    required this.svgIcon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String description;
  final String svgIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgIcon,
            width: 24.r,
            height: 24.r,
          ),
          Container(
            padding: EdgeInsets.only(left: 18.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    height: 1,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(children: [
                  Text(
                    description,
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      height: 1,
                      fontWeight: FontWeight.normal,
                      color: AquaColors.robinEggBlue,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Icon(
                    FontAwesome5Solid.chevron_right,
                    color: AquaColors.robinEggBlue,
                    size: 11.r,
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:aqua/common/widgets/custom_bottom_navigation_bar.dart';
import 'package:aqua/data/provider/home/home_popup.dart';
import 'package:aqua/data/provider/home/home_provider.dart';
import 'package:aqua/data/provider/marketplace/marketplace_provider.dart';
import 'package:aqua/data/provider/wallet_tab_provider.dart';
import 'package:aqua/screens/marketplace/marketplace_menu_screen.dart';
import 'package:aqua/screens/marketplace/marketplace_tab.dart';
import 'package:aqua/screens/onboarding/backup_invite.dart';
import 'package:aqua/screens/onboarding/passcode_enable.dart';
import 'package:aqua/screens/onboarding/wallet_biometric_prompt.dart';
import 'package:aqua/screens/profile/profile_tab.dart';
import 'package:aqua/screens/protection/protection_passcode_lock_screen.dart';
import 'package:aqua/screens/wallet/wallet_tab.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<HomePopup?>(
          provider: homePopupProvider,
          onChange: (context, popup) {
            popup?.when(
              biometricProtection: () {
                Navigator.of(context)
                    .pushNamed(WalletBiometricPrompt.routeName);
              },
              pinProtection: () {
                Navigator.of(context).pushNamed(PasscodeEnable.routeName);
              },
              walletBackup: () {
                Navigator.of(context).push(
                  PageRouteBuilder<void>(
                    opaque: false,
                    pageBuilder: (context, _, __) => const BackupInvite(),
                  ),
                );
              },
              pinUnlock: () async {
                await Navigator.of(context)
                    .pushNamed(
                      ProtectionPasscodeLockScreen.routeName,
                      arguments: Object(),
                    )
                    .then((result) => context
                        .read(homeProvider)
                        .handlePasscodeUnlockResult(result));
              },
            );
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: homeSystemNavigatorPopProvider,
          onChange: (context, action) {
            if (action != null) {
              SystemNavigator.pop();
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: marketplaceSelectedProvider,
          onChange: (context, arguments) {
            debugPrint('[home] Navigate to $arguments');
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                MarketplaceMenuScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        Consumer(builder: (context, watch, _) {
          watch(walletTabAssetsListArgumentsProvider);
          final visible = watch(homeContentVisibilityProvider);
          final selectedTab = watch(homeSelectedBottomTabProvider);
          return Visibility(
            visible: visible,
            child: WillPopScope(
              onWillPop: () async {
                if (selectedTab != 0) {
                  context.read(homeProvider).selectTab(0);
                  return false;
                } else {
                  return true;
                }
              },
              child: Scaffold(
                appBar: () {
                  switch (selectedTab) {
                    case 3:
                      return AppBar(
                        leading: Container(),
                      );
                    default:
                      return null;
                  }
                }.call(),
                body: Builder(builder: (context) {
                  switch (selectedTab) {
                    case 0:
                      return const WalletTab();
                    case 1:
                      return const SafeArea(child: MarketplaceTab());
                    // return SafeArea(child: Container());
                    case 2:
                      return const SafeArea(child: ProfileTab());
                    // case 3:
                    default:
                      return Container();
                  }
                }),
                bottomNavigationBar: CustomBottomNavigationBar.create(
                  context: context,
                  currentIndex: selectedTab,
                  onTap: (index) {
                    context.read(homeProvider).selectTab(index);
                  },
                ),
              ),
            ),
          );
        }),
        Consumer(
          builder: (context, watch, _) {
            final visible = watch(rememberBackupVisibilityProvider);
            return RememberBackup(
              visible: visible,
              onDismiss: () async {
                await context.read(homeProvider).dismissRememberBackup();
              },
            );
          },
        ),
      ],
    );
  }
}

class RememberBackup extends StatelessWidget {
  const RememberBackup({
    Key? key,
    this.onDismiss,
    this.visible = true,
  }) : super(key: key);

  final bool visible;
  final VoidCallback? onDismiss;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Stack(
        children: [
          GestureDetector(
            onTap: onDismiss,
            child: Container(
              color: Colors.white.withOpacity(0),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16.w, bottom: 88.h),
              child: Container(
                width: 283.w,
                height: 204.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 74,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 14.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.rememberBackupTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(fontSize: 18.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16.h),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .rememberBackupDescription,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.h),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: onDismiss,
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .rememberBackupButton,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondaryContainer),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 26,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4.h, right: 12.w),
                            child: GestureDetector(
                              onTap: onDismiss,
                              child: SizedBox(
                                width: 48,
                                height: 48,
                                child: Icon(
                                  Icons.close,
                                  size: 24.w,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 29.h, right: 38.w),
                            child: SvgPicture.asset(
                              'assets/arrow_backup.svg',
                              width: 32.5.w,
                              height: 38.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AppLifecycleReactor extends StatefulWidget {
  const _AppLifecycleReactor({
    Key? key,
    this.onAppLifecycleStateChange,
  }) : super(key: key);

  final Function(AppLifecycleState)? onAppLifecycleStateChange;

  @override
  State<_AppLifecycleReactor> createState() => _AppLifecycleReactorState();
}

class _AppLifecycleReactorState extends State<_AppLifecycleReactor>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    widget.onAppLifecycleStateChange?.call(AppLifecycleState.resumed);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    widget.onAppLifecycleStateChange?.call(state);
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

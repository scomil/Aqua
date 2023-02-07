import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/common/widgets/custom_dialog.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/sideswap.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:aqua/data/provider/swap/sideswap_http_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_http_state.dart';
import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:aqua/data/provider/swap/swap_tutorial_provider.dart';
import 'package:aqua/data/provider/swap/swap_tutorial_state.dart';
import 'package:aqua/screens/exchange/swap/swap_history.dart';
import 'package:aqua/screens/exchange/swap/swap_history_item_details_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_panel.dart';
import 'package:aqua/screens/exchange/swap/swap_percent_value_menu.dart';
import 'package:aqua/screens/exchange/swap/swap_tutorial_sheet.dart';
import 'package:aqua/screens/exchange/swap/tutorial/tutorial_completion_screen.dart';
import 'package:aqua/screens/exchange/swap/tutorial/tutorial_overlay.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tuple/tuple.dart';

class SwapScreen extends StatelessWidget {
  static const routeName = '/exchangeSwapScreen';

  const SwapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Builder(
          builder: (context) {
            final isTutorialVisible =
                context.read(isTutorialVisibleStateProvider).state;

            return GestureDetector(
              onLongPress: () {
                if (kDebugMode) {
                  context.read(aquaProvider).enableTutorial();
                  _showTutorial(context, isTutorialVisible);
                }
              },
              child: SvgPicture.asset(
                'assets/swap_logo.svg',
                width: 106.w,
                height: 24.h,
              ),
            );
          },
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          ProviderListener(
            onChange: (_, __) {},
            provider: sideswapWebsocketProvider,
            child: Container(),
          ),
          ProviderListener<SubscribePriceStreamRequest?>(
            onChange: (context, request) {
              if (request == null) {
                return;
              }

              context.read(sideswapWebsocketProvider).subscribeAsset(request);
            },
            provider: swapDeliverAndReceiveWatcherProvider,
            child: Container(),
          ),
          ProviderListener<List<Asset>>(
            onChange: (_, assets) {
              if (assets.isEmpty || assets.length < 2) {
                return;
              }

              final deliverAsset = assets.firstWhere((e) => e.isLBTC);
              final receiveAsset =
                  assets.firstWhere((e) => e.assetId != deliverAsset.assetId);

              context.read(sideswapDeliverAssetStateProvider.notifier).state =
                  deliverAsset;
              context.read(sideswapReceiveAssetStateProvider.notifier).state =
                  receiveAsset;
            },
            provider: sideswapAssetsProvider,
            child: Container(),
          ),
          ProviderListener<StateController<SwapProgressState>>(
            onChange: (_, e) async {
              final isTutorialVisible =
                  context.read(isTutorialVisibleStateProvider).state;
              if (e.state == const SwapProgressState.empty()) {
                await context
                    .read(aquaProvider)
                    .tutorialEnabled()
                    .then((value) {
                  if (value != null && value == true) {
                    _showTutorial(context, isTutorialVisible);
                  }
                });
              }
            },
            provider: swapLoadingIndicatorStateProvider,
            child: Container(),
          ),
          ProviderListener<SideswapHttpState?>(
            provider: processSwapStartProvider,
            onChange: (context, arguments) {
              arguments?.maybeWhen(
                  success: (asset, transaction) {
                    context
                        .read(swapLoadingIndicatorStateProvider.notifier)
                        .state = const SwapProgressState.empty();
                    Navigator.of(context).pushReplacementNamed(
                      SwapHistoryItemDetailsScreen.routeName,
                      arguments: Tuple2(asset, transaction),
                    );
                  },
                  networkError: (message) {
                    _showErrorDialog(
                        context,
                        AppLocalizations.of(context)!.exchangeSwapNetworkError,
                        message ?? '');
                    context
                        .read(swapLoadingIndicatorStateProvider.notifier)
                        .state = const SwapProgressState.empty();
                  },
                  error: (error, stackTrace) {
                    logger.e(error);
                    logger.e(stackTrace);

                    var errorMessage = '';
                    if (error is ArgumentError) {
                      errorMessage = error.message as String;
                    }
                    if (error is GdkNetworkException) {
                      errorMessage = error.errorMessage();
                    }

                    if (errorMessage.isNotEmpty) {
                      _showErrorDialog(
                          context,
                          AppLocalizations.of(context)!
                              .exchangeSwapGeneralError,
                          errorMessage);
                    }
                    context
                        .read(swapLoadingIndicatorStateProvider.notifier)
                        .state = const SwapProgressState.empty();
                  },
                  orElse: () {});
            },
            child: Container(),
          ),
          ProviderListener<bool>(
            provider: swapTutorialCongratsProvider,
            onChange: (context, congrats) {
              if (congrats) {
                Navigator.of(context).push(
                  PageRouteBuilder<void>(
                    opaque: false,
                    pageBuilder: (context, _, __) =>
                        const SwapTutorialCompleteScreen(),
                  ),
                );
              }
            },
            child: Container(),
          ),
          // Content
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                const SwapPanel(),
                SizedBox(height: 18.h),
                const Expanded(child: SwapHistory()),
              ],
            ),
          ),
          // Amount % view
          Align(
            alignment: Alignment.bottomCenter,
            child: KeyboardVisibilityBuilder(builder: (context, visible) {
              return !visible
                  ? Container()
                  : SwapPercentValueMenu(
                      onPressed: () =>
                          context.read(swapTutorialProvider).goToRateHint(),
                      onMaxPressed: () {
                        context
                            .read(sideswapAssetsPairProvider)
                            .setPercentAmount(100);
                      },
                      on50PercentPressed: () {
                        context
                            .read(sideswapAssetsPairProvider)
                            .setPercentAmount(50);
                      },
                      on25PercentPressed: () {
                        context
                            .read(sideswapAssetsPairProvider)
                            .setPercentAmount(25);
                      });
            }),
          ),
          // Tutorial
          Consumer(builder: (context, watch, _) {
            final current = watch(swapTutorialIndexProvider);
            final isRate = current == TutorialScreens.rate.index;
            final isHistory = current == TutorialScreens.history.index;
            final isTouchDismiss = isRate || isHistory;
            final isTutorial =
                TutorialScreens.values.any((e) => e.index == current);

            return !isTutorial
                ? Container()
                : IgnorePointer(
                    ignoring: !isTouchDismiss,
                    child: GestureDetector(
                      onTap: () {
                        if (isRate) {
                          context.read(swapTutorialProvider).goToSwapHint();
                        } else if (isHistory) {
                          context.read(swapTutorialProvider).completeTutorial();
                        }
                      },
                      child: TutorialOverlay(
                        items: [
                          SwapTutorialState.circle(
                            message: AppLocalizations.of(context)!
                                .swapTutorialMessageAsset,
                            position: Tuple2(107.w, 21.h),
                          ),
                          SwapTutorialState.bubble(
                            message: AppLocalizations.of(context)!
                                .swapTutorialMessageAmount,
                            position: Tuple2(194.w, 98.h),
                            pointerDirection: PointerDirection.upRight,
                          ),
                          SwapTutorialState.bubble(
                            message: AppLocalizations.of(context)!
                                .swapTutorialMessageRate,
                            position: Tuple2(100.w, 184.h),
                            pointerDirection: PointerDirection.upLeft,
                          ),
                          SwapTutorialState.overlay(
                            message: AppLocalizations.of(context)!
                                .swapTutorialMessageSwap,
                            position: Tuple2(140.w, 375.h),
                            buttonOverlayPositionY: 311.h,
                            pointerDirection: PointerDirection.upLeft,
                          ),
                          const SwapTutorialState.congrats(),
                          SwapTutorialState.bubble(
                            message: AppLocalizations.of(context)!
                                .swapTutorialMessageHistory,
                            position: Tuple2(85.w, 485.h),
                            pointerDirection: PointerDirection.upLeft,
                          ),
                        ],
                      ),
                    ),
                  );
          }),
        ]),
      ),
    );
  }

  void _showErrorDialog(
    BuildContext context,
    String title,
    String message,
  ) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => CustomDialog(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 48.h,
                  child: ElevatedButton(
                    child: Text(AppLocalizations.of(context)!
                        .backupRecoveryAlertButton),
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showTutorial(BuildContext context, bool isTutorialVisible) {
    if (isTutorialVisible) {
      logger.d('[Aqua] Tutorial is already visible');
      return;
    }
    context.read(isTutorialVisibleStateProvider.notifier).state = true;

    showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(18.r),
        ),
      ),
      builder: (_) => SwapTutorialSheet(),
    ).then((tutorialInitiated) {
      context.read(isTutorialVisibleStateProvider.notifier).state = false;
      logger.d('[Aqua] Swap Tutorial Initiated: $tutorialInitiated');
      if (tutorialInitiated == true) {
        context.read(swapTutorialProvider).startTutorial();
      }
    });
  }
}

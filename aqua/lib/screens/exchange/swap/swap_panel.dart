import 'package:aqua/common/utils/custom_panel_clipper.dart';
import 'package:aqua/data/models/sideswap.dart';
import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:aqua/data/provider/swap/swap_tutorial_provider.dart';
import 'package:aqua/screens/exchange/swap/swap_assets_flip_button.dart';
import 'package:aqua/screens/exchange/swap/swap_button.dart';
import 'package:aqua/screens/exchange/swap/swap_conversion_rate_view.dart';
import 'package:aqua/screens/exchange/swap/swap_deliver_asset_picker.dart';
import 'package:aqua/screens/common/error_label.dart';
import 'package:aqua/screens/exchange/swap/swap_receive_asset_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwapPanel extends StatelessWidget {
  const SwapPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 382.h,
      child: Stack(
        children: [
          ProviderListener<StateController<String>>(
            onChange: (_, __) {},
            provider: sideswapWebsocketSubscribedAssetIdStateProvider,
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: const Color(0xFF1D2A46),
            ),
          ),
          ClipPath(
            clipper: const CustomPanelClipper(),
            child: Container(
              height: 300.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: const Color(0xFF283655),
              ),
            ),
          ),
          Consumer(
            builder: (context, watch, _) {
              final value = watch(swapLoadingIndicatorStateProvider).state;
              final isLoading =
                  (value == const SwapProgressState.connecting() ||
                          value == const SwapProgressState.waiting())
                      ? true
                      : false;
              return Stack(
                children: [
                  const SwapPanelContent(),
                  if (isLoading) ...[
                    Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.secondaryContainer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class SwapPanelContent extends StatefulWidget {
  const SwapPanelContent({Key? key}) : super(key: key);

  @override
  State<SwapPanelContent> createState() => _SwapPanelContentState();
}

class _SwapPanelContentState extends State<SwapPanelContent> {
  late final FocusNode deliverFocusNode;
  late final FocusNode receiveFocusNode;

  @override
  void initState() {
    super.initState();
    deliverFocusNode = FocusNode();
    deliverFocusNode.addListener(() {
      if (deliverFocusNode.hasFocus) {
        context.read(swapAmountSideStateProvider.notifier).state =
            const SwapAmountSideState.deliver();

        final deliverAmount = context.read(swapIncomingDeliverAmountProvider);
        context.read(swapDeliverAmountStateProvider.notifier).state =
            deliverAmount;
      }
    });

    receiveFocusNode = FocusNode();
    receiveFocusNode.addListener(() {
      if (receiveFocusNode.hasFocus) {
        context.read(swapAmountSideStateProvider.notifier).state =
            const SwapAmountSideState.receive();

        final receiveAmount = context.read(swapIncomingReceiveAmountProvider);
        context.read(swapReceiveAmountStateProvider.notifier).state =
            receiveAmount;
      }
    });
  }

  @override
  void dispose() {
    deliverFocusNode.dispose();
    receiveFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Deliver Asset
          Consumer(
            builder: (context, watch, _) {
              final value = watch(swapLoadingIndicatorStateProvider).state;
              final readOnly = (value == const SwapProgressState.connecting() ||
                      value == const SwapProgressState.waiting())
                  ? true
                  : false;
              return SwapDeliverAssetPicker(
                focusNode: deliverFocusNode,
                readOnly: readOnly,
              );
            },
          ),
          // Errors
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Consumer(
              builder: (context, watch, child) {
                final balanceError =
                    watch(swapDeliverInsufficientFundsProvider);
                final errorDescr = watch(swapDeliverErrorDescriptionProvider);

                if (errorDescr.isNotEmpty) {
                  return ErrorLabel(text: errorDescr);
                } else if (balanceError) {
                  return ErrorLabel(
                    text: AppLocalizations.of(context)!
                        .exchangeSwapInsufficientFunds,
                  );
                }

                return SizedBox(height: 20.h);
              },
            ),
          ),
          Row(children: [
            // Switch button
            const SwapAssetsFlipButton(),
            // Rate
            Consumer(
              builder: (context, watch, _) {
                final amount = watch(sideswapConversionRateAmountProvider);
                return amount == null
                    ? Container()
                    : SwapConversionRateView(
                        amount: amount,
                      );
              },
            ),
          ]),
          // Receive Asset
          Consumer(
            builder: (context, watch, _) {
              final value = watch(swapLoadingIndicatorStateProvider).state;
              final readOnly = (value == const SwapProgressState.connecting() ||
                      value == const SwapProgressState.waiting())
                  ? true
                  : false;
              return SwapReceiveAssetPicker(
                focusNode: receiveFocusNode,
                readOnly: readOnly,
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(top: 2.h),
            child: Consumer(
              builder: (context, watch, child) {
                final errorDescr = watch(swapReceiveErrorDescriptionProvider);

                if (errorDescr.isNotEmpty) {
                  return ErrorLabel(text: errorDescr);
                }

                return SizedBox(height: 20.h);
              },
            ),
          ),
          // Swap button
          SwapButton(
            onPressed: () {
              context.read(swapTutorialProvider).goToCongratulations();

              final priceOffer =
                  context.read(sideswapPriceStreamResultStateProvider).state;

              if (priceOffer == null) {
                return;
              }

              context.read(sideswapWebsocketProvider).sendSwap(priceOffer);
            },
          ),
        ],
      ),
    );
  }
}

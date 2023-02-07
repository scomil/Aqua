import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/common/widgets/confirmation_slider.dart';
import 'package:aqua/common/widgets/custom_dialog.dart';
import 'package:aqua/data/models/sideswap.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:aqua/data/provider/swap/sideswap_http_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_http_state.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:aqua/data/provider/swap/swap_prompt_item_ui_model.dart';
import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwapPromptScreen extends StatelessWidget {
  static const routeName = '/swapPrompt';

  const SwapPromptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as SideSwapPromptArguments;
    return Stack(
      children: [
        ProviderListener(
          onChange: (_, __) {},
          provider: sideswapWebsocketProvider,
          child: Container(),
        ),
        ProviderListener(
          provider: swapLoadingIndicatorStateProvider,
          onChange: (_, __) {},
          child: Container(),
        ),
        ProviderListener<SideswapHttpState?>(
          provider: processSwapStartProvider,
          onChange: (context, arguments) {
            arguments?.maybeWhen(
                success: (asset, transaction) {
                  Navigator.of(context).pushReplacementNamed(
                    AssetTransactionDetailsScreen.routeName,
                    arguments: Tuple2(asset, transaction),
                  );
                  context
                      .read(swapLoadingIndicatorStateProvider.notifier)
                      .state = const SwapProgressState.empty();
                },
                networkError: (message) async {
                  context
                      .read(swapLoadingIndicatorStateProvider.notifier)
                      .state = const SwapProgressState.empty();

                  await _showErrorDialog(
                          context,
                          AppLocalizations.of(context)!
                              .exchangeSwapNetworkError,
                          message ?? '')
                      .then((value) => Navigator.of(context).pop());
                },
                error: (error, stackTrace) async {
                  logger.e(error);
                  logger.e(stackTrace);

                  var errorMessage = '';
                  if (error is ArgumentError) {
                    errorMessage = error.message as String;
                  }
                  if (error is GdkNetworkException) {
                    errorMessage = error.errorMessage();
                  }
                  if (error is GdkNetworkInvalidAddress) {
                    errorMessage =
                        AppLocalizations.of(context)!.gdkNetworkInvalidAddress;
                  }
                  if (error is GdkNetworkInvalidAmount) {
                    errorMessage =
                        AppLocalizations.of(context)!.gdkNetworkInvalidAmount;
                  }
                  if (error is GdkNetworkInsufficientFunds) {
                    errorMessage = AppLocalizations.of(context)!
                        .gdkNetworkInsufficientFunds;
                  }

                  context
                      .read(swapLoadingIndicatorStateProvider.notifier)
                      .state = const SwapProgressState.empty();

                  if (errorMessage.isNotEmpty) {
                    await _showErrorDialog(
                            context,
                            AppLocalizations.of(context)!
                                .exchangeSwapGeneralError,
                            errorMessage)
                        .then((value) => Navigator.of(context).pop());
                  }
                },
                orElse: () {});
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.exchangeSwapPromptTitle),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                Consumer(
                  builder: (context, watch, _) {
                    final itemUiModel = watch(
                        swapPromptUiModelProvider(Tuple2(arguments, context)));

                    return itemUiModel?.map(data: (uiModel) {
                          return _SendPromptWidget(
                            uiModel: uiModel,
                            onConfirmation: () {
                              context
                                  .read(sideswapHttpProvider)
                                  .swapStart(arguments);
                              context
                                  .read(swapLoadingIndicatorStateProvider
                                      .notifier)
                                  .state = const SwapProgressState.waiting();
                            },
                          );
                        }, loading: (_) {
                          return const _SendPromptLoadingItemWidget();
                        }, error: (uiModel) {
                          logger.e(uiModel.message);
                          _showErrorDialog(
                              context,
                              AppLocalizations.of(context)!
                                  .exchangeSwapGeneralError,
                              uiModel.message);
                          return Container();
                        }) ??
                        Container();
                  },
                ),
                Consumer(builder: (context, watch, _) {
                  final value = watch(swapLoadingIndicatorStateProvider).state;
                  return value.when(connecting: () {
                    return SwapLoadingIndicator(
                      visible: true,
                      subtitle:
                          AppLocalizations.of(context)!.exchangeSwapConnecting,
                    );
                  }, waiting: () {
                    return SwapLoadingIndicator(
                      visible: true,
                      subtitle: AppLocalizations.of(context)!
                          .exchangeSwapWaitingTransaction,
                    );
                  }, empty: () {
                    return const SwapLoadingIndicator(
                      visible: false,
                      subtitle: '',
                    );
                  });
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showErrorDialog(
      BuildContext context, String title, String message) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CustomDialog(
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
        );
      },
    );
  }
}

class _SendPromptWidget extends StatelessWidget {
  const _SendPromptWidget(
      {Key? key, required this.uiModel, required this.onConfirmation})
      : super(key: key);

  final SwapPromptItemUiModelData uiModel;
  final void Function() onConfirmation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.exchangeSwapPromptDeliver),
              const Spacer(),
              Text('${uiModel.sendAmount} ${uiModel.sendTicker}'),
              SizedBox(width: 5.w),
              Image.memory(
                uiModel.sendIcon,
                width: 24.w,
                height: 24.w,
                filterQuality: FilterQuality.high,
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.exchangeSwapPromptReceive),
              const Spacer(),
              Text('${uiModel.recvAmount} ${uiModel.recvTicker}'),
              SizedBox(width: 5.w),
              Image.memory(
                uiModel.recvIcon,
                width: 24.w,
                height: 24.w,
                filterQuality: FilterQuality.high,
              ),
            ],
          ),
          SizedBox(height: 30.h),
          ConfirmationSlider(
            width: 328.w,
            height: 48.h,
            stickToEnd: true,
            text: AppLocalizations.of(context)!.exchangeSwapPromptSlide,
            textStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
            onConfirmation: onConfirmation,
            backgroundShape: BorderRadius.all(Radius.circular(32.r)),
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            sliderWidth: 71.w,
            sliderHeight: 48.h,
            sliderButtonContent: Container(
              width: 71.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.all(Radius.circular(32.r)),
              ),
              child: const Icon(
                Icons.east,
                color: Colors.white,
              ),
            ),
            backgroundEndContent: Container(
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .secondaryContainer
                    .withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(32.r)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SendPromptLoadingItemWidget extends StatelessWidget {
  const _SendPromptLoadingItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 48.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

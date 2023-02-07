import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:aqua/data/provider/sideshift/sideshift_http_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_order_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_transaction_state.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_in_progress_screen.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_error_dialog.dart';
import 'package:aqua/screens/exchange/sideshift/shift_button.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_result_screen.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_panel.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_theme.dart';
import 'package:aqua/screens/exchange/sideshift/order_status/sideshift_order_waiting_funds_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_percent_value_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideshiftScreen extends StatelessWidget {
  static const routeName = '/sideshiftScreen';

  const SideshiftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: SideshiftTheme.of(context),
      child: WillPopScope(
        onWillPop: () => onBackPressed(context),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                context.read(sideshiftOrderProvider).setPendingOrder(null);
                context.read(sideshiftOrderProvider).setTransactionState(
                    const SideshiftTransactionState.complete());
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
            title: SvgPicture.asset(
              'assets/sideshift_full.svg',
              width: 109.w,
              height: 13.h,
            ),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                // Order in progress events
                ProviderListener<SideshiftOrderStatusResponse?>(
                  onChange: (context, data) {
                    logger.d('[Sideshift] Order in progress: ${data?.id}');
                    if (data != null) {
                      context.read(sideshiftOrderProvider).setTransactionState(
                            const SideshiftTransactionState.complete(),
                          );
                      Navigator.of(context).pushNamed(
                        SideshiftOrderInProgressScreen.routeName,
                        arguments: data,
                      );
                    }
                  },
                  provider: inProgressOrderProvider,
                  child: const SizedBox.shrink(),
                ),
                // Order result events
                ProviderListener<SideshiftOrderStatusResponse?>(
                  onChange: (context, data) {
                    if (data?.status == OrderStatus.settled) {
                      context.read(sideshiftOrderProvider).setTransactionState(
                            const SideshiftTransactionState.complete(),
                          );
                      Navigator.of(context)
                        ..popUntil((r) {
                          return r.settings.name == SideshiftScreen.routeName;
                        })
                        ..pushNamed(
                          SideshiftOrderResultScreen.routeName,
                          arguments: data,
                        );
                    }
                  },
                  provider: orderStatusProvider,
                  child: const SizedBox.shrink(),
                ),
                // Order pending funds events
                ProviderListener<SideshiftOrder?>(
                  onChange: (context, order) {
                    final isInternal = order?.type == OrderType.fixed;
                    if (!isInternal && order != null) {
                      context.read(sideshiftOrderProvider).setTransactionState(
                            const SideshiftTransactionState.complete(),
                          );
                      Navigator.of(context).pushNamed(
                        SideshiftOrderWaitingFundsScreen.routeName,
                        arguments: order,
                      );
                    }
                  },
                  provider: pendingOrderProvider,
                  child: const SizedBox.shrink(),
                ),
                // Fixed-rate order errors
                ProviderListener<OrderError?>(
                  provider: orderErrorProvider,
                  child: const SizedBox.shrink(),
                  onChange: (context, error) {
                    if (error != null) {
                      dismissExistingDialog(context);
                      final defaultErrorMessage = AppLocalizations.of(context)!
                          .exchangeSideShiftFixedRateError;
                      final String message;
                      if (error is OrderException) {
                        message = error.message ?? defaultErrorMessage;
                      } else if (error is GdkTransactionException) {
                        if (error.exception is GdkNetworkInvalidAddress) {
                          message = AppLocalizations.of(context)!
                              .gdkNetworkInvalidAddress;
                        } else if (error.exception is GdkNetworkInvalidAmount) {
                          message = AppLocalizations.of(context)!
                              .gdkNetworkInvalidAmount;
                        } else if (error.exception
                            is GdkNetworkInsufficientFunds) {
                          message = AppLocalizations.of(context)!
                              .gdkNetworkInsufficientFunds;
                        } else {
                          message = defaultErrorMessage;
                        }
                      } else {
                        message = defaultErrorMessage;
                      }
                      showSideshiftErrorDialog(
                        context: context,
                        title: AppLocalizations.of(context)!
                            .exchangeSideShiftErrorDialogTitle,
                        message: message,
                        buttonText: AppLocalizations.of(context)!
                            .exchangeSideShiftErrorDialogButtonLabel,
                        onPressed: () => Navigator.of(context).pop(),
                      );
                    }
                  },
                ),
                // Fee balance errors
                ProviderListener<FeeBalanceException?>(
                  provider: feeBalanceErrorProvider,
                  child: const SizedBox.shrink(),
                  onChange: (context, error) {
                    if (error != null) {
                      dismissExistingDialog(context);
                      showSideshiftErrorDialog(
                        context: context,
                        title: AppLocalizations.of(context)!
                            .exchangeSideShiftErrorDialogTitle,
                        message: AppLocalizations.of(context)!
                            .exchangeSideshiftOrderFeeError,
                        buttonText: AppLocalizations.of(context)!
                            .exchangeSideShiftErrorDialogButtonLabel,
                        onPressed: () => Navigator.of(context).pop(),
                      );
                    }
                  },
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: const [
                      SideshiftPanel(),
                      ShiftButton(),
                    ],
                  ),
                ),
                // Amount % view
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Consumer(
                    builder: (context, watch, _) => KeyboardVisibilityBuilder(
                      builder: (context, visible) =>
                          !visible || !watch(amountFieldFocusProvider)
                              ? const SizedBox.shrink()
                              : SwapPercentValueMenu(
                                  textColor: SideshiftColors.ogreOdor,
                                  onMaxPressed: () => context
                                      .read(sideShiftScreenProvider)
                                      .setDeliverPercentAmount(100),
                                  on50PercentPressed: () => context
                                      .read(sideShiftScreenProvider)
                                      .setDeliverPercentAmount(50),
                                  on25PercentPressed: () => context
                                      .read(sideShiftScreenProvider)
                                      .setDeliverPercentAmount(25),
                                ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> onBackPressed(BuildContext context) {
    final order = context.read(pendingOrderProvider);
    if (order != null) {
      context.read(sideshiftOrderProvider).setPendingOrder(null);
    } else {
      Navigator.pop(context, false);
    }
    return Future.value(false);
  }

  void dismissExistingDialog(BuildContext context) {
    final isErrorDialogVisible = context.read(errorVisibilityProvider);
    if (isErrorDialogVisible) {
      context.read(sideShiftScreenProvider).setErrorVisibility(false);
      Navigator.of(context).pop();
    }
    context.read(sideShiftScreenProvider).setErrorVisibility(true);
  }
}

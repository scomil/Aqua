import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/common/widgets/aqua_text_field.dart';
import 'package:aqua/common/widgets/confirmation_slider.dart';
import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/custom_tab_bar.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/data/provider/send_review/send_review_processing_result.dart';
import 'package:aqua/data/provider/send_review/send_review_provider.dart';
import 'package:aqua/data/provider/send_review/send_review_ui_model.dart';
import 'package:aqua/screens/common/error_label.dart';
import 'package:aqua/screens/send/liquidtaxi/liquidtaxi_payment_option_sheet.dart';
import 'package:aqua/screens/send/send_summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

class SendReviewScreen extends StatelessWidget {
  const SendReviewScreen({Key? key}) : super(key: key);

  static const routeName = '/sendReviewScreen';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: sendReviewPopToPreviousRouteProvider(arguments),
          onChange: (context, data) {
            if (data != null) {
              Navigator.of(context).popUntil((route) =>
                  route.settings.name != SendReviewScreen.routeName &&
                  route is! RawDialogRoute);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: sendReviewPopToFirstRouteProvider(arguments),
          onChange: (context, data) {
            if (data != null) {
              Navigator.of(context).popUntil((route) => route.isFirst);
            }
          },
          child: Container(),
        ),
        ProviderListener<SendSummaryScreenData?>(
          provider:
              sendReviewNavigateToSummaryProvider(Tuple2(arguments, context)),
          onChange: (context, data) {
            if (data != null) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  SendSummaryScreen.routeName, (route) => route.isFirst,
                  arguments: data);
            }
          },
          child: Container(),
        ),
        ProviderListener<SendReviewProcessingResult?>(
          provider:
              sendReviewProcessingResultProvider(Tuple2(arguments, context)),
          onChange: (context, value) {
            value?.maybeMap(
              loading: (data) {
                showLoadingDialog(context, data.description);
              },
              genericFailure: (data) {
                showDialog<CustomAlertDialog>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return CustomAlertDialog(
                      onWillPop: () async {
                        return false;
                      },
                      title: data.title,
                      subtitle: data.subtitle,
                      controlWidgets: [
                        OutlinedButton(
                          onPressed: data.onButtonPressed,
                          child: Text(data.buttonTitle),
                        ),
                      ],
                    );
                  },
                );
              },
              amountFailure: (data) {
                showDialog<CustomAlertDialog>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return CustomAlertDialog(
                      onWillPop: () async {
                        return false;
                      },
                      title: data.title,
                      subtitle: data.subtitle,
                      controlWidgets: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: data.onCancelButtonPressed,
                            child: Text(data.cancelButtonTitle),
                          ),
                        ),
                        Container(
                          width: 12.h,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                            ),
                            onPressed: data.onGetButtonPressed,
                            child: Text(data.getButtonTitle),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              orElse: () {},
            );
          },
          child: Container(),
        ),
        ProviderListener<SendReviewInsufficientFeeUiModel?>(
          provider: sendReviewInsufficientFeeUiModelProvider(
              Tuple2(arguments, context)),
          child: const SizedBox.shrink(),
          onChange: (context, model) => model?.map(
            success: (data) => showModalBottomSheet<bool>(
              context: context,
              isScrollControlled: true,
              isDismissible: false,
              backgroundColor: Theme.of(context).colorScheme.onSecondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18.r),
                ),
              ),
              builder: (_) {
                logger.d('[Aqua] SendReviewInsufficientFeeUiModel: $model');
                return LiquidTaxiPaymentOptionSheet(data);
              },
            ),
          ),
        ),
        Scaffold(
          body: SafeArea(
            child: Consumer(builder: (context, watch, _) {
              final uiModel = watch(sendReviewUiModelProvider(arguments));
              return uiModel?.map(
                    success: (model) => _SendReviewDataWidget(model),
                  ) ??
                  Container();
            }),
          ),
        ),
      ],
    );
  }
}

class _SendReviewDataWidget extends StatelessWidget {
  const _SendReviewDataWidget(
    this.uiModel, {
    Key? key,
  }) : super(key: key);

  final SendReviewSuccessUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) => SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              children: uiModel.items
                  .map((itemUiModel) => itemUiModel.map(
                        details: (uiModel) => _DetailsItemWidget(uiModel),
                        memo: (_) => const _MemoItemWidget(),
                        spacer: (_) => const Spacer(),
                        button: (_) => const _SendButtonItemWidget(),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class _DetailsItemWidget extends StatelessWidget {
  const _DetailsItemWidget(
    this.model, {
    Key? key,
  }) : super(key: key);

  final SendReviewDetailsItemUiModel model;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 68.h),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _DetailsCardWidget(model),
              Consumer(builder: (context, watch, _) {
                final feeOptionsVisible =
                    watch(sendReviewFeeOptionsVisibleProvider(arguments));
                return feeOptionsVisible
                    ? const _NetworkFeeTabBar()
                    : Container();
              }),
            ],
          ),
        ),
        Consumer(builder: (context, watch, _) {
          final visible = watch(sendReviewCustomFeeVisibleProvider(arguments));
          return visible
              ? const _NetworkFeeAmountTextField()
              : const SizedBox.shrink();
        })
      ],
    );
  }
}

class _DetailsCardWidget extends StatelessWidget {
  const _DetailsCardWidget(
    this.uiModel, {
    Key? key,
  }) : super(key: key);

  final SendReviewDetailsItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.sendReviewTitle,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 16.sp,
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.h),
            child: Text(
              uiModel.amount,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Consumer(builder: (context, watch, _) {
            final conversion = watch(sendReviewConversionProvider(arguments));
            return Padding(
              padding: EdgeInsets.only(top: 6.h, left: 3.w),
              child: Text(
                conversion ?? '',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            );
          }),
          Padding(
            padding: EdgeInsets.only(top: 19.h),
            child: Text(
              AppLocalizations.of(context)!.sendReviewTo,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 16.sp,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.h),
            child: Text(
              uiModel.address,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read(sendReviewProvider(arguments))
                        .selectNetworkFee();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.sendReviewFeeButton,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 7.w),
                        child: Consumer(builder: (context, watch, _) {
                          final iconData = watch(
                              sendReviewNetworkFeeButtonIconProvider(
                                  arguments));
                          return Icon(
                            iconData,
                            color: Colors.white,
                            size: 16.w,
                          );
                        }),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7.h),
                  child: Consumer(builder: (context, watch, _) {
                    final tuple = Tuple2(arguments, context);
                    final uiModel = watch(sendReviewFeeUiModelProvider(tuple));
                    return uiModel?.map(
                          success: (uiModel) => Text(
                            uiModel.value,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          error: (uiModel) => Text(
                            uiModel.title,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          loading: (_) => Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 18.r,
                              height: 18.r,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.r,
                                valueColor: AlwaysStoppedAnimation(
                                  Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                ),
                              ),
                            ),
                          ),
                        ) ??
                        Container();
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NetworkFeeTabBar extends ConsumerWidget {
  const _NetworkFeeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final selectedFeeOption =
        watch(sendReviewSelectedFeeOptionProvider(arguments));
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Center(
        child: CustomTabBar(
          width: 100.w,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          secondarySelectedColor:
              Theme.of(context).colorScheme.secondaryContainer,
          selectedColor: Theme.of(context).colorScheme.onBackground,
          labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
          secondaryLabelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
          tabTitles: [
            AppLocalizations.of(context)!.sendReviewTabRegularTitle,
            AppLocalizations.of(context)!.sendReviewTabUrgentTitle,
            AppLocalizations.of(context)!.sendReviewTabCustomTitle,
          ],
          tabSubtitles: [
            AppLocalizations.of(context)!.sendReviewTabRegularSubtitle,
            AppLocalizations.of(context)!.sendReviewTabUrgentSubtitle,
          ],
          selectedIndex: selectedFeeOption,
          onSelected: (index) {
            context.read(sendReviewProvider(arguments)).selectFeeOption(index);
          },
        ),
      ),
    );
  }
}

class _NetworkFeeAmountTextField extends StatelessWidget {
  const _NetworkFeeAmountTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Consumer(
      builder: (context, watch, _) {
        final feeError = watch(sendReviewCustomFeeErrorProvider(arguments));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 24.h),
            Text(
              AppLocalizations.of(context)!.sendReviewCustomFeeLabel,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            SizedBox(height: 7.h),
            AquaTextField.defaultStyled(
              context: context,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              borderColor: feeError != null ? Colors.red : null,
              hintText: AppLocalizations.of(context)!.sendReviewCustomFeeHint,
              onChanged: (value) {
                context
                    .read(sendReviewProvider(arguments))
                    .updateCustomFee(value);
              },
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,3}')),
                LengthLimitingTextInputFormatter(8),
              ],
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: false),
            ),
            if (feeError != null) ...[
              SizedBox(height: 7.h),
              Row(children: [
                ErrorLabel(
                  text: AppLocalizations.of(context)!.sendReviewCustomFeeError,
                ),
                const Spacer(),
              ])
            ]
          ],
        );
      },
    );
  }
}

class _MemoItemWidget extends StatelessWidget {
  const _MemoItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 22.h, left: 8.w),
          child: Row(
            children: [
              Text(
                AppLocalizations.of(context)!.sendReviewMyNotes,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Icon(
                  Icons.create_outlined,
                  color: Theme.of(context).colorScheme.onBackground,
                  size: 14.w,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: AquaTextField.defaultStyled(
              context: context,
              contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
              onChanged: (text) {
                context
                    .read(sendReviewProvider(arguments))
                    .updateMemoText(text);
              },
              onSubmitted: (text) {
                context
                    .read(sendReviewProvider(arguments))
                    .updateMemoText(text);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _SendButtonItemWidget extends StatelessWidget {
  const _SendButtonItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Container(
      padding: EdgeInsets.only(top: 32.h),
      margin: EdgeInsets.only(bottom: 32.h),
      child: ConfirmationSlider(
        width: 328.w,
        height: 48.h,
        stickToEnd: true,
        text: AppLocalizations.of(context)!.sendReviewSendButton,
        textStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
              fontSize: 16.sp,
              color: Theme.of(context).colorScheme.onBackground,
            ),
        onConfirmation: () {
          context.read(sendReviewProvider(arguments)).send();
        },
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
    );
  }
}

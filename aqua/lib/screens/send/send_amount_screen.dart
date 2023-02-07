import 'package:aqua/common/input_formatters/comma_text_input_formatter.dart';
import 'package:aqua/common/input_formatters/decimal_text_input_formatter.dart';
import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/amount_text_field.dart';
import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/asset_tile.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/send_amount/send_amount_provider.dart';
import 'package:aqua/data/provider/send_amount/send_amount_ui_model.dart';
import 'package:aqua/data/provider/send_review/send_review_arguments.dart';
import 'package:aqua/screens/send/send_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class SendAmountScreen extends StatelessWidget {
  static const routeName = '/sendAmountScreen';

  const SendAmountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: sendAmountPopProvider(arguments),
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context).pop();
            }
          },
          child: Container(),
        ),
        ProviderListener<SendReviewArguments?>(
          provider: sendAmountContinueProvider(arguments),
          onChange: (context, arguments) {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                SendReviewScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(children: [
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () =>
                    context.read(sendAmountProvider(arguments)).pop(),
              ),
            ]),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 24.h,
                bottom: 32.h,
              ),
              child: Consumer(builder: (context, watch, _) {
                final uiModel = watch(
                    sendAmountUiModelProvider(Tuple2(arguments, context)));
                return uiModel?.map(
                      success: (uiModel) => _DataWidget(uiModel: uiModel),
                      loading: (_) => const _LoadingWidget(),
                      error: (uiModel) => _ErrorWidget(uiModel: uiModel),
                    ) ??
                    Container();
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class _DataWidget extends StatelessWidget {
  const _DataWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final SendAmountSuccessUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Column(children: [
      Expanded(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.all(Radius.circular(18.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.w,
                ),
                child: Consumer(
                  builder: (context, watch, _) {
                    return AssetTile(
                      name: uiModel.name,
                      ticker: uiModel.ticker,
                      amount: uiModel.amount,
                      conversionAmount:
                          watch(sendAmountAssetConversionProvider(arguments)),
                      icon: Image.memory(
                        uiModel.icon,
                        width: 32,
                        height: 32,
                        filterQuality: FilterQuality.high,
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 8.w),
              child: SizedBox(
                height: 22.h,
                child: Text(
                  AppLocalizations.of(context)!.setAmountHint,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.h),
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: AquaColors.darkJungleGreen,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(children: [
                    Expanded(
                      child: Consumer(builder: (context, watch, _) {
                        final text = watch(
                            sendAmountPredefinedAmountTextProvider(arguments));
                        return FocusScope(
                          child: Focus(
                            onFocusChange: (focus) {
                              final truncated = text?.replaceAll(
                                  reRemoveTrailingDecimals, '');
                              if (!focus && text != truncated) {
                                context
                                    .read(sendAmountProvider(arguments))
                                    .updateAmountText(truncated!);
                              }
                            },
                            child: AmountTextField(
                              precision: uiModel.precision,
                              text: text,
                              hintText: '0',
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: [
                                CommaTextInputFormatter(),
                                DecimalTextInputFormatter(decimalRange: 8),
                              ],
                              onChanged: (text) => context
                                  .read(sendAmountProvider(arguments))
                                  .updateAmountText(text),
                              onSubmitted: (text) {
                                context
                                    .read(sendAmountProvider(arguments))
                                    .updateAmountText(text);
                              },
                            ),
                          ),
                        );
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Consumer(builder: (context, watch, _) {
                        final uiModel = watch(
                            sendAmountCurrencyButtonUiModelProvider(
                                Tuple2(arguments, context)));
                        return uiModel != null
                            ? TextButton(
                                onPressed: uiModel.onPressed,
                                style: TextButton.styleFrom(
                                  foregroundColor: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  padding: EdgeInsets.zero,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      uiModel.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                            color: uiModel.color,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 7.5.w),
                                      child: SvgPicture.asset(
                                        'assets/swap.svg',
                                        width: 11.w,
                                        height: 11.h,
                                        color: uiModel.color,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container();
                      }),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, left: 23.w, right: 13.w),
              child: Row(children: [
                Consumer(builder: (context, watch, _) {
                  final text =
                      watch(sendAmountTextConversionProvider(arguments));
                  return Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  );
                }),
                const Spacer(),
                const _MaxButtonWidget(),
              ]),
            ),
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
            child: Consumer(builder: (context, watch, _) {
              final onPressed =
                  watch(sendAmountButtonOnPressedProvider(arguments));
              return AquaElevatedButton(
                onPressed: onPressed,
                child: Text(
                  AppLocalizations.of(context)!.setAmountContinueButton,
                ),
              );
            }),
          ),
        ],
      ),
    ]);
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final SendAmountErrorUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GenericErrorWidget(
        description: uiModel.description,
        buttonTitle: uiModel.buttonTitle,
        buttonAction: uiModel.buttonAction,
      ),
    );
  }
}

class _MaxButtonWidget extends ConsumerWidget {
  const _MaxButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final selected = watch(sendAmountMaxSelectedProvider(arguments));
    final ButtonStyleButton child;
    if (selected) {
      // return ElevatedButton(
      child = ElevatedButton(
        onPressed: () {
          context.read(sendAmountProvider(arguments)).selectMax();
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(84.w, 24.h),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.r),
          ),
        ),
        child: Row(
          children: [
            Text(
              AppLocalizations.of(context)!.setAmountMaxButton,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      );
    } else {
      // return TextButton(
      child = TextButton(
        onPressed: () {
          context.read(sendAmountProvider(arguments)).selectMax();
        },
        style: TextButton.styleFrom(
          minimumSize: Size(84.w, 24.h),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          children: [
            Text(
              AppLocalizations.of(context)!.setAmountMaxButton,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
            ),
          ],
        ),
      );
    }

    return SizedBox(
      height: 24.h,
      child: child,
    );
  }
}

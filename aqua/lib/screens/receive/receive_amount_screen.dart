import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/amount_text_field.dart';
import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/asset_tile.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/receive_amount/receive_amount_provider.dart';
import 'package:aqua/data/provider/receive_amount/receive_amount_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

class ReceiveAmountScreen extends StatelessWidget {
  static const routeName = '/receiveAmountScreen';

  const ReceiveAmountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(
      children: [
        ProviderListener<String?>(
          provider: receiveAmountPopProvider(arguments),
          onChange: (context, result) {
            Navigator.of(context).pop(result);
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {
                context
                    .read(receiveAmountProvider(arguments))
                    .popWithoutResult();
              },
            ),
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
                    receiveAmountUiModelProvider(Tuple2(arguments, context)));
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

  final ReceiveAmountSuccessUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryVariant,
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
                        conversionAmount: watch(
                            receiveAmountAssetConversionProvider(arguments)),
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
                padding: EdgeInsets.only(top: 32.h, left: 8.w),
                child: SizedBox(
                  height: 22.h,
                  child: Text(
                    AppLocalizations.of(context)!.setAmountHint,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14.h),
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: AquaColors.darkJungleGreen,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 4.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: AmountTextField(
                            precision: uiModel.precision,
                            onChanged: (text) {
                              context
                                  .read(receiveAmountProvider(arguments))
                                  .updateAmountText(text);
                            },
                            onSubmitted: (text) {
                              context
                                  .read(receiveAmountProvider(arguments))
                                  .updateAmountText(text);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Consumer(builder: (context, watch, _) {
                            final uiModel = watch(
                                receiveAmountCurrencyButtonUiModelProvider(
                                    Tuple2(arguments, context)));
                            return uiModel != null
                                ? TextButton(
                                    onPressed: uiModel.onPressed,
                                    style: TextButton.styleFrom(
                                      primary: Theme.of(context)
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
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w),
                child: Consumer(builder: (context, watch, _) {
                  final text =
                      watch(receiveAmountTextConversionProvider(arguments));
                  return Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 13.sp,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  );
                }),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Consumer(builder: (context, watch, _) {
                final onPressed =
                    watch(receiveAmountButtonOnPressedProvider(arguments));
                return AquaElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    AppLocalizations.of(context)!.receiveAmountDoneButton,
                  ),
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          Theme.of(context).colorScheme.secondaryVariant,
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

  final ReceiveAmountErrorUiModel uiModel;

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

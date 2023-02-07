import 'package:aqua/common/widgets/amount_text_field.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:aqua/screens/exchange/swap/swap_asset_icon.dart';
import 'package:aqua/screens/exchange/swap/swap_asset_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwapReceiveAssetPicker extends StatefulWidget {
  const SwapReceiveAssetPicker(
      {Key? key, this.readOnly = false, this.focusNode})
      : super(key: key);

  final bool readOnly;
  final FocusNode? focusNode;

  @override
  State<SwapReceiveAssetPicker> createState() => _SwapReceiveAssetPickerState();
}

class _SwapReceiveAssetPickerState extends State<SwapReceiveAssetPicker> {
  final controller = TextEditingController();
  final globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.h),
      child: Column(children: [
        Row(children: [
          Text(
            AppLocalizations.of(context)!.exchangeSwapForTitle,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const Spacer(),
          Consumer(
            builder: (context, watch, _) {
              final balance = watch(sideswapReceiveBalanceProvider);
              final receiveAsset =
                  watch(sideswapReceiveAssetStateProvider).state;
              if (balance.isEmpty || receiveAsset == null) {
                return Container();
              }
              return Text(
                AppLocalizations.of(context)!
                    .exchangeSwapBalance(balance, receiveAsset.ticker),
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              );
            },
          ),
        ]),
        Consumer(
          builder: (context, watch, _) {
            final error = watch(swapReceiveAssetPickerErrorProvider);

            return Container(
              margin: EdgeInsets.only(top: 9.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: error
                    ? Border.all(color: Colors.red)
                    : Border.all(color: Colors.transparent),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () async {
                      await showModalBottomSheet<Asset>(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor:
                            Theme.of(context).colorScheme.onSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(18.r),
                          ),
                        ),
                        builder: (context) => SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: const SwapAssetSheet(),
                        ),
                      ).then((asset) {
                        context
                            .read(sideswapAssetsPairProvider)
                            .setReceiveAsset(asset);
                      });
                    },
                    style: TextButton.styleFrom(
                      primary: Theme.of(context).colorScheme.surface,
                      textStyle: Theme.of(context).textTheme.bodyText1,
                      padding: EdgeInsets.zero,
                    ),
                    child: SizedBox(
                      height: 48.h,
                      child: Consumer(
                        builder: (context, watch, _) {
                          final receiveAsset =
                              watch(sideswapReceiveAssetStateProvider).state;
                          if (receiveAsset == null) {
                            return Container();
                          }

                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: 17.w),
                              SwapAssetIcon(
                                assetId: receiveAsset.assetId,
                                size: 24.r,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: Text(
                                  receiveAsset.ticker,
                                  // key: buttonTextKey ?? GlobalKey(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                ),
                              ),
                              Icon(
                                Icons.expand_more,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 20.r,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 48.h,
                      padding: EdgeInsets.only(left: 12.w, right: 24.w),
                      child: Center(
                        child: Consumer(
                          builder: (context, watch, _) {
                            final amount =
                                watch(swapIncomingReceiveAmountProvider);

                            return AmountTextField(
                              key: globalKey,
                              controller: controller,
                              focusNode: widget.focusNode,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                    fontSize: 16.sp,
                                    color: widget.readOnly && amount == '0'
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onSurface
                                        : Colors.white,
                                  ),
                              cursorColor: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              textAlign: TextAlign.end,
                              text: amount,
                              onChanged: (value) {
                                context
                                    .read(
                                        swapReceiveAmountStateProvider.notifier)
                                    .state = value;
                              },
                              readOnly: widget.readOnly,
                              autofocus: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '0',
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ]),
    );
  }
}

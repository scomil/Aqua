import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/data/provider/send_review/send_review_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LiquidTaxiPaymentOptionSheet extends StatelessWidget {
  const LiquidTaxiPaymentOptionSheet(
    this._uiModel, {
    super.key,
  });

  final SendReviewInsufficientFeeSuccessUiModel _uiModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(children: [
          const Spacer(),
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            iconSize: 24.h,
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.close),
          ),
        ]),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.liquidTaxiPaymentSheetTitle,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      height: 1,
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 19.h),
              Text(
                AppLocalizations.of(context)!.liquidTaxiPaymentSheetRequiredFee(
                    _uiModel.requiredFeeLbtc),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                AppLocalizations.of(context)!.liquidTaxiPaymentSheetLbtcBalance(
                    _uiModel.currentLbtcBalance),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(height: 58.h),
              AquaElevatedButton(
                onPressed: () {
                  // TODO: Execute liquid taxi payment
                },
                child: Text(
                  AppLocalizations.of(context)!
                      .liquidTaxiPaymentSheetButtonLabel(
                    _uiModel.requiredFeeUsdt,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                AppLocalizations.of(context)!.liquidTaxiPaymentSheetUsdtBalance(
                    _uiModel.currentUsdtBalance),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ],
    );
  }
}

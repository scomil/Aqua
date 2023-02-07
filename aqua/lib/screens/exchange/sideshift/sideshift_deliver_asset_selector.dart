import 'package:aqua/screens/exchange/sideshift/asset_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/amount_inputs.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_error_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SideshiftDeliverAssetSelector extends ConsumerWidget {
  const SideshiftDeliverAssetSelector({
    Key? key,
    required this.onAssetSelected,
  }) : super(key: key);

  final Function(SideshiftAsset)? onAssetSelected;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final assets = watch(sideShiftAssetsListProvider).data?.value ?? [];
    final defAsset = assets.first;
    final deliverAsset = watch(deliverAssetProvider) ?? defAsset;
    final transactionType = watch(selectedTransactionTypeProvider);
    final isVariable = transactionType == TransactionTypes.externalToInternal;
    final error = watch(deliverAmountErrorProvider);

    final String message;
    if (error is MinDeliverAmountException) {
      message = AppLocalizations.of(context)!
          .exchangeSideShiftMinDeliverAmountError(
              '${error.min}', error.assetId);
    } else if (error is MaxDeliverAmountException) {
      message = AppLocalizations.of(context)!
          .exchangeSideShiftMaxDeliverAmountError(
              '${error.max}', error.assetId);
    } else if (error is DeliverAmountRequiredException) {
      message = AppLocalizations.of(context)!
          .exchangeSideShiftDeliverAmountRequiredError;
    } else if (error is DeliverAmountExceedBalanceException) {
      message = AppLocalizations.of(context)!
          .exchangeSideShiftDeliverAmountBalanceError;
    } else {
      message = '';
    }
    final validDeliveryAmount = isVariable || error == null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              width: 1.w,
              color: error == null
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.error,
            ),
          ),
          padding: EdgeInsets.only(left: 17.w),
          child: Row(children: [
            // Asset selector
            AssetItemView(
              dropdownValue: deliverAsset,
              onDropdownChanged: onAssetSelected,
            ),
            // Amount Input
            const Expanded(child: DeliverAmountInput()),
          ]),
        ),
        // Error
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Opacity(
            opacity: validDeliveryAmount ? 0 : 1,
            child: SideshiftErrorView(message: message),
          ),
        ),
      ],
    );
  }
}

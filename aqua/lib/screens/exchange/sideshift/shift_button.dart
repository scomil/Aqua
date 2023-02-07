import 'package:aqua/data/provider/sideshift/sideshift_http_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_order_provider.dart';
import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_transaction_state.dart';

class ShiftButton extends ConsumerWidget {
  const ShiftButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final assetInfoError = watch(assetsRateInfoErrorProvider);
    final exchangeRateInfo = watch(exchangeRateProvider);
    final deliverAsset = watch(deliverAssetProvider);
    final receiveAsset = watch(receiveAssetProvider);
    final autogenDeliverAddress = deliverAsset == null
        ? null
        : watch(autogenInternalAddressProvider(deliverAsset.id)).data?.value;
    final receiveAddress = watch(receivingAddressProvider);
    final amountText = watch(deliverAmountTextProvider);
    final transactionType = watch(selectedTransactionTypeProvider);
    final state = watch(transactionStateProvider);
    final isLoading = state is TransactionLoading;
    final isIncoming = transactionType == TransactionTypes.internalToInternal ||
        transactionType == TransactionTypes.externalToInternal;
    final noExchangeRate = exchangeRateInfo == null;
    final isVariable = transactionType == TransactionTypes.externalToInternal;

    final noAddress = receiveAddress == null && !isIncoming;
    final containsError = assetInfoError != null ||
        deliverAsset == null ||
        receiveAsset == null ||
        noAddress ||
        noExchangeRate;
    final amount = double.tryParse(amountText ?? '') ?? 0;
    final noExchangeAmount = !isVariable && amount <= 0;

    return Row(children: [
      Expanded(
        child: SizedBox(
          height: 48.h,
          child: ElevatedButton(
            onPressed: isLoading || containsError || noExchangeAmount
                ? null
                : () => context.read(sideshiftOrderProvider).placeOrder(
                      deliverAsset: deliverAsset,
                      receiveAsset: receiveAsset,
                      refundAddress: autogenDeliverAddress,
                      receiveAddress: receiveAddress,
                      transactionType: transactionType,
                      amount: amount,
                      exchangeRate: exchangeRateInfo,
                    ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (isLoading)
                  SizedBox.square(
                    dimension: 24.r,
                    child: const ProgressBar(),
                  )
                else
                  Text(AppLocalizations.of(context)!.exchangeSideShiftButton),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

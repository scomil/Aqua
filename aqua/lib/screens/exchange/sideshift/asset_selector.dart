import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/conversion_rate_view.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_deliver_asset_selector.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_receive_asset_selector.dart';
import 'package:aqua/screens/exchange/sideshift/swap_assets_button.dart';
import 'package:aqua/screens/exchange/sideshift/wallet_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetSelector extends ConsumerWidget {
  const AssetSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final assets = watch(sideShiftAssetsListProvider).data?.value ?? [];
    final defAsset = assets.first;
    final deliverAsset = watch(deliverAssetProvider) ?? defAsset;
    final receiveAsset = watch(receiveAssetProvider) ?? defAsset;
    final transactionType = watch(selectedTransactionTypeProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          // Deliver asset label
          Text(
            AppLocalizations.of(context)!.exchangeSideShiftYouSend,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
          const Spacer(),
          // Deliver asset balance
          WalletBalance(asset: deliverAsset),
        ]),
        SizedBox(height: 9.h),
        // Deliver asset selector
        SideshiftDeliverAssetSelector(
          onAssetSelected: (asset) {
            if (asset.id == receiveAsset.id) {
              context.read(sideShiftScreenProvider).swapAssets(
                    transactionType: transactionType,
                    deliverAsset: deliverAsset,
                    receiveAsset: receiveAsset,
                  );
            } else {
              context.read(sideShiftScreenProvider).setDeliverAsset(asset);
            }
          },
        ),
        Container(
          padding: EdgeInsets.only(bottom: 18.h),
          child: Row(children: [
            SwapAssetsButton(
              onPressed: () => context.read(sideShiftScreenProvider).swapAssets(
                    transactionType: transactionType,
                    deliverAsset: deliverAsset,
                    receiveAsset: receiveAsset,
                  ),
            ),
            SizedBox(width: 22.w),
            const Flexible(child: ConversionRateView()),
          ]),
        ),
        Row(children: [
          // Receiving asset label
          Text(
            AppLocalizations.of(context)!.exchangeSideShiftYouReceive,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
          const Spacer(),
          // Receiving asset balance
          WalletBalance(asset: receiveAsset),
        ]),
        SizedBox(height: 9.h),
        // Receiving asset selector
        SideshiftReceiveAssetSelector(
          onAssetSelected: (asset) {
            if (asset.id == deliverAsset.id) {
              context.read(sideShiftScreenProvider).swapAssets(
                    transactionType: transactionType,
                    deliverAsset: deliverAsset,
                    receiveAsset: receiveAsset,
                  );
            } else {
              context.read(sideShiftScreenProvider).setReceiveAsset(asset);
            }
          },
        )
      ],
    );
  }
}

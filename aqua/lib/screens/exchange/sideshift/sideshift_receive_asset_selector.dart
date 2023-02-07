import 'package:aqua/data/models/sideshift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/amount_inputs.dart';
import 'package:aqua/screens/exchange/sideshift/asset_item_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideshiftReceiveAssetSelector extends ConsumerWidget {
  const SideshiftReceiveAssetSelector({
    Key? key,
    required this.onAssetSelected,
  }) : super(key: key);

  final Function(SideshiftAsset)? onAssetSelected;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final assets = watch(sideShiftAssetsListProvider).data?.value ?? [];
    final receiveAssetId = watch(receiveAssetProvider) ?? assets.first;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          width: 1.w,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      padding: EdgeInsets.only(left: 17.w),
      child: Row(children: [
        AssetItemView(
          dropdownValue: receiveAssetId,
          onDropdownChanged: onAssetSelected,
        ),
        const Expanded(child: ReceiveAmountInput()),
      ]),
    );
  }
}

import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/asset_selector.dart';
import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:aqua/screens/exchange/sideshift/receive_address_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideshiftPanel extends ConsumerWidget {
  const SideshiftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final assets = watch(sideShiftAssetsListProvider);

    return Container(
      constraints: BoxConstraints(minHeight: 300.h),
      child: assets.maybeWhen(
        orElse: () => const ProgressBar(),
        data: (data) {
          final transactionType = watch(selectedTransactionTypeProvider);
          final isExternal =
              transactionType == TransactionTypes.internalToExternal ||
                  transactionType == TransactionTypes.externalToExternal;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16.h),
              const AssetSelector(),
              if (isExternal)
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  child: const ReceiveAddressInput(),
                )
              else
                SizedBox(height: 16.h),
            ],
          );
        },
      ),
    );
  }
}

import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletBalance extends ConsumerWidget {
  const WalletBalance({
    Key? key,
    required this.asset,
  }) : super(key: key);

  final SideshiftAsset asset;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final balance = watch(walletBalanceProviderStr(asset)).data?.value;
    final isExternal = balance == null;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
      child: Text(
        isExternal
            ? AppLocalizations.of(context)!.exchangeSideShiftWalletExternal
            : AppLocalizations.of(context)!.exchangeSideShiftWalletBalance(
                balance, asset.coin.toUpperCase()),
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }
}

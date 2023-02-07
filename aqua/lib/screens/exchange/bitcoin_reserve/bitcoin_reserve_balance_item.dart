import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/models/bitcoin_reserve.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_currency_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BitcoinReserveBalanceItem extends ConsumerWidget {
  const BitcoinReserveBalanceItem(
    this.item, {
    Key? key,
  }) : super(key: key);

  final UserBalanceItem item;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Card(
      elevation: 5.r,
      color: AquaColors.charcoal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: SizedBox(
        width: 100.r,
        height: 100.r,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BitcoinReserveCurrencyIcon(currency: item.currency),
            SizedBox(height: 4.h),
            Text(
              '${item.balance}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              item.currency?.toUpperCase() ?? '',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

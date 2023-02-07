import 'package:aqua/data/models/bitcoin_reserve.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_provider.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_balance_item.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_buy_screen.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_sell_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BitcoinReserveHeader extends ConsumerWidget {
  const BitcoinReserveHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final balance = watch(brUserBalanceStateProvider).data?.value;
    final items = balance?.data ?? [];
    if (balance == null) {
      return const SizedBox.shrink();
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items
                .whereType<UserBalanceItem>()
                .map((e) => BitcoinReserveBalanceItem(e))
                .toList(),
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamed(BitcoinReserveBuyScreen.routeName),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.green.shade100,
                    fixedSize: Size(120.w, 48.h),
                  ),
                  child: Text(AppLocalizations.of(context)!
                      .exchangeBitcoinReserveBuyButton),
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamed(BitcoinReserveSellScreen.routeName),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.red.shade100,
                    fixedSize: Size(120.w, 48.h),
                  ),
                  child: Text(AppLocalizations.of(context)!
                      .exchangeBitcoinReserveSellButton),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

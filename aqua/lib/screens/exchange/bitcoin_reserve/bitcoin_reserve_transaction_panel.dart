import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_provider.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_header.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_transaction_item.dart';
import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BitcoinReserveTransactionPanel extends ConsumerWidget {
  const BitcoinReserveTransactionPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(brTransactionsProvider(0)).data?.value?.data;
    final transactions = state?.transactions ?? [];

    return Container(
      color: AquaColors.mediumJungleGreen,
      child: Column(
        children: [
          const BitcoinReserveHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AquaColors.onyx,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: state == null
                  ? const ProgressBar()
                  : ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top: 20.h),
                      shrinkWrap: true,
                      primary: true,
                      itemCount: transactions.length,
                      itemBuilder: (_, index) =>
                          BitcoinReserveTransactionItem(transactions[index]),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

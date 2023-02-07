import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/models/bitcoin_reserve.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_transaction_details.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_transaction_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class BitcoinReserveTransactionItem extends StatelessWidget {
  const BitcoinReserveTransactionItem(
    this.transaction, {
    Key? key,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final time = DateTime.tryParse(transaction.transactionTime ?? '');
    final date = time == null ? '' : DateFormat.yMMMd().format(time);

    return Material(
      color: AquaColors.onyx,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6.w),
        child: InkWell(
          onTap: () => showBottomSheet<bool>(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.w),
                topRight: Radius.circular(25.w),
              ),
            ),
            enableDrag: true,
            elevation: 5.r,
            constraints: BoxConstraints(minHeight: 400.h),
            backgroundColor: AquaColors.onyx,
            builder: (_) => BitcoinReserveTransactionDetails(transaction),
          ),
          borderRadius: BorderRadius.circular(18.r),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 6.w),
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon
                BitcoinReserveTransactionIcon(transaction.transactionType!),
                SizedBox(width: 12.w),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Transaction Type
                      BitcoinReserveTransactionType(
                        transaction.transactionType,
                      ),
                      // Date
                      Text(
                        date,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                // Transaction status
                Expanded(
                  flex: 3,
                  child: TransactionStatusItem(transaction.transactionStatus),
                ),
                // Amounts
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (transaction.outAmount != null)
                        TransactionPriceItem(transaction, isBuy: false),
                      if (transaction.inAmount != null)
                        TransactionPriceItem(transaction),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

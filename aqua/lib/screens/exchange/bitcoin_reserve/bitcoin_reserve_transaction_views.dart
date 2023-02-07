import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/models/bitcoin_reserve.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const incomingTypes = [
  BrTransactionType.deposit,
  BrTransactionType.marketBuy,
  BrTransactionType.sepaWireIn,
];

class BitcoinReserveTransactionIcon extends StatelessWidget {
  const BitcoinReserveTransactionIcon(
    this.transactionType, {
    Key? key,
    this.size,
  }) : super(key: key);

  final BrTransactionType? transactionType;
  final double? size;

  bool get incoming => incomingTypes.any((e) => e == transactionType);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: AquaColors.darkJungleGreen,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: transactionType == null
            ? const SizedBox.shrink()
            : Icon(
                incoming ? Feather.arrow_down_left : Feather.arrow_up_right,
                size: size ?? 24.r,
              ),
      ),
    );
  }
}

class BitcoinReserveTransactionType extends StatelessWidget {
  const BitcoinReserveTransactionType(
    this.transactionType, {
    Key? key,
    this.style,
  }) : super(key: key);

  final BrTransactionType? transactionType;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final transactionTypeStatus = {
      BrTransactionType.deposit: AppLocalizations.of(context)!
          .exchangeBitcoinReserveTransactionTypeDeposit,
      BrTransactionType.withdrawal: AppLocalizations.of(context)!
          .exchangeBitcoinReserveTransactionTypeWithdrawal,
      BrTransactionType.marketBuy: AppLocalizations.of(context)!
          .exchangeBitcoinReserveTransactionTypeMarketBuy,
      BrTransactionType.marketSell: AppLocalizations.of(context)!
          .exchangeBitcoinReserveTransactionTypeMarketSell,
      BrTransactionType.sepaWireIn: AppLocalizations.of(context)!
          .exchangeBitcoinReserveTransactionTypeSepaWireIn,
      BrTransactionType.sepaWireOut: AppLocalizations.of(context)!
          .exchangeBitcoinReserveTransactionTypeSepaWireOut,
    };
    return Text(
      transactionTypeStatus[transactionType] ?? '',
      style: style ?? Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class TransactionStatusItem extends StatelessWidget {
  const TransactionStatusItem(
    this.status, {
    Key? key,
  }) : super(key: key);

  final BrTransactionStatus? status;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60.w,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4.h),
        decoration: BoxDecoration(
          color:
              status == BrTransactionStatus.done ? Colors.green : Colors.amber,
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: Text(
          status?.name.toUpperCase() ?? '',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: status == BrTransactionStatus.done
                    ? Colors.green.shade100
                    : Colors.amber.shade100,
              ),
        ),
      ),
    );
  }
}

class TransactionPriceItem extends StatelessWidget {
  const TransactionPriceItem(
    this.transaction, {
    Key? key,
    this.isBuy = true,
  }) : super(key: key);

  final Transaction transaction;
  final bool isBuy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          isBuy ? '${transaction.inAmount}' : '${transaction.outAmount}',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: isBuy ? Colors.green : Colors.red,
              ),
        ),
        SizedBox(width: 4.w),
        Text(
          isBuy ? '${transaction.inCurrency}' : '${transaction.outCurrency}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: isBuy ? Colors.green : Colors.red,
              ),
        ),
        Icon(
          isBuy ? Entypo.chevron_down : Entypo.chevron_up,
          color: isBuy ? Colors.green : Colors.red,
        ),
      ],
    );
  }
}

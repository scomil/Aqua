import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/models/bitcoin_reserve.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_provider.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_currency_icon.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_transaction_views.dart';
import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BitcoinReserveTransactionDetails extends ConsumerWidget {
  const BitcoinReserveTransactionDetails(
    this.item, {
    Key? key,
  }) : super(key: key);

  final Transaction item;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final id = item.transactionId ?? '';
    final transaction =
        watch(brTransactionDetailsProvider(id)).data?.value?.data;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Stack(
        children: [
          ProviderListener<TransactionDetailsException?>(
            onChange: (context, error) {
              if (error != null) {
                final message = error.message ??
                    AppLocalizations.of(context)!
                        .exchangeBitcoinReserveTransactionDetails;
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
                Navigator.of(context).pop();
              }
            },
            provider: brTransactionDetailsErrorProvider,
            child: const SizedBox.shrink(),
          ),
          transaction == null
              ? SizedBox(
                  height: 400.h,
                  child: const Center(
                    child: ProgressBar(),
                  ),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 16.h),
                    // Icon
                    BitcoinReserveTransactionIcon(
                      transaction.transactionType!,
                      size: 40.r,
                    ),
                    SizedBox(height: 8.h),
                    // Transaction Type
                    BitcoinReserveTransactionType(
                      transaction.transactionType,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 8.h),
                    // Status
                    TransactionStatusItem(transaction.transactionStatus),
                    SizedBox(height: 16.h),
                    // Satoshis bought
                    Row(
                      children: [
                        BitcoinReserveCurrencyIcon(
                          currency: 'sats',
                          size: 20.r,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          AppLocalizations.of(context)!
                              .exchangeBitcoinReserveSatoshisBought,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Spacer(),
                        Text(
                          '${transaction.satsBought}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          'SATS',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    // Fiat spent
                    Row(children: [
                      BitcoinReserveCurrencyIcon(
                        currency: transaction.fiatCurrency,
                        size: 20.r,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        AppLocalizations.of(context)!
                            .exchangeBitcoinReserveCurrencySpent(
                                transaction.fiatCurrency ?? ''),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      Text(
                        '${transaction.fiatSpent}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '${transaction.fiatCurrency}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ]),
                    SizedBox(height: 24.h),
                    if (transaction.withdrawals != null) ...[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppLocalizations.of(context)!
                              .exchangeBitcoinReserveTransactionWithdrawals,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: transaction.withdrawals!.length,
                          itemBuilder: (_, i) => BitcoinReserveWithdrawalItem(
                            transaction.withdrawals![i],
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
          Positioned(
            right: 1,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(MaterialIcons.close),
            ),
          ),
        ],
      ),
    );
  }
}

class BitcoinReserveWithdrawalItem extends StatelessWidget {
  const BitcoinReserveWithdrawalItem(
    this.withdrawal, {
    Key? key,
  }) : super(key: key);

  final Withdrawal withdrawal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AquaColors.mediumJungleGreen,
        borderRadius: BorderRadius.circular(8.r),
      ),
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 4.h),
          // Order Number + Status
          Row(children: [
            const CircularIcon(Feather.hash),
            SizedBox(width: 8.w),
            Text(
              AppLocalizations.of(context)!.exchangeBitcoinReserveOrderNumber(
                withdrawal.transactionId?.split('-').first ?? '',
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            TransactionStatusItem(withdrawal.transactionStatus),
          ]),
          SizedBox(height: 8.h),
          // Fee
          Row(children: [
            const CircularIcon(Foundation.price_tag),
            SizedBox(width: 8.w),
            Text(
              AppLocalizations.of(context)!
                  .exchangeBitcoinReserveWithdrawalTransactionFee,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Text(
              withdrawal.transactionFee?.toString() ?? '-',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ]),
          SizedBox(height: 8.h),
          // Address Label + Copy
          Row(children: [
            const CircularIcon(MaterialIcons.vpn_key),
            SizedBox(width: 8.w),
            Text(
              AppLocalizations.of(context)!
                  .exchangeBitcoinReserveTransactionAddress,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Material(
              color: AquaColors.darkJungleGreen,
              borderRadius: BorderRadius.circular(25.r),
              child: InkWell(
                onTap: () => copyToClipboard(
                  context,
                  withdrawal.transactionAddress ?? '',
                ),
                borderRadius: BorderRadius.circular(25.r),
                child: Container(
                  padding: EdgeInsets.all(8.r),
                  child: Icon(Icons.copy, size: 16.r),
                ),
              ),
            ),
          ]),
          SizedBox(height: 8.h),
          // Address Field
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AquaColors.darkJungleGreen,
            ),
            child: Text(
              withdrawal.transactionAddress ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> copyToClipboard(
    BuildContext context,
    String address,
  ) async {
    await Clipboard.setData(ClipboardData(text: address));
    final text = AppLocalizations.of(context)!.exchangeSideShiftAddressCopied;
    debugPrint('[SideShift] $text');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}

class CircularIcon extends StatelessWidget {
  const CircularIcon(
    this.icon, {
    Key? key,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: AquaColors.darkJungleGreen,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Icon(
        icon,
        size: 16.r,
      ),
    );
  }
}

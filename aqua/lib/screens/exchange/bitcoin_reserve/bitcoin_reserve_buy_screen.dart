import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/custom_snackbar_widget.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_provider.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_currency_icon.dart';
import 'package:aqua/screens/exchange/sideshift/input_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BitcoinReserveBuyScreen extends ConsumerWidget {
  static const routeName = '/bitcoinReserveBuyScreen';

  BitcoinReserveBuyScreen({Key? key}) : super(key: key);

  final _costController = TextEditingController();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final buyCost = watch(brBuyCostProvider);
    final buyCostError = watch(brBuyCostErrorProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.exchangeBitcoinReserveBuyTitle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Currency description
              Text(
                AppLocalizations.of(context)!
                    .exchangeBitcoinReserveBuyCurrencyDescription,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16.h),
              // Currency
              const _CurrencySelector(),
              SizedBox(height: 24.h),
              // Buy cost label
              Text(
                AppLocalizations.of(context)!
                    .exchangeBitcoinReserveBuyAmountDescription,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AquaColors.mediumJungleGreen,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: Row(children: [
                  // Buy cost input
                  Expanded(
                    child: TextInputView(
                      controller: _costController,
                      initialValue: buyCost,
                      inputFormatters: const [],
                      keyboardType: TextInputType.number,
                      hintText: 0.00.toString(),
                      onChanged: (s) => context
                          .read(bitcoinReserveScreenProvider)
                          .setBuyCost(s),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  // Max amount button
                  ElevatedButton(
                    onPressed: () {
                      _costController.text = 999.toString();
                      context
                          .read(bitcoinReserveScreenProvider)
                          .setBuyCost(999.toString());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context)!
                          .exchangeBitcoinReserveBuyMaxButton,
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 16.h),
              // Buy Button
              Row(children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: buyCostError != null
                        ? null
                        : () => Navigator.of(context).pop(),
                    child: Text(
                      AppLocalizations.of(context)!
                          .exchangeBitcoinReserveBuyButton,
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 24.h),
              // Cost Error
              if (buyCostError != null)
                CustomSnackbarWidget(
                  opacity: 1.0,
                  text: AppLocalizations.of(context)!
                      .exchangeBitcoinReserveBuyCostError,
                  color: Theme.of(context).colorScheme.error,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CurrencySelector extends StatefulWidget {
  const _CurrencySelector({
    Key? key,
  }) : super(key: key);

  @override
  State<_CurrencySelector> createState() => _CurrencySelectorState();
}

class _CurrencySelectorState extends State<_CurrencySelector> {
  Currency _currency = Currency.eur;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AquaColors.mediumJungleGreen,
      ),
      padding: EdgeInsets.only(left: 8.w, right: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: Currency.values
            .map((e) => RadioListTile<Currency>(
                  value: e,
                  groupValue: _currency,
                  contentPadding: EdgeInsets.zero,
                  title: Row(children: [
                    BitcoinReserveCurrencyIcon(
                      currency: e.name,
                      size: 20.r,
                    ),
                    SizedBox(width: 20.w),
                    Text(e.name.toUpperCase()),
                    const Spacer(),
                    Text(
                      '0.00',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ]),
                  onChanged: (currency) => setState(() {
                    _currency = currency!;
                    context
                        .read(bitcoinReserveScreenProvider)
                        .setBuyCurrency(currency);
                  }),
                ))
            .toList(),
      ),
    );
  }
}

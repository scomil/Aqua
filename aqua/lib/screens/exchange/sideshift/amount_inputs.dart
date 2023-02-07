import 'package:aqua/common/input_formatters/comma_text_input_formatter.dart';
import 'package:aqua/common/input_formatters/decimal_text_input_formatter.dart';
import 'package:aqua/common/widgets/amount_text_field.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliverAmountInput extends ConsumerWidget {
  const DeliverAmountInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final text = watch(deliverAmountTextProvider);
    final transactionType = watch(selectedTransactionTypeProvider);
    final isVariable = transactionType == TransactionTypes.externalToInternal;

    return Container(
      width: 146.w,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Center(
        child: FocusScope(
          child: Focus(
            onFocusChange: (focus) {
              // Signal focus change
              context.read(sideShiftScreenProvider).setAmountFieldFocus(focus);
              // Truncate trailing decimal zeros
              final truncated = text?.replaceAllMapped(
                reRemoveTrailingDecimals,
                (match) => match.group(1) ?? '',
              );
              if (!focus) {
                final receiveAmountText =
                    context.read(receiveAmountTextProvider);
                context
                    .read(sideShiftScreenProvider)
                    .setReceiveAmountText(receiveAmountText);
                if (text != truncated) {
                  context
                      .read(sideShiftScreenProvider)
                      .setDeliverAmountText(truncated!);
                }
              } else {
                final deliverAmountText =
                    context.read(deliverAmountTextProvider);
                context
                    .read(sideShiftScreenProvider)
                    .setDeliverAmountText(deliverAmountText);
              }
            },
            child: AmountTextField(
              text: text,
              filled: false,
              hintText: '0',
              readOnly: isVariable,
              textAlign: TextAlign.end,
              cursorColor: Theme.of(context).colorScheme.primary,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                CommaTextInputFormatter(),
                DecimalTextInputFormatter(decimalRange: 8),
              ],
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
              hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.primary,
                  ),
              onChanged: (text) => context
                  .read(sideShiftScreenProvider)
                  .setDeliverAmountText(text),
            ),
          ),
        ),
      ),
    );
  }
}

class ReceiveAmountInput extends ConsumerWidget {
  const ReceiveAmountInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final text = watch(receiveAmountTextProvider);
    final transactionType = watch(selectedTransactionTypeProvider);
    final isVariable = transactionType == TransactionTypes.externalToInternal;

    return Container(
      width: 146.w,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Center(
        child: AmountTextField(
          text: text,
          filled: false,
          hintText: '0',
          readOnly: isVariable,
          textAlign: TextAlign.end,
          cursorColor: Theme.of(context).colorScheme.primary,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            CommaTextInputFormatter(),
            DecimalTextInputFormatter(decimalRange: 8),
          ],
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
          hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.primary,
              ),
          onChanged: (text) =>
              context.read(sideShiftScreenProvider).setReceiveAmountText(text),
        ),
      ),
    );
  }
}

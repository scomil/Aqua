import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/common/widgets/amount_text_field.dart';
import 'package:aqua/data/provider/qr_scanner/qr_scanner_pop_result.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_error_view.dart';
import 'package:aqua/screens/exchange/sideshift/swap_assets_button.dart';
import 'package:aqua/screens/qrscanner/qr_scanner_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReceiveAddressInput extends ConsumerWidget {
  const ReceiveAddressInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final address = watch(receivingAddressProvider);
    logger.d('[Sideshift] Address: $address');
    final error = watch(receivingAddressErrorProvider);

    return Column(
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 48.h,
              padding: EdgeInsets.only(left: 19.w, right: 39.w),
              decoration: BoxDecoration(
                border: Border.all(
                  color: error == null
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.error,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(12.r),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Center(
                child: AmountTextField(
                  text: address,
                  hintText: AppLocalizations.of(context)!
                      .exchangeSideShiftSendToAddress,
                  inputFormatters: const [],
                  keyboardType: TextInputType.text,
                  onChanged: (value) => context
                      .read(sideShiftScreenProvider)
                      .setReceivingAddress(value),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularSvgButton(
                    onPressed: () => scanForBarcode(context),
                    svgIcon: SvgPicture.asset(
                      'assets/send_scan.svg',
                      width: 20.r,
                      height: 20.r,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        // Error
        Padding(
          padding: EdgeInsets.symmetric(vertical: error == null ? 0 : 6.h),
          child: Opacity(
            opacity: error == null ? 0 : 1,
            child: SideshiftErrorView(
              isRightAligned: false,
              message: AppLocalizations.of(context)!
                  .exchangeSideShiftReceivingAddressError,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> scanForBarcode(BuildContext context) async {
    final result = await Navigator.of(context).pushNamed(
      QrScannerScreen.routeName,
      arguments: Object(),
    ) as QrScannerPopResult?;
    logger.d('[Sideshift] Scan Result: $result');
    if (result is QrScannerPopSuccessResult) {
      context.read(sideShiftScreenProvider).setReceivingAddress(result.address);
    }
  }
}

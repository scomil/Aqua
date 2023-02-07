import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/utils/custom_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BitcoinReserveSellScreen extends ConsumerWidget {
  static const routeName = '/bitcoinReserveSellScreen';

  const BitcoinReserveSellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.exchangeBitcoinReserveSellTitle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              // Rate
              Text(
                AppLocalizations.of(context)!
                    .exchangeBitcoinReserveSellReferenceRate,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 4.h),
              Text(
                '€19664.39',
                style: Theme.of(context).textTheme.button,
              ),
              SizedBox(height: 32.h),
              // Address
              Text(
                AppLocalizations.of(context)!
                    .exchangeBitcoinReserveSellDestinationAddress,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16.h),
              const BitcoinReserveAddressView(
                '1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX',
              ),
              SizedBox(height: 32.h),
              // QR code
              Text(
                AppLocalizations.of(context)!
                    .exchangeBitcoinReserveSellQrDescription,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24.r)),
                ),
                child: Column(children: [
                  QrImage(
                    data: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                    version: QrVersions.auto,
                    size: 200.w,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BitcoinReserveAddressView extends StatelessWidget {
  const BitcoinReserveAddressView(
    this.address, {
    Key? key,
  }) : super(key: key);

  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AquaColors.darkJungleGreen,
          ),
          child: Text(
            address,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.button?.copyWith(
                  fontSize: 12.sp,
                ),
          ),
        ),
      ),
      SizedBox(width: 8.w),
      Material(
        color: AquaColors.darkJungleGreen,
        borderRadius: BorderRadius.circular(25.r),
        child: InkWell(
          onTap: () => copyToClipboard(context, address),
          borderRadius: BorderRadius.circular(25.r),
          child: Container(
            padding: EdgeInsets.all(8.r),
            child: Icon(Icons.copy, size: 16.r),
          ),
        ),
      ),
    ]);
  }

  Future<void> copyToClipboard(
    BuildContext context,
    String address,
  ) async {
    await Clipboard.setData(ClipboardData(text: address));
    final text =
        AppLocalizations.of(context)!.exchangeBitcoinReserveAddressCopied;
    logger.d('[BitcoinReserve] $text');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}

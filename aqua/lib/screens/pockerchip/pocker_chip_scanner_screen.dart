import 'package:aqua/screens/pockerchip/pocker_chip_balance_screen.dart';
import 'package:aqua/screens/qrscanner/qr_scanner_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PokerChipScannerScreen extends StatelessWidget {
  static const routeName = '/pokerChipScannerScreen';

  const PokerChipScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          MobileScanner(
            onDetect: (barcode, _) => Navigator.of(context).pushNamed(
              PokerChipBalanceScreen.routeName,
              arguments: barcode.rawValue,
            ),
          ),
          Row(children: [
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ]),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 196.r,
                  child: CustomPaint(
                    painter: ScannerOverlayPainter(
                      borderColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: 25.r,
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
                Text(
                  AppLocalizations.of(context)!.pokerChipBalanceScan,
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

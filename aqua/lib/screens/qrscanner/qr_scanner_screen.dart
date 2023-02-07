import 'dart:ui';

import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/data/provider/qr_scanner/qr_scanner_pop_result.dart';
import 'package:aqua/data/provider/qr_scanner/qr_scanner_provider.dart';
import 'package:aqua/screens/pockerchip/pocker_chip_scanner_screen.dart';
import 'package:aqua/screens/receive/receive_choose_asset_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerScreen extends StatefulWidget {
  static const routeName = '/qrScannerScreen';

  const QrScannerScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');

  final _imagePicker = ImagePicker();
  final _barcodeScannerController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(
      children: [
        ProviderListener<QrScannerPopResult?>(
          provider: qrScannerPopProvider(arguments),
          onChange: (context, result) {
            Navigator.of(context).popUntil(
              (route) => route.settings.name == QrScannerScreen.routeName,
            );
            Navigator.of(context).pop(result);
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: qrScannerNavigateToMyQrCodeProvider(arguments),
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  ReceiveChooseAssetScreen.routeName,
                  (route) => route.settings.name == QrScannerScreen.routeName);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: qrScannerShowPermissionAlertProvider(arguments),
          onChange: (context, __) {
            _showPermissionErrorDialog(context);
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: qrScannerShowValidationAlertProvider(arguments),
          onChange: (context, _) {
            _showValidationErrorDialog(context);
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: qrScannerShowLoadingProvider(arguments),
          onChange: (context, __) {
            showLoadingDialog(context, null);
          },
          child: Container(),
        ),
        Scaffold(
          body: SafeArea(
            child: Consumer(builder: (_, watch, __) {
              final value = watch(qrScannerInitializationProvider(arguments));
              return value.maybeWhen(
                data: (_) => Stack(
                  children: [
                    MobileScanner(
                      key: _qrKey,
                      onDetect: (barcode, args) {
                        context
                            .read(qrScannerProvider(arguments))
                            .updateScannedData(barcode);
                      },
                    ),
                    Row(children: [
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () async {
                          context
                              .read(qrScannerProvider(arguments))
                              .popWithNoResult();
                        },
                      ),
                    ]),
                    Center(
                      child: SizedBox.square(
                        dimension: 196.r,
                        child: CustomPaint(
                          painter: ScannerOverlayPainter(
                            borderColor: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            borderRadius: 25.r,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: SizedBox(
                              height: 216.h,
                              child: Text(
                                AppLocalizations.of(context)!.scanQrCodeTitle,
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 36.w),
                          margin: EdgeInsets.only(bottom: 78.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              QrScanMenuButton(
                                svgPath: 'assets/album.svg',
                                text: AppLocalizations.of(context)!
                                    .scanQrCodeAlbumButton,
                                onPressed: () async {
                                  final image = await _imagePicker.pickImage(
                                      source: ImageSource.gallery);
                                  final path = image?.path;
                                  if (path != null) {
                                    await _barcodeScannerController
                                        .analyzeImage(path);
                                  }
                                },
                              ),
                              QrScanMenuButton(
                                svgPath: 'assets/tab_wallet.svg',
                                text: AppLocalizations.of(context)!
                                    .scanQrCodeBalanceButton,
                                svColor: Colors.white,
                                onPressed: () => Navigator.of(context)
                                    .pushReplacementNamed(
                                        PokerChipScannerScreen.routeName),
                              ),
                              QrScanMenuButton(
                                svgPath: 'assets/qr.svg',
                                text: AppLocalizations.of(context)!
                                    .scanQrCodeButton,
                                onPressed: () => context
                                    .read(qrScannerProvider(arguments))
                                    .navigateToMyQrCode(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                loading: () => Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            }),
          ),
        ),
      ],
    );
  }

  void _showPermissionErrorDialog(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    showDialog<CustomAlertDialog>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          onWillPop: () async {
            return false;
          },
          title: AppLocalizations.of(context)!.scanQrCodePermissionAlertTitle,
          subtitle:
              AppLocalizations.of(context)!.scanQrCodePermissionAlertSubtitle,
          controlWidgets: [
            Expanded(
              child: OutlinedButton(
                child: Text(AppLocalizations.of(context)!
                    .scanQrCodePermissionAlertCancelButton),
                onPressed: () async {
                  context.read(qrScannerProvider(arguments)).popWithNoResult();
                },
              ),
            ),
            Container(width: 12.w),
            Expanded(
              child: ElevatedButton(
                child: Text(AppLocalizations.of(context)!
                    .scanQrCodePermissionAlertGrantButton),
                onPressed: () async {
                  context
                      .read(qrScannerProvider(arguments))
                      .popWithRequiresRestartResult();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  void _showValidationErrorDialog(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    showDialog<CustomAlertDialog>(
      context: context,
      barrierDismissible: false,
      builder: (context) => CustomAlertDialog(
        onWillPop: () async => false,
        title: AppLocalizations.of(context)!.scanQrCodeValidationAlertTitle,
        subtitle:
            AppLocalizations.of(context)!.scanQrCodeValidationAlertSubtitle,
        controlWidgets: [
          Expanded(
            child: ElevatedButton(
              child: Text(AppLocalizations.of(context)!
                  .scanQrCodeValidationAlertRetryButton),
              onPressed: () {
                context
                    .read(qrScannerProvider(arguments))
                    .popWithRequiresRestartResult();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class QrScanMenuButton extends StatelessWidget {
  const QrScanMenuButton({
    Key? key,
    this.svColor,
    required this.text,
    required this.svgPath,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final String svgPath;
  final Color? svColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88.r,
      height: 88.r,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: OutlinedButton(
            style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0x336B7387),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.transparent),
                  ),
                ),
            onPressed: onPressed,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    svgPath,
                    color: svColor,
                    width: 18.w,
                    height: 18.h,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(height: 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScannerOverlayPainter extends CustomPainter {
  final Color borderColor;
  final double borderRadius;

  ScannerOverlayPainter({
    required this.borderColor,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final sh = size.height;
    final sw = size.width;
    final cornerSide = borderRadius;

    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = 2.r
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

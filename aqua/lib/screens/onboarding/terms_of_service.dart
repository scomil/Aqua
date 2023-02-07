import 'dart:ui';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/data/provider/register_wallet/register_wallet_provider.dart';
import 'package:url_launcher/url_launcher.dart';

const tosUrl = "https://blockstream.com/aqua/terms/";

class TermsOfService extends StatelessWidget {
  const TermsOfService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AsyncValue<void>?>(
      provider: registerWalletProcessingProvider,
      onChange: (context, value) {
        value?.maybeWhen(
          loading: () {
            showGeneralDialog(
                context: context,
                pageBuilder: (context, animation, secondaryAnimation) =>
                    WillPopScope(
                      onWillPop: () async {
                        return false;
                      },
                      child: const Scaffold(
                        body: FlareActor(
                          "assets/animations/create_wallet.flr",
                          alignment: Alignment.topCenter,
                          fit: BoxFit.contain,
                          animation: "Animations",
                          snapToEnd: false,
                          isPaused: false,
                          shouldClip: true,
                        ),
                      ),
                    ));
          },
          error: (_, __) {
            showDialog<CustomAlertDialog>(
              context: context,
              builder: (BuildContext context) {
                return CustomAlertDialog(
                  title: AppLocalizations.of(context)!.unknownErrorTitle,
                  subtitle: AppLocalizations.of(context)!.unknownErrorSubtitle,
                  controlWidgets: [
                    Expanded(
                      child: ElevatedButton(
                        child: Text(
                            AppLocalizations.of(context)!.unknownErrorButton),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          orElse: () {},
        );
      },
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: const TermsOfServiceBottomPanel(),
      ),
    );
  }
}

class TermsOfServiceBottomPanel extends StatefulWidget {
  const TermsOfServiceBottomPanel({
    Key? key,
  }) : super(key: key);

  @override
  _TermsOfServiceBottomPanelState createState() =>
      _TermsOfServiceBottomPanelState();
}

class _TermsOfServiceBottomPanelState extends State<TermsOfServiceBottomPanel> {
  bool checked = false;

  void onAgreement() {
    setState(() {
      checked = !checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 143.h,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Column(
            children: [
              TermsOfServiceAgreement(
                onTap: onAgreement,
                checked: checked,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: AquaElevatedButton(
                  onPressed: checked
                      ? () => context.read(registerWalletProvider).register()
                      : null,
                  child: Text(
                    AppLocalizations.of(context)!.tosButtonText,
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: checked ? AquaColors.isabelline : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TermsOfServiceAgreement extends StatefulWidget {
  const TermsOfServiceAgreement({
    Key? key,
    this.onTap,
    this.checked = false,
  }) : super(key: key);

  final void Function()? onTap;
  final bool checked;

  @override
  _TermsOfServiceAgreementState createState() =>
      _TermsOfServiceAgreementState();
}

class _TermsOfServiceAgreementState extends State<TermsOfServiceAgreement> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.onTap,
      child: Container(
        height: 60.h,
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  Container(
                    width: 18.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9.r),
                      ),
                      color: widget.checked
                          ? AquaColors.persianGreen
                          : Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14.w,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          style: GoogleFonts.inter(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.tosAgree,
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.tosAgreeSpan,
                              style: GoogleFonts.inter(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => _launchURL(tosUrl),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    logger.d('Launching: $url');
    final success = await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    );
    if (!success) {
      throw Exception('[Aqua] Could not launch URL: $url');
    }
  }
}

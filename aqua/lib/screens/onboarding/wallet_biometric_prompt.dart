import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/aqua_text_button.dart';
import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/custom_dialog.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/data/provider/biometric/biometric_activation_result.dart';
import 'package:aqua/data/provider/biometric/biometric_provider.dart';
import 'package:aqua/screens/onboarding/passcode_enable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum WalletBiometricPromptExitType {
  backup,
  home,
}

class WalletBiometricPrompt extends StatelessWidget {
  static const routeName = '/walletBiometricPrompt';

  const WalletBiometricPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<BiometricActivationResult?>(
      provider: biometricActivationResultProvider,
      onChange: (context, result) {
        result?.maybeWhen(
          success: () {
            Navigator.of(context).popUntil((route) =>
                route is! RawDialogRoute &&
                route.settings.name != WalletBiometricPrompt.routeName);
          },
          loading: () {
            showLoadingDialog(context,
                AppLocalizations.of(context)!.initialScreenLoadingWallet);
          },
          reject: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                PasscodeEnable.routeName,
                (route) =>
                    route is! RawDialogRoute &&
                    route.settings.name != WalletBiometricPrompt.routeName);
          },
          failure: () {
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
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: 24.w, right: 24.w, top: 142.h, bottom: 24.h),
            child: const _WalletBiometricPromptContent(),
          ),
        ),
      ),
    );
  }
}

class _WalletBiometricPromptContent extends ConsumerWidget {
  const _WalletBiometricPromptContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final uiModel = watch(biometricUiModelProvider(context));
    return uiModel != null
        ? Column(
            children: <Widget>[
              SvgPicture.asset(
                uiModel.assetName,
                width: 68.w,
                height: 80.h,
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: Text(
                  uiModel.title,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 28.h),
                margin: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text(
                  uiModel.subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: _InfoButton(
                  text: uiModel.infoTitle,
                  onTap: () {
                    final dialogRoute = DialogRoute<CustomDialog>(
                        context: context,
                        builder: (BuildContext context) {
                          return SecurityInfoDialog(
                            height: 470.h,
                            title: uiModel.securityDialogTitle,
                            description: uiModel.securityDialogDescription,
                          );
                        });
                    Navigator.of(context).pushAndRemoveUntil(
                        dialogRoute, (route) => route is! DialogRoute);
                  },
                ),
              ),
              const Spacer(),
              AquaElevatedButton(
                child: Text(
                  AppLocalizations.of(context)!.biometricPromptEnableButton,
                ),
                onPressed: () async {
                  context.read(biometricProvider).enable();
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: AquaTextButton(
                  onPressed: () async {
                    context.read(biometricProvider).skip();
                  },
                  child: Text(
                    AppLocalizations.of(context)!.biometricPromptSkipButton,
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}

class SecurityInfoDialog extends StatelessWidget {
  const SecurityInfoDialog(
      {Key? key, this.height, this.title, this.description})
      : super(key: key);

  final double? height;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      child: Container(
        height: height ?? 410.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Text(
                description ?? '',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: SizedBox(
                width: double.maxFinite,
                height: 48.h,
                child: ElevatedButton(
                  child: Text(AppLocalizations.of(context)!
                      .biometricPromptSecureInfoButton),
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoButton extends StatelessWidget {
  const _InfoButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.w),
            child: Icon(Icons.help, color: AquaColors.isabelline, size: 11.w),
          ),
        ],
      ),
    );
  }
}

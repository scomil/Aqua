import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/common/widgets/custom_snackbar_widget.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_auth_state.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_provider.dart';
import 'package:aqua/screens/exchange/sideshift/input_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

const signUpUrl = 'https://bitcoinreserve.com/account/register';
const forgetPasswordUrl = 'https://bitcoinreserve.com/account/password_reset/';

class BitcoinReserveLoginPanel extends ConsumerWidget {
  const BitcoinReserveLoginPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final spanStyle = Theme.of(context).textTheme.bodyText1;
    final spanButtonStyle = spanStyle?.copyWith(
      decoration: TextDecoration.none,
      color: AquaColors.robinEggBlue,
    );

    final email = watch(brEmailProvider);
    final password = watch(brPasswordProvider);
    final code = watch(br2FactorAuthCodeProvider);
    final emailError = watch(brEmailErrorProvider);
    final passwordError = watch(brPasswordErrorProvider);
    final codeError = watch(br2FactorAuthCodeErrorProvider);
    final loginState = watch(brLoginStateProvider);

    final isLoading = loginState is LoginLoading;
    final noInput = email == null || password == null || code == null;
    final containsError =
        [emailError, passwordError, codeError].any((e) => e != null);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Form
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: AquaColors.darkJungleGreen,
            ),
            child: Column(
              children: [
                // Email
                SizedBox(height: 8.h),
                TextInputView(
                  inputFormatters: const [],
                  keyboardType: TextInputType.emailAddress,
                  hintText: AppLocalizations.of(context)!
                      .exchangeBitcoinReserveLoginEmail,
                  onChanged: (s) =>
                      context.read(bitcoinReserveScreenProvider).setEmail(s),
                ),
                // Password
                SizedBox(height: 16.h),
                TextInputView(
                  inputFormatters: const [],
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  hintText: AppLocalizations.of(context)!
                      .exchangeBitcoinReserveLoginPassword,
                  onChanged: (s) =>
                      context.read(bitcoinReserveScreenProvider).setPassword(s),
                ),
                // Code
                SizedBox(height: 16.h),
                TextInputView(
                  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                  keyboardType:
                      const TextInputType.numberWithOptions(signed: true),
                  hintText: AppLocalizations.of(context)!
                      .exchangeBitcoinReserve2FaCode,
                  onChanged: (s) => context
                      .read(bitcoinReserveScreenProvider)
                      .set2FactorAuthCode(s),
                ),
                // Forget password
                SizedBox(height: 24.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppLocalizations.of(context)!
                        .exchangeBitcoinReserveRegisterPasswordReset,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchURL(forgetPasswordUrl),
                    style: spanButtonStyle,
                  ),
                ),
                SizedBox(height: 16.h),
                // Sign Up
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppLocalizations.of(context)!
                        .exchangeBitcoinReserveRegisterDescription,
                    style: spanStyle,
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!
                            .exchangeBitcoinReserveRegisterButton,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchURL(signUpUrl),
                        style: spanButtonStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 36.h),
          // Login Button
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
              onPressed: isLoading || noInput || containsError
                  ? null
                  : () => context
                      .read(bitcoinReserveScreenProvider)
                      .login(email, password, code),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!
                        .exchangeBitcoinReserveLoginButton,
                  ),
                  if (isLoading)
                    SizedBox.square(
                      dimension: 24.r,
                      child: CircularProgressIndicator(
                        strokeWidth: 3.w,
                        valueColor: const AlwaysStoppedAnimation(
                          AquaColors.persianGreen,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: 36.h),
          // Email Error
          if (emailError != null)
            CustomSnackbarWidget(
              opacity: 1.0,
              text: AppLocalizations.of(context)!
                  .exchangeBitcoinReserveAuthEmailError,
              color: Theme.of(context).colorScheme.error,
            ),
          // Passsword Error
          if (passwordError != null)
            CustomSnackbarWidget(
              opacity: 1.0,
              text: AppLocalizations.of(context)!
                  .exchangeBitcoinReserveAuthPasswordError,
              color: Theme.of(context).colorScheme.error,
            ),
          // Auth Error
          if (loginState is LoginFailure)
            CustomSnackbarWidget(
              opacity: 1.0,
              text: loginState.message ??
                  AppLocalizations.of(context)!.exchangeBitcoinReserveAuthError,
              color: Theme.of(context).colorScheme.error,
            ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    logger.d('Launching: $url');
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}

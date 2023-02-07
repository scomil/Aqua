import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/screens/onboarding/wallet_restore/wallet_restore_input.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletRestorePrompt extends StatelessWidget {
  static const routeName = '/walletRestorePrompt';

  const WalletRestorePrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
          child: const _WalletRestorePromptContent(),
        ),
      ),
    );
  }
}

class _WalletRestorePromptContent extends StatelessWidget {
  const _WalletRestorePromptContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            SvgPicture.asset(
              'assets/recovery_phrase.svg',
              width: 200.w,
              height: 204.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.h),
              child: Text(
                AppLocalizations.of(context)!.restorePromptTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                AppLocalizations.of(context)!.restorePromptSubtitle,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ])),
      Row(
        children: [
          Expanded(
            child: AquaElevatedButton(
              child: Text(
                AppLocalizations.of(context)!.restorePromptButton,
              ),
              onPressed: () async {
                Navigator.of(context)
                    .pushReplacementNamed(WalletRestoreInput.routeName);
              },
            ),
          ),
        ],
      ),
    ]);
  }
}

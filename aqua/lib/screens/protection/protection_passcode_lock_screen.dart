import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/common/widgets/passcode_content.dart';
import 'package:aqua/data/provider/passcode/passcode_dialog_ui_model.dart';
import 'package:aqua/data/provider/passcode/passcode_processing_result.dart';
import 'package:aqua/data/provider/passcode/passcode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

class ProtectionPasscodeLockScreen extends StatelessWidget {
  static const routeName = '/protectionPasscodeLockScreen';

  const ProtectionPasscodeLockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    return Stack(
      children: [
        ProviderListener<PasscodeUnlockResult?>(
          provider: unlockPasscodePopProvider(arguments),
          onChange: (context, result) {
            if (result != null) {
              Navigator.of(context).popUntil(
                (route) =>
                    route.settings.name ==
                    ProtectionPasscodeLockScreen.routeName,
              );
              Navigator.of(context).pop(result);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: unlockPasscodeShowLoadingDialogProvider(arguments),
          onChange: (context, action) {
            if (action != null) {
              showLoadingDialog(
                  context,
                  AppLocalizations.of(context)!
                      .passcodeUnlockLoadingDescription);
            }
          },
          child: Container(),
        ),
        ProviderListener<PasscodeDialogUiModel?>(
          provider:
              unlockPasscodeShowAlertDialogProvider(Tuple2(arguments, context)),
          onChange: (context, uiModel) {
            if (uiModel != null) {
              showDialog<CustomAlertDialog>(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog(
                    title: uiModel.title,
                    subtitle: uiModel.subtitle,
                    controlWidgets: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: uiModel.onButtonPressed,
                          child: Text(uiModel.buttonTitle),
                        ),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            leading: Container(),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Consumer(builder: (context, watch, _) {
                final pinColors = watch(
                    passcodePinColorsProvider(Tuple2(arguments, context)));
                return PasscodeContent(
                  title: AppLocalizations.of(context)!.passcodeUnlockTitle,
                  pinColors: pinColors,
                  buttonTitle:
                      AppLocalizations.of(context)!.passcodeUnlockButton,
                  onChanged: (text) {
                    context
                        .read(passcodeProvider(arguments))
                        .updatePasscode(text);
                  },
                  onSubmitted: () {
                    context.read(unlockPasscodeProvider(arguments)).unlock();
                  },
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

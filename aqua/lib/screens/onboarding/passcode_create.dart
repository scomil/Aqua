import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/passcode_content.dart';
import 'package:aqua/data/provider/passcode/passcode_processing_result.dart';
import 'package:aqua/data/provider/passcode/passcode_provider.dart';
import 'package:aqua/screens/onboarding/passcode_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

class PasscodeCreate extends StatelessWidget {
  static const routeName = '/passcodeCreate';

  const PasscodeCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: createPasscodeReopenProvider(arguments),
          onChange: (context, arguments) {
            if (arguments != null) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                PasscodeCreate.routeName,
                (route) =>
                    route is! RawDialogRoute &&
                    route.settings.name != PasscodeCreate.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<PasscodeProcessingResult?>(
          provider: createPasscodeValidationResultProvider(
              Tuple2(arguments, context)),
          onChange: (context, result) {
            result?.maybeMap(
              success: (result) {
                Navigator.of(context).pushReplacementNamed(
                  PasscodeConfirm.routeName,
                  arguments: result.arguments,
                );
              },
              failure: (result) {
                showDialog<CustomAlertDialog>(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomAlertDialog(
                      title: result.title,
                      subtitle: result.subtitle,
                      controlWidgets: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: result.onButtonPressed,
                            child: Text(result.buttonTitle),
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
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Consumer(builder: (context, watch, _) {
                final pinColors = watch(
                    passcodePinColorsProvider(Tuple2(arguments, context)));
                return PasscodeContent(
                  title: AppLocalizations.of(context)!.passcodeCreateTitle,
                  pinColors: pinColors,
                  buttonTitle:
                      AppLocalizations.of(context)!.passcodeCreateButton,
                  onChanged: (text) {
                    context
                        .read(passcodeProvider(arguments))
                        .updatePasscode(text);
                  },
                  onSubmitted: () {
                    context.read(createPasscodeProvider(arguments)).validate();
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

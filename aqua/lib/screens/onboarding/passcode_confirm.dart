import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/common/widgets/passcode_content.dart';
import 'package:aqua/data/provider/passcode/passcode_processing_result.dart';
import 'package:aqua/data/provider/passcode/passcode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

class PasscodeConfirm extends StatelessWidget {
  static const routeName = '/passcodeConfirm';

  const PasscodeConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: confirmPasscodeReopenProvider(arguments),
          onChange: (context, arguments) {
            if (arguments != null) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                PasscodeConfirm.routeName,
                (route) =>
                    route is! RawDialogRoute &&
                    route.settings.name != PasscodeConfirm.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: confirmPasscodePopProvider(arguments),
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context).popUntil((route) =>
                  route is! RawDialogRoute &&
                  route.settings.name != PasscodeConfirm.routeName);
            }
          },
          child: Container(),
        ),
        ProviderListener<PasscodeProcessingResult?>(
          provider: confirmPasscodeProcessingResultProvider(
              Tuple2(arguments, context)),
          onChange: (context, result) {
            result?.maybeMap(
              success: (_) {
                context
                    .read(confirmPasscodeProvider(arguments))
                    .enablePasscode();
              },
              loading: (data) {
                showLoadingDialog(context, data.description);
              },
              failure: (data) {
                showDialog<CustomAlertDialog>(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomAlertDialog(
                      title: data.title,
                      subtitle: data.subtitle,
                      controlWidgets: [
                        Expanded(
                          child: ElevatedButton(
                            child: Text(data.buttonTitle),
                            onPressed: data.onButtonPressed,
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
                  title: AppLocalizations.of(context)!.passcodeConfirmTitle,
                  pinColors: pinColors,
                  buttonTitle:
                      AppLocalizations.of(context)!.passcodeConfirmButton,
                  onChanged: (text) {
                    context
                        .read(passcodeProvider(arguments))
                        .updatePasscode(text);
                  },
                  onSubmitted: () {
                    context.read(confirmPasscodeProvider(arguments)).process();
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

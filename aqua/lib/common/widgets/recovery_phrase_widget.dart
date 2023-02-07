import 'dart:io';

import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/sliver_grid_delegate.dart';
import 'package:aqua/common/widgets/custom_dialog.dart';
import 'package:aqua/data/provider/wallet_backup_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecoveryPhraseWidget extends StatefulWidget {
  const RecoveryPhraseWidget({Key? key}) : super(key: key);

  @override
  RecoveryPhraseWidgetState createState() => RecoveryPhraseWidgetState();
}

class RecoveryPhraseWidgetState extends State<RecoveryPhraseWidget> {
  static const platform = MethodChannel('io.aquawallet/utils');

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      platform.invokeMethod<bool>('addWindowSecureFlags');
    } else if (Platform.isIOS) {
      platform.invokeMethod<bool>('addScreenshotNotificationObserver');
      platform.setMethodCallHandler((call) async {
        context
            .read(walletBackupConfirmationProvider)
            .showScreenshotWarningDialog();
        return;
      });
    }
  }

  @override
  void dispose() {
    if (Platform.isAndroid) {
      platform.invokeMethod<bool>('clearWindowSecureFlags');
    } else if (Platform.isIOS) {
      platform.invokeMethod<bool>('removeScreenshotNotificationObserver');
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderListener<Object?>(
        provider: walletShowScreenshotWarningDialogProvider,
        onChange: (context, _) {
          _showErrorDialog(context);
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Text(
                AppLocalizations.of(context)!.backupRecoveryPhraseTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Text(
                AppLocalizations.of(context)!.backupRecoveryPhraseSubtitle,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: const WalletBackupMnemonicWords(),
            ),
          ],
        ));
  }

  void _showErrorDialog(BuildContext context) async {
    final dialogRoute = DialogRoute<CustomDialog>(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(
          child: Container(
            height: 260.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Text(
                    AppLocalizations.of(context)!.backupRecoveryAlertTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: Text(
                    AppLocalizations.of(context)!.backupRecoveryAlertSubtitle,
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
                          .backupRecoveryAlertButton),
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
      },
    );
    Navigator.of(context)
        .pushAndRemoveUntil(dialogRoute, (route) => route is! DialogRoute);
  }
}

class WalletBackupMnemonicWords extends StatelessWidget {
  const WalletBackupMnemonicWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        AsyncValue<List<String>?> wordsAsyncValue =
            watch(recoveryPhraseWordsProvider);

        return wordsAsyncValue.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
          data: (words) => WalletBackupGridView(words: words ?? <String>[]),
        );
      },
    );
  }
}

class WalletBackupGridView extends StatelessWidget {
  final List<String> words;
  const WalletBackupGridView({
    Key? key,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: AquaColors.mediumJungleGreen,
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
            ),
            child: SizedBox(
              height: 160.h,
              child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        crossAxisCount: 3, mainAxisSpacing: 10.w, height: 32.h),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return WalletBackupTitle(
                      number: '${index + 1}', title: words[index]);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WalletBackupTitle extends StatelessWidget {
  final String number;
  final String title;
  const WalletBackupTitle({
    Key? key,
    required this.number,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20.w,
          child: Text(
            number,
            style: Theme.of(context).textTheme.caption?.copyWith(
                color: Theme.of(context).colorScheme.secondaryContainer),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(height: 1.0),
        ),
      ],
    );
  }
}

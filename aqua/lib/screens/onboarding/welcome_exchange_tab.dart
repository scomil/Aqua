import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/data/provider/welcome_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeExchangeTab extends StatelessWidget {
  const WelcomeExchangeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: welcomeShowWalletPromptDialogProvider,
          onChange: (context, action) {
            if (action != null) {
              _showWalletPromptDialog(context);
            }
          },
          child: Container(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.exchangeTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              const Expanded(
                child: Center(
                  child: _BuyBitcoinItem(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showWalletPromptDialog(BuildContext context) {
    showDialog<CustomAlertDialog>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: AppLocalizations.of(context)!.welcomeWalletPromptTitle,
          subtitle: AppLocalizations.of(context)!.welcomeWalletPromptSubtitle,
          controlWidgets: [
            Expanded(
              child: OutlinedButton(
                child: Text(AppLocalizations.of(context)!
                    .welcomeWalletPromptButtonRestore),
                onPressed: () {
                  context.read(welcomeProvider).navigateToRestoreWallet();
                },
              ),
            ),
            Container(width: 12.w),
            Expanded(
              child: ElevatedButton(
                child: Text(AppLocalizations.of(context)!
                    .welcomeWalletPromptButtonCreate),
                onPressed: () {
                  context.read(welcomeProvider).navigateToCreateWallet();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _BuyBitcoinItem extends StatelessWidget {
  const _BuyBitcoinItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.onSecondary,
      borderRadius: BorderRadius.circular(18.r),
      child: InkWell(
        onTap: () {
          context.read(welcomeProvider).showWalletPromptDialog();
        },
        borderRadius: BorderRadius.circular(18.r),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        AppLocalizations.of(context)!
                            .welcomeExchangeBuyBitcoinTitle,
                        style: Theme.of(context).textTheme.headline6),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Text(
                          AppLocalizations.of(context)!
                              .welcomeExchangeBuyBitcoinDescription,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                fontSize: 13.sp,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

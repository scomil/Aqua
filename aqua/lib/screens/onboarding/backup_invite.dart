import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/aqua_text_button.dart';
import 'package:aqua/data/provider/wallet_backup_provider.dart';
import 'package:aqua/screens/onboarding/wallet_backup_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BackupInvite extends StatelessWidget {
  const BackupInvite({Key? key}) : super(key: key);

  static const routeName = '/backupInvite';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background.withOpacity(.5),
      body: Column(
        children: [
          ProviderListener<Object?>(
            provider: walletBackupNavigateToBackupPromptProvider,
            onChange: (context, action) {
              if (action != null) {
                Navigator.of(context)
                    .pushReplacementNamed(WalletBackupPrompt.routeName);
              }
            },
            child: Container(),
          ),
          ProviderListener<Object?>(
            provider: walletBackupPopInviteProvider,
            onChange: (context, action) {
              if (action != null) {
                Navigator.of(context).pop();
              }
            },
            child: Container(),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
            ),
            child: Stack(children: [
              Container(
                padding: EdgeInsets.only(
                    left: 24.w, right: 24.w, top: 16.h, bottom: 24.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.backupInviteTitle,
                      style: GoogleFonts.inter(
                        fontSize: 27.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: SizedBox(
                        width: 270.w,
                        child: Text(
                          AppLocalizations.of(context)!
                              .backupInviteDescription1,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                height: 1.3,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: SizedBox(
                        width: 270.w,
                        child: Text(
                          AppLocalizations.of(context)!
                              .backupInviteDescription2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                height: 1.3,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 50.h),
                      child: AquaElevatedButton(
                        onPressed: () => context
                            .read(walletBackupConfirmationProvider)
                            .acceptInvite(),
                        child: Text(
                          AppLocalizations.of(context)!.backupInviteButtonNext,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 16.h),
                      child: AquaTextButton(
                        onPressed: () => context
                            .read(walletBackupConfirmationProvider)
                            .skipPrompt(),
                        child: Text(
                          AppLocalizations.of(context)!.backupInviteButtonLater,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 16.h, right: 20.h),
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  splashRadius: 4.r,
                  constraints: const BoxConstraints.tightFor(),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

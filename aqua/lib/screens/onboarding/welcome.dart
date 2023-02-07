import 'package:aqua/data/provider/welcome_provider.dart';
import 'package:aqua/screens/onboarding/terms_of_service.dart';
import 'package:aqua/screens/onboarding/wallet_restore/wallet_restore_prompt.dart';
import 'package:aqua/screens/onboarding/welcome_wallet_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Welcome extends StatelessWidget {
  static const routeName = '/welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: welcomeNavigateToRestoreWalletProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  WalletRestorePrompt.routeName,
                  (route) => route is! RawDialogRoute);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: welcomeNavigateToCreateWalletProvider,
          onChange: (context, action) {
            if (action != null) {
              showModalBottomSheet<bool>(
                context: context,
                builder: (context) => const TermsOfService(),
              );
            }
          },
          child: Container(),
        ),
        const Scaffold(
          appBar: null,
          body: WelcomeWalletTab(),
        ),
      ],
    );
  }
}

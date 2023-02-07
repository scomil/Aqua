import 'package:aqua/data/models/sideswap.dart';
import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwapButton extends StatelessWidget {
  const SwapButton({Key? key, this.onPressed}) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Consumer(
          builder: (context, watch, _) {
            final swapLoadingIndicator =
                watch(swapLoadingIndicatorStateProvider).state;
            final generalEnabledState = watch(swapButtonEnabledProvider);
            final enabled =
                (swapLoadingIndicator == const SwapProgressState.empty()) &&
                    generalEnabledState;
            return ElevatedButton(
              onPressed: enabled ? onPressed : null,
              child: Text(AppLocalizations.of(context)!.exchangeSwapButton),
            );
          },
        ),
      ),
    ]);
  }
}

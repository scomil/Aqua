import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_provider.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_login_panel.dart';
import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_transaction_panel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BitcoinReserveScreen extends ConsumerWidget {
  static const routeName = '/bitcoinReserveScreen';

  const BitcoinReserveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authState = watch(brAuthStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onLongPress: () {
            if (kDebugMode) {
              context.read(bitcoinReserveScreenProvider)
                ..setEmail('johnyukon21+qw@gmail.com')
                ..setPassword('aaaaaaaaaaaa123@A')
                ..set2FactorAuthCode('123456');
            }
          },
          child: Text(
            AppLocalizations.of(context)!.exchangeBitcoinReserveTitle,
          ),
        ),
      ),
      body: SafeArea(
        child: authState.when(
          authenticated: () => const BitcoinReserveTransactionPanel(),
          unauthenticated: () => const BitcoinReserveLoginPanel(),
        ),
      ),
    );
  }
}

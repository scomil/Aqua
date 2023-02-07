import 'package:aqua/common/widgets/recovery_phrase_widget.dart';
import 'package:aqua/data/provider/wallet_backup_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ProfileRecoveryPhraseScreen extends StatelessWidget {
  static const routeName = '/profileRecoveryPhraseScreen';

  const ProfileRecoveryPhraseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<AsyncValue<List<String>?>>(
          provider: recoveryPhraseWordsProvider,
          onChange: (context, value) {
            value.maybeWhen(
              error: (_, __) {
                Navigator.of(context).pop();
              },
              orElse: () {
                // Only react to error value
              },
            );
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 12.h, left: 16.w, right: 16.w, bottom: 24.h),
              child: const RecoveryPhraseWidget(),
            ),
          ),
        ),
      ],
    );
  }
}

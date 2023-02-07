import 'package:aqua/common/widgets/asset_list/asset_list.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_assets/send_assets_provider.dart';
import 'package:aqua/screens/send/send_amount_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendAssetsScreen extends StatelessWidget {
  static const routeName = '/sendAssetsScreen';

  const SendAssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return ProviderListener<SendAmountArguments?>(
      provider: sendAssetsOnSelectedProvider(arguments),
      onChange: (context, arguments) {
        if (arguments != null) {
          Navigator.of(context).pushReplacementNamed(SendAmountScreen.routeName,
              arguments: arguments);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.sendPromptAssetsTitle),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
            child: Consumer(builder: (context, watch, _) {
              final listArguments =
                  watch(sendAssetsListArgumentsProvider(arguments));
              return listArguments != null
                  ? AssetList(
                      arguments: listArguments,
                      onAssetSelected: (asset) {
                        context
                            .read(sendAssetsProvider(arguments))
                            .onAssetSelected(asset);
                      },
                      onAssetsReload: () {
                        context
                            .read(sendAssetsProvider(arguments))
                            .reloadAssets();
                      },
                    )
                  : Container();
            }),
          ),
        ),
      ),
    );
  }
}

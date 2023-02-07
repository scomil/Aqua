import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/common/widgets/asset_list/asset_list.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_assets/send_assets_arguments.dart';
import 'package:aqua/data/provider/swap/sideswap_prompt_arguments.dart';
import 'package:aqua/data/provider/wallet_tab_provider.dart';
import 'package:aqua/screens/asset/asset_transactions_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_prompt.dart';
import 'package:aqua/screens/qrscanner/qr_scanner_screen.dart';
import 'package:aqua/screens/receive/receive_choose_asset_screen.dart';
import 'package:aqua/screens/send/send_amount_screen.dart';
import 'package:aqua/screens/send/send_assets_screen.dart';
import 'package:aqua/screens/send/send_prompt_screen.dart';
import 'package:aqua/screens/wallet/wallet_add_asset_screen.dart';
import 'package:aqua/screens/wallet/wallet_add_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletTab extends StatelessWidget {
  const WalletTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<Asset?>(
          provider: walletTabOnAssetSelectedProvider,
          onChange: (context, asset) {
            if (asset != null) {
              Navigator.of(context).pushNamed(
                AssetTransactionsScreen.routeName,
                arguments: asset,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: walletTabNavigateToQrScannerProvider,
          onChange: (context, arguments) async {
            if (arguments != null) {
              final result = await Navigator.of(context).pushNamed(
                QrScannerScreen.routeName,
                arguments: arguments,
              );
              context.read(walletTabProvider).handleQrScannerResult(result);
            }
          },
          child: Container(),
        ),
        ProviderListener<SendAssetsArguments?>(
          provider: walletTabNavigateToSendAssetsProvider,
          onChange: (context, arguments) async {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                SendAssetsScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<SendAmountArguments?>(
          provider: walletTabNavigateToSendAmountProvider,
          onChange: (context, arguments) async {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                SendAmountScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: walletTabNavigateToAddAssetProvider,
          onChange: (context, arguments) async {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                WalletAddAssetScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<SideSwapPromptArguments?>(
          provider: walletTabNavigateToSwapPromptProvider,
          onChange: (context, arguments) async {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                SwapPromptScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<AsyncValue<List<GdkNetworkEventStateEnum?>>?>(
          provider: networkEventStreamProvider,
          onChange: (context, value) {
            value?.maybeWhen(
                data: (event) {
                  if (event
                      .any((e) => e == GdkNetworkEventStateEnum.connected)) {
                    logger.d('Reconnected - reloading assets');
                    context.read(walletTabProvider).reloadAssets();
                  }
                },
                orElse: () {});
          },
          child: Container(),
        ),
        Stack(
          children: [
            Container(
              height: 278.h,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0.0, -4.0),
                  radius: 2.0,
                  colors: [
                    AquaColors.robinEggBlue,
                    Color(0xFF004C66),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: SvgPicture.asset(
                          'assets/aqua_logo_noshadow.svg',
                          width: 73.w,
                          height: 16.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 43.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WalletTabButton(
                            svgAssetName: 'assets/wallet_receive.svg',
                            title: AppLocalizations.of(context)!
                                .walletReceiveButton,
                            onPressed: () async {
                              Navigator.of(context).pushNamed(
                                  ReceiveChooseAssetScreen.routeName);
                            },
                          ),
                          WalletTabButton(
                            svgAssetName: 'assets/wallet_send.svg',
                            title:
                                AppLocalizations.of(context)!.walletSendButton,
                            onPressed: () async {
                              Navigator.of(context)
                                  .pushNamed(SendPromptScreen.routeName);
                            },
                          ),
                          WalletTabButton(
                            svgAssetName: 'assets/wallet_scan.svg',
                            title:
                                AppLocalizations.of(context)!.walletScanButton,
                            onPressed: () {
                              context
                                  .read(walletTabProvider)
                                  .navigateToQrScanner();
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 198.h),
                child: Container(
                  decoration: BoxDecoration(
                    color: AquaColors.onyx,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.r),
                      topRight: Radius.circular(28.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.w, right: 15.w),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16.h),
                          child: Consumer(builder: (context, watch, _) {
                            final arguments =
                                watch(walletTabAssetsListArgumentsProvider);
                            return arguments != null
                                ? AssetList(
                                    arguments: arguments,
                                    onAssetSelected: (asset) {
                                      context
                                          .read(walletTabProvider)
                                          .onAssetSelected(asset);
                                    },
                                    onAssetsReload: () {
                                      context
                                          .read(walletTabProvider)
                                          .reloadAssets();
                                    },
                                  )
                                : Container();
                          }),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 12.h),
                            child: WalletAddIcon(
                              onTap: () => context
                                  .read(walletTabProvider)
                                  .navigateToAddAsset(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class WalletTabButton extends StatelessWidget {
  const WalletTabButton({
    Key? key,
    required this.svgAssetName,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String svgAssetName;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            svgAssetName,
            width: 28.w,
            height: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}

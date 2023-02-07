import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/data/provider/home/home_provider.dart';
import 'package:aqua/data/provider/pokerchip/pokerchip_provider.dart';
import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_asset_icon.dart';
import 'package:aqua/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PokerChipBalanceScreen extends StatefulWidget {
  const PokerChipBalanceScreen({super.key});

  static const routeName = '/pokerChipBalanceScreen';

  @override
  State<PokerChipBalanceScreen> createState() => _PokerChipBalanceScreenState();
}

class _PokerChipBalanceScreenState extends State<PokerChipBalanceScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.microtask(() {
      final address = ModalRoute.of(context)?.settings.arguments as String;
      context.read(pokerChipProvider).addAddress(address);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(children: [
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              // Pokerchip frame
              SvgPicture.asset(
                'assets/pokerchip.svg',
                width: 195.r,
                height: 195.r,
              ),
              // Asset Icon
              Consumer(builder: (context, watch, child) {
                final assetId = watch(assetIdProvider);
                return SideshiftAssetIcon(
                  assetId: assetId,
                  size: 72.r,
                );
              }),
            ],
          ),
          SizedBox(height: 45.h),
          // Balance label
          Text(
            AppLocalizations.of(context)!.pokerChipBalanceLabel,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 16.h),
          // Balance value
          Consumer(
            builder: (context, watch, _) => watch(balanceProvider).when(
              data: (balance) => Text(
                balance.toUpperCase(),
                style: Theme.of(context).textTheme.headline6,
              ),
              loading: () => const ProgressBar(),
              error: (e, _) => Text(
                AppLocalizations.of(context)!.pokerChipBalanceError,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.error),
              ),
            ),
          ),
          const Spacer(),
          // Explore button
          Consumer(builder: (context, watch, child) {
            final blockstreamLink = watch(blockstreamLinkProvider);
            return TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () async {
                if (await canLaunchUrlString(blockstreamLink)) {
                  await launchUrl(
                    Uri.parse(blockstreamLink),
                    mode: LaunchMode.externalApplication,
                    webViewConfiguration:
                        const WebViewConfiguration(enableJavaScript: false),
                  );
                }
              },
              child: Text(
                AppLocalizations.of(context)!.pokerChipBalanceExplorerButton,
              ),
            );
          }),
          const Spacer(),
          // CTA Button
          AquaElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                Home.routeName,
                (r) => r.settings.name == '/',
              );
              context.read(homeProvider).selectTab(0);
            },
            child: Text(AppLocalizations.of(context)!.pokerChipBalanceButton),
          )
        ]),
      ),
    );
  }
}

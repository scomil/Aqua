import 'package:aqua/screens/common/webview_screen.dart';
import 'package:aqua/screens/exchange/swap/swap_screen.dart';
import 'package:aqua/screens/marketplace/marketplace_menu.dart';
import 'package:aqua/screens/marketplace/marketplace_tab.dart';
import 'package:flutter/material.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

const bitfinexUrl = 'https://www.bitfinex.com/';
const btseUrl = 'https://www.btse.com/en/home/';

class MarketplaceArguments {
  MarketplaceArguments(this.marketplaceType, this.title);

  final Marketplace marketplaceType;
  final String title;
}

class MarketplaceMenuScreen extends StatefulWidget {
  static const routeName = '/marketplaceMenuScreen';

  const MarketplaceMenuScreen({Key? key}) : super(key: key);

  @override
  State<MarketplaceMenuScreen> createState() => _MarketplaceMenuScreenState();
}

class _MarketplaceMenuScreenState extends State<MarketplaceMenuScreen> {
  late List<MarketplaceMenuItemData> _menuItemsSwap;
  late List<MarketplaceMenuItemData> _menuItemsBuy;
  late List<MarketplaceMenuItemData> _menuItemsExchange;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _menuItemsSwap = [
      MarketplaceMenuItemData(
        iconSvg: 'assets/marketplace/sideshift.svg',
        title: AppLocalizations.of(context)!.swapMenuItemSideswapTitle,
        description:
            AppLocalizations.of(context)!.swapMenuItemSideswapDescription,
        buttonLabel:
            AppLocalizations.of(context)!.swapMenuItemSideswapButtonLabel,
        onTap: () => Navigator.of(context).pushNamed(SideshiftScreen.routeName),
      ),
      MarketplaceMenuItemData(
        iconSvg: 'assets/marketplace/sideswap.svg',
        title: AppLocalizations.of(context)!.swapMenuItemSideswapTitle,
        description:
            AppLocalizations.of(context)!.swapMenuItemSideswapDescription,
        buttonLabel:
            AppLocalizations.of(context)!.swapMenuItemSideswapButtonLabel,
        onTap: () => Navigator.of(context).pushNamed(SwapScreen.routeName),
      ),
    ];
    _menuItemsBuy = [
      MarketplaceMenuItemData(
        iconSvg: 'assets/marketplace/swan.svg',
        title: AppLocalizations.of(context)!.swapMenuItemSwanTitle,
        description: AppLocalizations.of(context)!.swapMenuItemSwanDescription,
        buttonLabel: AppLocalizations.of(context)!.swapMenuItemSwanButtonLabel,
        onTap: () {},
      ),
    ];
    _menuItemsExchange = [
      MarketplaceMenuItemData(
        iconSvg: 'assets/marketplace/bitfinex.svg',
        title: AppLocalizations.of(context)!.swapMenuItemBitfinexTitle,
        description:
            AppLocalizations.of(context)!.swapMenuItemBitfinexDescription,
        onTap: () => Navigator.of(context).pushNamed(
          WebViewScreen.routeName,
          arguments: Tuple2(
            AppLocalizations.of(context)!.swapMenuItemBitfinexTitle,
            bitfinexUrl,
          ),
        ),
      ),
      MarketplaceMenuItemData(
        iconPng: 'assets/marketplace/btse.png',
        title: AppLocalizations.of(context)!.swapMenuItemBtseTitle,
        description: AppLocalizations.of(context)!.swapMenuItemBtseDescription,
        onTap: () => Navigator.of(context).pushNamed(
          WebViewScreen.routeName,
          arguments: Tuple2(
            AppLocalizations.of(context)!.swapMenuItemBtseTitle,
            btseUrl,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as MarketplaceArguments;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(args.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (args.marketplaceType == Marketplace.swap)
              MarketplaceMenu(items: _menuItemsSwap),
            if (args.marketplaceType == Marketplace.buy)
              MarketplaceMenu(items: _menuItemsBuy),
            if (args.marketplaceType == Marketplace.exchange) ...[
              Padding(
                padding: EdgeInsets.only(bottom: 22.h),
                child: Text(
                  AppLocalizations.of(context)!
                      .marketplaceMenuExchangeDescription,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 21.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              MarketplaceMenu(items: _menuItemsExchange),
            ]
          ],
        ),
      ),
    );
  }
}

import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/data/provider/exchange/exchange_provider.dart';
import 'package:aqua/data/provider/marketplace/marketplace_provider.dart';
import 'package:aqua/screens/marketplace/marketplace_menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Marketplace { swap, buy, exchange }

class MarketplaceTab extends StatelessWidget {
  const MarketplaceTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: exchangeShowLoadingDialogProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context)
                  .popUntil((route) => route is! RawDialogRoute);
              showLoadingDialog(context, null);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: exchangeShowErrorDialogProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context)
                  .popUntil((route) => route is! RawDialogRoute);
              showDialog<CustomAlertDialog>(
                context: context,
                builder: (BuildContext context) =>
                    CustomAlertDialog.unableToOpenLink(context: context),
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: exchangePopDialogsProvider,
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context)
                  .popUntil((route) => route is! RawDialogRoute);
            }
          },
          child: Container(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 62.h),
              Text(
                AppLocalizations.of(context)!.homeTabMarketplaceTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 33.h),
              _MarketplaceMenuItem(
                title: AppLocalizations.of(context)!.marketplaceMenuTitleSwap,
                description: AppLocalizations.of(context)!
                    .marketplaceMenuDescriptionSwap,
                textColor: const Color(0xFF13CDC2),
                primaryColor: const Color(0xFF078CC2),
                secondaryColor: const Color(0xFF35D6D6),
                iconSvg: 'assets/marketplace_swap.svg',
                onTap: () => context
                    .read(marketplaceProvider)
                    .selectMenuItem(MarketplaceArguments(
                      Marketplace.swap,
                      AppLocalizations.of(context)!.marketplaceMenuTitleSwap,
                    )),
              ),
              SizedBox(height: 14.h),
              _MarketplaceMenuItem(
                title: AppLocalizations.of(context)!.marketplaceMenuTitleBuy,
                description:
                    AppLocalizations.of(context)!.marketplaceMenuDescriptionBuy,
                textColor: const Color(0xFFFFA800),
                primaryColor: const Color(0xFFB77800),
                secondaryColor: const Color(0xFFFFD300),
                iconSvg: 'assets/marketplace_buy.svg',
                onTap: () => context
                    .read(marketplaceProvider)
                    .selectMenuItem(MarketplaceArguments(
                      Marketplace.buy,
                      AppLocalizations.of(context)!.marketplaceMenuTitleBuy,
                    )),
              ),
              SizedBox(height: 14.h),
              _MarketplaceMenuItem(
                title:
                    AppLocalizations.of(context)!.marketplaceMenuTitleExchange,
                description: AppLocalizations.of(context)!
                    .marketplaceMenuDescriptionExchange,
                textColor: const Color(0xFF9747FF),
                primaryColor: const Color(0xFF531EDC),
                secondaryColor: const Color(0xFF9747FF),
                iconSvg: 'assets/marketplace_exchange.svg',
                onTap: () => context
                    .read(marketplaceProvider)
                    .selectMenuItem(MarketplaceArguments(
                      Marketplace.exchange,
                      AppLocalizations.of(context)!
                          .marketplaceMenuTitleExchange,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MarketplaceMenuItem extends StatelessWidget {
  const _MarketplaceMenuItem({
    Key? key,
    required this.title,
    required this.description,
    required this.iconSvg,
    required this.textColor,
    required this.primaryColor,
    required this.secondaryColor,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String description;
  final String iconSvg;
  final Color textColor;
  final Color primaryColor;
  final Color secondaryColor;
  final VoidCallback onTap;

  LinearGradient get _gradient => LinearGradient(
        colors: [primaryColor, secondaryColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(12.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          height: 110.h,
          padding: EdgeInsets.all(1.r),
          decoration: BoxDecoration(
            gradient: _gradient,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 21.sp,
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        description,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontSize: 12.sp,
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 36.w),
                _GradientViewWrapper(
                  gradient: _gradient,
                  child: SvgPicture.asset(
                    iconSvg,
                    width: 28.r,
                    height: 28.r,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// A wrapper widget that adds a gradient overlay to provided child widget.
//
// Ideally, we should not need this view but there is a bug in the flutter_svg
// package due to which gradients are not being processed.
//
// TODO: Remove this once gradients are fixed in flutter_svg package
class _GradientViewWrapper extends StatelessWidget {
  const _GradientViewWrapper({
    Key? key,
    required this.child,
    required this.gradient,
  }) : super(key: key);

  final Widget child;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: child,
    );
  }
}

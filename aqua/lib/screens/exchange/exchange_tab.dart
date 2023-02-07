import 'package:aqua/screens/exchange/bitcoin_reserve/bitcoin_reserve_screen.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_screen.dart';
import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/loading_dialog.dart';
import 'package:aqua/data/provider/exchange/exchange_provider.dart';
import 'package:aqua/screens/exchange/swap/swap_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExchangeTab extends StatelessWidget {
  const ExchangeTab({Key? key}) : super(key: key);

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
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.exchangeTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              const Expanded(
                child: _ExchangeBuyTab(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ExchangeBuyTab extends StatelessWidget {
  const _ExchangeBuyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 32.h),
      children: [
        // SideSwap
        ExchangeMenuItem(
          onTap: () => Navigator.of(context).pushNamed(SwapScreen.routeName),
          title: AppLocalizations.of(context)!.exchangeSwapCoins,
          buttonLabel: AppLocalizations.of(context)!.exchangeSwapButton,
          background: Positioned(
            left: 102.w,
            top: -74.h,
            child: SizedBox(
              width: 227.w,
              height: 219.h,
              child: SvgPicture.asset(
                'assets/swap_background.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          foreground: Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: SvgPicture.asset(
                    'assets/asset_icons/LBTC.svg',
                    width: 16.78.w,
                    height: 20.9.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: SvgPicture.asset(
                    'assets/asset_icons/USDt.svg',
                    width: 16.78.w,
                    height: 20.9.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: SvgPicture.asset(
                    'assets/asset_icons/EURx.svg',
                    width: 16.78.w,
                    height: 20.9.h,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // SideShift
        ExchangeMenuItem(
          onTap: () =>
              Navigator.of(context).pushNamed(SideshiftScreen.routeName),
          title: AppLocalizations.of(context)!.exchangeSideShift,
          description:
              AppLocalizations.of(context)!.exchangeSideShiftCrossChainSwaps,
          buttonLabel: AppLocalizations.of(context)!.exchangeSideShiftButton,
        ),
        SizedBox(height: 12.h),
        // Bitcoin Reserve
        ExchangeMenuItem(
          onTap: () =>
              Navigator.of(context).pushNamed(BitcoinReserveScreen.routeName),
          title: AppLocalizations.of(context)!.exchangeBitcoinreserve,
          description:
              AppLocalizations.of(context)!.exchangeBitcoinreserveDescription,
          buttonLabel:
              AppLocalizations.of(context)!.exchangeBitcoinreserveButton,
        ),
        SizedBox(height: 12.h),
        // HodlHodl
        ExchangeMenuItem(
          onTap: () {},
          title: AppLocalizations.of(context)!.exchangeHodlHodl,
          description:
              AppLocalizations.of(context)!.exchangeHodlHodlDescription,
          buttonLabel: AppLocalizations.of(context)!.exchangeHodlHodlButton,
        ),
      ],
    );
  }
}

class ExchangeMenuItem extends StatelessWidget {
  const ExchangeMenuItem({
    Key? key,
    this.title,
    this.description,
    this.buttonLabel,
    this.background,
    this.foreground,
    this.onTap,
  }) : super(key: key);

  final String? title;
  final String? description;
  final String? buttonLabel;
  final Widget? background;
  final Widget? foreground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.onSecondary,
      borderRadius: BorderRadius.circular(18.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(18.r),
        onTap: onTap,
        child: SizedBox(
          height: 112.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              background ?? const SizedBox.shrink(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title ?? '',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          foreground ??
                              Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Text(
                                  description ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                        fontSize: 13.sp,
                                      ),
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.w),
                    height: 40.h,
                    width: 80.w,
                    child: ElevatedButton(
                      onPressed: onTap,
                      child: Text(buttonLabel ?? ''),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

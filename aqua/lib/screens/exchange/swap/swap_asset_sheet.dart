import 'package:aqua/data/provider/conversion_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:aqua/screens/exchange/sideshift/input_view.dart';
import 'package:aqua/screens/exchange/swap/swap_asset_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

const usdteName = '(USDT.e)';

final queryProvider = StateProvider<String>((ref) => '');

class SwapAssetSheet extends StatelessWidget {
  const SwapAssetSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 8.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Title
              Text(
                AppLocalizations.of(context)!.exchangeSwapSelectAssetTitle,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
              ),
              // Close button
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  iconSize: 24.h,
                  visualDensity: VisualDensity.compact,
                  splashRadius: 16.h,
                  padding: EdgeInsets.only(left: 18.w, right: 18.w),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
          // Search
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 18.w, right: 18.w),
            child: TextInputView(
              inputFormatters: const [],
              keyboardType: TextInputType.emailAddress,
              hintText: AppLocalizations.of(context)!
                  .exchangeSwapSelectAssetSearchHint,
              leading: Icon(
                CupertinoIcons.search,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              onChanged: (s) => context.read(queryProvider).state = s,
            ),
          ),
          const SwapAssetSheetList(),
        ],
      ),
    );
  }
}

class SwapAssetSheetList extends ConsumerWidget {
  const SwapAssetSheetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final query = watch(queryProvider).state.toLowerCase();
    final items = watch(sideswapAssetsProvider);
    final assetList = items.where((e) {
      return e.name.toLowerCase().contains(query) ||
          e.ticker.toLowerCase().contains(query);
    }).toList();

    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 32.h, left: 12.w, right: 12.w),
      itemCount: assetList.length,
      separatorBuilder: (_, __) => Divider(
        color: Theme.of(context).colorScheme.primaryContainer,
        height: 1,
        thickness: 1,
      ),
      itemBuilder: (_, index) {
        final asset = assetList[index];
        return FutureBuilder<String>(
          future: context
              .read(formatterProvider)
              .formatAssetAmountFromAsset(asset: asset),
          initialData: '',
          builder: (context, snapshot) => Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
            child: InkWell(
              onTap: () => Navigator.of(context).pop(asset),
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
              child: Container(
                height: 74.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  children: [
                    // Icon
                    SwapAssetIcon(
                      assetId: asset.assetId,
                      size: 28.r,
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Name
                          Text(
                            asset.name.replaceAll(usdteName, '').trim(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(height: 4.h),
                          // Ticker
                          Text(
                            asset.ticker,
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                  fontSize: 14.sp,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Balance
                        Text(
                          snapshot.data.toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(height: 4.h),
                        // USD Equivalent
                        Consumer(
                          builder: (context, watch, _) {
                            final tuple = Tuple2(asset, asset.amount);
                            final conversion = watch(conversionProvider(tuple));

                            return Text(
                              conversion ?? '-',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.copyWith(
                                    fontSize: 14.sp,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

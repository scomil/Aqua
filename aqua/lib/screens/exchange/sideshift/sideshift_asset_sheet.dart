import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/conversion_provider.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/asset_item_view.dart';
import 'package:aqua/screens/exchange/sideshift/input_view.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_asset_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

class SideshiftAssetSheet extends StatefulWidget {
  const SideshiftAssetSheet({
    Key? key,
    required this.controller,
    required this.currentAsset,
  }) : super(key: key);

  final ScrollController controller;
  final SideshiftAsset currentAsset;

  @override
  State<SideshiftAssetSheet> createState() => _SideshiftAssetSheetState();
}

class _SideshiftAssetSheetState extends State<SideshiftAssetSheet>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late List<String> _tabLabels;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabLabels = [
      AppLocalizations.of(context)!.exchangeSideshiftAssetSheetInternalTitle,
      AppLocalizations.of(context)!.exchangeSideshiftAssetSheetExternalTitle,
    ];
    final isExternalAsset =
        context.read(isAssetExternalProvider(widget.currentAsset));
    final initialIndex = isExternalAsset ? 1 : 0;
    _tabController = TabController(
      initialIndex: initialIndex,
      length: _tabLabels.length,
      vsync: this,
    );
    context.read(sideShiftScreenProvider).onTabChanged(initialIndex);
    _tabController.addListener(() => context
        .read(sideShiftScreenProvider)
        .onTabChanged(_tabController.index));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 4.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Title
              Text(
                AppLocalizations.of(context)!.exchangeSideshiftAssetSheetTitle,
                style: Theme.of(context).textTheme.bodyLarge,
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
                  onPressed: () {
                    context.read(sideShiftScreenProvider).onQueryChanged('');
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
          // Search
          Container(
            margin: EdgeInsets.only(top: 8.h, left: 18.w, right: 18.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.h),
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 1.h,
              ),
            ),
            child: TextInputView(
              inputFormatters: const [],
              filled: false,
              keyboardType: TextInputType.text,
              hintText: AppLocalizations.of(context)!
                  .exchangeSwapSelectAssetSearchHint,
              leading: Icon(
                CupertinoIcons.search,
                color: Theme.of(context).colorScheme.primary,
              ),
              onChanged: (text) =>
                  context.read(sideShiftScreenProvider).onQueryChanged(text),
            ),
          ),
          // Wallet type tab bar
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.w),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              padding: EdgeInsets.only(top: 16.h),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: UnderlineTabIndicator(
                insets: EdgeInsets.symmetric(vertical: 4.h),
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              indicatorPadding: EdgeInsets.only(right: 46.w),
              labelPadding: EdgeInsets.zero,
              unselectedLabelColor: SideshiftColors.taupeGray,
              labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
              tabs: List.generate(
                _tabLabels.length,
                (index) => Container(
                  margin: EdgeInsets.only(right: 46.w),
                  child: Tab(text: _tabLabels[index]),
                ),
              ),
            ),
          ),
          // Assets list
          _SideshiftAssetSheetListView(
            controller: widget.controller,
            currentAsset: widget.currentAsset,
          ),
        ],
      ),
    );
  }
}

class _SideshiftAssetSheetListView extends ConsumerWidget {
  const _SideshiftAssetSheetListView({
    Key? key,
    required this.controller,
    required this.currentAsset,
  }) : super(key: key);

  final ScrollController controller;
  final SideshiftAsset currentAsset;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final items = watch(assetSelectorListProvider);
    return Expanded(
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        controller: controller,
        itemCount: items.length,
        padding: EdgeInsets.only(top: 34.h),
        separatorBuilder: (_, __) => Divider(
          color: SideshiftColors.blackCoffee,
          height: 1,
          thickness: 1,
          indent: 18.w,
          endIndent: 18.w,
        ),
        itemBuilder: (_, index) {
          final item = items[index];
          return _SideshiftAssetSheetListItem(
            asset: item,
            isSelected: item.id == currentAsset.id,
          );
        },
      ),
    );
  }
}

class _SideshiftAssetSheetListItem extends ConsumerWidget {
  const _SideshiftAssetSheetListItem({
    Key? key,
    required this.asset,
    required this.isSelected,
  }) : super(key: key);

  final SideshiftAsset asset;
  final bool isSelected;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final gdkAsset = watch(gdkAssetProvider(asset)).data?.value;
    final balance = watch(walletBalanceProviderStr(asset)).data?.value;

    return Material(
      color: isSelected ? SideshiftColors.blackCoffee : Colors.transparent,
      child: InkWell(
        onTap: () => Navigator.of(context).pop(asset),
        child: Container(
          height: 74.h,
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(children: [
            // Icon
            SideshiftAssetIcon(
              assetId: asset.id,
              size: 28.r,
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    // Name
                    Text(
                      asset.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    // Chain
                    SizedBox(width: 4.w),
                    if (asset.name.toLowerCase() != asset.network.toLowerCase())
                      ChainNameView(chainName: asset.network),
                  ]),
                  SizedBox(height: 4.h),
                  // Ticker
                  Text(
                    asset.coin,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontSize: 14.sp,
                          color: Theme.of(context).colorScheme.onSurface,
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
                  balance == '0' ? '' : balance ?? '',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 4.h),
                // USD Equivalent
                Consumer(builder: (context, watch, _) {
                  final conversion = gdkAsset != null
                      ? () {
                          final tuple = Tuple2(gdkAsset, gdkAsset.amount);
                          return watch(conversionProvider(tuple));
                        }.call()
                      : '';

                  return Text(
                    conversion ?? '-',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontSize: 14.sp,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  );
                }),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:aqua/common/widgets/aqua_text_field.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/asset_list/asset_list_ui_model.dart';
import 'package:aqua/data/provider/asset_list/asset_list_provider.dart';
import 'package:aqua/data/provider/conversion_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class AssetList extends StatefulWidget {
  const AssetList({
    Key? key,
    required this.arguments,
    required this.onAssetSelected,
    required this.onAssetsReload,
    this.searchEnabled,
  }) : super(key: key);

  final Object arguments;
  final ValueChanged<Asset> onAssetSelected;
  final VoidCallback onAssetsReload;
  final bool? searchEnabled;

  @override
  State<AssetList> createState() => _AssetListState();
}

class _AssetListState extends State<AssetList> with TickerProviderStateMixin {
  late TabController _tabController;
  late List<String> _tabLabels;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabLabels = [AppLocalizations.of(context)!.tabAssets];
    _tabController = TabController(length: _tabLabels.length, vsync: this);
    _tabController.addListener(() => context
        .read(assetListProvider(widget.arguments))
        .onTabSelected(_tabController.index));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<Asset?>(
          provider: assetListItemSelectedProvider(widget.arguments),
          onChange: (context, asset) {
            if (asset != null) {
              widget.onAssetSelected(asset);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: assetListReloadAssetsProvider(widget.arguments),
          onChange: (context, action) {
            if (action != null) {
              widget.onAssetsReload();
            }
          },
          child: Container(),
        ),
        Column(
          children: [
            widget.searchEnabled ?? false
                ? Padding(
                    padding: EdgeInsets.only(bottom: 28.h),
                    child: AquaTextField.defaultStyled(
                      context: context,
                      hintText:
                          AppLocalizations.of(context)!.sendPromptAssetsHint,
                      contentPadding: const EdgeInsets.all(0.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 16.w),
                        child: SvgPicture.asset(
                          'assets/search.svg',
                          color: Theme.of(context).colorScheme.onBackground,
                          width: 34.w,
                          height: 34.h,
                        ),
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxWidth: 48.w, maxHeight: 24.h),
                      onChanged: (value) {},
                    ),
                  )
                : Container(),
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                controller: _tabController,
                unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  insets: EdgeInsets.symmetric(vertical: 8.h),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.only(right: 46.w),
                labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                padding: EdgeInsets.zero,
                tabs: _tabLabels
                    .map((e) => Container(
                          margin: EdgeInsets.only(right: 46.w),
                          child: Tab(text: e),
                        ))
                    .toList(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Consumer(builder: (context, watch, _) {
                  final value = watch(assetListDataProvider(widget.arguments));
                  return value.map(
                    data: (data) => ListView(
                      padding: EdgeInsets.only(top: 16.h),
                      children: data.value.map((asset) {
                        return Stack(
                          children: [
                            Consumer(builder: (context, watch, _) {
                              final tuple =
                                  Tuple3(widget.arguments, context, asset);
                              final uiModel =
                                  watch(assetListItemUiModelProvider(tuple));
                              return uiModel != null
                                  ? _AssetListAssetTile(uiModel: uiModel)
                                  : Container();
                            }),
                            Container(
                              padding: EdgeInsets.only(bottom: 18.h),
                              height: 74.h,
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Consumer(builder: (context, watch, _) {
                                  final tuple = Tuple2(asset, asset.amount);
                                  final conversion =
                                      watch(conversionProvider(tuple));
                                  return Text(
                                    conversion ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          fontSize: 14.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                        ),
                                  );
                                }),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                    loading: (_) => const _AssetListLoadingWidget(),
                    error: (error) => Consumer(builder: (context, watch, _) {
                      final uiModel = watch(assetListErrorUiModelProvider(
                          Tuple2(widget.arguments, context)));
                      return uiModel != null
                          ? _AssetListErrorWidget(uiModel: uiModel)
                          : Container();
                    }),
                  );
                }),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AssetListAssetTile extends StatelessWidget {
  const _AssetListAssetTile({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetListAssetItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: uiModel.onTap,
      child: SizedBox(
        height: 74.h,
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 28.r,
                  height: 28.r,
                  child: Image(
                    image: ResizeImage(
                      MemoryImage(uiModel.icon),
                      width: 64,
                      height: 64,
                    ),
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 22.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                uiModel.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                              Text(
                                uiModel.amount,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                uiModel.ticker,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      fontSize: 14.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Divider(
              height: 1,
              thickness: 1,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}

class _AssetListNftTile extends StatelessWidget {
  const _AssetListNftTile({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetListNftItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: SizedBox(
        height: 75.h,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: 28.w,
            height: 28.h,
            child: const Placeholder(),
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Text(
                    uiModel.title,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: Text(
                  uiModel.assets,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.nftsSeeGroup,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            height: 1.38,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w, top: 2.h),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 10.w,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class _AssetListLoadingWidget extends StatelessWidget {
  const _AssetListLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
    );
  }
}

class _AssetListErrorWidget extends StatelessWidget {
  const _AssetListErrorWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetListErrorUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GenericErrorWidget(
        buttonTitle: uiModel.buttonTitle,
        buttonAction: uiModel.buttonAction,
      ),
    );
  }
}

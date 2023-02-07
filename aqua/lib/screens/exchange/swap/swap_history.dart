import 'package:aqua/data/provider/asset_list/asset_list_provider.dart';
import 'package:aqua/data/provider/swap/swap_history_provider.dart';
import 'package:aqua/data/provider/wallet_tab_provider.dart';
import 'package:aqua/screens/exchange/swap/swap_history_item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_item_ui_model.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_ui_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwapHistory extends ConsumerWidget {
  const SwapHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final args = watch(walletTabAssetsListArgumentsProvider);
    final assets = watch(assetListDataProvider(args!)).data?.value;
    if (assets == null) {
      return const _AssetTransactionsLoadingContent();
    }
    final asset = assets.firstWhere((e) => e.isLBTC);
    final tuple = Tuple2(asset, context);
    final uiModel = watch(assetTransactionsUiModelProvider(tuple));

    return Stack(children: [
      ProviderListener<Tuple2<Asset, GdkTransaction>?>(
        provider: assetTransactionsOnSelectedProvider(asset),
        onChange: (context, data) {
          if (data != null) {
            Navigator.of(context).pushNamed(
              SwapHistoryItemDetailsScreen.routeName,
              arguments: data,
            );
          }
        },
        child: Container(),
      ),
      Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppLocalizations.of(context)!.exchangeSwapHistory,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        SizedBox(height: 12.h),
        uiModel.map(
          success: (uiModel) => Expanded(
            child: _AssetTransactionsDataContent(
              arguments: tuple,
              uiModel: uiModel,
            ),
          ),
          loading: (_) => const _AssetTransactionsLoadingContent(),
          error: (_) => _AssetTransactionsEmptyWidget(),
        ),
      ]),
    ]);
  }
}

class _AssetTransactionsLoadingContent extends StatelessWidget {
  const _AssetTransactionsLoadingContent({Key? key}) : super(key: key);

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

class _AssetTransactionsDataContent extends ConsumerWidget {
  const _AssetTransactionsDataContent({
    Key? key,
    required this.arguments,
    required this.uiModel,
  }) : super(key: key);

  final Object? arguments;
  final AssetTransactionsSuccessUiModel uiModel;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final tuple = arguments as Tuple2<Asset, BuildContext>;
    final uiModel = watch(assetTransactionsListUiModelProvider(tuple));
    return uiModel.maybeMap(
      success: (_) => _AssetTransactionsListDataWidget(arguments: arguments),
      emptyLiquid: (_) => _AssetTransactionsEmptyWidget(),
      orElse: () => const _AssetTransactionsLoadingContent(),
    );
  }
}

class _AssetTransactionsEmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217.w,
      alignment: Alignment.center,
      child: Text(
        AppLocalizations.of(context)!.exchangeSwapHistoryEmpty,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }
}

class _AssetTransactionsListDataWidget extends ConsumerWidget {
  const _AssetTransactionsListDataWidget({
    Key? key,
    this.arguments,
  }) : super(key: key);
  final Object? arguments;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final tuple = arguments as Tuple2<Asset, BuildContext>;
    final items = watch(assetTransactionsItemUiModelsProvider(tuple))
        .whereType<AssetTransactionsDataItemUiModel>()
        .where((e) => e.gdkType == GdkTransactionTypeEnum.swap);
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: items.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) => _AssetTransactionsDataItemWidget(
        itemUiModel: items.elementAt(index),
      ),
    );
  }
}

class _AssetTransactionsDataItemWidget extends StatelessWidget {
  const _AssetTransactionsDataItemWidget({
    Key? key,
    required this.itemUiModel,
  }) : super(key: key);

  final AssetTransactionsDataItemUiModel itemUiModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
      child: InkWell(
        onTap: itemUiModel.onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(children: [
            SvgPicture.asset(
              itemUiModel.assetName,
              width: 30.w,
              height: 30.w,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(children: [
                Row(children: [
                  Text(
                    itemUiModel.createdAt,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  Expanded(
                    child: Text(
                      itemUiModel.cryptoAmount,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                          ),
                    ),
                  ),
                ]),
                SizedBox(height: 4.h),
                Row(children: [
                  Text(
                    itemUiModel.type,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 13.sp,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                  Expanded(
                    child: Text(
                      itemUiModel.fiat,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
                ]),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

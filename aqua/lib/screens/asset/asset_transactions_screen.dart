import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_item_ui_model.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_provider.dart';
import 'package:aqua/data/provider/asset_transactions/asset_transactions_ui_model.dart';
import 'package:aqua/data/provider/home/home_provider.dart';
import 'package:aqua/data/provider/marketplace/marketplace_provider.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_arguments.dart';
import 'package:aqua/data/provider/send_prompt/send_prompt_arguments.dart';
import 'package:aqua/screens/asset/asset_details_screen.dart';
import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:aqua/screens/marketplace/marketplace_menu_screen.dart';
import 'package:aqua/screens/marketplace/marketplace_tab.dart';
import 'package:aqua/screens/receive/receive_qr_code_screen.dart';
import 'package:aqua/screens/send/send_prompt_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class AssetTransactionsScreen extends StatelessWidget {
  static const routeName = '/assetTransactionsScreen';

  const AssetTransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: assetTransactionsPopProvider(arguments),
          onChange: (context, action) {
            if (action != null) {
              Navigator.of(context).pop();
            }
          },
          child: Container(),
        ),
        ProviderListener<Tuple2<Asset, GdkTransaction>?>(
          provider: assetTransactionsOnSelectedProvider(arguments),
          onChange: (context, data) {
            if (data != null) {
              Navigator.of(context).pushNamed(
                AssetTransactionDetailsScreen.routeName,
                arguments: data,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<ReceiveQrCodeArguments?>(
          provider: assetTransactionsNavigateToReceiveProvider(arguments),
          onChange: (context, arguments) {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                ReceiveQrCodeScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<SendPromptArguments?>(
          provider: assetTransactionsNavigateToSendPromptProvider(arguments),
          onChange: (context, arguments) {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                SendPromptScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        Consumer(builder: (context, watch, _) {
          final tuple = Tuple2(arguments, context);
          final uiModel = watch(assetTransactionsUiModelProvider(tuple));
          return uiModel.map(
            success: (uiModel) =>
                _AssetTransactionsDataContent(uiModel: uiModel),
            loading: (_) => const AssetTransactionsLoadingContent(),
            error: (uiModel) =>
                _AssetTransactionsErrorContent(uiModel: uiModel),
          );
        }),
      ],
    );
  }
}

class _AssetTransactionsErrorContent extends StatelessWidget {
  const _AssetTransactionsErrorContent({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionsErrorUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: GenericErrorWidget(
            description: uiModel.description,
            buttonTitle: uiModel.buttonTitle,
            buttonAction: uiModel.buttonAction,
          ),
        ),
      ),
    );
  }
}

class AssetTransactionsLoadingContent extends StatelessWidget {
  const AssetTransactionsLoadingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}

class _AssetTransactionsDataContent extends StatelessWidget {
  const _AssetTransactionsDataContent({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionsSuccessUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 28.w,
              height: 28.w,
              child: Image(
                image: ResizeImage(
                  MemoryImage(uiModel.icon),
                  width: 64,
                  height: 64,
                ),
                filterQuality: FilterQuality.high,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                uiModel.titleText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outlined),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AssetDetailsScreen.routeName,
                arguments: arguments,
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 12.h,
            bottom: 32.h,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 24.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Theme.of(context).colorScheme.primaryContainer),
                  ),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        uiModel.cryptoAmountText,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 27.sp,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          uiModel.cryptoCurrencyText,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                fontSize: 27.sp,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Consumer(builder: (context, watch, _) {
                    final conversion =
                        watch(assetTransactionsConversionProvider(arguments));
                    return Text(
                      conversion ?? '',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 14.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    );
                  }),
                ]),
              ),
              Expanded(
                child: Consumer(builder: (context, watch, _) {
                  final tuple = Tuple2(arguments, context);
                  final uiModel =
                      watch(assetTransactionsListUiModelProvider(tuple));
                  return uiModel.map(
                    success: (_) => const _AssetTransactionsListDataWidget(),
                    loading: (_) => const _AssetTransactionsListLoadingWidget(),
                    error: (uiModel) => _AssetTransactionsListErrorWidget(
                      uiModel: uiModel,
                    ),
                    emptyBitcoin: (_) =>
                        const _AssetTransactionsEmptyBitcoinListWidget(),
                    emptyLiquid: (uiModel) =>
                        _AssetTransactionsEmptyLiquidListWidget(
                      uiModel: uiModel,
                    ),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(children: [
                  Expanded(
                    child: AquaElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pop();
                        context.read(homeProvider).selectTab(1);
                        final args = MarketplaceArguments(
                          Marketplace.buy,
                          AppLocalizations.of(context)!.marketplaceMenuTitleBuy,
                        );
                        context.read(marketplaceProvider).selectMenuItem(args);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        primary: Theme.of(context).colorScheme.surface,
                        onPrimary:
                            Theme.of(context).colorScheme.secondaryContainer,
                        textStyle: Theme.of(context).textTheme.button?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!
                            .assetTransactionsGetAssetButton(
                                uiModel.cryptoCurrencyText),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: AquaElevatedButton(
                      onPressed: () async {
                        context
                            .read(assetTransactionsProvider(arguments))
                            .navigateToReceive();
                      },
                      child: Text(
                        AppLocalizations.of(context)!
                            .assetTransactionsReceiveButton,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: AquaElevatedButton(
                      onPressed: () {
                        context
                            .read(assetTransactionsProvider(arguments))
                            .navigateToSendPrompt();
                      },
                      child: Text(
                        AppLocalizations.of(context)!
                            .assetTransactionsSendButton,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _AssetTransactionsListLoadingWidget extends StatelessWidget {
  const _AssetTransactionsListLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

class _AssetTransactionsListErrorWidget extends StatelessWidget {
  const _AssetTransactionsListErrorWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionsErrorListUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
      child: GenericErrorWidget(
        description: uiModel.description,
        buttonTitle: uiModel.buttonTitle,
        buttonAction: uiModel.buttonAction,
      ),
    );
  }
}

class _AssetTransactionsListDataWidget extends StatelessWidget {
  const _AssetTransactionsListDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Consumer(builder: (context, watch, _) {
      final tuple = Tuple2(arguments, context);
      final itemUiModels = watch(assetTransactionsItemUiModelsProvider(tuple));
      return Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
        child: ListView.builder(
          itemCount: itemUiModels.length,
          itemBuilder: (BuildContext context, int index) {
            final itemUiModel = itemUiModels[index];
            return itemUiModel.map(
              data: (itemUiModel) =>
                  _AssetTransactionsDataItemWidget(itemUiModel: itemUiModel),
              loading: (_) => const _AssetTransactionsLoadingItemWidget(),
              error: (_) => const _AssetTransactionsErrorItemWidget(),
            );
          },
        ),
      );
    });
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
          bottom:
              BorderSide(color: Theme.of(context).colorScheme.primaryContainer),
        ),
      ),
      child: InkWell(
        onTap: itemUiModel.onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              SvgPicture.asset(
                itemUiModel.assetName,
                width: 30.w,
                height: 30.w,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            itemUiModel.createdAt,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                          Expanded(
                            child: Text(
                              itemUiModel.cryptoAmount,
                              textAlign: TextAlign.end,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Row(
                          children: [
                            Text(
                              itemUiModel.type,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontSize: 13.sp,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                  ),
                            ),
                            Expanded(
                              child: Text(
                                itemUiModel.fiat,
                                textAlign: TextAlign.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      fontSize: 13.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AssetTransactionsEmptyBitcoinListWidget extends StatelessWidget {
  const _AssetTransactionsEmptyBitcoinListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Text(
          AppLocalizations.of(context)!.assetTransactionsItemBitcoinEmpty,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 14.sp,
                height: 1.3,
              ),
        ),
      ),
    );
  }
}

class _AssetTransactionsEmptyLiquidListWidget extends StatelessWidget {
  const _AssetTransactionsEmptyLiquidListWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionsEmptyLiquidListUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Text(
          uiModel.description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 14.sp,
                height: 1.4,
              ),
        ),
      ),
    );
  }
}

class _AssetTransactionsLoadingItemWidget extends StatelessWidget {
  const _AssetTransactionsLoadingItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

class _AssetTransactionsErrorItemWidget extends StatelessWidget {
  const _AssetTransactionsErrorItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.assetTransactionsItemError,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );
  }
}

import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/conversion_provider.dart';
import 'package:aqua/data/provider/receive_assets_provider.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_arguments.dart';
import 'package:aqua/screens/exchange/sideshift/input_view.dart';
import 'package:aqua/screens/exchange/sideshift/progress_view.dart';
import 'package:aqua/screens/receive/receive_qr_code_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class ReceiveChooseAssetScreen extends StatelessWidget {
  static const routeName = '/receiveChooseAssetScreen';

  const ReceiveChooseAssetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<ReceiveQrCodeArguments?>(
      provider: receiveAssetsOnSelectedProvider,
      onChange: (context, arguments) {
        if (arguments != null) {
          Navigator.of(context).pushNamedAndRemoveUntil(
              ReceiveQrCodeScreen.routeName, (route) => route.isFirst,
              arguments: arguments);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          titleSpacing: 0,
          title: Row(
            children: [
              SizedBox(width: 24.w),
              const Spacer(),
              Text(AppLocalizations.of(context)!.receiveChooseAssetTitle),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  visualDensity: VisualDensity.compact,
                  splashRadius: 16.h,
                  iconSize: 24.h,
                  icon: const Icon(Icons.close),
                  onPressed: () =>
                      Navigator.of(context).popUntil((route) => route.isFirst),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(children: [
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
                onChanged: (s) => context.read(receiveAssetsProvider).search(s),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Consumer(builder: (context, watch, _) {
                  final value = watch(receiveAssetItemsProvider);
                  return value.maybeMap(
                    data: (data) => data.value.isEmpty
                        ? const _EmptyView()
                        : _AssetListView(data),
                    orElse: () => const Center(child: ProgressBar()),
                  );
                }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class _AssetListView extends StatelessWidget {
  const _AssetListView(
    this.data, {
    Key? key,
  }) : super(key: key);

  final AsyncData<List<Asset>> data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 16.h),
      children: data.value
          .map((asset) => Stack(children: [
                Consumer(builder: (context, watch, _) {
                  final uiModel = watch(assetListItemUiModelProvider(asset));
                  return uiModel != null
                      ? _AssetListItem(uiModel: uiModel)
                      : const SizedBox.shrink();
                }),
                Container(
                  height: 74.h,
                  padding: EdgeInsets.only(bottom: 18.h),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Consumer(builder: (context, watch, _) {
                      final tuple = Tuple2(asset, asset.amount);
                      final conversion = watch(conversionProvider(tuple));

                      return Text(
                        conversion ?? '',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontSize: 14.sp,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      );
                    }),
                  ),
                ),
              ]))
          .toList(),
    );
  }
}

class _AssetListItem extends StatelessWidget {
  const _AssetListItem({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetListItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: uiModel.onTap,
      child: SizedBox(
        height: 74.h,
        child: Column(children: [
          const Spacer(),
          Row(children: [
            SizedBox.square(
              dimension: 28.r,
              child: Image(
                image: ResizeImage(
                  MemoryImage(uiModel.icon),
                  width: 64,
                  height: 64,
                ),
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 22.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            uiModel.name,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                        ),
                        Text(
                          uiModel.amount,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
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
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
          const Spacer(),
          Divider(
            height: 1,
            thickness: 1,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ]),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.receiveChooseAssetEmptyHeader,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          SizedBox(height: 16.h),
          Material(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(18.r),
            child: InkWell(
              onTap: () =>
                  context.read(receiveAssetsProvider).onGenericAssetSelected(),
              borderRadius: BorderRadius.circular(18.r),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 28.h),
                child: Row(children: [
                  Text(
                    AppLocalizations.of(context)!
                        .receiveChooseAssetAddAnyAssetLabel,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/qr.svg',
                    width: 18.r,
                    height: 18.r,
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

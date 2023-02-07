import 'package:aqua/common/widgets/custom_snackbar_widget.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/asset_details/asset_details_item_ui_model.dart';
import 'package:aqua/data/provider/asset_details/asset_details_provider.dart';
import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tuple/tuple.dart';

class AssetDetailsScreen extends StatelessWidget {
  static const routeName = '/assetDetailsScreen';

  const AssetDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints.tightForFinite(),
            onPressed: () => Navigator.of(context).pop(),
          ),
          SizedBox(width: 20.w),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.h,
                left: 24.w,
                right: 24.w,
                bottom: 24.h,
              ),
              child: Consumer(builder: (context, watch, _) {
                final itemUiModels = watch(assetDetailsItemUiModelsProvider(
                  Tuple2(ModalRoute.of(context)?.settings.arguments, context),
                ));
                return ListView.builder(
                  itemCount: itemUiModels.length,
                  itemBuilder: (BuildContext context, int index) {
                    return itemUiModels[index]?.map(
                          header: (uiModel) =>
                              _AssetDetailsHeaderItemWidget(uiModel: uiModel),
                          issuer: (uiModel) =>
                              _AssetDetailsIssuerItemWidget(uiModel: uiModel),
                          id: (uiModel) =>
                              _AssetDetailsIdItemWidget(uiModel: uiModel),
                          intro: (uiModel) =>
                              _AssetDetailsIntroItemWidget(uiModel: uiModel),
                          loading: (_) =>
                              const _AssetDetailsLoadingItemWidget(),
                          error: (uiModel) =>
                              _AssetDetailsErrorItemWidget(uiModel: uiModel),
                        ) ??
                        Container();
                  },
                );
              }),
            ),
            Consumer(builder: (context, watch, _) {
              final opacity = watch(assetDetailsIdCopiedSnackbarOpacityProvider(
                  ModalRoute.of(context)?.settings.arguments));
              return CustomSnackbarWidget(
                opacity: opacity,
                text:
                    AppLocalizations.of(context)!.assetDetailsIdCopiedSnackbar,
                color: Theme.of(context).colorScheme.secondary,
              );
            }),
            Consumer(builder: (context, watch, _) {
              final opacity = watch(
                  assetDetailsIdCopyFailedSnackbarOpacityProvider(
                      ModalRoute.of(context)?.settings.arguments));
              return CustomSnackbarWidget(
                opacity: opacity,
                text: AppLocalizations.of(context)!.copySnackbarError,
                color: Theme.of(context).colorScheme.error,
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _AssetDetailsHeaderItemWidget extends StatelessWidget {
  const _AssetDetailsHeaderItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetDetailsHeaderItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              uiModel.name,
              style: Theme.of(context).textTheme.headline4,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 15.h),
            Text(
              uiModel.ticker,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        )
      ],
    );
  }
}

class _AssetDetailsIssuerItemWidget extends StatelessWidget {
  const _AssetDetailsIssuerItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetDetailsIssuerItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 84.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.assetDetailsIssuer,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              uiModel.issuer,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 14.sp,
                    height: 1.3,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AssetDetailsIdItemWidget extends StatelessWidget {
  const _AssetDetailsIdItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetDetailsIdItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.assetDetailsId,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              uiModel.id,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 14.sp,
                    height: 1.3,
                  ),
            ),
          ),
          SizedBox(height: 16.h),
          DashedDivider(color: Theme.of(context).colorScheme.onBackground),
        ],
      ),
    );
  }
}

class _AssetDetailsIntroItemWidget extends StatelessWidget {
  const _AssetDetailsIntroItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetDetailsIntroItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.assetDetailsIntro,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              uiModel.intro,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 14.sp,
                    height: 1.3,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AssetDetailsLoadingItemWidget extends StatelessWidget {
  const _AssetDetailsLoadingItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 48.h),
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

class _AssetDetailsErrorItemWidget extends StatelessWidget {
  const _AssetDetailsErrorItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetDetailsErrorItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: GenericErrorWidget(
        buttonTitle: uiModel.buttonTitle,
        buttonAction: uiModel.buttonAction,
      ),
    );
  }
}

import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/custom_snackbar_widget.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_provider.dart';
import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_ui_model.dart';
import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class SwapHistoryItemDetailsScreen extends StatelessWidget {
  static const routeName = '/swapHistoryItemDetailsScreen';

  const SwapHistoryItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(children: [
      ProviderListener<Object?>(
        provider: assetTransactionDetailsShowLinkErrorAlertProvider(arguments),
        onChange: (context, action) {
          if (action != null) {
            showDialog<CustomAlertDialog>(
              context: context,
              builder: (BuildContext context) =>
                  CustomAlertDialog.unableToOpenLink(context: context),
            );
          }
        },
        child: Container(),
      ),
      Stack(children: [
        Consumer(builder: (context, watch, _) {
          final uiModel = watch(assetTransactionDetailsUiModelProvider(
              Tuple2(arguments, context)));
          return uiModel.map(
            success: (uiModel) => Scaffold(
              body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      color: Theme.of(context).colorScheme.onSecondary,
                      padding: EdgeInsets.only(top: 8.h),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ),
                    ClipPath(
                      clipper: PaperTearClipper(),
                      child: Container(
                        color: Theme.of(context).colorScheme.onSecondary,
                        padding: EdgeInsets.only(
                          top: 24.h,
                          left: 16.w,
                          right: 16.w,
                          bottom: 48.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: uiModel.items
                              .map((e) => e.maybeMap(
                                    header: (e) => _SwapDetailsHeaderItemWidget(
                                      uiModel: e,
                                    ),
                                    data: (e) => _SwapDetailsDataItemWidget(
                                      uiModel: e,
                                    ),
                                    divider: (_) => Container(
                                      padding: EdgeInsets.only(
                                          top: 10.h, bottom: 20.h),
                                      child: DashedDivider(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                      ),
                                    ),
                                    copyableData: (e) =>
                                        _SwapDetailsCopyableItemWidget(
                                      uiModel: e,
                                    ),
                                    orElse: () => const SizedBox.shrink(),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        right: 8.w,
                        top: 24.h,
                        bottom: 28.h,
                      ),
                      child: Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.secondary,
                          ),
                          onPressed: uiModel.explorerCallback,
                          child: Text(AppLocalizations.of(context)!
                              .assetTransactionDetailsExplorerButton),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            loading: (_) => Scaffold(
              appBar: AppBar(),
              body: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),
              ),
            ),
            error: (_) => Scaffold(
              appBar: AppBar(),
              body: Center(
                child: GenericErrorWidget(
                  buttonTitle: AppLocalizations.of(context)!
                      .assetTransactionDetailsErrorButton,
                  buttonAction: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          );
        }),
        Consumer(builder: (context, watch, _) {
          final opacity = watch(
              assetTransactionDetailsCopiedSnackbarOpacityProvider(arguments));
          return CustomSnackbarWidget(
            opacity: opacity,
            text: AppLocalizations.of(context)!
                .assetTransactionDetailsIdCopiedSnackbar,
            color: Theme.of(context).colorScheme.secondary,
            bottom: 80.h,
          );
        }),
        Consumer(builder: (context, watch, _) {
          final opacity = watch(
              assetTransactionDetailsCopyFailedSnackbarOpacityProvider(
                  arguments));
          return CustomSnackbarWidget(
            opacity: opacity,
            text: AppLocalizations.of(context)!.copySnackbarError,
            color: Theme.of(context).colorScheme.error,
            bottom: 80.h,
          );
        }),
      ]),
    ]);
  }
}

class _SwapDetailsHeaderItemWidget extends StatelessWidget {
  const _SwapDetailsHeaderItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionDetailsHeaderItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 56.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.assetTransactionDetailsSwapTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              uiModel.showPendingIndicator
                  ? Padding(
                      padding: EdgeInsets.only(left: 12.w, top: 3.h),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 12.w,
                          right: 12.w,
                          top: 4.h,
                          bottom: 6.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.r),
                          ),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!
                              .assetTransactionDetailsPending,
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    fontSize: 16.sp,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.h),
            child: Text(uiModel.date,
                style: Theme.of(context).textTheme.bodyText2),
          ),
        ],
      ),
    );
  }
}

class _SwapDetailsDataItemWidget extends StatelessWidget {
  const _SwapDetailsDataItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionDetailsDataItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Row(
        children: [
          Text(
            uiModel.title,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          Expanded(
            child: Text(
              uiModel.value,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}

class _SwapDetailsCopyableItemWidget extends StatelessWidget {
  const _SwapDetailsCopyableItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionDetailsCopyableItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          uiModel.title,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.h),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  uiModel.value,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                ),
                onPressed: uiModel.callback,
                child: SvgPicture.asset(
                  'assets/copy.svg',
                  width: 17.w,
                  height: 17.w,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PaperTearClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const count = 50;
    final smallLineLength = size.width / count;
    const smallLineHeight = 5;
    var path = Path();

    path.lineTo(0, size.height);
    for (int i = 1; i <= count; i++) {
      if (i % 2 == 0) {
        path.lineTo(smallLineLength * i, size.height);
      } else {
        path.lineTo(smallLineLength * i, size.height - smallLineHeight);
      }
    }
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

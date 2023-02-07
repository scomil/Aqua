import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/custom_snackbar_widget.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_provider.dart';
import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_ui_model.dart';
import 'package:aqua/screens/add_note/add_note_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class AssetTransactionDetailsScreen extends StatelessWidget {
  static const routeName = '/assetTransactionDetailsScreen';

  const AssetTransactionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider:
              assetTransactionDetailsShowLinkErrorAlertProvider(arguments),
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
        ProviderListener<Object?>(
          provider:
              assetTransactionDetailsShowAddNoteErrorAlertProvider(arguments),
          onChange: (context, action) {
            if (action != null) {
              showDialog<CustomAlertDialog>(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog(
                    title: AppLocalizations.of(context)!.unknownErrorTitle,
                    subtitle:
                        AppLocalizations.of(context)!.unknownErrorSubtitle,
                    controlWidgets: [
                      Expanded(
                        child: ElevatedButton(
                          child: Text(
                              AppLocalizations.of(context)!.unknownErrorButton),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: assetTransactionDetailsNavigateToAddNoteProvider(arguments),
          onChange: (context, action) async {
            if (action != null) {
              final note = await Navigator.of(context)
                  .pushNamed(AddNoteScreen.routeName);
              context
                  .read(assetTransactionDetailsProvider(arguments))
                  .handleNote(note);
            }
          },
          child: Container(),
        ),
        Stack(
          children: [
            Consumer(builder: (context, watch, _) {
              final uiModel = watch(assetTransactionDetailsUiModelProvider(
                  Tuple2(arguments, context)));
              return uiModel.map(
                success: (uiModel) {
                  return Scaffold(
                    body: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.close),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 31.h,
                              left: 16.w,
                              right: 16.w,
                              bottom: 71.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: uiModel.items
                                  .map((itemUiModel) => itemUiModel.map(
                                        header: (uiModel) =>
                                            _AssetTransactionDetailsHeaderItemWidget(
                                                uiModel: uiModel),
                                        data: (uiModel) =>
                                            _AssetTransactionDetailsDataItemWidget(
                                                uiModel: uiModel),
                                        notes: (uiModel) =>
                                            _AssetTransactionDetailsNotesItemWidget(
                                                uiModel: uiModel),
                                        divider: (_) => Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 20.h),
                                          child: DashedDivider(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground,
                                          ),
                                        ),
                                        copyableData: (uiModel) =>
                                            _AssetTransactionDetailsCopyableItemWidget(
                                                uiModel: uiModel),
                                      ))
                                  .toList(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.w,
                              right: 8.w,
                              bottom: 24.h,
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
                  );
                },
                loading: (_) {
                  return Scaffold(
                    appBar: AppBar(),
                    body: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).colorScheme.secondaryContainer,
                        ),
                      ),
                    ),
                  );
                },
                error: (_) {
                  return Scaffold(
                    appBar: AppBar(),
                    body: Center(
                      child: GenericErrorWidget(
                        buttonTitle: AppLocalizations.of(context)!
                            .assetTransactionDetailsErrorButton,
                        buttonAction: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                },
              );
            }),
            Consumer(builder: (context, watch, _) {
              final opacity = watch(
                  assetTransactionDetailsCopiedSnackbarOpacityProvider(
                      arguments));
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
          ],
        ),
      ],
    );
  }
}

class DashedDivider extends StatelessWidget {
  const DashedDivider({
    Key? key,
    this.height = 1,
    this.dashWidth = 5,
    this.color = Colors.black,
  }) : super(key: key);

  final double height;
  final double dashWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}

class _AssetTransactionDetailsHeaderItemWidget extends StatelessWidget {
  const _AssetTransactionDetailsHeaderItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionDetailsHeaderItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(uiModel.type, style: Theme.of(context).textTheme.headline4),
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

class _AssetTransactionDetailsDataItemWidget extends StatelessWidget {
  const _AssetTransactionDetailsDataItemWidget({
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

class _AssetTransactionDetailsNotesItemWidget extends StatelessWidget {
  const _AssetTransactionDetailsNotesItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionDetailsNotesItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: uiModel.onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            Text(
              AppLocalizations.of(context)!.assetTransactionDetailsMyNotes,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Icon(
                Icons.edit_outlined,
                size: 12.w,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Expanded(
              child: uiModel.notes?.isNotEmpty == true
                  ? Text(
                      uiModel.notes!,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  : Text(
                      AppLocalizations.of(context)!
                          .assetTransactionDetailsMyNotesPlaceholder,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AssetTransactionDetailsCopyableItemWidget extends StatelessWidget {
  const _AssetTransactionDetailsCopyableItemWidget({
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

import 'package:aqua/common/widgets/asset_tile.dart';
import 'package:aqua/common/widgets/custom_snackbar_widget.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_arguments.dart';
import 'package:aqua/data/provider/receive_qr_code/receive_qr_code_provider.dart';
import 'package:aqua/screens/add_note/add_note_screen.dart';
import 'package:aqua/screens/receive/receive_amount_screen.dart';
import 'package:aqua/screens/receive/receive_addresses_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

class ReceiveQrCodeScreen extends StatelessWidget {
  static const routeName = '/receiveQrCodeScreen';

  const ReceiveQrCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as ReceiveQrCodeArguments;
    return Stack(
      children: [
        ProviderListener<Object?>(
          provider: receiveQrCodeNavigateToAddNoteProvider(arguments),
          onChange: (context, action) async {
            if (action != null) {
              final note = await Navigator.of(context)
                  .pushNamed(AddNoteScreen.routeName);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: receiveQrCodeNavigateToAmountProvider(arguments),
          onChange: (context, amountArguments) async {
            if (amountArguments != null) {
              final result = await Navigator.of(context).pushNamed(
                ReceiveAmountScreen.routeName,
                arguments: amountArguments,
              );

              context
                  .read(receiveQrCodeProvider(arguments))
                  .handleAmountResult(result);
            }
          },
          child: Container(),
        ),
        ProviderListener<Object?>(
          provider: receiveQrCodeNavigateToHistoryProvider(arguments),
          onChange: (context, arguments) {
            if (arguments != null) {
              Navigator.of(context).pushNamed(
                ReceiveAddressesHistoryScreen.routeName,
                arguments: arguments,
              );
            }
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.receiveQrCodeTitle),
            leading: IconButton(
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            actions: [
              if (!arguments.isGenericAsset)
                Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => context
                          .read(receiveQrCodeProvider(arguments))
                          .navigateToHistory(),
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        padding: EdgeInsets.all(20.w),
                        child: SvgPicture.asset(
                          'assets/history.svg',
                          width: 20.r,
                          height: 20.r,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
              child: Stack(
                children: [
                  Consumer(builder: (context, watch, _) {
                    final asyncValue =
                        watch(receiveQrCodeAddressProvider(arguments));
                    final receiveQrCodeScreenData =
                        watch(receiveQrCodeAddressAssetProvider(arguments));
                    return asyncValue?.when(
                          data: (data) => Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 24.h),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 48.h),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24.r)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 32.h),
                                            child: QrImage(
                                              data: data.qrImageData,
                                              version: QrVersions.auto,
                                              size: 220.r,
                                            ),
                                          ),
                                          Material(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.r)),
                                            color: const Color(0xFFD8DCE7),
                                            child: InkWell(
                                              onTap: () async {
                                                HapticFeedback.mediumImpact();
                                                context
                                                    .read(receiveQrCodeProvider(
                                                        arguments))
                                                    .copyAddressToClipboard();
                                              },
                                              splashColor: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.r)),
                                              child: Container(
                                                width: 220.w,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 12.w,
                                                  vertical: 8.h,
                                                ),
                                                child: Text(
                                                  data.address,
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      ?.copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .surface,
                                                        fontSize: 13.sp,
                                                        height: 1.38,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 24.h),
                                            child: Divider(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 18.w, bottom: 8.h),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: SizedBox(
                                                width: 120.w,
                                                height: 48.h,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Theme.of(context)
                                                            .colorScheme
                                                            .surface,
                                                  ),
                                                  onPressed: () {
                                                    context
                                                        .read(
                                                            receiveQrCodeProvider(
                                                                arguments))
                                                        .navigateToAddNote();
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .receiveQrCodeMyNotesButton,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.w),
                                                        child: Icon(
                                                          Icons.create_outlined,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .surface,
                                                          size: 16.w,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24.r)),
                                        border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                        )),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 18.w,
                                      ),
                                      child: arguments.isGenericAsset
                                          ? Container(
                                              width: double.infinity,
                                              height: 78.h,
                                              alignment: Alignment.center,
                                              child: Text(
                                                AppLocalizations.of(context)!
                                                    .receiveQrCodeGenericAssetLabel,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge,
                                              ),
                                            )
                                          : Consumer(
                                              builder: (context, watch, _) {
                                                final assetIcon = watch(
                                                    imageDataForAssetIdProvider(
                                                        receiveQrCodeScreenData
                                                                ?.asset
                                                                .assetId ??
                                                            ''));
                                                return (receiveQrCodeScreenData !=
                                                            null &&
                                                        assetIcon != null)
                                                    ? AssetTile(
                                                        name:
                                                            receiveQrCodeScreenData
                                                                .asset.name,
                                                        ticker:
                                                            receiveQrCodeScreenData
                                                                .asset.ticker,
                                                        icon: Image(
                                                          image: ResizeImage(
                                                            MemoryImage(
                                                                assetIcon),
                                                            width: 64,
                                                            height: 64,
                                                          ),
                                                          filterQuality:
                                                              FilterQuality
                                                                  .high,
                                                        ),
                                                        showDivider: false,
                                                      )
                                                    : Container();
                                              },
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 32.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _ReceiveQrCodeScreenActionButton(
                                      imagePath: 'assets/copy.svg',
                                      title: AppLocalizations.of(context)!
                                          .receiveQrCodeCopyButton,
                                      onPressed: () async {
                                        context
                                            .read(receiveQrCodeProvider(
                                                arguments))
                                            .copyAddressToClipboard();
                                      },
                                    ),
                                    _ReceiveQrCodeScreenActionButton(
                                      imagePath: 'assets/set_amount.svg',
                                      title: AppLocalizations.of(context)!
                                          .receiveQrCodeSetAmountButton,
                                      onPressed: () {
                                        context
                                            .read(receiveQrCodeProvider(
                                                arguments))
                                            .navigateToAmount();
                                      },
                                    ),
                                    _ReceiveQrCodeScreenActionButton(
                                      imagePath: 'assets/share.svg',
                                      title: AppLocalizations.of(context)!
                                          .receiveQrCodeShareButton,
                                      onPressed: () {
                                        Share.share(data.address);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          loading: () => Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(
                                Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                              ),
                            ),
                          ),
                          error: (_, __) => GenericErrorWidget(
                            buttonAction: () {
                              context
                                  .read(receiveQrCodeProvider(arguments))
                                  .reload();
                            },
                          ),
                        ) ??
                        Container();
                  }),
                  Consumer(builder: (context, watch, _) {
                    final opacity = watch(
                        receiveQrCodeAddressCopiedSnackbarOpacityProvider(
                            arguments));
                    return CustomSnackbarWidget(
                      opacity: opacity,
                      text: AppLocalizations.of(context)!.receiveQrCodeCopied,
                      color: Theme.of(context).colorScheme.secondary,
                    );
                  }),
                  Consumer(builder: (context, watch, _) {
                    final opacity = watch(
                        receiveQrCodeAddressCopyFailedSnackbarOpacityProvider(
                            arguments));
                    return CustomSnackbarWidget(
                      opacity: opacity,
                      text: AppLocalizations.of(context)!.copySnackbarError,
                      color: Theme.of(context).colorScheme.error,
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ReceiveQrCodeScreenActionButton extends StatelessWidget {
  const _ReceiveQrCodeScreenActionButton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(100),
          child: InkWell(
            onTap: onPressed,
            splashColor: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 48.w,
              height: 48.w,
              padding: EdgeInsets.all(13.r),
              child: SvgPicture.asset(imagePath),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 9.h),
          child: Text(title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  )),
        ),
      ],
    );
  }
}

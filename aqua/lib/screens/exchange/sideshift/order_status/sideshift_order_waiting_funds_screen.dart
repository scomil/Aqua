import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_order_status_label.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_theme.dart';
import 'package:aqua/screens/exchange/sideshift/swap_assets_button.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_asset_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

class SideshiftOrderWaitingFundsScreen extends ConsumerWidget {
  static const routeName = '/orderWaitingFundsScreen';

  const SideshiftOrderWaitingFundsScreen({Key? key}) : super(key: key);

  TextStyle? textStyleSmall(BuildContext context) =>
      Theme.of(context).textTheme.bodyText2?.copyWith(
            fontSize: 10.sp,
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(.5),
          );

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final order = ModalRoute.of(context)?.settings.arguments as SideshiftOrder;
    final assets = watch(sideShiftAssetsListProvider).data?.value ?? [];
    final deliverAsset = watch(deliverAssetProvider) ?? assets.first;
    final receiveAsset = watch(receiveAssetProvider) ?? assets.first;
    final depositMethodId = deliverAsset.coin;
    final exchangeInfo = watch(exchangeRateProvider);
    final rate = Decimal.tryParse(exchangeInfo?.rate ?? '');
    final formattedRate =
        rate?.toStringAsFixed(rate.toDouble() > 10000 ? 2 : 8) ?? '?';

    return Theme(
      data: SideshiftTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SideshiftAssetIcon(
                assetId: deliverAsset.id,
                size: 16.r,
              ),
              SizedBox(width: 4.w),
              Text(
                depositMethodId,
                style: textStyleSmall(context)?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              SizedBox(width: 4.w),
              const Icon(Icons.arrow_right_alt_rounded),
              SizedBox(width: 4.w),
              SideshiftAssetIcon(
                assetId: receiveAsset.id,
                size: 16.r,
              ),
              SizedBox(width: 4.w),
              Text(
                receiveAsset.name.toUpperCase(),
                style: textStyleSmall(context)?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const SizedBox(width: 56),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Stack(children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 32.h),
                    padding: EdgeInsets.only(top: 70.h, bottom: 24.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(18.r)),
                    ),
                    child: Column(children: [
                      // Deposit address QR code
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          QrImage(
                            data: order.depositAddress!,
                            version: QrVersions.auto,
                            size: 220.w,
                            embeddedImage: Image.network(context.read(
                              assetIconUrlProvider(deliverAsset.id),
                            )).image,
                            embeddedImageStyle: QrEmbeddedImageStyle(
                              size: Size.fromRadius(40.r),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.r),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: SvgPicture.network(
                              context
                                  .read(assetIconUrlProvider(deliverAsset.id)),
                              width: 40.r,
                              height: 40.r,
                            ),
                          )
                        ],
                      ),
                      // Deposit address text
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        color: const Color(0xFFD8DCE7),
                        child: InkWell(
                          onTap: () async {
                            HapticFeedback.mediumImpact();
                            copyToClipboard(
                              context,
                              order.depositAddress ?? '',
                            );
                          },
                          splashColor: Theme.of(context).colorScheme.onSurface,
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          child: Container(
                            width: 220.w,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 8.h,
                            ),
                            child: Text(
                              order.depositAddress ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontSize: 14.sp,
                                    height: 1.38,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  // Address Icons
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _AddressIconButton(
                          onPressed: () => copyToClipboard(
                              context, order.depositAddress ?? ''),
                          label: AppLocalizations.of(context)!
                              .exchangeSideshiftOrderWaitCopyButton,
                          svgIcon: 'assets/copy.svg',
                        ),
                        SizedBox(width: 31.w),
                        _AddressIconButton(
                          onPressed: () =>
                              Share.share(order.depositAddress ?? ''),
                          label: AppLocalizations.of(context)!
                              .exchangeSideshiftOrderWaitShareButton,
                          svgIcon: 'assets/share.svg',
                        ),
                      ],
                    ),
                  ),
                  _OrderInfoItem(
                    label: AppLocalizations.of(context)!
                        .exchangeSideshiftOrderWaitShareAddress,
                    value: order.settleAddress?.replaceRange(
                            8, order.settleAddress!.length - 8, '...') ??
                        '',
                  ),
                  _OrderInfoItem(
                    label: AppLocalizations.of(context)!
                        .exchangeSideshiftOrderWaitShareRate,
                    value:
                        '1 $depositMethodId = $formattedRate ${receiveAsset.coin}',
                  ),
                  Row(children: [
                    Text(
                      AppLocalizations.of(context)!
                          .exchangeSideshiftOrderWaitShareStatus,
                      style: SideshiftTheme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                            color: SideshiftTheme.of(context)
                                .colorScheme
                                .onSurface,
                          ),
                    ),
                    const Spacer(),
                    const SideshiftOrderStatusLabel(),
                  ]),
                  SizedBox(height: 12.h),
                  Text(
                    AppLocalizations.of(context)!
                        .exchangeSideshiftOrderWaitShiftWarning,
                    style: SideshiftTheme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                          color:
                              SideshiftTheme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
              // Amount header
              Container(
                width: double.infinity,
                height: 95.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  color: SideshiftTheme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.all(Radius.circular(18.r)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!
                          .exchangeSideshiftOrderWaitSendTitle,
                      style: SideshiftTheme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      AppLocalizations.of(context)!
                          .exchangeSideshiftOrderWaitSendSubtitle(
                        order.depositMin ?? '',
                        order.depositMax ?? '',
                        order.depositCoin ?? '',
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: SideshiftTheme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> copyToClipboard(
    BuildContext context,
    String address,
  ) async {
    await Clipboard.setData(ClipboardData(text: address));
    final text = AppLocalizations.of(context)!.exchangeSideShiftAddressCopied;
    logger.d('[SideShift] $text');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}

class _OrderInfoItem extends StatelessWidget {
  const _OrderInfoItem({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: Row(children: [
        Text(
          label,
          style: SideshiftTheme.of(context).textTheme.bodyMedium?.copyWith(
                color: SideshiftTheme.of(context).colorScheme.onSurface,
              ),
        ),
        const Spacer(),
        Text(
          value,
          style: SideshiftTheme.of(context).textTheme.bodyMedium,
        ),
      ]),
    );
  }
}

class _AddressIconButton extends StatelessWidget {
  const _AddressIconButton({
    required this.svgIcon,
    required this.label,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  final String svgIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularSvgButton(
          size: 48.r,
          onPressed: onPressed,
          svgIcon: SvgPicture.asset(svgIcon),
          backgroundColor: SideshiftTheme.of(context).colorScheme.onSurface,
        ),
        SizedBox(height: 4.h),
        Text(label),
      ],
    );
  }
}

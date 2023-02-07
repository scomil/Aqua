import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/screens/exchange/sideshift/asset_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class DepositAddressView extends StatelessWidget {
  const DepositAddressView({
    Key? key,
    required this.address,
    required this.chainName,
  }) : super(key: key);

  final String address;
  final String chainName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 6.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
              width: 1.w,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppLocalizations.of(context)!.exchangeSideShiftSendToAddress,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontSize: 12.sp,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(width: 4.w),
              ChainNameView(chainName: chainName),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Row(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Text(
                  address,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 12.sp,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.share_rounded),
                    onPressed: () => Share.share(address),
                  ),
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.copy_rounded),
                    onPressed: () => copyToClipboard(context, address),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
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

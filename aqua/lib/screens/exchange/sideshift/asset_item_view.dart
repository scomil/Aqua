import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_asset_icon.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_asset_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetItemView extends StatelessWidget {
  AssetItemView({
    Key? key,
    required this.dropdownValue,
    this.onDropdownChanged,
  }) : super(key: key);

  final SideshiftAsset dropdownValue;
  final void Function(SideshiftAsset)? onDropdownChanged;
  final _buttonTextKey = GlobalKey();

  SideshiftAssetSheet? sheet;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final asset = await showModalBottomSheet<SideshiftAsset>(
          context: context,
          isScrollControlled: true,
          isDismissible: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(18.r),
            ),
          ),
          builder: (context) => DraggableScrollableSheet(
            initialChildSize: .9,
            minChildSize: .9,
            maxChildSize: 1,
            expand: false,
            // Temp fix for https://github.com/flutter/flutter/issues/67219
            builder: (_, controller) => sheet ??= SideshiftAssetSheet(
              controller: controller,
              currentAsset: dropdownValue,
            ),
          ),
        );
        if (asset != null) {
          onDropdownChanged?.call(asset);
        }
      },
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.surface,
        padding: EdgeInsets.zero,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SideshiftAssetIcon(
            assetId: dropdownValue.id,
            size: 24.r,
          ),
          SizedBox(width: 9.w),
          Text(
            dropdownValue.coin,
            key: _buttonTextKey,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
          SizedBox(width: 4.w),
          if (dropdownValue.name.toLowerCase() !=
              dropdownValue.network.toLowerCase())
            ChainNameView(chainName: dropdownValue.network),
          SizedBox(width: 5.w),
          Icon(
            FontAwesome5Solid.chevron_down,
            size: 14.r,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}

class ChainNameView extends StatelessWidget {
  const ChainNameView({
    Key? key,
    required this.chainName,
  }) : super(key: key);

  final String chainName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          width: 1.w,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      child: Text(
        chainName.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }
}

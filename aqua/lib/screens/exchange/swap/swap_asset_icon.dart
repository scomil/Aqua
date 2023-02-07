import 'package:aqua/data/provider/asset_icons_cache_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapAssetIcon extends ConsumerWidget {
  const SwapAssetIcon({
    Key? key,
    this.size,
    required this.assetId,
  }) : super(key: key);

  final double? size;
  final String assetId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final assetIcon = watch(imageDataForAssetIdProvider(assetId));
    return assetIcon != null
        ? Image(
            image: ResizeImage(
              MemoryImage(assetIcon),
              width: 64,
              height: 64,
            ),
            width: size ?? 40.r,
            height: size ?? 40.r,
            filterQuality: FilterQuality.high,
          )
        : SizedBox(
            width: size ?? 40.r,
            height: size ?? 40.r,
          );
  }
}

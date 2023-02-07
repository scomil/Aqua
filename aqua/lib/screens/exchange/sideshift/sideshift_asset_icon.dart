import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jovial_svg/jovial_svg.dart';

class SideshiftAssetIcon extends StatefulWidget {
  const SideshiftAssetIcon({
    Key? key,
    this.size,
    required this.assetId,
  }) : super(key: key);

  final double? size;
  final String assetId;

  @override
  State<SideshiftAssetIcon> createState() => _SideshiftAssetIconState();
}

class _SideshiftAssetIconState extends State<SideshiftAssetIcon> {
  @override
  Widget build(BuildContext context) {
    final memCache = context.read(assetIconMemCacheProvider);
    final persistentCache = context.read(assetIconPersistentCacheProvider);
    final url = context.read(assetIconUrlProvider(widget.assetId));

    try {
      return SizedBox(
        width: widget.size ?? 40.r,
        height: widget.size ?? 40.r,
        child: ScalableImageWidget.fromSISource(
          cache: memCache,
          si: persistentCache.get(url),
          onError: (context) => SvgPicture.asset(
            'assets/asset_icons/asset_unknown.svg',
            width: widget.size ?? 40.r,
            height: widget.size ?? 40.r,
          ),
        ),
      );
    } catch (e) {
      logger.e('[Sideshift] Returning default icon for: ${widget.assetId}');
      return SvgPicture.asset(
        'assets/asset_icons/asset_unknown.svg',
        width: widget.size ?? 40.r,
        height: widget.size ?? 40.r,
      );
    }
  }
}

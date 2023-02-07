import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:aqua/common/utils/bitmap_helper.dart';
import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String assetUnknown = 'asset_unknown';

final assetIconsCacheProvider = Provider<AssetIconsCache>(
  (ref) {
    final hardcodedIcons = <String, String>{
      assetUnknown: 'assets/asset_icons/asset_unknown.svg',
      'btc': 'assets/asset_icons/BTC.svg',
      'b00b0ff0b11ebd47f7c6f57614c046dbbd204e84bf01178baf2be3713a206eb7':
          'assets/asset_icons/BTSE.svg',
      '0e99c1a6da379d1f4151fb9df90449d40d0608f6cb33a5bcbfc8c265f42bab0a':
          'assets/asset_icons/LCAD.svg',
    };

    final usdtId = ref.read(liquidProvider).usdtId;
    final lbtcId = ref.read(liquidProvider).lbtc;
    hardcodedIcons[usdtId] = 'assets/asset_icons/USDt.svg';
    hardcodedIcons[lbtcId] = 'assets/asset_icons/LBTC.svg';
    return AssetIconsCache(ref, hardcodedIcons);
  },
);

class AssetIconsCache {
  AssetIconsCache(this.ref, this.hardcodedIcons);

  final Map<String, String> hardcodedIcons;

  final ProviderReference ref;

  final _assetImages = <String, Uint8List>{};

  Future<Uint8List> _getImageUint8ListAssetId(String assetId) async {
    final svgPath = hardcodedIcons.containsKey(assetId)
        ? hardcodedIcons[assetId]!
        : hardcodedIcons[assetUnknown]!;

    try {
      _assetImages[assetId] =
          await BitmapHelper.getPngBufferFromSvgAsset(svgPath, 128, 128);
      return _assetImages[assetId]!;
    } catch (e) {
      logger.d(e);
      return _assetImages[assetUnknown]!;
    }
  }

  Stream<Uint8List> imageDataForAssetIdStream(String assetId) {
    return Stream.value(_assetImages).asyncMap((assetImages) async {
      if (assetImages.containsKey(assetId)) {
        return assetImages[assetId]!;
      }

      return await ref
          .read(aquaProvider)
          .gdkRawAssetForAssetId(assetId)
          .then((gdkAsset) async {
        final iconData = base64Decode(gdkAsset?.icon ?? '');
        if (iconData.isNotEmpty) {
          // scale down gdk asset image
          final codec = await ui.instantiateImageCodec(iconData,
              targetHeight: 128, targetWidth: 128);
          final frameInfo = await codec.getNextFrame();
          final image = frameInfo.image;
          final pngSizedBytes =
              await image.toByteData(format: ui.ImageByteFormat.png);

          if (pngSizedBytes == null) {
            return Uint8List(0);
          }

          final outputBytes = pngSizedBytes.buffer.asUint8List();
          _assetImages[assetId] = outputBytes;
          return outputBytes;
        }

        return _getImageUint8ListAssetId(assetId);
      }).then((data) {
        return data;
      });
    });
  }

  Future<Uint8List> getImageDataForAssetId(String assetId) async {
    return imageDataForAssetIdStream(assetId).first;
  }
}

final _imageDataForAssetIdStreamProvider =
    StreamProvider.family.autoDispose<Uint8List, String>((ref, assetId) async* {
  yield* ref.watch(assetIconsCacheProvider).imageDataForAssetIdStream(assetId);
});

final imageDataForAssetIdProvider =
    Provider.family.autoDispose<Uint8List?, String>((ref, assetId) {
  return ref.watch(_imageDataForAssetIdStreamProvider(assetId)).data?.value;
});

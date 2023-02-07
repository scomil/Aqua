import 'dart:convert';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:flare_flutter/flare_cache.dart';
import 'package:flare_flutter/provider/asset_flare.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final assetsPrecacheProvider = Provider<AssetsPrecacheProvider>((ref) {
  return AssetsPrecacheProvider(ref.read);
});

class AssetsPrecacheProvider {
  final Reader read;

  AssetsPrecacheProvider(this.read);

  Stream<void> precache() => Stream.value(null)
      .asyncMap((value) async {
        final manifestContent =
            await rootBundle.loadString('AssetManifest.json');
        return json.decode(manifestContent) as Map<String, dynamic>;
      })
      .switchMap((manifestMap) => Stream.value(null)
          .map((_) => manifestMap.keys
              .where((String key) => key.contains('assets/'))
              .where((String key) => key.contains('.svg'))
              .toList())
          .asyncMap((paths) => Stream.fromIterable(paths)
              .flatMap((path) => Stream.value(path)
                  .doOnData((path) {
                    logger.d('Precaching: $path');
                  })
                  .asyncMap((path) => precachePicture(
                          ExactAssetPicture(
                              SvgPicture.svgStringDecoderBuilder, path),
                          null, onError: (error, stackTrace) {
                        logger.e(error);
                        logger.e(stackTrace);
                      }))
                  .doOnData((event) {
                    logger.d('Precaching finished: $path');
                  })
                  .doOnError((e, _) {
                    logger.e('Error precaching $path: $e');
                  }))
              .toList())
          .map((_) => manifestMap.keys
              .where((String key) => key.contains('.flr'))
              .toList())
          .asyncMap((animationFiles) => Stream.fromIterable(animationFiles)
              .map((animationAsset) =>
                  AssetFlare(bundle: rootBundle, name: animationAsset))
              .doOnData((assetFlare) {
                logger.d('Precaching animation: ${assetFlare.name}');
              })
              .asyncMap((assetFlare) => cachedActor(assetFlare))
              .toList()
              .then((_) {
                FlareCache.doesPrune = false;
                return;
              })))
      .doOnError((_, __) {
        // TODO There's need to deliver this error to UI
      })
      .onErrorResumeNext(const Stream.empty());
}

import 'dart:typed_data';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jovial_misc/async_fetcher.dart';
import 'package:jovial_svg/jovial_svg.dart';

// Storage

final sideshiftAssetIconStorageProvider =
    Provider.autoDispose<SideshiftAssetIconStorage>((_) {
  throw UnimplementedError();
});

abstract class Storage<T> {
  Future<void> store({
    required String key,
    required T value,
  });

  Future<void> delete(String key);

  Future<void> deleteAll();

  bool exists(String key);

  T? fetch(String key);

  Map<dynamic, dynamic> fetchAll();
}

class SideshiftAssetIconStorage implements Storage<Uint8List> {
  SideshiftAssetIconStorage._();

  final _box = <String, Uint8List>{};

  @override
  Future<void> store({
    required String key,
    required Uint8List value,
  }) async {
    _box[key] = value;
    logger.d('[IconStorage] Store successful: $key');
  }

  @override
  Future<void> delete(String key) async {
    _box.remove(key);
    logger.d('[IconStorage] Delete successful: $key');
  }

  @override
  bool exists(String key) {
    return _box.containsKey(key);
  }

  @override
  Uint8List? fetch(String key) {
    logger.d('[IconStorage] Delete successful: ${exists(key)}');
    return _box[key];
  }

  @override
  Map<dynamic, dynamic> fetchAll() {
    return _box;
  }

  @override
  Future<void> deleteAll() async {
    _box.clear();
  }

  static Future<SideshiftAssetIconStorage> create() async {
    return SideshiftAssetIconStorage._();
  }
}

// Persistent cache

class InMemorySICache {
  final SideshiftAssetIconStorage _storage;

  late final _SIFetcher _fetcher;

  InMemorySICache(this._storage) {
    _fetcher = _SIFetcher(this);
  }

  ScalableImageSource get(String url) =>
      CachedImageSource(this, url, warn: true);
}

class _SIFetcher extends AsyncCanonicalizingFetcher<String, ScalableImage> {
  final InMemorySICache _cache;

  _SIFetcher(this._cache);

  @override
  Future<ScalableImage> create(String url) async {
    final cached = _cache._storage.fetch(url);

    // if not exist then try to download file again
    if (cached == null) {
      try {
        final si = await ScalableImageSource.fromSvgHttpUrl(
          Uri.parse(url),
          compact: true,
          bigFloats: true,
        ).createSI();

        await _cache._storage.store(key: url, value: si.toSIBytes());
        return ScalableImage.fromSIBytes(si.toSIBytes(), compact: false);
      } catch (err) {
        logger.e(err);
        rethrow;
      }
    }
    return ScalableImage.fromSIBytes(cached, compact: false);
  }
}

class CachedImageSource extends ScalableImageSource {
  final InMemorySICache _cache;
  final String _url;
  @override
  final bool warn;

  CachedImageSource(this._cache, this._url, {this.warn = true});

  @override
  bool operator ==(Object other) =>
      other is CachedImageSource &&
      _url == other._url &&
      _cache == other._cache;

  @override
  int get hashCode => Object.hash(_url, _cache) ^ 0x5eb3bb2c;

  @override
  Future<ScalableImage> createSI() => _cache._fetcher.get(_url);
}

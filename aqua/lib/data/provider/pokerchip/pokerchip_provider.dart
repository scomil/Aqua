import 'dart:convert';

import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/models/pokerchip.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

const _blockStreamApiBaseUrl = 'https://blockstream.info';
const _bitcoinPrefix = 'BITCOIN:';
const _liquidPrefix = 'LIQUID:';

// Errors

class PokerChipAssetError implements Exception {}

// Balance

final _balanceStreamProvider =
    StreamProvider.autoDispose<AsyncValue<String>>((ref) async* {
  yield* ref.watch(pokerChipProvider)._balanceStream;
});

final balanceProvider = Provider.autoDispose<AsyncValue<String>>((ref) {
  return ref.watch(_balanceStreamProvider).data?.value ??
      const AsyncValue.loading();
});

// Asset Id

final _assetIdStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  yield* ref.watch(pokerChipProvider)._assetIdStream;
});

final assetIdProvider = Provider.autoDispose<String>((ref) {
  return ref.watch(_assetIdStreamProvider).data?.value ?? '';
});

// Blockstream link

final _blockstreamLinkStreamProvider =
    StreamProvider.autoDispose<String>((ref) async* {
  yield* ref.watch(pokerChipProvider)._blockstreamLinkStream;
});

final blockstreamLinkProvider = Provider.autoDispose<String>((ref) {
  return ref.watch(_blockstreamLinkStreamProvider).data?.value ?? '';
});

// PokerChip

final pokerChipProvider = Provider.autoDispose<PokerChipProvider>((ref) {
  return PokerChipProvider(ref);
});

class PokerChipProvider {
  PokerChipProvider(this._ref) {
    _ref.onDispose(() {
      _addressSubject.close();
    });
  }

  final AutoDisposeProviderReference _ref;

  final _addressSubject = BehaviorSubject<String>();

  void addAddress(String address) {
    final cleanedAddress = address
        .replaceFirst(_bitcoinPrefix, '')
        .replaceFirst(_liquidPrefix, '');
    _addressSubject.add(cleanedAddress);
    logger.d('[PokerChip] AddAddress: $cleanedAddress');
  }

  late final Stream<String> _assetIdStream =
      _addressSubject.asyncMap((address) async {
    final isBtc = await _ref.read(bitcoinProvider).isValidAddress(address);
    if (isBtc) {
      return 'btc-bitcoin';
    } else {
      final asset = await _getAssetByAddress(address, isBtc: isBtc);
      final liquidAsset =
          await _ref.read(aquaProvider).liquidAssetById(asset.asset);
      return '${liquidAsset?.ticker}-liquid';
    }
  }).shareReplay(maxSize: 1);

  late final Stream<String> _blockstreamLinkStream = _addressSubject
      .asyncMap((address) async =>
          await _ref.read(bitcoinProvider).isValidAddress(address)
              ? '$_blockStreamApiBaseUrl/address/$address'
              : '$_blockStreamApiBaseUrl/liquid/address/$address')
      .shareReplay(maxSize: 1);

  late final Stream<AsyncValue<String>> _balanceStream = _addressSubject
      .switchMap((address) => Stream.value(null).asyncMap((_) async {
            final isBtc =
                await _ref.read(bitcoinProvider).isValidAddress(address);
            final asset = await _getAssetByAddress(address, isBtc: isBtc);
            final String ticker;
            if (isBtc) {
              ticker = 'btc';
            } else {
              final liquidAsset =
                  await _ref.read(aquaProvider).liquidAssetById(asset.asset);
              ticker = liquidAsset?.ticker ?? '';
            }
            final amount = await _ref
                .read(formatterProvider)
                .formatAssetAmount(amount: asset.value);
            return AsyncValue.data('$amount $ticker');
          }))
      .startWith(const AsyncValue.loading())
      .onErrorReturnWith((err, stackTrace) => AsyncValue.error(err, stackTrace))
      .shareReplay(maxSize: 1);

  Future<PokerChipAsset> _getAssetByAddress(
    String address, {
    required bool isBtc,
  }) async {
    final url = isBtc
        ? '$_blockStreamApiBaseUrl/api/address/$address/utxo'
        : '$_blockStreamApiBaseUrl/liquid/api/address/$address/utxo';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final items = jsonDecode(response.body) as List;
      final json = items.cast<Map<String, dynamic>>().firstOrNull;
      final containsValue = json?.containsKey('value') == true;
      final containsAsset = json?.containsKey('asset') == true;
      final isValidBtc = isBtc && containsValue;
      final isValidLiquid = containsAsset && containsValue;
      if (isValidBtc || isValidLiquid) {
        return PokerChipAsset.fromJson(json!);
      }
    }
    return Future.error(PokerChipAssetError());
  }
}

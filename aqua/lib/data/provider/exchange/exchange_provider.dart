import 'dart:convert';

import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

final exchangeProvider =
    Provider<_ExchangeProvider>((ref) => _ExchangeProvider(ref));

class _ExchangeProvider {
  _ExchangeProvider(this._ref) {
    _ref.onDispose(() {
      _buyBitcoinSubject.close();
      _buyLiquidSubject.close();
    });
  }

  final ProviderReference _ref;

  final PublishSubject<void> _buyBitcoinSubject = PublishSubject();
  void buyBitcoin() {
    _buyBitcoinSubject.add(null);
  }

  final PublishSubject<void> _buyLiquidSubject = PublishSubject();
  void buyLiquid() {
    _buyLiquidSubject.add(null);
  }

  late final Stream<AsyncValue<String>> _loadBuyUrlStream = Rx.merge([
    _buyBitcoinSubject
        .asyncMap((_) => _ref.read(bitcoinProvider).getReceiveAddress())
        .asyncMap((gdkAddress) async {
      final address = gdkAddress?.address;
      if (address == null) {
        throw ExchangeProviderInvalidAddressException();
      }

      return address;
    }).map((address) => {'destCurrency': 'BTC', 'dest': address}),
    _buyLiquidSubject
        .asyncMap((_) => _ref.read(liquidProvider).getReceiveAddress())
        .asyncMap((gdkAddress) async {
      final address = gdkAddress?.address;
      if (address == null) {
        throw ExchangeProviderInvalidAddressException();
      }

      return address;
    }).map((address) => {'destCurrency': 'LBTC', 'dest': address}),
  ])
      .switchMap((params) => Stream.value(params)
          .map((params) => kDebugMode
              ? 'https://staging-wyre.blockstream.com'
              : 'https://wyre.blockstream.com')
          .map((url) => '$url/order-reservation')
          .asyncMap((url) async {
            try {
              return Uri.parse(url);
            } catch (_) {
              throw ExchangeProviderInvalidWyreUrlException();
            }
          })
          .asyncMap((uri) => http.post(uri, body: params))
          .asyncMap((response) async {
            if (response.statusCode != 200) {
              throw ExchangeProviderInvalidWyreUrlResponseException();
            }
            return response;
          })
          .asyncMap((response) async {
            try {
              final result = jsonDecode(response.body) as Map<String, dynamic>;
              return result['url'] as String;
            } catch (_) {
              throw ExchangeProviderInvalidWyreUrlResponseException();
            }
          })
          .map((url) => AsyncValue.data(url))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace)))
      .shareReplay(maxSize: 1);

  late final Stream<AsyncValue<void>> _launchUrlStream = _loadBuyUrlStream
      .switchMap((value) => value.maybeWhen(
            data: (url) => Stream.value(url)
                .asyncMap((url) => launch(url))
                .asyncMap<void>((result) async {
                  if (!result) {
                    throw ExchangeProviderInvalidLaunchException();
                  }
                  return;
                })
                .map((_) => AsyncValue.data(_))
                .startWith(const AsyncValue.loading())
                .onErrorReturnWith(
                    (error, stackTrace) => AsyncValue.error(error, stackTrace)),
            orElse: () => const Stream<AsyncValue<void>>.empty(),
          ))
      .shareReplay(maxSize: 1);

  Stream<Object> _showLoadingDialogStream() =>
      _loadBuyUrlStream.switchMap((value) => value.maybeWhen(
            loading: () => Stream.value(Object()),
            orElse: () => const Stream.empty(),
          ));

  Stream<Object> _showErrorDialogStream() => Rx.merge([
        _loadBuyUrlStream,
        _launchUrlStream,
      ]).switchMap((value) => value.maybeWhen(
            error: (_, __) => Stream.value(Object()),
            orElse: () => const Stream.empty(),
          ));

  Stream<Object> _popDialogsStream() =>
      _loadBuyUrlStream.switchMap((value) => value.maybeWhen(
            data: (_) => Stream.value(Object()),
            orElse: () => const Stream.empty(),
          ));
}

final _exchangeShowLoadingDialogStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(exchangeProvider)._showLoadingDialogStream();
});

final exchangeShowLoadingDialogProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_exchangeShowLoadingDialogStreamProvider).data?.value;
});

final _exchangeShowErrorDialogStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(exchangeProvider)._showErrorDialogStream();
});

final exchangeShowErrorDialogProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_exchangeShowErrorDialogStreamProvider).data?.value;
});

final _exchangePopDialogsStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(exchangeProvider)._popDialogsStream();
});

final exchangePopDialogsProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_exchangePopDialogsStreamProvider).data?.value;
});

class ExchangeProviderInvalidAddressException implements Exception {}

class ExchangeProviderInvalidWyreUrlException implements Exception {}

class ExchangeProviderInvalidWyreUrlResponseException implements Exception {}

class ExchangeProviderInvalidLaunchException implements Exception {}

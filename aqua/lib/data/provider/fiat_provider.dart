import 'dart:io';
import 'dart:math';

import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

final fiatProvider =
    Provider.autoDispose<FiatProvider>((ref) => FiatProvider(ref));

class FiatProvider {
  final AutoDisposeProviderReference ref;

  FiatProvider(this.ref);

  final _formatter = NumberFormat.currency(
    locale: Platform.localeName,
    symbol: '',
  );

  late final Stream<Decimal> rateStream = Stream<void>.periodic(
          const Duration(milliseconds: 5000))
      .startWith(null)
      .switchMap((_) => Stream.value(_)
              .map((_) => const GdkConvertData(satoshi: 1))
              .asyncMap((data) => ref.read(bitcoinProvider).convertAmount(data))
              .asyncMap((data) {
            final rate = data?.fiatRate;
            if (rate == null) {
              throw FiatProviderNullFiatRateException();
            }

            return Decimal.parse(rate);
          }).onErrorResumeNext(const Stream.empty()))
      .shareReplay(maxSize: 1);

  late final Stream<String> currencyStream = Stream.value(null)
      .map((_) => const GdkConvertData(satoshi: 1))
      .asyncMap((data) => ref.read(bitcoinProvider).convertAmount(data))
      .map((data) => data?.fiatCurrency ?? '')
      .onErrorReturn('')
      .shareReplay(maxSize: 1);

  Future<Decimal> satoshiToFiat(Asset asset, int satoshi, Decimal rate) async {
    if (!asset.hasFiatRate) {
      throw FiatProviderParseAssetAmountException();
    }

    final precisionRate = Decimal.parse(
        pow(10, asset.precision).toStringAsFixed(asset.precision));

    return Decimal.fromInt(satoshi) / precisionRate * rate;
  }

  Future<String> formattedFiat(Decimal fiat) async {
    final parsedResult = double.parse(fiat.toString());

    return _formatter.format(parsedResult);
  }

  Stream<String> satoshiToFiatStream(Asset asset, int satoshi) =>
      rateStream.switchMap((rate) => Stream.value(rate)
          .asyncMap((rate) => satoshiToFiat(asset, satoshi, rate))
          .asyncMap((fiat) => formattedFiat(fiat))
          .onErrorResumeNext(const Stream.empty()));

  Stream<String> satoshiToFiatWithCurrencyStream(Asset asset, int satoshi) =>
      satoshiToFiatStream(asset, satoshi).switchMap((fiat) => currencyStream
          .map((currency) => '$currency $fiat')
          .onErrorResumeNext(const Stream.empty()));

  Stream<String> fiatToSatoshiStream(Asset asset, String amount) =>
      rateStream.switchMap((rate) => Stream.value(rate).asyncMap((rate) async {
            if (!asset.hasFiatRate) {
              throw FiatProviderParseAssetAmountException();
            }

            final decimalAmount = Decimal.parse(amount);

            final result = decimalAmount / rate;
            return result.toStringAsFixed(asset.precision);
          }).onErrorResumeNext(const Stream.empty()));
}

class FiatProviderNullFiatRateException implements Exception {}

class FiatProviderParseAssetAmountException implements Exception {}

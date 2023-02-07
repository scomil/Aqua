import 'dart:math';

import 'package:aqua/data/models/asset.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reRemoveTrailingDecimals = RegExp(r"\.0+$|(\.\d*[1-9])(0+)$");

final formatterProvider =
    Provider.autoDispose<FormatterProvider>((ref) => FormatterProvider());

class FormatterProvider {
  FormatterProvider();

  static const int _kCoin = 100000000;

  Future<String> formatAssetAmountFromAsset({required Asset asset}) {
    return formatAssetAmount(amount: asset.amount, precision: asset.precision);
  }

  Future<String> formatAssetAmount({
    required int amount,
    int? precision,
  }) async {
    return formatAssetAmountDirect(amount: amount, precision: precision);
  }

  String formatAssetAmountDirect({
    required int amount,
    int? precision,
  }) {
    precision ??= 8;
    final bitAmount = amount ~/ _kCoin;
    final satAmount = amount % _kCoin;
    final satAmountStr = satAmount.toString().padLeft(8, '0');
    final newAmount = Decimal.parse('$bitAmount$satAmountStr');
    final power = Decimal.parse(pow(10, precision).toStringAsFixed(precision));
    final amountWithPrecision = newAmount / power;
    if (precision == 0) {
      return amountWithPrecision.toInt().toString();
    }

    return (newAmount / power)
        .toStringAsFixed(precision)
        .replaceAllMapped(reRemoveTrailingDecimals, (e) => e.group(1) ?? '');
  }

  Future<String> signedFormatAssetAmountFromAsset({required Asset asset}) {
    return signedFormatAssetAmount(
        amount: asset.amount, precision: asset.precision);
  }

  Future<String> signedFormatAssetAmount({
    required int amount,
    int? precision,
  }) async {
    final formattedAmount = await formatAssetAmount(
      amount: amount.abs(),
      precision: precision,
    );
    if (amount >= 0) {
      return '+$formattedAmount';
    } else {
      return '-$formattedAmount';
    }
  }

  Future<int> parseAssetAmount(
      {required String amount, required int precision}) async {
    return parseAssetAmountDirect(amount: amount, precision: precision);
  }

  int parseAssetAmountDirect({required String amount, required int precision}) {
    if (precision < 0 || precision > 8) {
      throw ParseAmountWrongPrecissionException();
    }

    final replacedAmount = amount.replaceAll(' ', '');
    final amountWithPrecision =
        Decimal.tryParse(replacedAmount)?.toStringAsFixed(precision);
    if (amountWithPrecision == null) {
      throw ParseAmountUnableParseFromStringWithPrecisionException();
    }

    final newAmount = Decimal.tryParse(amountWithPrecision);

    if (newAmount == null) {
      throw ParseAmountUnableParseFromStringException();
    }

    final amountDec = newAmount * Decimal.fromInt(pow(10, precision).toInt());

    final amountInt = amountDec.toInt();

    if (Decimal.fromInt(amountInt) != amountDec) {
      throw ParseAmountIntNotEqualDecimalBaseException();
    }

    return amountInt;
  }
}

class ParseAmountWrongPrecissionException implements Exception {}

class ParseAmountUnableParseFromStringException implements Exception {}

class ParseAmountUnableParseFromStringWithPrecisionException
    implements Exception {}

class ParseAmountIntNotEqualDecimalBaseException implements Exception {}

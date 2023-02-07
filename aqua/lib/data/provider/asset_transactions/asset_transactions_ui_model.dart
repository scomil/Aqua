import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'asset_transactions_ui_model.freezed.dart';

@freezed
class AssetTransactionsUiModel with _$AssetTransactionsUiModel {
  const factory AssetTransactionsUiModel.success({
    required Uint8List icon,
    required String titleText,
    required String cryptoAmountText,
    required String cryptoCurrencyText,
  }) = AssetTransactionsSuccessUiModel;
  const factory AssetTransactionsUiModel.loading() =
      AssetTransactionsLoadingUiModel;
  const factory AssetTransactionsUiModel.error({
    required String description,
    required String buttonTitle,
    required VoidCallback buttonAction,
  }) = AssetTransactionsErrorUiModel;
}

@freezed
class AssetTransactionsListUiModel with _$AssetTransactionsListUiModel {
  const factory AssetTransactionsListUiModel.success() =
      AssetTransactionsSuccessListUiModel;
  const factory AssetTransactionsListUiModel.emptyBitcoin() =
      AssetTransactionsEmptyBitcoinListUiModel;
  const factory AssetTransactionsListUiModel.emptyLiquid({
    required String description,
  }) = AssetTransactionsEmptyLiquidListUiModel;
  const factory AssetTransactionsListUiModel.loading() =
      AssetTransactionsLoadingListUiModel;
  const factory AssetTransactionsListUiModel.error({
    required String description,
    required String buttonTitle,
    required VoidCallback buttonAction,
  }) = AssetTransactionsErrorListUiModel;
}

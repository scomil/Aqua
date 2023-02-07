import 'package:aqua/data/models/gdk_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'asset_transactions_item_ui_model.freezed.dart';

@freezed
class AssetTransactionsItemUiModel with _$AssetTransactionsItemUiModel {
  const factory AssetTransactionsItemUiModel.data({
    required String assetName,
    required String createdAt,
    required String type,
    required String cryptoAmount,
    required String fiat,
    required VoidCallback onPressed,
    GdkTransactionTypeEnum? gdkType,
  }) = AssetTransactionsDataItemUiModel;
  const factory AssetTransactionsItemUiModel.loading() =
      AssetTransactionsLoadingItemUiModel;
  const factory AssetTransactionsItemUiModel.error() =
      AssetTransactionsErrorItemUiModel;
}

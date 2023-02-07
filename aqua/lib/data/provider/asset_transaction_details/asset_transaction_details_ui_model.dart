import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'asset_transaction_details_ui_model.freezed.dart';

@freezed
class AssetTransactionDetailsUiModel with _$AssetTransactionDetailsUiModel {
  const factory AssetTransactionDetailsUiModel.success({
    required List<AssetTransactionDetailsItemUiModel> items,
    required VoidCallback explorerCallback,
  }) = AssetTransactionDetailsSuccessUiModel;
  const factory AssetTransactionDetailsUiModel.loading() =
      AssetTransactionDetailsLoadingUiModel;
  const factory AssetTransactionDetailsUiModel.error() =
      AssetTransactionDetailsErrorUiModel;
}

@freezed
class AssetTransactionDetailsItemUiModel
    with _$AssetTransactionDetailsItemUiModel {
  const factory AssetTransactionDetailsItemUiModel.header({
    required String type,
    required bool showPendingIndicator,
    required String date,
  }) = AssetTransactionDetailsHeaderItemUiModel;
  const factory AssetTransactionDetailsItemUiModel.data({
    required String title,
    required String value,
  }) = AssetTransactionDetailsDataItemUiModel;
  const factory AssetTransactionDetailsItemUiModel.notes({
    required String? notes,
    required VoidCallback onTap,
  }) = AssetTransactionDetailsNotesItemUiModel;
  const factory AssetTransactionDetailsItemUiModel.divider() =
      AssetTransactionDetailsDividerItemUiModel;
  const factory AssetTransactionDetailsItemUiModel.copyableData({
    required String title,
    required String value,
    required VoidCallback callback,
  }) = AssetTransactionDetailsCopyableItemUiModel;
}

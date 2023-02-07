import 'dart:typed_data';

import 'package:aqua/data/models/asset.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wallet_add_asset_item_model.freezed.dart';

@freezed
class WalletAddAssetListItemModel with _$WalletAddAssetListItemModel {
  const factory WalletAddAssetListItemModel.data({
    required WalletAddAssetItemUiModel uiModel,
    required Asset asset,
    required bool unselectable,
  }) = WalletAddAssetListDataItemModel;
  const factory WalletAddAssetListItemModel.empty() =
      WalletAddAssetListEmptyItemModel;
}

@freezed
class WalletAddAssetItemUiModel with _$WalletAddAssetItemUiModel {
  const factory WalletAddAssetItemUiModel({
    required Uint8List icon,
    required String name,
    required String ticker,
  }) = _WalletAddAssetItemUiModel;
}

@freezed
class WalletAddAssetControlUiModel with _$WalletAddAssetControlUiModel {
  const factory WalletAddAssetControlUiModel({
    required IconData icon,
    required Color color,
    VoidCallback? onPressed,
  }) = _WalletAddAssetControlUiModel;
}

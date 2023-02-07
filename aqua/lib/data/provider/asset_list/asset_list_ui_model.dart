import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'asset_list_ui_model.freezed.dart';

@freezed
class AssetListItemUiModel with _$AssetListItemUiModel {
  const factory AssetListItemUiModel.asset({
    required Uint8List icon,
    required String name,
    required String ticker,
    required String amount,
    required VoidCallback onTap,
  }) = AssetListAssetItemUiModel;
  const factory AssetListItemUiModel.nft({
    required String title,
    required String assets,
  }) = AssetListNftItemUiModel;
}

@freezed
class AssetListErrorUiModel with _$AssetListErrorUiModel {
  const factory AssetListErrorUiModel({
    required String buttonTitle,
    required VoidCallback buttonAction,
  }) = _AssetListErrorUiModel;
}

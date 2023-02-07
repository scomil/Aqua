import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_support_item_ui_model.freezed.dart';

@freezed
class ProfileSupportRateAppItemModel with _$ProfileSupportRateAppItemModel {
  const factory ProfileSupportRateAppItemModel({
    String? appStoreId,
  }) = _ProfileSupportRateAppItemModel;
}

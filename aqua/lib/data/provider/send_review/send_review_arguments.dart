import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_review_arguments.freezed.dart';

@freezed
class SendReviewArguments with _$SendReviewArguments {
  const factory SendReviewArguments({
    required Asset asset,
    required String address,
    required String amount,
  }) = _SendReviewArguments;
}

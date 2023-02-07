import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'receive_amount_arguments.freezed.dart';

@freezed
class ReceiveAmountArguments with _$ReceiveAmountArguments {
  const factory ReceiveAmountArguments({
    required Asset asset,
  }) = _ReceiveAmountArguments;
}

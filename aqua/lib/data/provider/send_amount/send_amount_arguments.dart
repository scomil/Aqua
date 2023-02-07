import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_amount_arguments.freezed.dart';

@freezed
class SendAmountArguments with _$SendAmountArguments {
  const factory SendAmountArguments({
    required String address,
    required Asset asset,
    String? amount,
    String? label,
    String? message,
  }) = _SendAmountArguments;
}

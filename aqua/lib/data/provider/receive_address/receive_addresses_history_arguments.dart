import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receive_addresses_history_arguments.freezed.dart';

@freezed
class ReceiveAddressesHistoryArguments with _$ReceiveAddressesHistoryArguments {
  const factory ReceiveAddressesHistoryArguments({
    required Asset asset,
  }) = _ReceiveAddressesHistoryArguments;
}

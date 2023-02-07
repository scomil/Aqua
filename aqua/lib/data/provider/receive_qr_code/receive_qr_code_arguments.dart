import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receive_qr_code_arguments.freezed.dart';

@freezed
class ReceiveQrCodeArguments with _$ReceiveQrCodeArguments {
  const factory ReceiveQrCodeArguments({
    required Asset asset,
    @Default(false) bool isGenericAsset,
  }) = _ReceiveQrCodeArguments;
}

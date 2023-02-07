import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sideswap_http_state.freezed.dart';

@freezed
class SideswapHttpState with _$SideswapHttpState {
  const factory SideswapHttpState.success(
      Asset asset, GdkTransaction transaction) = SideswapHttpStateSuccess;
  const factory SideswapHttpState.error(
    Object? error,
    StackTrace? stackTrace,
  ) = SideswapHttpStateError;
  const factory SideswapHttpState.networkError(String? message) =
      SideswapHttpStateNetworkError;
}

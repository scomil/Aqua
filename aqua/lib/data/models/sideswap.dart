import 'dart:convert';

import 'package:aqua/data/models/gdk_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sideswap.freezed.dart';
part 'sideswap.g.dart';

const serverStatus = 'server_status';
const assets = 'assets';
const subscribePriceStream = 'subscribe_price_stream';
const startSwapWeb = 'start_swap_web';
const swapDone = 'swap_done';

const notificationUpdatePriceStream = 'update_price_stream';
const notificationServerStatus = 'server_status';

@freezed
class ServerStatusResponse with _$ServerStatusResponse {
  const factory ServerStatusResponse({
    int? id,
    String? method,
    ServerStatusResult? result,
  }) = _ServerStatusResponse;

  factory ServerStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerStatusResponseFromJson(json);
}

@freezed
class ServerStatusResult with _$ServerStatusResult {
  const factory ServerStatusResult({
    @JsonKey(name: 'bitcoin_fee_rates') List<BitcoinFeeRate>? bitcoinFeeRates,
    @JsonKey(name: 'elements_fee_rate') double? elementsFeeRate,
    @JsonKey(name: 'min_peg_in_amount') int? minPegInAmount,
    @JsonKey(name: 'min_peg_out_amount') int? minPegOutAmount,
    @JsonKey(name: 'min_submit_amount') int? minSubmitAmount,
    @JsonKey(name: 'price_band') double? priceBand,
    @JsonKey(name: 'server_fee_percent_peg_in') double? serverFeePercentPegIn,
    @JsonKey(name: 'server_fee_percent_peg_out') double? serverFeePercentPegOut,
  }) = _ServerStatusResult;

  factory ServerStatusResult.fromJson(Map<String, dynamic> json) =>
      _$ServerStatusResultFromJson(json);
}

@freezed
class BitcoinFeeRate with _$BitcoinFeeRate {
  const factory BitcoinFeeRate({
    int? blocks,
    double? value,
  }) = _BitcoinFeeRate;

  factory BitcoinFeeRate.fromJson(Map<String, dynamic> json) =>
      _$BitcoinFeeRateFromJson(json);
}

@freezed
class SubscribePriceStreamRequest with _$SubscribePriceStreamRequest {
  const factory SubscribePriceStreamRequest({
    @JsonKey(name: 'asset') String? asset,
    @Default(true) @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
    @JsonKey(name: 'send_amount') int? sendAmount,
    @JsonKey(name: 'recv_amount') int? recvAmount,
  }) = _SubscribePriceStreamRequest;

  factory SubscribePriceStreamRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscribePriceStreamRequestFromJson(json);
}

@freezed
class SubscribePriceStreamResponse with _$SubscribePriceStreamResponse {
  const factory SubscribePriceStreamResponse({
    int? id,
    String? method,
    PriceStreamResult? result,
  }) = _SubscribePriceStreamResponse;

  factory SubscribePriceStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscribePriceStreamResponseFromJson(json);
}

@freezed
class UpdatePriceStreamResponse with _$UpdatePriceStreamResponse {
  const factory UpdatePriceStreamResponse({
    int? id,
    String? method,
    PriceStreamResult? params,
  }) = _UpdatePriceStreamResponse;

  factory UpdatePriceStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceStreamResponseFromJson(json);
}

@freezed
class PriceStreamResult with _$PriceStreamResult {
  const factory PriceStreamResult({
    String? asset,
    @JsonKey(name: 'error_msg') String? errorMsg,
    @JsonKey(name: 'fixed_fee') int? fixedFee,
    double? price,
    @JsonKey(name: 'recv_amount') int? recvAmount,
    @JsonKey(name: 'send_amount') int? sendAmount,
    @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
    @JsonKey(name: 'subscribe_id') int? subscribeId,
  }) = _PriceStreamResult;

  factory PriceStreamResult.fromJson(Map<String, dynamic> json) =>
      _$PriceStreamResultFromJson(json);
}

@freezed
class SideSwapAsset with _$SideSwapAsset {
  const factory SideSwapAsset({
    @JsonKey(name: 'asset_id') String? assetId,
    String? icon,
    @JsonKey(name: 'icon_url') String? iconUrl,
    @JsonKey(name: 'instant_swaps') bool? instantSwaps,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'precision') int? precision,
    @JsonKey(name: 'ticker') String? ticker,
  }) = _SideSwapAsset;

  factory SideSwapAsset.fromJson(Map<String, dynamic> json) =>
      _$SideSwapAssetFromJson(json);
}

@freezed
class AssetsRequest with _$AssetsRequest {
  const factory AssetsRequest({
    @JsonKey(name: 'embedded_icons') bool? embeddedIcons,
  }) = _AssetsRequest;

  factory AssetsRequest.fromJson(Map<String, dynamic> json) =>
      _$AssetsRequestFromJson(json);
}

@freezed
class AssetsResult with _$AssetsResult {
  const factory AssetsResult({
    @JsonKey(name: 'assets') List<SideSwapAsset>? assets,
  }) = _AssetsResult;

  factory AssetsResult.fromJson(Map<String, dynamic> json) =>
      _$AssetsResultFromJson(json);
}

@freezed
class AssetsResponse with _$AssetsResponse {
  const factory AssetsResponse({
    int? id,
    String? method,
    AssetsResult? result,
  }) = _AssetsResponse;

  factory AssetsResponse.fromJson(Map<String, dynamic> json) =>
      _$AssetsResponseFromJson(json);
}

@freezed
class SwapStartWebRequest with _$SwapStartWebRequest {
  const factory SwapStartWebRequest({
    @JsonKey(name: 'asset') String? asset,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
    @JsonKey(name: 'send_amount') int? sendAmount,
    @JsonKey(name: 'recv_amount') int? recvAmount,
  }) = _SwapStartWebRequest;

  factory SwapStartWebRequest.fromJson(Map<String, dynamic> json) =>
      _$SwapStartWebRequestFromJson(json);
}

@freezed
class SwapStartWebResponse with _$SwapStartWebResponse {
  const factory SwapStartWebResponse({
    int? id,
    String? method,
    SwapStartWebResult? result,
  }) = _SwapStartWebResponse;

  factory SwapStartWebResponse.fromJson(Map<String, dynamic> json) =>
      _$SwapStartWebResponseFromJson(json);
}

@freezed
class SwapStartWebResult with _$SwapStartWebResult {
  const factory SwapStartWebResult({
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'send_asset') String? sendAsset,
    @JsonKey(name: 'send_amount') int? sendAmount,
    @JsonKey(name: 'recv_asset') String? recvAsset,
    @JsonKey(name: 'recv_amount') int? recvAmount,
    @JsonKey(name: 'upload_url') String? uploadUrl,
  }) = _SwapStartWebResult;

  factory SwapStartWebResult.fromJson(Map<String, dynamic> json) =>
      _$SwapStartWebResultFromJson(json);
}

@freezed
class HttpStartWebRequest with _$HttpStartWebRequest {
  const HttpStartWebRequest._();
  const factory HttpStartWebRequest({
    int? id,
    String? method,
    HttpStartWebParams? params,
  }) = _HttpStartWebRequest;

  factory HttpStartWebRequest.fromJson(Map<String, dynamic> json) =>
      _$HttpStartWebRequestFromJson(json);

  String toJsonString() {
    final json = toJson();
    return jsonEncode(json);
  }
}

@freezed
class HttpStartWebParams with _$HttpStartWebParams {
  const factory HttpStartWebParams({
    @JsonKey(name: 'order_id') String? orderId,
    List<GdkCreatePsetInputs>? inputs,
    @JsonKey(name: 'recv_addr') String? recvAddr,
    @JsonKey(name: 'change_addr') String? changeAddr,
    @JsonKey(name: 'send_asset') String? sendAsset,
    @JsonKey(name: 'send_amount') int? sendAmount,
    @JsonKey(name: 'recv_asset') String? recvAsset,
    @JsonKey(name: 'recv_amount') int? recvAmount,
  }) = _HttpStartWebParams;

  factory HttpStartWebParams.fromJson(Map<String, dynamic> json) =>
      _$HttpStartWebParamsFromJson(json);
}

@freezed
class HttpSwapSignRequest with _$HttpSwapSignRequest {
  const HttpSwapSignRequest._();
  const factory HttpSwapSignRequest({
    int? id,
    String? method,
    HttpSwapSignParams? params,
  }) = _HttpSwapSignRequest;

  factory HttpSwapSignRequest.fromJson(Map<String, dynamic> json) =>
      _$HttpSwapSignRequestFromJson(json);

  String toJsonString() {
    final json = toJson();
    return jsonEncode(json);
  }
}

@freezed
class HttpSwapSignParams with _$HttpSwapSignParams {
  const factory HttpSwapSignParams({
    @JsonKey(name: 'order_id') String? orderId,
    String? pset,
    @JsonKey(name: 'submit_id') String? submitId,
  }) = _HttpSwapSignParams;

  factory HttpSwapSignParams.fromJson(Map<String, dynamic> json) =>
      _$HttpSwapSignParamsFromJson(json);
}

@freezed
class SwapDoneResponse with _$SwapDoneResponse {
  const factory SwapDoneResponse({
    int? id,
    String? method,
    SwapDoneParams? params,
  }) = _SwapDoneResponse;

  factory SwapDoneResponse.fromJson(Map<String, dynamic> json) =>
      _$SwapDoneResponseFromJson(json);
}

enum SwapDoneStatusEnum {
  @JsonValue('Success')
  success,
  @JsonValue('ClientError')
  clientError,
}

@freezed
class SwapDoneParams with _$SwapDoneParams {
  const factory SwapDoneParams({
    @JsonKey(name: 'network_fee') int? networkFee,
    @JsonKey(name: 'order_id') String? orderId,
    double? price,
    @JsonKey(name: 'recv_amount') int? recvAmount,
    @JsonKey(name: 'recv_asset') String? recvAsset,
    @JsonKey(name: 'send_amount') int? sendAmount,
    @JsonKey(name: 'send_asset') String? sendAsset,
    SwapDoneStatusEnum? status,
    String? txid,
  }) = _SwapDoneParams;

  factory SwapDoneParams.fromJson(Map<String, dynamic> json) =>
      _$SwapDoneParamsFromJson(json);
}

@freezed
class Error with _$Error {
  const factory Error({
    ErrorClass? error,
    int? id,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}

@freezed
class ErrorClass with _$ErrorClass {
  const factory ErrorClass({
    int? code,
    String? message,
  }) = _ErrorClass;

  factory ErrorClass.fromJson(Map<String, dynamic> json) =>
      _$ErrorClassFromJson(json);
}

@freezed
class SwapProgressState with _$SwapProgressState {
  const factory SwapProgressState.connecting() = SwapProgressStateConnecting;
  const factory SwapProgressState.waiting() = SwapProgressStateWaiting;
  const factory SwapProgressState.empty() = SwapProgressStateEmpty;
}

@freezed
class SwapNetworkErrorState with _$SwapNetworkErrorState {
  const factory SwapNetworkErrorState.error({String? message}) =
      SwapNetworkErrorStateError;
  const factory SwapNetworkErrorState.empty() = SwapNetworkErrorStateEmpty;
}

@freezed
class SwapAmountSideState with _$SwapAmountSideState {
  const factory SwapAmountSideState.deliver() = SwapAmountSideStateDeliver;
  const factory SwapAmountSideState.receive() = SwapAmountSideStateReceive;
}

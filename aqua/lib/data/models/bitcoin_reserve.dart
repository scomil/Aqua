import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_reserve.freezed.dart';
part 'bitcoin_reserve.g.dart';

// Common

enum BrResponseStatus {
  @JsonValue('SUCCESS')
  success,
  @JsonValue('ERROR')
  error,
  @JsonValue('FAIL')
  failure,
}

@freezed
class Status with _$Status {
  const factory Status({
    @JsonKey(name: "return_code") BrResponseStatus? code,
    String? message,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

// Balance

@freezed
class BrUserBalanceResponse with _$BrUserBalanceResponse {
  const factory BrUserBalanceResponse({
    Status? status,
    @JsonKey(name: "response_data") List<UserBalanceItem?>? data,
  }) = _BrUserBalanceResponse;

  factory BrUserBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$BrUserBalanceResponseFromJson(json);
}

@freezed
class UserBalanceItem with _$UserBalanceItem {
  const factory UserBalanceItem({
    String? currency,
    String? balance,
  }) = _UserBalanceItem;

  factory UserBalanceItem.fromJson(Map<String, dynamic> json) =>
      _$UserBalanceItemFromJson(json);
}

// Transaction list

enum BrTransactionStatus {
  @JsonValue('DONE')
  done,
  @JsonValue('PENDING')
  pending,
}

enum BrTransactionType {
  @JsonValue('DEPOSIT')
  deposit,
  @JsonValue('WITHDRAWAL')
  withdrawal,
  @JsonValue('MARKET BUY')
  marketBuy,
  @JsonValue('MARKET SELL')
  marketSell,
  @JsonValue('SEPA_WIRE_IN')
  sepaWireIn,
  @JsonValue('SEPA_WIRE_OUT')
  sepaWireOut,
}

@freezed
class BrLoginRequest with _$BrLoginRequest {
  factory BrLoginRequest({
    String? username,
    String? password,
    String? description,
    @JsonKey(name: 'tfa_code') String? tfaCode,
  }) = _BrLoginRequest;

  factory BrLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$BrLoginRequestFromJson(json);
}

@freezed
class BrLoginResponse with _$BrLoginResponse {
  factory BrLoginResponse({
    Status? status,
    @JsonKey(name: 'response_data') LoginResponseData? data,
  }) = _BrLoginResponse;

  factory BrLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$BrLoginResponseFromJson(json);
}

@freezed
class LoginResponseData with _$LoginResponseData {
  factory LoginResponseData({
    @JsonKey(name: 'sign-in-token') String? token,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}

@freezed
class BrTransactionsResponse with _$BrTransactionsResponse {
  factory BrTransactionsResponse({
    Status? status,
    @JsonKey(name: 'response_data') TransactionsResponseData? data,
  }) = _BrTransactionsResponse;

  factory BrTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$BrTransactionsResponseFromJson(json);
}

@freezed
class TransactionsResponseData with _$TransactionsResponseData {
  factory TransactionsResponseData({
    Stats? stats,
    List<Transaction>? transactions,
  }) = _TransactionsResponseData;

  factory TransactionsResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionsResponseDataFromJson(json);
}

@freezed
class Stats with _$Stats {
  factory Stats({
    @JsonKey(name: 'total_transaction_count') int? totalTransactionCount,
    int? page,
    @JsonKey(name: 'total_number_of_pages') int? totalNumberOfPages,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'transaction_status') BrTransactionStatus? transactionStatus,
    @JsonKey(name: 'transaction_type') BrTransactionType? transactionType,
    @JsonKey(name: 'transaction_time') String? transactionTime,
    @JsonKey(name: 'in_currency') String? inCurrency,
    @JsonKey(name: 'in_amount') String? inAmount,
    @JsonKey(name: 'out_currency') String? outCurrency,
    @JsonKey(name: 'out_amount') String? outAmount,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

// Transaction Details

@freezed
class BrTransactionDetailsResponse with _$BrTransactionDetailsResponse {
  const factory BrTransactionDetailsResponse({
    Status? status,
    @JsonKey(name: 'response_data') TransactionDetailsResponseData? data,
  }) = _BrTransactionDetailsResponse;

  factory BrTransactionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$BrTransactionDetailsResponseFromJson(json);
}

@freezed
class TransactionDetailsResponseData with _$TransactionDetailsResponseData {
  const factory TransactionDetailsResponseData({
    @JsonKey(name: "transaction_id") String? transactionId,
    @JsonKey(name: "transaction_type") BrTransactionType? transactionType,
    @JsonKey(name: "transaction_status") BrTransactionStatus? transactionStatus,
    @JsonKey(name: "asset_bought") String? assetBought,
    @JsonKey(name: "asset_units_bought") String? assetUnitsBought,
    @JsonKey(name: "sats_bought") String? satsBought,
    @JsonKey(name: "fiat_spent") String? fiatSpent,
    @JsonKey(name: "fiat_currency") String? fiatCurrency,
    List<Withdrawal>? withdrawals,
  }) = _TransactionDetailsResponseData;

  factory TransactionDetailsResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsResponseDataFromJson(json);
}

@freezed
class Withdrawal with _$Withdrawal {
  const factory Withdrawal({
    String? rails,
    @JsonKey(name: "transaction_id") String? transactionId,
    @JsonKey(name: "transaction_type") BrTransactionType? transactionType,
    @JsonKey(name: "transaction_serial_number") int? serialNumber,
    @JsonKey(name: "transaction_status") BrTransactionStatus? transactionStatus,
    @JsonKey(name: "transaction_address") String? transactionAddress,
    @JsonKey(name: "transaction_fee") String? transactionFee,
    @JsonKey(name: "transaction_currency") String? transactionCurrency,
    @JsonKey(name: "transaction_identifier") String? transactionIdentifier,
  }) = _Withdrawal;

  factory Withdrawal.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalFromJson(json);
}

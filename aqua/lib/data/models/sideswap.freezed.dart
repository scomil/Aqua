// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sideswap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerStatusResponse _$ServerStatusResponseFromJson(Map<String, dynamic> json) {
  return _ServerStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$ServerStatusResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  ServerStatusResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerStatusResponseCopyWith<ServerStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerStatusResponseCopyWith<$Res> {
  factory $ServerStatusResponseCopyWith(ServerStatusResponse value,
          $Res Function(ServerStatusResponse) then) =
      _$ServerStatusResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? method, ServerStatusResult? result});

  $ServerStatusResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ServerStatusResponseCopyWithImpl<$Res>
    implements $ServerStatusResponseCopyWith<$Res> {
  _$ServerStatusResponseCopyWithImpl(this._value, this._then);

  final ServerStatusResponse _value;
  // ignore: unused_field
  final $Res Function(ServerStatusResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ServerStatusResult?,
    ));
  }

  @override
  $ServerStatusResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ServerStatusResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_ServerStatusResponseCopyWith<$Res>
    implements $ServerStatusResponseCopyWith<$Res> {
  factory _$$_ServerStatusResponseCopyWith(_$_ServerStatusResponse value,
          $Res Function(_$_ServerStatusResponse) then) =
      __$$_ServerStatusResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, ServerStatusResult? result});

  @override
  $ServerStatusResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_ServerStatusResponseCopyWithImpl<$Res>
    extends _$ServerStatusResponseCopyWithImpl<$Res>
    implements _$$_ServerStatusResponseCopyWith<$Res> {
  __$$_ServerStatusResponseCopyWithImpl(_$_ServerStatusResponse _value,
      $Res Function(_$_ServerStatusResponse) _then)
      : super(_value, (v) => _then(v as _$_ServerStatusResponse));

  @override
  _$_ServerStatusResponse get _value => super._value as _$_ServerStatusResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ServerStatusResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ServerStatusResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerStatusResponse implements _ServerStatusResponse {
  const _$_ServerStatusResponse({this.id, this.method, this.result});

  factory _$_ServerStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ServerStatusResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final ServerStatusResult? result;

  @override
  String toString() {
    return 'ServerStatusResponse(id: $id, method: $method, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerStatusResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_ServerStatusResponseCopyWith<_$_ServerStatusResponse> get copyWith =>
      __$$_ServerStatusResponseCopyWithImpl<_$_ServerStatusResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerStatusResponseToJson(
      this,
    );
  }
}

abstract class _ServerStatusResponse implements ServerStatusResponse {
  const factory _ServerStatusResponse(
      {final int? id,
      final String? method,
      final ServerStatusResult? result}) = _$_ServerStatusResponse;

  factory _ServerStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_ServerStatusResponse.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  ServerStatusResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ServerStatusResponseCopyWith<_$_ServerStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerStatusResult _$ServerStatusResultFromJson(Map<String, dynamic> json) {
  return _ServerStatusResult.fromJson(json);
}

/// @nodoc
mixin _$ServerStatusResult {
  @JsonKey(name: 'bitcoin_fee_rates')
  List<BitcoinFeeRate>? get bitcoinFeeRates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'elements_fee_rate')
  double? get elementsFeeRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_peg_in_amount')
  int? get minPegInAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_peg_out_amount')
  int? get minPegOutAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_submit_amount')
  int? get minSubmitAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_band')
  double? get priceBand => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_fee_percent_peg_in')
  double? get serverFeePercentPegIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_fee_percent_peg_out')
  double? get serverFeePercentPegOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerStatusResultCopyWith<ServerStatusResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerStatusResultCopyWith<$Res> {
  factory $ServerStatusResultCopyWith(
          ServerStatusResult value, $Res Function(ServerStatusResult) then) =
      _$ServerStatusResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'bitcoin_fee_rates')
          List<BitcoinFeeRate>? bitcoinFeeRates,
      @JsonKey(name: 'elements_fee_rate')
          double? elementsFeeRate,
      @JsonKey(name: 'min_peg_in_amount')
          int? minPegInAmount,
      @JsonKey(name: 'min_peg_out_amount')
          int? minPegOutAmount,
      @JsonKey(name: 'min_submit_amount')
          int? minSubmitAmount,
      @JsonKey(name: 'price_band')
          double? priceBand,
      @JsonKey(name: 'server_fee_percent_peg_in')
          double? serverFeePercentPegIn,
      @JsonKey(name: 'server_fee_percent_peg_out')
          double? serverFeePercentPegOut});
}

/// @nodoc
class _$ServerStatusResultCopyWithImpl<$Res>
    implements $ServerStatusResultCopyWith<$Res> {
  _$ServerStatusResultCopyWithImpl(this._value, this._then);

  final ServerStatusResult _value;
  // ignore: unused_field
  final $Res Function(ServerStatusResult) _then;

  @override
  $Res call({
    Object? bitcoinFeeRates = freezed,
    Object? elementsFeeRate = freezed,
    Object? minPegInAmount = freezed,
    Object? minPegOutAmount = freezed,
    Object? minSubmitAmount = freezed,
    Object? priceBand = freezed,
    Object? serverFeePercentPegIn = freezed,
    Object? serverFeePercentPegOut = freezed,
  }) {
    return _then(_value.copyWith(
      bitcoinFeeRates: bitcoinFeeRates == freezed
          ? _value.bitcoinFeeRates
          : bitcoinFeeRates // ignore: cast_nullable_to_non_nullable
              as List<BitcoinFeeRate>?,
      elementsFeeRate: elementsFeeRate == freezed
          ? _value.elementsFeeRate
          : elementsFeeRate // ignore: cast_nullable_to_non_nullable
              as double?,
      minPegInAmount: minPegInAmount == freezed
          ? _value.minPegInAmount
          : minPegInAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      minPegOutAmount: minPegOutAmount == freezed
          ? _value.minPegOutAmount
          : minPegOutAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      minSubmitAmount: minSubmitAmount == freezed
          ? _value.minSubmitAmount
          : minSubmitAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      priceBand: priceBand == freezed
          ? _value.priceBand
          : priceBand // ignore: cast_nullable_to_non_nullable
              as double?,
      serverFeePercentPegIn: serverFeePercentPegIn == freezed
          ? _value.serverFeePercentPegIn
          : serverFeePercentPegIn // ignore: cast_nullable_to_non_nullable
              as double?,
      serverFeePercentPegOut: serverFeePercentPegOut == freezed
          ? _value.serverFeePercentPegOut
          : serverFeePercentPegOut // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_ServerStatusResultCopyWith<$Res>
    implements $ServerStatusResultCopyWith<$Res> {
  factory _$$_ServerStatusResultCopyWith(_$_ServerStatusResult value,
          $Res Function(_$_ServerStatusResult) then) =
      __$$_ServerStatusResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'bitcoin_fee_rates')
          List<BitcoinFeeRate>? bitcoinFeeRates,
      @JsonKey(name: 'elements_fee_rate')
          double? elementsFeeRate,
      @JsonKey(name: 'min_peg_in_amount')
          int? minPegInAmount,
      @JsonKey(name: 'min_peg_out_amount')
          int? minPegOutAmount,
      @JsonKey(name: 'min_submit_amount')
          int? minSubmitAmount,
      @JsonKey(name: 'price_band')
          double? priceBand,
      @JsonKey(name: 'server_fee_percent_peg_in')
          double? serverFeePercentPegIn,
      @JsonKey(name: 'server_fee_percent_peg_out')
          double? serverFeePercentPegOut});
}

/// @nodoc
class __$$_ServerStatusResultCopyWithImpl<$Res>
    extends _$ServerStatusResultCopyWithImpl<$Res>
    implements _$$_ServerStatusResultCopyWith<$Res> {
  __$$_ServerStatusResultCopyWithImpl(
      _$_ServerStatusResult _value, $Res Function(_$_ServerStatusResult) _then)
      : super(_value, (v) => _then(v as _$_ServerStatusResult));

  @override
  _$_ServerStatusResult get _value => super._value as _$_ServerStatusResult;

  @override
  $Res call({
    Object? bitcoinFeeRates = freezed,
    Object? elementsFeeRate = freezed,
    Object? minPegInAmount = freezed,
    Object? minPegOutAmount = freezed,
    Object? minSubmitAmount = freezed,
    Object? priceBand = freezed,
    Object? serverFeePercentPegIn = freezed,
    Object? serverFeePercentPegOut = freezed,
  }) {
    return _then(_$_ServerStatusResult(
      bitcoinFeeRates: bitcoinFeeRates == freezed
          ? _value._bitcoinFeeRates
          : bitcoinFeeRates // ignore: cast_nullable_to_non_nullable
              as List<BitcoinFeeRate>?,
      elementsFeeRate: elementsFeeRate == freezed
          ? _value.elementsFeeRate
          : elementsFeeRate // ignore: cast_nullable_to_non_nullable
              as double?,
      minPegInAmount: minPegInAmount == freezed
          ? _value.minPegInAmount
          : minPegInAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      minPegOutAmount: minPegOutAmount == freezed
          ? _value.minPegOutAmount
          : minPegOutAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      minSubmitAmount: minSubmitAmount == freezed
          ? _value.minSubmitAmount
          : minSubmitAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      priceBand: priceBand == freezed
          ? _value.priceBand
          : priceBand // ignore: cast_nullable_to_non_nullable
              as double?,
      serverFeePercentPegIn: serverFeePercentPegIn == freezed
          ? _value.serverFeePercentPegIn
          : serverFeePercentPegIn // ignore: cast_nullable_to_non_nullable
              as double?,
      serverFeePercentPegOut: serverFeePercentPegOut == freezed
          ? _value.serverFeePercentPegOut
          : serverFeePercentPegOut // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerStatusResult implements _ServerStatusResult {
  const _$_ServerStatusResult(
      {@JsonKey(name: 'bitcoin_fee_rates')
          final List<BitcoinFeeRate>? bitcoinFeeRates,
      @JsonKey(name: 'elements_fee_rate')
          this.elementsFeeRate,
      @JsonKey(name: 'min_peg_in_amount')
          this.minPegInAmount,
      @JsonKey(name: 'min_peg_out_amount')
          this.minPegOutAmount,
      @JsonKey(name: 'min_submit_amount')
          this.minSubmitAmount,
      @JsonKey(name: 'price_band')
          this.priceBand,
      @JsonKey(name: 'server_fee_percent_peg_in')
          this.serverFeePercentPegIn,
      @JsonKey(name: 'server_fee_percent_peg_out')
          this.serverFeePercentPegOut})
      : _bitcoinFeeRates = bitcoinFeeRates;

  factory _$_ServerStatusResult.fromJson(Map<String, dynamic> json) =>
      _$$_ServerStatusResultFromJson(json);

  final List<BitcoinFeeRate>? _bitcoinFeeRates;
  @override
  @JsonKey(name: 'bitcoin_fee_rates')
  List<BitcoinFeeRate>? get bitcoinFeeRates {
    final value = _bitcoinFeeRates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'elements_fee_rate')
  final double? elementsFeeRate;
  @override
  @JsonKey(name: 'min_peg_in_amount')
  final int? minPegInAmount;
  @override
  @JsonKey(name: 'min_peg_out_amount')
  final int? minPegOutAmount;
  @override
  @JsonKey(name: 'min_submit_amount')
  final int? minSubmitAmount;
  @override
  @JsonKey(name: 'price_band')
  final double? priceBand;
  @override
  @JsonKey(name: 'server_fee_percent_peg_in')
  final double? serverFeePercentPegIn;
  @override
  @JsonKey(name: 'server_fee_percent_peg_out')
  final double? serverFeePercentPegOut;

  @override
  String toString() {
    return 'ServerStatusResult(bitcoinFeeRates: $bitcoinFeeRates, elementsFeeRate: $elementsFeeRate, minPegInAmount: $minPegInAmount, minPegOutAmount: $minPegOutAmount, minSubmitAmount: $minSubmitAmount, priceBand: $priceBand, serverFeePercentPegIn: $serverFeePercentPegIn, serverFeePercentPegOut: $serverFeePercentPegOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerStatusResult &&
            const DeepCollectionEquality()
                .equals(other._bitcoinFeeRates, _bitcoinFeeRates) &&
            const DeepCollectionEquality()
                .equals(other.elementsFeeRate, elementsFeeRate) &&
            const DeepCollectionEquality()
                .equals(other.minPegInAmount, minPegInAmount) &&
            const DeepCollectionEquality()
                .equals(other.minPegOutAmount, minPegOutAmount) &&
            const DeepCollectionEquality()
                .equals(other.minSubmitAmount, minSubmitAmount) &&
            const DeepCollectionEquality().equals(other.priceBand, priceBand) &&
            const DeepCollectionEquality()
                .equals(other.serverFeePercentPegIn, serverFeePercentPegIn) &&
            const DeepCollectionEquality()
                .equals(other.serverFeePercentPegOut, serverFeePercentPegOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bitcoinFeeRates),
      const DeepCollectionEquality().hash(elementsFeeRate),
      const DeepCollectionEquality().hash(minPegInAmount),
      const DeepCollectionEquality().hash(minPegOutAmount),
      const DeepCollectionEquality().hash(minSubmitAmount),
      const DeepCollectionEquality().hash(priceBand),
      const DeepCollectionEquality().hash(serverFeePercentPegIn),
      const DeepCollectionEquality().hash(serverFeePercentPegOut));

  @JsonKey(ignore: true)
  @override
  _$$_ServerStatusResultCopyWith<_$_ServerStatusResult> get copyWith =>
      __$$_ServerStatusResultCopyWithImpl<_$_ServerStatusResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerStatusResultToJson(
      this,
    );
  }
}

abstract class _ServerStatusResult implements ServerStatusResult {
  const factory _ServerStatusResult(
      {@JsonKey(name: 'bitcoin_fee_rates')
          final List<BitcoinFeeRate>? bitcoinFeeRates,
      @JsonKey(name: 'elements_fee_rate')
          final double? elementsFeeRate,
      @JsonKey(name: 'min_peg_in_amount')
          final int? minPegInAmount,
      @JsonKey(name: 'min_peg_out_amount')
          final int? minPegOutAmount,
      @JsonKey(name: 'min_submit_amount')
          final int? minSubmitAmount,
      @JsonKey(name: 'price_band')
          final double? priceBand,
      @JsonKey(name: 'server_fee_percent_peg_in')
          final double? serverFeePercentPegIn,
      @JsonKey(name: 'server_fee_percent_peg_out')
          final double? serverFeePercentPegOut}) = _$_ServerStatusResult;

  factory _ServerStatusResult.fromJson(Map<String, dynamic> json) =
      _$_ServerStatusResult.fromJson;

  @override
  @JsonKey(name: 'bitcoin_fee_rates')
  List<BitcoinFeeRate>? get bitcoinFeeRates;
  @override
  @JsonKey(name: 'elements_fee_rate')
  double? get elementsFeeRate;
  @override
  @JsonKey(name: 'min_peg_in_amount')
  int? get minPegInAmount;
  @override
  @JsonKey(name: 'min_peg_out_amount')
  int? get minPegOutAmount;
  @override
  @JsonKey(name: 'min_submit_amount')
  int? get minSubmitAmount;
  @override
  @JsonKey(name: 'price_band')
  double? get priceBand;
  @override
  @JsonKey(name: 'server_fee_percent_peg_in')
  double? get serverFeePercentPegIn;
  @override
  @JsonKey(name: 'server_fee_percent_peg_out')
  double? get serverFeePercentPegOut;
  @override
  @JsonKey(ignore: true)
  _$$_ServerStatusResultCopyWith<_$_ServerStatusResult> get copyWith =>
      throw _privateConstructorUsedError;
}

BitcoinFeeRate _$BitcoinFeeRateFromJson(Map<String, dynamic> json) {
  return _BitcoinFeeRate.fromJson(json);
}

/// @nodoc
mixin _$BitcoinFeeRate {
  int? get blocks => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BitcoinFeeRateCopyWith<BitcoinFeeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinFeeRateCopyWith<$Res> {
  factory $BitcoinFeeRateCopyWith(
          BitcoinFeeRate value, $Res Function(BitcoinFeeRate) then) =
      _$BitcoinFeeRateCopyWithImpl<$Res>;
  $Res call({int? blocks, double? value});
}

/// @nodoc
class _$BitcoinFeeRateCopyWithImpl<$Res>
    implements $BitcoinFeeRateCopyWith<$Res> {
  _$BitcoinFeeRateCopyWithImpl(this._value, this._then);

  final BitcoinFeeRate _value;
  // ignore: unused_field
  final $Res Function(BitcoinFeeRate) _then;

  @override
  $Res call({
    Object? blocks = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      blocks: blocks == freezed
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_BitcoinFeeRateCopyWith<$Res>
    implements $BitcoinFeeRateCopyWith<$Res> {
  factory _$$_BitcoinFeeRateCopyWith(
          _$_BitcoinFeeRate value, $Res Function(_$_BitcoinFeeRate) then) =
      __$$_BitcoinFeeRateCopyWithImpl<$Res>;
  @override
  $Res call({int? blocks, double? value});
}

/// @nodoc
class __$$_BitcoinFeeRateCopyWithImpl<$Res>
    extends _$BitcoinFeeRateCopyWithImpl<$Res>
    implements _$$_BitcoinFeeRateCopyWith<$Res> {
  __$$_BitcoinFeeRateCopyWithImpl(
      _$_BitcoinFeeRate _value, $Res Function(_$_BitcoinFeeRate) _then)
      : super(_value, (v) => _then(v as _$_BitcoinFeeRate));

  @override
  _$_BitcoinFeeRate get _value => super._value as _$_BitcoinFeeRate;

  @override
  $Res call({
    Object? blocks = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_BitcoinFeeRate(
      blocks: blocks == freezed
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BitcoinFeeRate implements _BitcoinFeeRate {
  const _$_BitcoinFeeRate({this.blocks, this.value});

  factory _$_BitcoinFeeRate.fromJson(Map<String, dynamic> json) =>
      _$$_BitcoinFeeRateFromJson(json);

  @override
  final int? blocks;
  @override
  final double? value;

  @override
  String toString() {
    return 'BitcoinFeeRate(blocks: $blocks, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BitcoinFeeRate &&
            const DeepCollectionEquality().equals(other.blocks, blocks) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blocks),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_BitcoinFeeRateCopyWith<_$_BitcoinFeeRate> get copyWith =>
      __$$_BitcoinFeeRateCopyWithImpl<_$_BitcoinFeeRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BitcoinFeeRateToJson(
      this,
    );
  }
}

abstract class _BitcoinFeeRate implements BitcoinFeeRate {
  const factory _BitcoinFeeRate({final int? blocks, final double? value}) =
      _$_BitcoinFeeRate;

  factory _BitcoinFeeRate.fromJson(Map<String, dynamic> json) =
      _$_BitcoinFeeRate.fromJson;

  @override
  int? get blocks;
  @override
  double? get value;
  @override
  @JsonKey(ignore: true)
  _$$_BitcoinFeeRateCopyWith<_$_BitcoinFeeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscribePriceStreamRequest _$SubscribePriceStreamRequestFromJson(
    Map<String, dynamic> json) {
  return _SubscribePriceStreamRequest.fromJson(json);
}

/// @nodoc
mixin _$SubscribePriceStreamRequest {
  @JsonKey(name: 'asset')
  String? get asset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_bitcoins')
  bool? get sendBitcoins => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribePriceStreamRequestCopyWith<SubscribePriceStreamRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribePriceStreamRequestCopyWith<$Res> {
  factory $SubscribePriceStreamRequestCopyWith(
          SubscribePriceStreamRequest value,
          $Res Function(SubscribePriceStreamRequest) then) =
      _$SubscribePriceStreamRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'asset') String? asset,
      @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class _$SubscribePriceStreamRequestCopyWithImpl<$Res>
    implements $SubscribePriceStreamRequestCopyWith<$Res> {
  _$SubscribePriceStreamRequestCopyWithImpl(this._value, this._then);

  final SubscribePriceStreamRequest _value;
  // ignore: unused_field
  final $Res Function(SubscribePriceStreamRequest) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? sendBitcoins = freezed,
    Object? sendAmount = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendBitcoins: sendBitcoins == freezed
          ? _value.sendBitcoins
          : sendBitcoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SubscribePriceStreamRequestCopyWith<$Res>
    implements $SubscribePriceStreamRequestCopyWith<$Res> {
  factory _$$_SubscribePriceStreamRequestCopyWith(
          _$_SubscribePriceStreamRequest value,
          $Res Function(_$_SubscribePriceStreamRequest) then) =
      __$$_SubscribePriceStreamRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'asset') String? asset,
      @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class __$$_SubscribePriceStreamRequestCopyWithImpl<$Res>
    extends _$SubscribePriceStreamRequestCopyWithImpl<$Res>
    implements _$$_SubscribePriceStreamRequestCopyWith<$Res> {
  __$$_SubscribePriceStreamRequestCopyWithImpl(
      _$_SubscribePriceStreamRequest _value,
      $Res Function(_$_SubscribePriceStreamRequest) _then)
      : super(_value, (v) => _then(v as _$_SubscribePriceStreamRequest));

  @override
  _$_SubscribePriceStreamRequest get _value =>
      super._value as _$_SubscribePriceStreamRequest;

  @override
  $Res call({
    Object? asset = freezed,
    Object? sendBitcoins = freezed,
    Object? sendAmount = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_$_SubscribePriceStreamRequest(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendBitcoins: sendBitcoins == freezed
          ? _value.sendBitcoins
          : sendBitcoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscribePriceStreamRequest implements _SubscribePriceStreamRequest {
  const _$_SubscribePriceStreamRequest(
      {@JsonKey(name: 'asset') this.asset,
      @JsonKey(name: 'send_bitcoins') this.sendBitcoins = true,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'recv_amount') this.recvAmount});

  factory _$_SubscribePriceStreamRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SubscribePriceStreamRequestFromJson(json);

  @override
  @JsonKey(name: 'asset')
  final String? asset;
  @override
  @JsonKey(name: 'send_bitcoins')
  final bool? sendBitcoins;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;

  @override
  String toString() {
    return 'SubscribePriceStreamRequest(asset: $asset, sendBitcoins: $sendBitcoins, sendAmount: $sendAmount, recvAmount: $recvAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscribePriceStreamRequest &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality()
                .equals(other.sendBitcoins, sendBitcoins) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(sendBitcoins),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAmount));

  @JsonKey(ignore: true)
  @override
  _$$_SubscribePriceStreamRequestCopyWith<_$_SubscribePriceStreamRequest>
      get copyWith => __$$_SubscribePriceStreamRequestCopyWithImpl<
          _$_SubscribePriceStreamRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscribePriceStreamRequestToJson(
      this,
    );
  }
}

abstract class _SubscribePriceStreamRequest
    implements SubscribePriceStreamRequest {
  const factory _SubscribePriceStreamRequest(
          {@JsonKey(name: 'asset') final String? asset,
          @JsonKey(name: 'send_bitcoins') final bool? sendBitcoins,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'recv_amount') final int? recvAmount}) =
      _$_SubscribePriceStreamRequest;

  factory _SubscribePriceStreamRequest.fromJson(Map<String, dynamic> json) =
      _$_SubscribePriceStreamRequest.fromJson;

  @override
  @JsonKey(name: 'asset')
  String? get asset;
  @override
  @JsonKey(name: 'send_bitcoins')
  bool? get sendBitcoins;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(ignore: true)
  _$$_SubscribePriceStreamRequestCopyWith<_$_SubscribePriceStreamRequest>
      get copyWith => throw _privateConstructorUsedError;
}

SubscribePriceStreamResponse _$SubscribePriceStreamResponseFromJson(
    Map<String, dynamic> json) {
  return _SubscribePriceStreamResponse.fromJson(json);
}

/// @nodoc
mixin _$SubscribePriceStreamResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  PriceStreamResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribePriceStreamResponseCopyWith<SubscribePriceStreamResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribePriceStreamResponseCopyWith<$Res> {
  factory $SubscribePriceStreamResponseCopyWith(
          SubscribePriceStreamResponse value,
          $Res Function(SubscribePriceStreamResponse) then) =
      _$SubscribePriceStreamResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? method, PriceStreamResult? result});

  $PriceStreamResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SubscribePriceStreamResponseCopyWithImpl<$Res>
    implements $SubscribePriceStreamResponseCopyWith<$Res> {
  _$SubscribePriceStreamResponseCopyWithImpl(this._value, this._then);

  final SubscribePriceStreamResponse _value;
  // ignore: unused_field
  final $Res Function(SubscribePriceStreamResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PriceStreamResult?,
    ));
  }

  @override
  $PriceStreamResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $PriceStreamResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_SubscribePriceStreamResponseCopyWith<$Res>
    implements $SubscribePriceStreamResponseCopyWith<$Res> {
  factory _$$_SubscribePriceStreamResponseCopyWith(
          _$_SubscribePriceStreamResponse value,
          $Res Function(_$_SubscribePriceStreamResponse) then) =
      __$$_SubscribePriceStreamResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, PriceStreamResult? result});

  @override
  $PriceStreamResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_SubscribePriceStreamResponseCopyWithImpl<$Res>
    extends _$SubscribePriceStreamResponseCopyWithImpl<$Res>
    implements _$$_SubscribePriceStreamResponseCopyWith<$Res> {
  __$$_SubscribePriceStreamResponseCopyWithImpl(
      _$_SubscribePriceStreamResponse _value,
      $Res Function(_$_SubscribePriceStreamResponse) _then)
      : super(_value, (v) => _then(v as _$_SubscribePriceStreamResponse));

  @override
  _$_SubscribePriceStreamResponse get _value =>
      super._value as _$_SubscribePriceStreamResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_SubscribePriceStreamResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PriceStreamResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscribePriceStreamResponse implements _SubscribePriceStreamResponse {
  const _$_SubscribePriceStreamResponse({this.id, this.method, this.result});

  factory _$_SubscribePriceStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SubscribePriceStreamResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final PriceStreamResult? result;

  @override
  String toString() {
    return 'SubscribePriceStreamResponse(id: $id, method: $method, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscribePriceStreamResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_SubscribePriceStreamResponseCopyWith<_$_SubscribePriceStreamResponse>
      get copyWith => __$$_SubscribePriceStreamResponseCopyWithImpl<
          _$_SubscribePriceStreamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscribePriceStreamResponseToJson(
      this,
    );
  }
}

abstract class _SubscribePriceStreamResponse
    implements SubscribePriceStreamResponse {
  const factory _SubscribePriceStreamResponse(
      {final int? id,
      final String? method,
      final PriceStreamResult? result}) = _$_SubscribePriceStreamResponse;

  factory _SubscribePriceStreamResponse.fromJson(Map<String, dynamic> json) =
      _$_SubscribePriceStreamResponse.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  PriceStreamResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_SubscribePriceStreamResponseCopyWith<_$_SubscribePriceStreamResponse>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePriceStreamResponse _$UpdatePriceStreamResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdatePriceStreamResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdatePriceStreamResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  PriceStreamResult? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePriceStreamResponseCopyWith<UpdatePriceStreamResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePriceStreamResponseCopyWith<$Res> {
  factory $UpdatePriceStreamResponseCopyWith(UpdatePriceStreamResponse value,
          $Res Function(UpdatePriceStreamResponse) then) =
      _$UpdatePriceStreamResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? method, PriceStreamResult? params});

  $PriceStreamResultCopyWith<$Res>? get params;
}

/// @nodoc
class _$UpdatePriceStreamResponseCopyWithImpl<$Res>
    implements $UpdatePriceStreamResponseCopyWith<$Res> {
  _$UpdatePriceStreamResponseCopyWithImpl(this._value, this._then);

  final UpdatePriceStreamResponse _value;
  // ignore: unused_field
  final $Res Function(UpdatePriceStreamResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PriceStreamResult?,
    ));
  }

  @override
  $PriceStreamResultCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $PriceStreamResultCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc
abstract class _$$_UpdatePriceStreamResponseCopyWith<$Res>
    implements $UpdatePriceStreamResponseCopyWith<$Res> {
  factory _$$_UpdatePriceStreamResponseCopyWith(
          _$_UpdatePriceStreamResponse value,
          $Res Function(_$_UpdatePriceStreamResponse) then) =
      __$$_UpdatePriceStreamResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, PriceStreamResult? params});

  @override
  $PriceStreamResultCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_UpdatePriceStreamResponseCopyWithImpl<$Res>
    extends _$UpdatePriceStreamResponseCopyWithImpl<$Res>
    implements _$$_UpdatePriceStreamResponseCopyWith<$Res> {
  __$$_UpdatePriceStreamResponseCopyWithImpl(
      _$_UpdatePriceStreamResponse _value,
      $Res Function(_$_UpdatePriceStreamResponse) _then)
      : super(_value, (v) => _then(v as _$_UpdatePriceStreamResponse));

  @override
  _$_UpdatePriceStreamResponse get _value =>
      super._value as _$_UpdatePriceStreamResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_$_UpdatePriceStreamResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PriceStreamResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdatePriceStreamResponse implements _UpdatePriceStreamResponse {
  const _$_UpdatePriceStreamResponse({this.id, this.method, this.params});

  factory _$_UpdatePriceStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdatePriceStreamResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final PriceStreamResult? params;

  @override
  String toString() {
    return 'UpdatePriceStreamResponse(id: $id, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePriceStreamResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePriceStreamResponseCopyWith<_$_UpdatePriceStreamResponse>
      get copyWith => __$$_UpdatePriceStreamResponseCopyWithImpl<
          _$_UpdatePriceStreamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdatePriceStreamResponseToJson(
      this,
    );
  }
}

abstract class _UpdatePriceStreamResponse implements UpdatePriceStreamResponse {
  const factory _UpdatePriceStreamResponse(
      {final int? id,
      final String? method,
      final PriceStreamResult? params}) = _$_UpdatePriceStreamResponse;

  factory _UpdatePriceStreamResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdatePriceStreamResponse.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  PriceStreamResult? get params;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatePriceStreamResponseCopyWith<_$_UpdatePriceStreamResponse>
      get copyWith => throw _privateConstructorUsedError;
}

PriceStreamResult _$PriceStreamResultFromJson(Map<String, dynamic> json) {
  return _PriceStreamResult.fromJson(json);
}

/// @nodoc
mixin _$PriceStreamResult {
  String? get asset => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_msg')
  String? get errorMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_fee')
  int? get fixedFee => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_bitcoins')
  bool? get sendBitcoins => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribe_id')
  int? get subscribeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceStreamResultCopyWith<PriceStreamResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceStreamResultCopyWith<$Res> {
  factory $PriceStreamResultCopyWith(
          PriceStreamResult value, $Res Function(PriceStreamResult) then) =
      _$PriceStreamResultCopyWithImpl<$Res>;
  $Res call(
      {String? asset,
      @JsonKey(name: 'error_msg') String? errorMsg,
      @JsonKey(name: 'fixed_fee') int? fixedFee,
      double? price,
      @JsonKey(name: 'recv_amount') int? recvAmount,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
      @JsonKey(name: 'subscribe_id') int? subscribeId});
}

/// @nodoc
class _$PriceStreamResultCopyWithImpl<$Res>
    implements $PriceStreamResultCopyWith<$Res> {
  _$PriceStreamResultCopyWithImpl(this._value, this._then);

  final PriceStreamResult _value;
  // ignore: unused_field
  final $Res Function(PriceStreamResult) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? errorMsg = freezed,
    Object? fixedFee = freezed,
    Object? price = freezed,
    Object? recvAmount = freezed,
    Object? sendAmount = freezed,
    Object? sendBitcoins = freezed,
    Object? subscribeId = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedFee: fixedFee == freezed
          ? _value.fixedFee
          : fixedFee // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendBitcoins: sendBitcoins == freezed
          ? _value.sendBitcoins
          : sendBitcoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscribeId: subscribeId == freezed
          ? _value.subscribeId
          : subscribeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PriceStreamResultCopyWith<$Res>
    implements $PriceStreamResultCopyWith<$Res> {
  factory _$$_PriceStreamResultCopyWith(_$_PriceStreamResult value,
          $Res Function(_$_PriceStreamResult) then) =
      __$$_PriceStreamResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? asset,
      @JsonKey(name: 'error_msg') String? errorMsg,
      @JsonKey(name: 'fixed_fee') int? fixedFee,
      double? price,
      @JsonKey(name: 'recv_amount') int? recvAmount,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
      @JsonKey(name: 'subscribe_id') int? subscribeId});
}

/// @nodoc
class __$$_PriceStreamResultCopyWithImpl<$Res>
    extends _$PriceStreamResultCopyWithImpl<$Res>
    implements _$$_PriceStreamResultCopyWith<$Res> {
  __$$_PriceStreamResultCopyWithImpl(
      _$_PriceStreamResult _value, $Res Function(_$_PriceStreamResult) _then)
      : super(_value, (v) => _then(v as _$_PriceStreamResult));

  @override
  _$_PriceStreamResult get _value => super._value as _$_PriceStreamResult;

  @override
  $Res call({
    Object? asset = freezed,
    Object? errorMsg = freezed,
    Object? fixedFee = freezed,
    Object? price = freezed,
    Object? recvAmount = freezed,
    Object? sendAmount = freezed,
    Object? sendBitcoins = freezed,
    Object? subscribeId = freezed,
  }) {
    return _then(_$_PriceStreamResult(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedFee: fixedFee == freezed
          ? _value.fixedFee
          : fixedFee // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendBitcoins: sendBitcoins == freezed
          ? _value.sendBitcoins
          : sendBitcoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscribeId: subscribeId == freezed
          ? _value.subscribeId
          : subscribeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceStreamResult implements _PriceStreamResult {
  const _$_PriceStreamResult(
      {this.asset,
      @JsonKey(name: 'error_msg') this.errorMsg,
      @JsonKey(name: 'fixed_fee') this.fixedFee,
      this.price,
      @JsonKey(name: 'recv_amount') this.recvAmount,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'send_bitcoins') this.sendBitcoins,
      @JsonKey(name: 'subscribe_id') this.subscribeId});

  factory _$_PriceStreamResult.fromJson(Map<String, dynamic> json) =>
      _$$_PriceStreamResultFromJson(json);

  @override
  final String? asset;
  @override
  @JsonKey(name: 'error_msg')
  final String? errorMsg;
  @override
  @JsonKey(name: 'fixed_fee')
  final int? fixedFee;
  @override
  final double? price;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'send_bitcoins')
  final bool? sendBitcoins;
  @override
  @JsonKey(name: 'subscribe_id')
  final int? subscribeId;

  @override
  String toString() {
    return 'PriceStreamResult(asset: $asset, errorMsg: $errorMsg, fixedFee: $fixedFee, price: $price, recvAmount: $recvAmount, sendAmount: $sendAmount, sendBitcoins: $sendBitcoins, subscribeId: $subscribeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceStreamResult &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            const DeepCollectionEquality().equals(other.fixedFee, fixedFee) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality()
                .equals(other.sendBitcoins, sendBitcoins) &&
            const DeepCollectionEquality()
                .equals(other.subscribeId, subscribeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(errorMsg),
      const DeepCollectionEquality().hash(fixedFee),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(recvAmount),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(sendBitcoins),
      const DeepCollectionEquality().hash(subscribeId));

  @JsonKey(ignore: true)
  @override
  _$$_PriceStreamResultCopyWith<_$_PriceStreamResult> get copyWith =>
      __$$_PriceStreamResultCopyWithImpl<_$_PriceStreamResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceStreamResultToJson(
      this,
    );
  }
}

abstract class _PriceStreamResult implements PriceStreamResult {
  const factory _PriceStreamResult(
          {final String? asset,
          @JsonKey(name: 'error_msg') final String? errorMsg,
          @JsonKey(name: 'fixed_fee') final int? fixedFee,
          final double? price,
          @JsonKey(name: 'recv_amount') final int? recvAmount,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'send_bitcoins') final bool? sendBitcoins,
          @JsonKey(name: 'subscribe_id') final int? subscribeId}) =
      _$_PriceStreamResult;

  factory _PriceStreamResult.fromJson(Map<String, dynamic> json) =
      _$_PriceStreamResult.fromJson;

  @override
  String? get asset;
  @override
  @JsonKey(name: 'error_msg')
  String? get errorMsg;
  @override
  @JsonKey(name: 'fixed_fee')
  int? get fixedFee;
  @override
  double? get price;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'send_bitcoins')
  bool? get sendBitcoins;
  @override
  @JsonKey(name: 'subscribe_id')
  int? get subscribeId;
  @override
  @JsonKey(ignore: true)
  _$$_PriceStreamResultCopyWith<_$_PriceStreamResult> get copyWith =>
      throw _privateConstructorUsedError;
}

SideSwapAsset _$SideSwapAssetFromJson(Map<String, dynamic> json) {
  return _SideSwapAsset.fromJson(json);
}

/// @nodoc
mixin _$SideSwapAsset {
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String? get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'instant_swaps')
  bool? get instantSwaps => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'precision')
  int? get precision => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticker')
  String? get ticker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideSwapAssetCopyWith<SideSwapAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideSwapAssetCopyWith<$Res> {
  factory $SideSwapAssetCopyWith(
          SideSwapAsset value, $Res Function(SideSwapAsset) then) =
      _$SideSwapAssetCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
      String? icon,
      @JsonKey(name: 'icon_url') String? iconUrl,
      @JsonKey(name: 'instant_swaps') bool? instantSwaps,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'precision') int? precision,
      @JsonKey(name: 'ticker') String? ticker});
}

/// @nodoc
class _$SideSwapAssetCopyWithImpl<$Res>
    implements $SideSwapAssetCopyWith<$Res> {
  _$SideSwapAssetCopyWithImpl(this._value, this._then);

  final SideSwapAsset _value;
  // ignore: unused_field
  final $Res Function(SideSwapAsset) _then;

  @override
  $Res call({
    Object? assetId = freezed,
    Object? icon = freezed,
    Object? iconUrl = freezed,
    Object? instantSwaps = freezed,
    Object? name = freezed,
    Object? precision = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_value.copyWith(
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instantSwaps: instantSwaps == freezed
          ? _value.instantSwaps
          : instantSwaps // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideSwapAssetCopyWith<$Res>
    implements $SideSwapAssetCopyWith<$Res> {
  factory _$$_SideSwapAssetCopyWith(
          _$_SideSwapAsset value, $Res Function(_$_SideSwapAsset) then) =
      __$$_SideSwapAssetCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
      String? icon,
      @JsonKey(name: 'icon_url') String? iconUrl,
      @JsonKey(name: 'instant_swaps') bool? instantSwaps,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'precision') int? precision,
      @JsonKey(name: 'ticker') String? ticker});
}

/// @nodoc
class __$$_SideSwapAssetCopyWithImpl<$Res>
    extends _$SideSwapAssetCopyWithImpl<$Res>
    implements _$$_SideSwapAssetCopyWith<$Res> {
  __$$_SideSwapAssetCopyWithImpl(
      _$_SideSwapAsset _value, $Res Function(_$_SideSwapAsset) _then)
      : super(_value, (v) => _then(v as _$_SideSwapAsset));

  @override
  _$_SideSwapAsset get _value => super._value as _$_SideSwapAsset;

  @override
  $Res call({
    Object? assetId = freezed,
    Object? icon = freezed,
    Object? iconUrl = freezed,
    Object? instantSwaps = freezed,
    Object? name = freezed,
    Object? precision = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_$_SideSwapAsset(
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instantSwaps: instantSwaps == freezed
          ? _value.instantSwaps
          : instantSwaps // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideSwapAsset implements _SideSwapAsset {
  const _$_SideSwapAsset(
      {@JsonKey(name: 'asset_id') this.assetId,
      this.icon,
      @JsonKey(name: 'icon_url') this.iconUrl,
      @JsonKey(name: 'instant_swaps') this.instantSwaps,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'precision') this.precision,
      @JsonKey(name: 'ticker') this.ticker});

  factory _$_SideSwapAsset.fromJson(Map<String, dynamic> json) =>
      _$$_SideSwapAssetFromJson(json);

  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @override
  @JsonKey(name: 'instant_swaps')
  final bool? instantSwaps;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'precision')
  final int? precision;
  @override
  @JsonKey(name: 'ticker')
  final String? ticker;

  @override
  String toString() {
    return 'SideSwapAsset(assetId: $assetId, icon: $icon, iconUrl: $iconUrl, instantSwaps: $instantSwaps, name: $name, precision: $precision, ticker: $ticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideSwapAsset &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality()
                .equals(other.instantSwaps, instantSwaps) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.precision, precision) &&
            const DeepCollectionEquality().equals(other.ticker, ticker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(assetId),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(instantSwaps),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(precision),
      const DeepCollectionEquality().hash(ticker));

  @JsonKey(ignore: true)
  @override
  _$$_SideSwapAssetCopyWith<_$_SideSwapAsset> get copyWith =>
      __$$_SideSwapAssetCopyWithImpl<_$_SideSwapAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideSwapAssetToJson(
      this,
    );
  }
}

abstract class _SideSwapAsset implements SideSwapAsset {
  const factory _SideSwapAsset(
      {@JsonKey(name: 'asset_id') final String? assetId,
      final String? icon,
      @JsonKey(name: 'icon_url') final String? iconUrl,
      @JsonKey(name: 'instant_swaps') final bool? instantSwaps,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'precision') final int? precision,
      @JsonKey(name: 'ticker') final String? ticker}) = _$_SideSwapAsset;

  factory _SideSwapAsset.fromJson(Map<String, dynamic> json) =
      _$_SideSwapAsset.fromJson;

  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'icon_url')
  String? get iconUrl;
  @override
  @JsonKey(name: 'instant_swaps')
  bool? get instantSwaps;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'precision')
  int? get precision;
  @override
  @JsonKey(name: 'ticker')
  String? get ticker;
  @override
  @JsonKey(ignore: true)
  _$$_SideSwapAssetCopyWith<_$_SideSwapAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

AssetsRequest _$AssetsRequestFromJson(Map<String, dynamic> json) {
  return _AssetsRequest.fromJson(json);
}

/// @nodoc
mixin _$AssetsRequest {
  @JsonKey(name: 'embedded_icons')
  bool? get embeddedIcons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetsRequestCopyWith<AssetsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsRequestCopyWith<$Res> {
  factory $AssetsRequestCopyWith(
          AssetsRequest value, $Res Function(AssetsRequest) then) =
      _$AssetsRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'embedded_icons') bool? embeddedIcons});
}

/// @nodoc
class _$AssetsRequestCopyWithImpl<$Res>
    implements $AssetsRequestCopyWith<$Res> {
  _$AssetsRequestCopyWithImpl(this._value, this._then);

  final AssetsRequest _value;
  // ignore: unused_field
  final $Res Function(AssetsRequest) _then;

  @override
  $Res call({
    Object? embeddedIcons = freezed,
  }) {
    return _then(_value.copyWith(
      embeddedIcons: embeddedIcons == freezed
          ? _value.embeddedIcons
          : embeddedIcons // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_AssetsRequestCopyWith<$Res>
    implements $AssetsRequestCopyWith<$Res> {
  factory _$$_AssetsRequestCopyWith(
          _$_AssetsRequest value, $Res Function(_$_AssetsRequest) then) =
      __$$_AssetsRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'embedded_icons') bool? embeddedIcons});
}

/// @nodoc
class __$$_AssetsRequestCopyWithImpl<$Res>
    extends _$AssetsRequestCopyWithImpl<$Res>
    implements _$$_AssetsRequestCopyWith<$Res> {
  __$$_AssetsRequestCopyWithImpl(
      _$_AssetsRequest _value, $Res Function(_$_AssetsRequest) _then)
      : super(_value, (v) => _then(v as _$_AssetsRequest));

  @override
  _$_AssetsRequest get _value => super._value as _$_AssetsRequest;

  @override
  $Res call({
    Object? embeddedIcons = freezed,
  }) {
    return _then(_$_AssetsRequest(
      embeddedIcons: embeddedIcons == freezed
          ? _value.embeddedIcons
          : embeddedIcons // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetsRequest implements _AssetsRequest {
  const _$_AssetsRequest({@JsonKey(name: 'embedded_icons') this.embeddedIcons});

  factory _$_AssetsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AssetsRequestFromJson(json);

  @override
  @JsonKey(name: 'embedded_icons')
  final bool? embeddedIcons;

  @override
  String toString() {
    return 'AssetsRequest(embeddedIcons: $embeddedIcons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetsRequest &&
            const DeepCollectionEquality()
                .equals(other.embeddedIcons, embeddedIcons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(embeddedIcons));

  @JsonKey(ignore: true)
  @override
  _$$_AssetsRequestCopyWith<_$_AssetsRequest> get copyWith =>
      __$$_AssetsRequestCopyWithImpl<_$_AssetsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetsRequestToJson(
      this,
    );
  }
}

abstract class _AssetsRequest implements AssetsRequest {
  const factory _AssetsRequest(
          {@JsonKey(name: 'embedded_icons') final bool? embeddedIcons}) =
      _$_AssetsRequest;

  factory _AssetsRequest.fromJson(Map<String, dynamic> json) =
      _$_AssetsRequest.fromJson;

  @override
  @JsonKey(name: 'embedded_icons')
  bool? get embeddedIcons;
  @override
  @JsonKey(ignore: true)
  _$$_AssetsRequestCopyWith<_$_AssetsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

AssetsResult _$AssetsResultFromJson(Map<String, dynamic> json) {
  return _AssetsResult.fromJson(json);
}

/// @nodoc
mixin _$AssetsResult {
  @JsonKey(name: 'assets')
  List<SideSwapAsset>? get assets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetsResultCopyWith<AssetsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsResultCopyWith<$Res> {
  factory $AssetsResultCopyWith(
          AssetsResult value, $Res Function(AssetsResult) then) =
      _$AssetsResultCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'assets') List<SideSwapAsset>? assets});
}

/// @nodoc
class _$AssetsResultCopyWithImpl<$Res> implements $AssetsResultCopyWith<$Res> {
  _$AssetsResultCopyWithImpl(this._value, this._then);

  final AssetsResult _value;
  // ignore: unused_field
  final $Res Function(AssetsResult) _then;

  @override
  $Res call({
    Object? assets = freezed,
  }) {
    return _then(_value.copyWith(
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<SideSwapAsset>?,
    ));
  }
}

/// @nodoc
abstract class _$$_AssetsResultCopyWith<$Res>
    implements $AssetsResultCopyWith<$Res> {
  factory _$$_AssetsResultCopyWith(
          _$_AssetsResult value, $Res Function(_$_AssetsResult) then) =
      __$$_AssetsResultCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'assets') List<SideSwapAsset>? assets});
}

/// @nodoc
class __$$_AssetsResultCopyWithImpl<$Res>
    extends _$AssetsResultCopyWithImpl<$Res>
    implements _$$_AssetsResultCopyWith<$Res> {
  __$$_AssetsResultCopyWithImpl(
      _$_AssetsResult _value, $Res Function(_$_AssetsResult) _then)
      : super(_value, (v) => _then(v as _$_AssetsResult));

  @override
  _$_AssetsResult get _value => super._value as _$_AssetsResult;

  @override
  $Res call({
    Object? assets = freezed,
  }) {
    return _then(_$_AssetsResult(
      assets: assets == freezed
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<SideSwapAsset>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetsResult implements _AssetsResult {
  const _$_AssetsResult(
      {@JsonKey(name: 'assets') final List<SideSwapAsset>? assets})
      : _assets = assets;

  factory _$_AssetsResult.fromJson(Map<String, dynamic> json) =>
      _$$_AssetsResultFromJson(json);

  final List<SideSwapAsset>? _assets;
  @override
  @JsonKey(name: 'assets')
  List<SideSwapAsset>? get assets {
    final value = _assets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssetsResult(assets: $assets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetsResult &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assets));

  @JsonKey(ignore: true)
  @override
  _$$_AssetsResultCopyWith<_$_AssetsResult> get copyWith =>
      __$$_AssetsResultCopyWithImpl<_$_AssetsResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetsResultToJson(
      this,
    );
  }
}

abstract class _AssetsResult implements AssetsResult {
  const factory _AssetsResult(
          {@JsonKey(name: 'assets') final List<SideSwapAsset>? assets}) =
      _$_AssetsResult;

  factory _AssetsResult.fromJson(Map<String, dynamic> json) =
      _$_AssetsResult.fromJson;

  @override
  @JsonKey(name: 'assets')
  List<SideSwapAsset>? get assets;
  @override
  @JsonKey(ignore: true)
  _$$_AssetsResultCopyWith<_$_AssetsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

AssetsResponse _$AssetsResponseFromJson(Map<String, dynamic> json) {
  return _AssetsResponse.fromJson(json);
}

/// @nodoc
mixin _$AssetsResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  AssetsResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetsResponseCopyWith<AssetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsResponseCopyWith<$Res> {
  factory $AssetsResponseCopyWith(
          AssetsResponse value, $Res Function(AssetsResponse) then) =
      _$AssetsResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? method, AssetsResult? result});

  $AssetsResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AssetsResponseCopyWithImpl<$Res>
    implements $AssetsResponseCopyWith<$Res> {
  _$AssetsResponseCopyWithImpl(this._value, this._then);

  final AssetsResponse _value;
  // ignore: unused_field
  final $Res Function(AssetsResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AssetsResult?,
    ));
  }

  @override
  $AssetsResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $AssetsResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_AssetsResponseCopyWith<$Res>
    implements $AssetsResponseCopyWith<$Res> {
  factory _$$_AssetsResponseCopyWith(
          _$_AssetsResponse value, $Res Function(_$_AssetsResponse) then) =
      __$$_AssetsResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, AssetsResult? result});

  @override
  $AssetsResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_AssetsResponseCopyWithImpl<$Res>
    extends _$AssetsResponseCopyWithImpl<$Res>
    implements _$$_AssetsResponseCopyWith<$Res> {
  __$$_AssetsResponseCopyWithImpl(
      _$_AssetsResponse _value, $Res Function(_$_AssetsResponse) _then)
      : super(_value, (v) => _then(v as _$_AssetsResponse));

  @override
  _$_AssetsResponse get _value => super._value as _$_AssetsResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_AssetsResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AssetsResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetsResponse implements _AssetsResponse {
  const _$_AssetsResponse({this.id, this.method, this.result});

  factory _$_AssetsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AssetsResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final AssetsResult? result;

  @override
  String toString() {
    return 'AssetsResponse(id: $id, method: $method, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetsResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_AssetsResponseCopyWith<_$_AssetsResponse> get copyWith =>
      __$$_AssetsResponseCopyWithImpl<_$_AssetsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetsResponseToJson(
      this,
    );
  }
}

abstract class _AssetsResponse implements AssetsResponse {
  const factory _AssetsResponse(
      {final int? id,
      final String? method,
      final AssetsResult? result}) = _$_AssetsResponse;

  factory _AssetsResponse.fromJson(Map<String, dynamic> json) =
      _$_AssetsResponse.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  AssetsResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_AssetsResponseCopyWith<_$_AssetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SwapStartWebRequest _$SwapStartWebRequestFromJson(Map<String, dynamic> json) {
  return _SwapStartWebRequest.fromJson(json);
}

/// @nodoc
mixin _$SwapStartWebRequest {
  @JsonKey(name: 'asset')
  String? get asset => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_bitcoins')
  bool? get sendBitcoins => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapStartWebRequestCopyWith<SwapStartWebRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapStartWebRequestCopyWith<$Res> {
  factory $SwapStartWebRequestCopyWith(
          SwapStartWebRequest value, $Res Function(SwapStartWebRequest) then) =
      _$SwapStartWebRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'asset') String? asset,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class _$SwapStartWebRequestCopyWithImpl<$Res>
    implements $SwapStartWebRequestCopyWith<$Res> {
  _$SwapStartWebRequestCopyWithImpl(this._value, this._then);

  final SwapStartWebRequest _value;
  // ignore: unused_field
  final $Res Function(SwapStartWebRequest) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? price = freezed,
    Object? sendBitcoins = freezed,
    Object? sendAmount = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      sendBitcoins: sendBitcoins == freezed
          ? _value.sendBitcoins
          : sendBitcoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SwapStartWebRequestCopyWith<$Res>
    implements $SwapStartWebRequestCopyWith<$Res> {
  factory _$$_SwapStartWebRequestCopyWith(_$_SwapStartWebRequest value,
          $Res Function(_$_SwapStartWebRequest) then) =
      __$$_SwapStartWebRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'asset') String? asset,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'send_bitcoins') bool? sendBitcoins,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class __$$_SwapStartWebRequestCopyWithImpl<$Res>
    extends _$SwapStartWebRequestCopyWithImpl<$Res>
    implements _$$_SwapStartWebRequestCopyWith<$Res> {
  __$$_SwapStartWebRequestCopyWithImpl(_$_SwapStartWebRequest _value,
      $Res Function(_$_SwapStartWebRequest) _then)
      : super(_value, (v) => _then(v as _$_SwapStartWebRequest));

  @override
  _$_SwapStartWebRequest get _value => super._value as _$_SwapStartWebRequest;

  @override
  $Res call({
    Object? asset = freezed,
    Object? price = freezed,
    Object? sendBitcoins = freezed,
    Object? sendAmount = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_$_SwapStartWebRequest(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      sendBitcoins: sendBitcoins == freezed
          ? _value.sendBitcoins
          : sendBitcoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapStartWebRequest implements _SwapStartWebRequest {
  const _$_SwapStartWebRequest(
      {@JsonKey(name: 'asset') this.asset,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'send_bitcoins') this.sendBitcoins,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'recv_amount') this.recvAmount});

  factory _$_SwapStartWebRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SwapStartWebRequestFromJson(json);

  @override
  @JsonKey(name: 'asset')
  final String? asset;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'send_bitcoins')
  final bool? sendBitcoins;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;

  @override
  String toString() {
    return 'SwapStartWebRequest(asset: $asset, price: $price, sendBitcoins: $sendBitcoins, sendAmount: $sendAmount, recvAmount: $recvAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapStartWebRequest &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.sendBitcoins, sendBitcoins) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(sendBitcoins),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAmount));

  @JsonKey(ignore: true)
  @override
  _$$_SwapStartWebRequestCopyWith<_$_SwapStartWebRequest> get copyWith =>
      __$$_SwapStartWebRequestCopyWithImpl<_$_SwapStartWebRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapStartWebRequestToJson(
      this,
    );
  }
}

abstract class _SwapStartWebRequest implements SwapStartWebRequest {
  const factory _SwapStartWebRequest(
          {@JsonKey(name: 'asset') final String? asset,
          @JsonKey(name: 'price') final double? price,
          @JsonKey(name: 'send_bitcoins') final bool? sendBitcoins,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'recv_amount') final int? recvAmount}) =
      _$_SwapStartWebRequest;

  factory _SwapStartWebRequest.fromJson(Map<String, dynamic> json) =
      _$_SwapStartWebRequest.fromJson;

  @override
  @JsonKey(name: 'asset')
  String? get asset;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(name: 'send_bitcoins')
  bool? get sendBitcoins;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(ignore: true)
  _$$_SwapStartWebRequestCopyWith<_$_SwapStartWebRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SwapStartWebResponse _$SwapStartWebResponseFromJson(Map<String, dynamic> json) {
  return _SwapStartWebResponse.fromJson(json);
}

/// @nodoc
mixin _$SwapStartWebResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  SwapStartWebResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapStartWebResponseCopyWith<SwapStartWebResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapStartWebResponseCopyWith<$Res> {
  factory $SwapStartWebResponseCopyWith(SwapStartWebResponse value,
          $Res Function(SwapStartWebResponse) then) =
      _$SwapStartWebResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? method, SwapStartWebResult? result});

  $SwapStartWebResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SwapStartWebResponseCopyWithImpl<$Res>
    implements $SwapStartWebResponseCopyWith<$Res> {
  _$SwapStartWebResponseCopyWithImpl(this._value, this._then);

  final SwapStartWebResponse _value;
  // ignore: unused_field
  final $Res Function(SwapStartWebResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SwapStartWebResult?,
    ));
  }

  @override
  $SwapStartWebResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $SwapStartWebResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_SwapStartWebResponseCopyWith<$Res>
    implements $SwapStartWebResponseCopyWith<$Res> {
  factory _$$_SwapStartWebResponseCopyWith(_$_SwapStartWebResponse value,
          $Res Function(_$_SwapStartWebResponse) then) =
      __$$_SwapStartWebResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, SwapStartWebResult? result});

  @override
  $SwapStartWebResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_SwapStartWebResponseCopyWithImpl<$Res>
    extends _$SwapStartWebResponseCopyWithImpl<$Res>
    implements _$$_SwapStartWebResponseCopyWith<$Res> {
  __$$_SwapStartWebResponseCopyWithImpl(_$_SwapStartWebResponse _value,
      $Res Function(_$_SwapStartWebResponse) _then)
      : super(_value, (v) => _then(v as _$_SwapStartWebResponse));

  @override
  _$_SwapStartWebResponse get _value => super._value as _$_SwapStartWebResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_SwapStartWebResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SwapStartWebResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapStartWebResponse implements _SwapStartWebResponse {
  const _$_SwapStartWebResponse({this.id, this.method, this.result});

  factory _$_SwapStartWebResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SwapStartWebResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final SwapStartWebResult? result;

  @override
  String toString() {
    return 'SwapStartWebResponse(id: $id, method: $method, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapStartWebResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_SwapStartWebResponseCopyWith<_$_SwapStartWebResponse> get copyWith =>
      __$$_SwapStartWebResponseCopyWithImpl<_$_SwapStartWebResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapStartWebResponseToJson(
      this,
    );
  }
}

abstract class _SwapStartWebResponse implements SwapStartWebResponse {
  const factory _SwapStartWebResponse(
      {final int? id,
      final String? method,
      final SwapStartWebResult? result}) = _$_SwapStartWebResponse;

  factory _SwapStartWebResponse.fromJson(Map<String, dynamic> json) =
      _$_SwapStartWebResponse.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  SwapStartWebResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_SwapStartWebResponseCopyWith<_$_SwapStartWebResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SwapStartWebResult _$SwapStartWebResultFromJson(Map<String, dynamic> json) {
  return _SwapStartWebResult.fromJson(json);
}

/// @nodoc
mixin _$SwapStartWebResult {
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_asset')
  String? get sendAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_asset')
  String? get recvAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_url')
  String? get uploadUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapStartWebResultCopyWith<SwapStartWebResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapStartWebResultCopyWith<$Res> {
  factory $SwapStartWebResultCopyWith(
          SwapStartWebResult value, $Res Function(SwapStartWebResult) then) =
      _$SwapStartWebResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount,
      @JsonKey(name: 'upload_url') String? uploadUrl});
}

/// @nodoc
class _$SwapStartWebResultCopyWithImpl<$Res>
    implements $SwapStartWebResultCopyWith<$Res> {
  _$SwapStartWebResultCopyWithImpl(this._value, this._then);

  final SwapStartWebResult _value;
  // ignore: unused_field
  final $Res Function(SwapStartWebResult) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
    Object? uploadUrl = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SwapStartWebResultCopyWith<$Res>
    implements $SwapStartWebResultCopyWith<$Res> {
  factory _$$_SwapStartWebResultCopyWith(_$_SwapStartWebResult value,
          $Res Function(_$_SwapStartWebResult) then) =
      __$$_SwapStartWebResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount,
      @JsonKey(name: 'upload_url') String? uploadUrl});
}

/// @nodoc
class __$$_SwapStartWebResultCopyWithImpl<$Res>
    extends _$SwapStartWebResultCopyWithImpl<$Res>
    implements _$$_SwapStartWebResultCopyWith<$Res> {
  __$$_SwapStartWebResultCopyWithImpl(
      _$_SwapStartWebResult _value, $Res Function(_$_SwapStartWebResult) _then)
      : super(_value, (v) => _then(v as _$_SwapStartWebResult));

  @override
  _$_SwapStartWebResult get _value => super._value as _$_SwapStartWebResult;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
    Object? uploadUrl = freezed,
  }) {
    return _then(_$_SwapStartWebResult(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapStartWebResult implements _SwapStartWebResult {
  const _$_SwapStartWebResult(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'send_asset') this.sendAsset,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'recv_asset') this.recvAsset,
      @JsonKey(name: 'recv_amount') this.recvAmount,
      @JsonKey(name: 'upload_url') this.uploadUrl});

  factory _$_SwapStartWebResult.fromJson(Map<String, dynamic> json) =>
      _$$_SwapStartWebResultFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'send_asset')
  final String? sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  final String? recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;
  @override
  @JsonKey(name: 'upload_url')
  final String? uploadUrl;

  @override
  String toString() {
    return 'SwapStartWebResult(orderId: $orderId, sendAsset: $sendAsset, sendAmount: $sendAmount, recvAsset: $recvAsset, recvAmount: $recvAmount, uploadUrl: $uploadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapStartWebResult &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount) &&
            const DeepCollectionEquality().equals(other.uploadUrl, uploadUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(sendAsset),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAsset),
      const DeepCollectionEquality().hash(recvAmount),
      const DeepCollectionEquality().hash(uploadUrl));

  @JsonKey(ignore: true)
  @override
  _$$_SwapStartWebResultCopyWith<_$_SwapStartWebResult> get copyWith =>
      __$$_SwapStartWebResultCopyWithImpl<_$_SwapStartWebResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapStartWebResultToJson(
      this,
    );
  }
}

abstract class _SwapStartWebResult implements SwapStartWebResult {
  const factory _SwapStartWebResult(
          {@JsonKey(name: 'order_id') final String? orderId,
          @JsonKey(name: 'send_asset') final String? sendAsset,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'recv_asset') final String? recvAsset,
          @JsonKey(name: 'recv_amount') final int? recvAmount,
          @JsonKey(name: 'upload_url') final String? uploadUrl}) =
      _$_SwapStartWebResult;

  factory _SwapStartWebResult.fromJson(Map<String, dynamic> json) =
      _$_SwapStartWebResult.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'send_asset')
  String? get sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  String? get recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(name: 'upload_url')
  String? get uploadUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SwapStartWebResultCopyWith<_$_SwapStartWebResult> get copyWith =>
      throw _privateConstructorUsedError;
}

HttpStartWebRequest _$HttpStartWebRequestFromJson(Map<String, dynamic> json) {
  return _HttpStartWebRequest.fromJson(json);
}

/// @nodoc
mixin _$HttpStartWebRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  HttpStartWebParams? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpStartWebRequestCopyWith<HttpStartWebRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpStartWebRequestCopyWith<$Res> {
  factory $HttpStartWebRequestCopyWith(
          HttpStartWebRequest value, $Res Function(HttpStartWebRequest) then) =
      _$HttpStartWebRequestCopyWithImpl<$Res>;
  $Res call({int? id, String? method, HttpStartWebParams? params});

  $HttpStartWebParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$HttpStartWebRequestCopyWithImpl<$Res>
    implements $HttpStartWebRequestCopyWith<$Res> {
  _$HttpStartWebRequestCopyWithImpl(this._value, this._then);

  final HttpStartWebRequest _value;
  // ignore: unused_field
  final $Res Function(HttpStartWebRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as HttpStartWebParams?,
    ));
  }

  @override
  $HttpStartWebParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $HttpStartWebParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc
abstract class _$$_HttpStartWebRequestCopyWith<$Res>
    implements $HttpStartWebRequestCopyWith<$Res> {
  factory _$$_HttpStartWebRequestCopyWith(_$_HttpStartWebRequest value,
          $Res Function(_$_HttpStartWebRequest) then) =
      __$$_HttpStartWebRequestCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, HttpStartWebParams? params});

  @override
  $HttpStartWebParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_HttpStartWebRequestCopyWithImpl<$Res>
    extends _$HttpStartWebRequestCopyWithImpl<$Res>
    implements _$$_HttpStartWebRequestCopyWith<$Res> {
  __$$_HttpStartWebRequestCopyWithImpl(_$_HttpStartWebRequest _value,
      $Res Function(_$_HttpStartWebRequest) _then)
      : super(_value, (v) => _then(v as _$_HttpStartWebRequest));

  @override
  _$_HttpStartWebRequest get _value => super._value as _$_HttpStartWebRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_$_HttpStartWebRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as HttpStartWebParams?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpStartWebRequest extends _HttpStartWebRequest {
  const _$_HttpStartWebRequest({this.id, this.method, this.params}) : super._();

  factory _$_HttpStartWebRequest.fromJson(Map<String, dynamic> json) =>
      _$$_HttpStartWebRequestFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final HttpStartWebParams? params;

  @override
  String toString() {
    return 'HttpStartWebRequest(id: $id, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpStartWebRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  _$$_HttpStartWebRequestCopyWith<_$_HttpStartWebRequest> get copyWith =>
      __$$_HttpStartWebRequestCopyWithImpl<_$_HttpStartWebRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpStartWebRequestToJson(
      this,
    );
  }
}

abstract class _HttpStartWebRequest extends HttpStartWebRequest {
  const factory _HttpStartWebRequest(
      {final int? id,
      final String? method,
      final HttpStartWebParams? params}) = _$_HttpStartWebRequest;
  const _HttpStartWebRequest._() : super._();

  factory _HttpStartWebRequest.fromJson(Map<String, dynamic> json) =
      _$_HttpStartWebRequest.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  HttpStartWebParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_HttpStartWebRequestCopyWith<_$_HttpStartWebRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

HttpStartWebParams _$HttpStartWebParamsFromJson(Map<String, dynamic> json) {
  return _HttpStartWebParams.fromJson(json);
}

/// @nodoc
mixin _$HttpStartWebParams {
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  List<GdkCreatePsetInputs>? get inputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_addr')
  String? get recvAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'change_addr')
  String? get changeAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_asset')
  String? get sendAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_asset')
  String? get recvAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpStartWebParamsCopyWith<HttpStartWebParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpStartWebParamsCopyWith<$Res> {
  factory $HttpStartWebParamsCopyWith(
          HttpStartWebParams value, $Res Function(HttpStartWebParams) then) =
      _$HttpStartWebParamsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      List<GdkCreatePsetInputs>? inputs,
      @JsonKey(name: 'recv_addr') String? recvAddr,
      @JsonKey(name: 'change_addr') String? changeAddr,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class _$HttpStartWebParamsCopyWithImpl<$Res>
    implements $HttpStartWebParamsCopyWith<$Res> {
  _$HttpStartWebParamsCopyWithImpl(this._value, this._then);

  final HttpStartWebParams _value;
  // ignore: unused_field
  final $Res Function(HttpStartWebParams) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? inputs = freezed,
    Object? recvAddr = freezed,
    Object? changeAddr = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<GdkCreatePsetInputs>?,
      recvAddr: recvAddr == freezed
          ? _value.recvAddr
          : recvAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      changeAddr: changeAddr == freezed
          ? _value.changeAddr
          : changeAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_HttpStartWebParamsCopyWith<$Res>
    implements $HttpStartWebParamsCopyWith<$Res> {
  factory _$$_HttpStartWebParamsCopyWith(_$_HttpStartWebParams value,
          $Res Function(_$_HttpStartWebParams) then) =
      __$$_HttpStartWebParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      List<GdkCreatePsetInputs>? inputs,
      @JsonKey(name: 'recv_addr') String? recvAddr,
      @JsonKey(name: 'change_addr') String? changeAddr,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class __$$_HttpStartWebParamsCopyWithImpl<$Res>
    extends _$HttpStartWebParamsCopyWithImpl<$Res>
    implements _$$_HttpStartWebParamsCopyWith<$Res> {
  __$$_HttpStartWebParamsCopyWithImpl(
      _$_HttpStartWebParams _value, $Res Function(_$_HttpStartWebParams) _then)
      : super(_value, (v) => _then(v as _$_HttpStartWebParams));

  @override
  _$_HttpStartWebParams get _value => super._value as _$_HttpStartWebParams;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? inputs = freezed,
    Object? recvAddr = freezed,
    Object? changeAddr = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_$_HttpStartWebParams(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      inputs: inputs == freezed
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<GdkCreatePsetInputs>?,
      recvAddr: recvAddr == freezed
          ? _value.recvAddr
          : recvAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      changeAddr: changeAddr == freezed
          ? _value.changeAddr
          : changeAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpStartWebParams implements _HttpStartWebParams {
  const _$_HttpStartWebParams(
      {@JsonKey(name: 'order_id') this.orderId,
      final List<GdkCreatePsetInputs>? inputs,
      @JsonKey(name: 'recv_addr') this.recvAddr,
      @JsonKey(name: 'change_addr') this.changeAddr,
      @JsonKey(name: 'send_asset') this.sendAsset,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'recv_asset') this.recvAsset,
      @JsonKey(name: 'recv_amount') this.recvAmount})
      : _inputs = inputs;

  factory _$_HttpStartWebParams.fromJson(Map<String, dynamic> json) =>
      _$$_HttpStartWebParamsFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  final List<GdkCreatePsetInputs>? _inputs;
  @override
  List<GdkCreatePsetInputs>? get inputs {
    final value = _inputs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'recv_addr')
  final String? recvAddr;
  @override
  @JsonKey(name: 'change_addr')
  final String? changeAddr;
  @override
  @JsonKey(name: 'send_asset')
  final String? sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  final String? recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;

  @override
  String toString() {
    return 'HttpStartWebParams(orderId: $orderId, inputs: $inputs, recvAddr: $recvAddr, changeAddr: $changeAddr, sendAsset: $sendAsset, sendAmount: $sendAmount, recvAsset: $recvAsset, recvAmount: $recvAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpStartWebParams &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(other.recvAddr, recvAddr) &&
            const DeepCollectionEquality()
                .equals(other.changeAddr, changeAddr) &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(_inputs),
      const DeepCollectionEquality().hash(recvAddr),
      const DeepCollectionEquality().hash(changeAddr),
      const DeepCollectionEquality().hash(sendAsset),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAsset),
      const DeepCollectionEquality().hash(recvAmount));

  @JsonKey(ignore: true)
  @override
  _$$_HttpStartWebParamsCopyWith<_$_HttpStartWebParams> get copyWith =>
      __$$_HttpStartWebParamsCopyWithImpl<_$_HttpStartWebParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpStartWebParamsToJson(
      this,
    );
  }
}

abstract class _HttpStartWebParams implements HttpStartWebParams {
  const factory _HttpStartWebParams(
          {@JsonKey(name: 'order_id') final String? orderId,
          final List<GdkCreatePsetInputs>? inputs,
          @JsonKey(name: 'recv_addr') final String? recvAddr,
          @JsonKey(name: 'change_addr') final String? changeAddr,
          @JsonKey(name: 'send_asset') final String? sendAsset,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'recv_asset') final String? recvAsset,
          @JsonKey(name: 'recv_amount') final int? recvAmount}) =
      _$_HttpStartWebParams;

  factory _HttpStartWebParams.fromJson(Map<String, dynamic> json) =
      _$_HttpStartWebParams.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  List<GdkCreatePsetInputs>? get inputs;
  @override
  @JsonKey(name: 'recv_addr')
  String? get recvAddr;
  @override
  @JsonKey(name: 'change_addr')
  String? get changeAddr;
  @override
  @JsonKey(name: 'send_asset')
  String? get sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  String? get recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(ignore: true)
  _$$_HttpStartWebParamsCopyWith<_$_HttpStartWebParams> get copyWith =>
      throw _privateConstructorUsedError;
}

HttpSwapSignRequest _$HttpSwapSignRequestFromJson(Map<String, dynamic> json) {
  return _HttpSwapSignRequest.fromJson(json);
}

/// @nodoc
mixin _$HttpSwapSignRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  HttpSwapSignParams? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpSwapSignRequestCopyWith<HttpSwapSignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpSwapSignRequestCopyWith<$Res> {
  factory $HttpSwapSignRequestCopyWith(
          HttpSwapSignRequest value, $Res Function(HttpSwapSignRequest) then) =
      _$HttpSwapSignRequestCopyWithImpl<$Res>;
  $Res call({int? id, String? method, HttpSwapSignParams? params});

  $HttpSwapSignParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$HttpSwapSignRequestCopyWithImpl<$Res>
    implements $HttpSwapSignRequestCopyWith<$Res> {
  _$HttpSwapSignRequestCopyWithImpl(this._value, this._then);

  final HttpSwapSignRequest _value;
  // ignore: unused_field
  final $Res Function(HttpSwapSignRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as HttpSwapSignParams?,
    ));
  }

  @override
  $HttpSwapSignParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $HttpSwapSignParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc
abstract class _$$_HttpSwapSignRequestCopyWith<$Res>
    implements $HttpSwapSignRequestCopyWith<$Res> {
  factory _$$_HttpSwapSignRequestCopyWith(_$_HttpSwapSignRequest value,
          $Res Function(_$_HttpSwapSignRequest) then) =
      __$$_HttpSwapSignRequestCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, HttpSwapSignParams? params});

  @override
  $HttpSwapSignParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_HttpSwapSignRequestCopyWithImpl<$Res>
    extends _$HttpSwapSignRequestCopyWithImpl<$Res>
    implements _$$_HttpSwapSignRequestCopyWith<$Res> {
  __$$_HttpSwapSignRequestCopyWithImpl(_$_HttpSwapSignRequest _value,
      $Res Function(_$_HttpSwapSignRequest) _then)
      : super(_value, (v) => _then(v as _$_HttpSwapSignRequest));

  @override
  _$_HttpSwapSignRequest get _value => super._value as _$_HttpSwapSignRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_$_HttpSwapSignRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as HttpSwapSignParams?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpSwapSignRequest extends _HttpSwapSignRequest {
  const _$_HttpSwapSignRequest({this.id, this.method, this.params}) : super._();

  factory _$_HttpSwapSignRequest.fromJson(Map<String, dynamic> json) =>
      _$$_HttpSwapSignRequestFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final HttpSwapSignParams? params;

  @override
  String toString() {
    return 'HttpSwapSignRequest(id: $id, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpSwapSignRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  _$$_HttpSwapSignRequestCopyWith<_$_HttpSwapSignRequest> get copyWith =>
      __$$_HttpSwapSignRequestCopyWithImpl<_$_HttpSwapSignRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpSwapSignRequestToJson(
      this,
    );
  }
}

abstract class _HttpSwapSignRequest extends HttpSwapSignRequest {
  const factory _HttpSwapSignRequest(
      {final int? id,
      final String? method,
      final HttpSwapSignParams? params}) = _$_HttpSwapSignRequest;
  const _HttpSwapSignRequest._() : super._();

  factory _HttpSwapSignRequest.fromJson(Map<String, dynamic> json) =
      _$_HttpSwapSignRequest.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  HttpSwapSignParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_HttpSwapSignRequestCopyWith<_$_HttpSwapSignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

HttpSwapSignParams _$HttpSwapSignParamsFromJson(Map<String, dynamic> json) {
  return _HttpSwapSignParams.fromJson(json);
}

/// @nodoc
mixin _$HttpSwapSignParams {
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  String? get pset => throw _privateConstructorUsedError;
  @JsonKey(name: 'submit_id')
  String? get submitId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpSwapSignParamsCopyWith<HttpSwapSignParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpSwapSignParamsCopyWith<$Res> {
  factory $HttpSwapSignParamsCopyWith(
          HttpSwapSignParams value, $Res Function(HttpSwapSignParams) then) =
      _$HttpSwapSignParamsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      String? pset,
      @JsonKey(name: 'submit_id') String? submitId});
}

/// @nodoc
class _$HttpSwapSignParamsCopyWithImpl<$Res>
    implements $HttpSwapSignParamsCopyWith<$Res> {
  _$HttpSwapSignParamsCopyWithImpl(this._value, this._then);

  final HttpSwapSignParams _value;
  // ignore: unused_field
  final $Res Function(HttpSwapSignParams) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? pset = freezed,
    Object? submitId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      pset: pset == freezed
          ? _value.pset
          : pset // ignore: cast_nullable_to_non_nullable
              as String?,
      submitId: submitId == freezed
          ? _value.submitId
          : submitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HttpSwapSignParamsCopyWith<$Res>
    implements $HttpSwapSignParamsCopyWith<$Res> {
  factory _$$_HttpSwapSignParamsCopyWith(_$_HttpSwapSignParams value,
          $Res Function(_$_HttpSwapSignParams) then) =
      __$$_HttpSwapSignParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      String? pset,
      @JsonKey(name: 'submit_id') String? submitId});
}

/// @nodoc
class __$$_HttpSwapSignParamsCopyWithImpl<$Res>
    extends _$HttpSwapSignParamsCopyWithImpl<$Res>
    implements _$$_HttpSwapSignParamsCopyWith<$Res> {
  __$$_HttpSwapSignParamsCopyWithImpl(
      _$_HttpSwapSignParams _value, $Res Function(_$_HttpSwapSignParams) _then)
      : super(_value, (v) => _then(v as _$_HttpSwapSignParams));

  @override
  _$_HttpSwapSignParams get _value => super._value as _$_HttpSwapSignParams;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? pset = freezed,
    Object? submitId = freezed,
  }) {
    return _then(_$_HttpSwapSignParams(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      pset: pset == freezed
          ? _value.pset
          : pset // ignore: cast_nullable_to_non_nullable
              as String?,
      submitId: submitId == freezed
          ? _value.submitId
          : submitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpSwapSignParams implements _HttpSwapSignParams {
  const _$_HttpSwapSignParams(
      {@JsonKey(name: 'order_id') this.orderId,
      this.pset,
      @JsonKey(name: 'submit_id') this.submitId});

  factory _$_HttpSwapSignParams.fromJson(Map<String, dynamic> json) =>
      _$$_HttpSwapSignParamsFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  final String? pset;
  @override
  @JsonKey(name: 'submit_id')
  final String? submitId;

  @override
  String toString() {
    return 'HttpSwapSignParams(orderId: $orderId, pset: $pset, submitId: $submitId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpSwapSignParams &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.pset, pset) &&
            const DeepCollectionEquality().equals(other.submitId, submitId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(pset),
      const DeepCollectionEquality().hash(submitId));

  @JsonKey(ignore: true)
  @override
  _$$_HttpSwapSignParamsCopyWith<_$_HttpSwapSignParams> get copyWith =>
      __$$_HttpSwapSignParamsCopyWithImpl<_$_HttpSwapSignParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpSwapSignParamsToJson(
      this,
    );
  }
}

abstract class _HttpSwapSignParams implements HttpSwapSignParams {
  const factory _HttpSwapSignParams(
          {@JsonKey(name: 'order_id') final String? orderId,
          final String? pset,
          @JsonKey(name: 'submit_id') final String? submitId}) =
      _$_HttpSwapSignParams;

  factory _HttpSwapSignParams.fromJson(Map<String, dynamic> json) =
      _$_HttpSwapSignParams.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  String? get pset;
  @override
  @JsonKey(name: 'submit_id')
  String? get submitId;
  @override
  @JsonKey(ignore: true)
  _$$_HttpSwapSignParamsCopyWith<_$_HttpSwapSignParams> get copyWith =>
      throw _privateConstructorUsedError;
}

SwapDoneResponse _$SwapDoneResponseFromJson(Map<String, dynamic> json) {
  return _SwapDoneResponse.fromJson(json);
}

/// @nodoc
mixin _$SwapDoneResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  SwapDoneParams? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapDoneResponseCopyWith<SwapDoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapDoneResponseCopyWith<$Res> {
  factory $SwapDoneResponseCopyWith(
          SwapDoneResponse value, $Res Function(SwapDoneResponse) then) =
      _$SwapDoneResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? method, SwapDoneParams? params});

  $SwapDoneParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$SwapDoneResponseCopyWithImpl<$Res>
    implements $SwapDoneResponseCopyWith<$Res> {
  _$SwapDoneResponseCopyWithImpl(this._value, this._then);

  final SwapDoneResponse _value;
  // ignore: unused_field
  final $Res Function(SwapDoneResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SwapDoneParams?,
    ));
  }

  @override
  $SwapDoneParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $SwapDoneParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc
abstract class _$$_SwapDoneResponseCopyWith<$Res>
    implements $SwapDoneResponseCopyWith<$Res> {
  factory _$$_SwapDoneResponseCopyWith(
          _$_SwapDoneResponse value, $Res Function(_$_SwapDoneResponse) then) =
      __$$_SwapDoneResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? method, SwapDoneParams? params});

  @override
  $SwapDoneParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_SwapDoneResponseCopyWithImpl<$Res>
    extends _$SwapDoneResponseCopyWithImpl<$Res>
    implements _$$_SwapDoneResponseCopyWith<$Res> {
  __$$_SwapDoneResponseCopyWithImpl(
      _$_SwapDoneResponse _value, $Res Function(_$_SwapDoneResponse) _then)
      : super(_value, (v) => _then(v as _$_SwapDoneResponse));

  @override
  _$_SwapDoneResponse get _value => super._value as _$_SwapDoneResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? params = freezed,
  }) {
    return _then(_$_SwapDoneResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SwapDoneParams?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapDoneResponse implements _SwapDoneResponse {
  const _$_SwapDoneResponse({this.id, this.method, this.params});

  factory _$_SwapDoneResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SwapDoneResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? method;
  @override
  final SwapDoneParams? params;

  @override
  String toString() {
    return 'SwapDoneResponse(id: $id, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapDoneResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  _$$_SwapDoneResponseCopyWith<_$_SwapDoneResponse> get copyWith =>
      __$$_SwapDoneResponseCopyWithImpl<_$_SwapDoneResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapDoneResponseToJson(
      this,
    );
  }
}

abstract class _SwapDoneResponse implements SwapDoneResponse {
  const factory _SwapDoneResponse(
      {final int? id,
      final String? method,
      final SwapDoneParams? params}) = _$_SwapDoneResponse;

  factory _SwapDoneResponse.fromJson(Map<String, dynamic> json) =
      _$_SwapDoneResponse.fromJson;

  @override
  int? get id;
  @override
  String? get method;
  @override
  SwapDoneParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_SwapDoneResponseCopyWith<_$_SwapDoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SwapDoneParams _$SwapDoneParamsFromJson(Map<String, dynamic> json) {
  return _SwapDoneParams.fromJson(json);
}

/// @nodoc
mixin _$SwapDoneParams {
  @JsonKey(name: 'network_fee')
  int? get networkFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_asset')
  String? get recvAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_asset')
  String? get sendAsset => throw _privateConstructorUsedError;
  SwapDoneStatusEnum? get status => throw _privateConstructorUsedError;
  String? get txid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapDoneParamsCopyWith<SwapDoneParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapDoneParamsCopyWith<$Res> {
  factory $SwapDoneParamsCopyWith(
          SwapDoneParams value, $Res Function(SwapDoneParams) then) =
      _$SwapDoneParamsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'network_fee') int? networkFee,
      @JsonKey(name: 'order_id') String? orderId,
      double? price,
      @JsonKey(name: 'recv_amount') int? recvAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'send_asset') String? sendAsset,
      SwapDoneStatusEnum? status,
      String? txid});
}

/// @nodoc
class _$SwapDoneParamsCopyWithImpl<$Res>
    implements $SwapDoneParamsCopyWith<$Res> {
  _$SwapDoneParamsCopyWithImpl(this._value, this._then);

  final SwapDoneParams _value;
  // ignore: unused_field
  final $Res Function(SwapDoneParams) _then;

  @override
  $Res call({
    Object? networkFee = freezed,
    Object? orderId = freezed,
    Object? price = freezed,
    Object? recvAmount = freezed,
    Object? recvAsset = freezed,
    Object? sendAmount = freezed,
    Object? sendAsset = freezed,
    Object? status = freezed,
    Object? txid = freezed,
  }) {
    return _then(_value.copyWith(
      networkFee: networkFee == freezed
          ? _value.networkFee
          : networkFee // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SwapDoneStatusEnum?,
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SwapDoneParamsCopyWith<$Res>
    implements $SwapDoneParamsCopyWith<$Res> {
  factory _$$_SwapDoneParamsCopyWith(
          _$_SwapDoneParams value, $Res Function(_$_SwapDoneParams) then) =
      __$$_SwapDoneParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'network_fee') int? networkFee,
      @JsonKey(name: 'order_id') String? orderId,
      double? price,
      @JsonKey(name: 'recv_amount') int? recvAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'send_asset') String? sendAsset,
      SwapDoneStatusEnum? status,
      String? txid});
}

/// @nodoc
class __$$_SwapDoneParamsCopyWithImpl<$Res>
    extends _$SwapDoneParamsCopyWithImpl<$Res>
    implements _$$_SwapDoneParamsCopyWith<$Res> {
  __$$_SwapDoneParamsCopyWithImpl(
      _$_SwapDoneParams _value, $Res Function(_$_SwapDoneParams) _then)
      : super(_value, (v) => _then(v as _$_SwapDoneParams));

  @override
  _$_SwapDoneParams get _value => super._value as _$_SwapDoneParams;

  @override
  $Res call({
    Object? networkFee = freezed,
    Object? orderId = freezed,
    Object? price = freezed,
    Object? recvAmount = freezed,
    Object? recvAsset = freezed,
    Object? sendAmount = freezed,
    Object? sendAsset = freezed,
    Object? status = freezed,
    Object? txid = freezed,
  }) {
    return _then(_$_SwapDoneParams(
      networkFee: networkFee == freezed
          ? _value.networkFee
          : networkFee // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SwapDoneStatusEnum?,
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapDoneParams implements _SwapDoneParams {
  const _$_SwapDoneParams(
      {@JsonKey(name: 'network_fee') this.networkFee,
      @JsonKey(name: 'order_id') this.orderId,
      this.price,
      @JsonKey(name: 'recv_amount') this.recvAmount,
      @JsonKey(name: 'recv_asset') this.recvAsset,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'send_asset') this.sendAsset,
      this.status,
      this.txid});

  factory _$_SwapDoneParams.fromJson(Map<String, dynamic> json) =>
      _$$_SwapDoneParamsFromJson(json);

  @override
  @JsonKey(name: 'network_fee')
  final int? networkFee;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  final double? price;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;
  @override
  @JsonKey(name: 'recv_asset')
  final String? recvAsset;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'send_asset')
  final String? sendAsset;
  @override
  final SwapDoneStatusEnum? status;
  @override
  final String? txid;

  @override
  String toString() {
    return 'SwapDoneParams(networkFee: $networkFee, orderId: $orderId, price: $price, recvAmount: $recvAmount, recvAsset: $recvAsset, sendAmount: $sendAmount, sendAsset: $sendAsset, status: $status, txid: $txid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapDoneParams &&
            const DeepCollectionEquality()
                .equals(other.networkFee, networkFee) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.txid, txid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(networkFee),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(recvAmount),
      const DeepCollectionEquality().hash(recvAsset),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(sendAsset),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(txid));

  @JsonKey(ignore: true)
  @override
  _$$_SwapDoneParamsCopyWith<_$_SwapDoneParams> get copyWith =>
      __$$_SwapDoneParamsCopyWithImpl<_$_SwapDoneParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapDoneParamsToJson(
      this,
    );
  }
}

abstract class _SwapDoneParams implements SwapDoneParams {
  const factory _SwapDoneParams(
      {@JsonKey(name: 'network_fee') final int? networkFee,
      @JsonKey(name: 'order_id') final String? orderId,
      final double? price,
      @JsonKey(name: 'recv_amount') final int? recvAmount,
      @JsonKey(name: 'recv_asset') final String? recvAsset,
      @JsonKey(name: 'send_amount') final int? sendAmount,
      @JsonKey(name: 'send_asset') final String? sendAsset,
      final SwapDoneStatusEnum? status,
      final String? txid}) = _$_SwapDoneParams;

  factory _SwapDoneParams.fromJson(Map<String, dynamic> json) =
      _$_SwapDoneParams.fromJson;

  @override
  @JsonKey(name: 'network_fee')
  int? get networkFee;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  double? get price;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(name: 'recv_asset')
  String? get recvAsset;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'send_asset')
  String? get sendAsset;
  @override
  SwapDoneStatusEnum? get status;
  @override
  String? get txid;
  @override
  @JsonKey(ignore: true)
  _$$_SwapDoneParamsCopyWith<_$_SwapDoneParams> get copyWith =>
      throw _privateConstructorUsedError;
}

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  ErrorClass? get error => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorClass? error, int? id});

  $ErrorClassCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  final Error _value;
  // ignore: unused_field
  final $Res Function(Error) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorClass?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ErrorClassCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorClassCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({ErrorClass? error, int? id});

  @override
  $ErrorClassCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorClass?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Error implements _Error {
  const _$_Error({this.error, this.id});

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

  @override
  final ErrorClass? error;
  @override
  final int? id;

  @override
  String toString() {
    return 'Error(error: $error, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error({final ErrorClass? error, final int? id}) = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;

  @override
  ErrorClass? get error;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorClass _$ErrorClassFromJson(Map<String, dynamic> json) {
  return _ErrorClass.fromJson(json);
}

/// @nodoc
mixin _$ErrorClass {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorClassCopyWith<ErrorClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorClassCopyWith<$Res> {
  factory $ErrorClassCopyWith(
          ErrorClass value, $Res Function(ErrorClass) then) =
      _$ErrorClassCopyWithImpl<$Res>;
  $Res call({int? code, String? message});
}

/// @nodoc
class _$ErrorClassCopyWithImpl<$Res> implements $ErrorClassCopyWith<$Res> {
  _$ErrorClassCopyWithImpl(this._value, this._then);

  final ErrorClass _value;
  // ignore: unused_field
  final $Res Function(ErrorClass) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorClassCopyWith<$Res>
    implements $ErrorClassCopyWith<$Res> {
  factory _$$_ErrorClassCopyWith(
          _$_ErrorClass value, $Res Function(_$_ErrorClass) then) =
      __$$_ErrorClassCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$_ErrorClassCopyWithImpl<$Res> extends _$ErrorClassCopyWithImpl<$Res>
    implements _$$_ErrorClassCopyWith<$Res> {
  __$$_ErrorClassCopyWithImpl(
      _$_ErrorClass _value, $Res Function(_$_ErrorClass) _then)
      : super(_value, (v) => _then(v as _$_ErrorClass));

  @override
  _$_ErrorClass get _value => super._value as _$_ErrorClass;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorClass(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorClass implements _ErrorClass {
  const _$_ErrorClass({this.code, this.message});

  factory _$_ErrorClass.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorClassFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorClass(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorClass &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorClassCopyWith<_$_ErrorClass> get copyWith =>
      __$$_ErrorClassCopyWithImpl<_$_ErrorClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorClassToJson(
      this,
    );
  }
}

abstract class _ErrorClass implements ErrorClass {
  const factory _ErrorClass({final int? code, final String? message}) =
      _$_ErrorClass;

  factory _ErrorClass.fromJson(Map<String, dynamic> json) =
      _$_ErrorClass.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorClassCopyWith<_$_ErrorClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwapProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() waiting,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapProgressStateConnecting value) connecting,
    required TResult Function(SwapProgressStateWaiting value) waiting,
    required TResult Function(SwapProgressStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapProgressStateCopyWith<$Res> {
  factory $SwapProgressStateCopyWith(
          SwapProgressState value, $Res Function(SwapProgressState) then) =
      _$SwapProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapProgressStateCopyWithImpl<$Res>
    implements $SwapProgressStateCopyWith<$Res> {
  _$SwapProgressStateCopyWithImpl(this._value, this._then);

  final SwapProgressState _value;
  // ignore: unused_field
  final $Res Function(SwapProgressState) _then;
}

/// @nodoc
abstract class _$$SwapProgressStateConnectingCopyWith<$Res> {
  factory _$$SwapProgressStateConnectingCopyWith(
          _$SwapProgressStateConnecting value,
          $Res Function(_$SwapProgressStateConnecting) then) =
      __$$SwapProgressStateConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapProgressStateConnectingCopyWithImpl<$Res>
    extends _$SwapProgressStateCopyWithImpl<$Res>
    implements _$$SwapProgressStateConnectingCopyWith<$Res> {
  __$$SwapProgressStateConnectingCopyWithImpl(
      _$SwapProgressStateConnecting _value,
      $Res Function(_$SwapProgressStateConnecting) _then)
      : super(_value, (v) => _then(v as _$SwapProgressStateConnecting));

  @override
  _$SwapProgressStateConnecting get _value =>
      super._value as _$SwapProgressStateConnecting;
}

/// @nodoc

class _$SwapProgressStateConnecting implements SwapProgressStateConnecting {
  const _$SwapProgressStateConnecting();

  @override
  String toString() {
    return 'SwapProgressState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapProgressStateConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() waiting,
    required TResult Function() empty,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapProgressStateConnecting value) connecting,
    required TResult Function(SwapProgressStateWaiting value) waiting,
    required TResult Function(SwapProgressStateEmpty value) empty,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class SwapProgressStateConnecting implements SwapProgressState {
  const factory SwapProgressStateConnecting() = _$SwapProgressStateConnecting;
}

/// @nodoc
abstract class _$$SwapProgressStateWaitingCopyWith<$Res> {
  factory _$$SwapProgressStateWaitingCopyWith(_$SwapProgressStateWaiting value,
          $Res Function(_$SwapProgressStateWaiting) then) =
      __$$SwapProgressStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapProgressStateWaitingCopyWithImpl<$Res>
    extends _$SwapProgressStateCopyWithImpl<$Res>
    implements _$$SwapProgressStateWaitingCopyWith<$Res> {
  __$$SwapProgressStateWaitingCopyWithImpl(_$SwapProgressStateWaiting _value,
      $Res Function(_$SwapProgressStateWaiting) _then)
      : super(_value, (v) => _then(v as _$SwapProgressStateWaiting));

  @override
  _$SwapProgressStateWaiting get _value =>
      super._value as _$SwapProgressStateWaiting;
}

/// @nodoc

class _$SwapProgressStateWaiting implements SwapProgressStateWaiting {
  const _$SwapProgressStateWaiting();

  @override
  String toString() {
    return 'SwapProgressState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapProgressStateWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() waiting,
    required TResult Function() empty,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapProgressStateConnecting value) connecting,
    required TResult Function(SwapProgressStateWaiting value) waiting,
    required TResult Function(SwapProgressStateEmpty value) empty,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class SwapProgressStateWaiting implements SwapProgressState {
  const factory SwapProgressStateWaiting() = _$SwapProgressStateWaiting;
}

/// @nodoc
abstract class _$$SwapProgressStateEmptyCopyWith<$Res> {
  factory _$$SwapProgressStateEmptyCopyWith(_$SwapProgressStateEmpty value,
          $Res Function(_$SwapProgressStateEmpty) then) =
      __$$SwapProgressStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapProgressStateEmptyCopyWithImpl<$Res>
    extends _$SwapProgressStateCopyWithImpl<$Res>
    implements _$$SwapProgressStateEmptyCopyWith<$Res> {
  __$$SwapProgressStateEmptyCopyWithImpl(_$SwapProgressStateEmpty _value,
      $Res Function(_$SwapProgressStateEmpty) _then)
      : super(_value, (v) => _then(v as _$SwapProgressStateEmpty));

  @override
  _$SwapProgressStateEmpty get _value =>
      super._value as _$SwapProgressStateEmpty;
}

/// @nodoc

class _$SwapProgressStateEmpty implements SwapProgressStateEmpty {
  const _$SwapProgressStateEmpty();

  @override
  String toString() {
    return 'SwapProgressState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapProgressStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() waiting,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? waiting,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapProgressStateConnecting value) connecting,
    required TResult Function(SwapProgressStateWaiting value) waiting,
    required TResult Function(SwapProgressStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapProgressStateConnecting value)? connecting,
    TResult Function(SwapProgressStateWaiting value)? waiting,
    TResult Function(SwapProgressStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SwapProgressStateEmpty implements SwapProgressState {
  const factory SwapProgressStateEmpty() = _$SwapProgressStateEmpty;
}

/// @nodoc
mixin _$SwapNetworkErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapNetworkErrorStateError value) error,
    required TResult Function(SwapNetworkErrorStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapNetworkErrorStateError value)? error,
    TResult Function(SwapNetworkErrorStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapNetworkErrorStateError value)? error,
    TResult Function(SwapNetworkErrorStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapNetworkErrorStateCopyWith<$Res> {
  factory $SwapNetworkErrorStateCopyWith(SwapNetworkErrorState value,
          $Res Function(SwapNetworkErrorState) then) =
      _$SwapNetworkErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapNetworkErrorStateCopyWithImpl<$Res>
    implements $SwapNetworkErrorStateCopyWith<$Res> {
  _$SwapNetworkErrorStateCopyWithImpl(this._value, this._then);

  final SwapNetworkErrorState _value;
  // ignore: unused_field
  final $Res Function(SwapNetworkErrorState) _then;
}

/// @nodoc
abstract class _$$SwapNetworkErrorStateErrorCopyWith<$Res> {
  factory _$$SwapNetworkErrorStateErrorCopyWith(
          _$SwapNetworkErrorStateError value,
          $Res Function(_$SwapNetworkErrorStateError) then) =
      __$$SwapNetworkErrorStateErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$SwapNetworkErrorStateErrorCopyWithImpl<$Res>
    extends _$SwapNetworkErrorStateCopyWithImpl<$Res>
    implements _$$SwapNetworkErrorStateErrorCopyWith<$Res> {
  __$$SwapNetworkErrorStateErrorCopyWithImpl(
      _$SwapNetworkErrorStateError _value,
      $Res Function(_$SwapNetworkErrorStateError) _then)
      : super(_value, (v) => _then(v as _$SwapNetworkErrorStateError));

  @override
  _$SwapNetworkErrorStateError get _value =>
      super._value as _$SwapNetworkErrorStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SwapNetworkErrorStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SwapNetworkErrorStateError implements SwapNetworkErrorStateError {
  const _$SwapNetworkErrorStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'SwapNetworkErrorState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapNetworkErrorStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$SwapNetworkErrorStateErrorCopyWith<_$SwapNetworkErrorStateError>
      get copyWith => __$$SwapNetworkErrorStateErrorCopyWithImpl<
          _$SwapNetworkErrorStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() empty,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? empty,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapNetworkErrorStateError value) error,
    required TResult Function(SwapNetworkErrorStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapNetworkErrorStateError value)? error,
    TResult Function(SwapNetworkErrorStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapNetworkErrorStateError value)? error,
    TResult Function(SwapNetworkErrorStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SwapNetworkErrorStateError implements SwapNetworkErrorState {
  const factory SwapNetworkErrorStateError({final String? message}) =
      _$SwapNetworkErrorStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$SwapNetworkErrorStateErrorCopyWith<_$SwapNetworkErrorStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapNetworkErrorStateEmptyCopyWith<$Res> {
  factory _$$SwapNetworkErrorStateEmptyCopyWith(
          _$SwapNetworkErrorStateEmpty value,
          $Res Function(_$SwapNetworkErrorStateEmpty) then) =
      __$$SwapNetworkErrorStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapNetworkErrorStateEmptyCopyWithImpl<$Res>
    extends _$SwapNetworkErrorStateCopyWithImpl<$Res>
    implements _$$SwapNetworkErrorStateEmptyCopyWith<$Res> {
  __$$SwapNetworkErrorStateEmptyCopyWithImpl(
      _$SwapNetworkErrorStateEmpty _value,
      $Res Function(_$SwapNetworkErrorStateEmpty) _then)
      : super(_value, (v) => _then(v as _$SwapNetworkErrorStateEmpty));

  @override
  _$SwapNetworkErrorStateEmpty get _value =>
      super._value as _$SwapNetworkErrorStateEmpty;
}

/// @nodoc

class _$SwapNetworkErrorStateEmpty implements SwapNetworkErrorStateEmpty {
  const _$SwapNetworkErrorStateEmpty();

  @override
  String toString() {
    return 'SwapNetworkErrorState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapNetworkErrorStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapNetworkErrorStateError value) error,
    required TResult Function(SwapNetworkErrorStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapNetworkErrorStateError value)? error,
    TResult Function(SwapNetworkErrorStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapNetworkErrorStateError value)? error,
    TResult Function(SwapNetworkErrorStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SwapNetworkErrorStateEmpty implements SwapNetworkErrorState {
  const factory SwapNetworkErrorStateEmpty() = _$SwapNetworkErrorStateEmpty;
}

/// @nodoc
mixin _$SwapAmountSideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deliver,
    required TResult Function() receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deliver,
    TResult Function()? receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deliver,
    TResult Function()? receive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapAmountSideStateDeliver value) deliver,
    required TResult Function(SwapAmountSideStateReceive value) receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapAmountSideStateDeliver value)? deliver,
    TResult Function(SwapAmountSideStateReceive value)? receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapAmountSideStateDeliver value)? deliver,
    TResult Function(SwapAmountSideStateReceive value)? receive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapAmountSideStateCopyWith<$Res> {
  factory $SwapAmountSideStateCopyWith(
          SwapAmountSideState value, $Res Function(SwapAmountSideState) then) =
      _$SwapAmountSideStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapAmountSideStateCopyWithImpl<$Res>
    implements $SwapAmountSideStateCopyWith<$Res> {
  _$SwapAmountSideStateCopyWithImpl(this._value, this._then);

  final SwapAmountSideState _value;
  // ignore: unused_field
  final $Res Function(SwapAmountSideState) _then;
}

/// @nodoc
abstract class _$$SwapAmountSideStateDeliverCopyWith<$Res> {
  factory _$$SwapAmountSideStateDeliverCopyWith(
          _$SwapAmountSideStateDeliver value,
          $Res Function(_$SwapAmountSideStateDeliver) then) =
      __$$SwapAmountSideStateDeliverCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapAmountSideStateDeliverCopyWithImpl<$Res>
    extends _$SwapAmountSideStateCopyWithImpl<$Res>
    implements _$$SwapAmountSideStateDeliverCopyWith<$Res> {
  __$$SwapAmountSideStateDeliverCopyWithImpl(
      _$SwapAmountSideStateDeliver _value,
      $Res Function(_$SwapAmountSideStateDeliver) _then)
      : super(_value, (v) => _then(v as _$SwapAmountSideStateDeliver));

  @override
  _$SwapAmountSideStateDeliver get _value =>
      super._value as _$SwapAmountSideStateDeliver;
}

/// @nodoc

class _$SwapAmountSideStateDeliver implements SwapAmountSideStateDeliver {
  const _$SwapAmountSideStateDeliver();

  @override
  String toString() {
    return 'SwapAmountSideState.deliver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapAmountSideStateDeliver);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deliver,
    required TResult Function() receive,
  }) {
    return deliver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deliver,
    TResult Function()? receive,
  }) {
    return deliver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deliver,
    TResult Function()? receive,
    required TResult orElse(),
  }) {
    if (deliver != null) {
      return deliver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapAmountSideStateDeliver value) deliver,
    required TResult Function(SwapAmountSideStateReceive value) receive,
  }) {
    return deliver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapAmountSideStateDeliver value)? deliver,
    TResult Function(SwapAmountSideStateReceive value)? receive,
  }) {
    return deliver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapAmountSideStateDeliver value)? deliver,
    TResult Function(SwapAmountSideStateReceive value)? receive,
    required TResult orElse(),
  }) {
    if (deliver != null) {
      return deliver(this);
    }
    return orElse();
  }
}

abstract class SwapAmountSideStateDeliver implements SwapAmountSideState {
  const factory SwapAmountSideStateDeliver() = _$SwapAmountSideStateDeliver;
}

/// @nodoc
abstract class _$$SwapAmountSideStateReceiveCopyWith<$Res> {
  factory _$$SwapAmountSideStateReceiveCopyWith(
          _$SwapAmountSideStateReceive value,
          $Res Function(_$SwapAmountSideStateReceive) then) =
      __$$SwapAmountSideStateReceiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapAmountSideStateReceiveCopyWithImpl<$Res>
    extends _$SwapAmountSideStateCopyWithImpl<$Res>
    implements _$$SwapAmountSideStateReceiveCopyWith<$Res> {
  __$$SwapAmountSideStateReceiveCopyWithImpl(
      _$SwapAmountSideStateReceive _value,
      $Res Function(_$SwapAmountSideStateReceive) _then)
      : super(_value, (v) => _then(v as _$SwapAmountSideStateReceive));

  @override
  _$SwapAmountSideStateReceive get _value =>
      super._value as _$SwapAmountSideStateReceive;
}

/// @nodoc

class _$SwapAmountSideStateReceive implements SwapAmountSideStateReceive {
  const _$SwapAmountSideStateReceive();

  @override
  String toString() {
    return 'SwapAmountSideState.receive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapAmountSideStateReceive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deliver,
    required TResult Function() receive,
  }) {
    return receive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? deliver,
    TResult Function()? receive,
  }) {
    return receive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deliver,
    TResult Function()? receive,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapAmountSideStateDeliver value) deliver,
    required TResult Function(SwapAmountSideStateReceive value) receive,
  }) {
    return receive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapAmountSideStateDeliver value)? deliver,
    TResult Function(SwapAmountSideStateReceive value)? receive,
  }) {
    return receive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapAmountSideStateDeliver value)? deliver,
    TResult Function(SwapAmountSideStateReceive value)? receive,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(this);
    }
    return orElse();
  }
}

abstract class SwapAmountSideStateReceive implements SwapAmountSideState {
  const factory SwapAmountSideStateReceive() = _$SwapAmountSideStateReceive;
}

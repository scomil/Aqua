// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sideshift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SideshiftAssetResponse _$SideshiftAssetResponseFromJson(
    Map<String, dynamic> json) {
  return _SideshiftAssetResponse.fromJson(json);
}

/// @nodoc
mixin _$SideshiftAssetResponse {
  String get coin => throw _privateConstructorUsedError;
  List<String> get networks => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool? get hasMemo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftAssetResponseCopyWith<SideshiftAssetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftAssetResponseCopyWith<$Res> {
  factory $SideshiftAssetResponseCopyWith(SideshiftAssetResponse value,
          $Res Function(SideshiftAssetResponse) then) =
      _$SideshiftAssetResponseCopyWithImpl<$Res>;
  $Res call({String coin, List<String> networks, String name, bool? hasMemo});
}

/// @nodoc
class _$SideshiftAssetResponseCopyWithImpl<$Res>
    implements $SideshiftAssetResponseCopyWith<$Res> {
  _$SideshiftAssetResponseCopyWithImpl(this._value, this._then);

  final SideshiftAssetResponse _value;
  // ignore: unused_field
  final $Res Function(SideshiftAssetResponse) _then;

  @override
  $Res call({
    Object? coin = freezed,
    Object? networks = freezed,
    Object? name = freezed,
    Object? hasMemo = freezed,
  }) {
    return _then(_value.copyWith(
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      networks: networks == freezed
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasMemo: hasMemo == freezed
          ? _value.hasMemo
          : hasMemo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftAssetResponseCopyWith<$Res>
    implements $SideshiftAssetResponseCopyWith<$Res> {
  factory _$$_SideshiftAssetResponseCopyWith(_$_SideshiftAssetResponse value,
          $Res Function(_$_SideshiftAssetResponse) then) =
      __$$_SideshiftAssetResponseCopyWithImpl<$Res>;
  @override
  $Res call({String coin, List<String> networks, String name, bool? hasMemo});
}

/// @nodoc
class __$$_SideshiftAssetResponseCopyWithImpl<$Res>
    extends _$SideshiftAssetResponseCopyWithImpl<$Res>
    implements _$$_SideshiftAssetResponseCopyWith<$Res> {
  __$$_SideshiftAssetResponseCopyWithImpl(_$_SideshiftAssetResponse _value,
      $Res Function(_$_SideshiftAssetResponse) _then)
      : super(_value, (v) => _then(v as _$_SideshiftAssetResponse));

  @override
  _$_SideshiftAssetResponse get _value =>
      super._value as _$_SideshiftAssetResponse;

  @override
  $Res call({
    Object? coin = freezed,
    Object? networks = freezed,
    Object? name = freezed,
    Object? hasMemo = freezed,
  }) {
    return _then(_$_SideshiftAssetResponse(
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      networks: networks == freezed
          ? _value._networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasMemo: hasMemo == freezed
          ? _value.hasMemo
          : hasMemo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftAssetResponse implements _SideshiftAssetResponse {
  _$_SideshiftAssetResponse(
      {required this.coin,
      required final List<String> networks,
      required this.name,
      this.hasMemo})
      : _networks = networks;

  factory _$_SideshiftAssetResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftAssetResponseFromJson(json);

  @override
  final String coin;
  final List<String> _networks;
  @override
  List<String> get networks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_networks);
  }

  @override
  final String name;
  @override
  final bool? hasMemo;

  @override
  String toString() {
    return 'SideshiftAssetResponse(coin: $coin, networks: $networks, name: $name, hasMemo: $hasMemo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftAssetResponse &&
            const DeepCollectionEquality().equals(other.coin, coin) &&
            const DeepCollectionEquality().equals(other._networks, _networks) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hasMemo, hasMemo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coin),
      const DeepCollectionEquality().hash(_networks),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hasMemo));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftAssetResponseCopyWith<_$_SideshiftAssetResponse> get copyWith =>
      __$$_SideshiftAssetResponseCopyWithImpl<_$_SideshiftAssetResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftAssetResponseToJson(
      this,
    );
  }
}

abstract class _SideshiftAssetResponse implements SideshiftAssetResponse {
  factory _SideshiftAssetResponse(
      {required final String coin,
      required final List<String> networks,
      required final String name,
      final bool? hasMemo}) = _$_SideshiftAssetResponse;

  factory _SideshiftAssetResponse.fromJson(Map<String, dynamic> json) =
      _$_SideshiftAssetResponse.fromJson;

  @override
  String get coin;
  @override
  List<String> get networks;
  @override
  String get name;
  @override
  bool? get hasMemo;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftAssetResponseCopyWith<_$_SideshiftAssetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SideshiftAsset {
  String get id => throw _privateConstructorUsedError;
  String get coin => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool? get hasMemo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideshiftAssetCopyWith<SideshiftAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftAssetCopyWith<$Res> {
  factory $SideshiftAssetCopyWith(
          SideshiftAsset value, $Res Function(SideshiftAsset) then) =
      _$SideshiftAssetCopyWithImpl<$Res>;
  $Res call(
      {String id, String coin, String network, String name, bool? hasMemo});
}

/// @nodoc
class _$SideshiftAssetCopyWithImpl<$Res>
    implements $SideshiftAssetCopyWith<$Res> {
  _$SideshiftAssetCopyWithImpl(this._value, this._then);

  final SideshiftAsset _value;
  // ignore: unused_field
  final $Res Function(SideshiftAsset) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? coin = freezed,
    Object? network = freezed,
    Object? name = freezed,
    Object? hasMemo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasMemo: hasMemo == freezed
          ? _value.hasMemo
          : hasMemo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftAssetCopyWith<$Res>
    implements $SideshiftAssetCopyWith<$Res> {
  factory _$$_SideshiftAssetCopyWith(
          _$_SideshiftAsset value, $Res Function(_$_SideshiftAsset) then) =
      __$$_SideshiftAssetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String coin, String network, String name, bool? hasMemo});
}

/// @nodoc
class __$$_SideshiftAssetCopyWithImpl<$Res>
    extends _$SideshiftAssetCopyWithImpl<$Res>
    implements _$$_SideshiftAssetCopyWith<$Res> {
  __$$_SideshiftAssetCopyWithImpl(
      _$_SideshiftAsset _value, $Res Function(_$_SideshiftAsset) _then)
      : super(_value, (v) => _then(v as _$_SideshiftAsset));

  @override
  _$_SideshiftAsset get _value => super._value as _$_SideshiftAsset;

  @override
  $Res call({
    Object? id = freezed,
    Object? coin = freezed,
    Object? network = freezed,
    Object? name = freezed,
    Object? hasMemo = freezed,
  }) {
    return _then(_$_SideshiftAsset(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasMemo: hasMemo == freezed
          ? _value.hasMemo
          : hasMemo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SideshiftAsset implements _SideshiftAsset {
  _$_SideshiftAsset(
      {required this.id,
      required this.coin,
      required this.network,
      required this.name,
      this.hasMemo});

  @override
  final String id;
  @override
  final String coin;
  @override
  final String network;
  @override
  final String name;
  @override
  final bool? hasMemo;

  @override
  String toString() {
    return 'SideshiftAsset(id: $id, coin: $coin, network: $network, name: $name, hasMemo: $hasMemo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftAsset &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.coin, coin) &&
            const DeepCollectionEquality().equals(other.network, network) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hasMemo, hasMemo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(coin),
      const DeepCollectionEquality().hash(network),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hasMemo));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftAssetCopyWith<_$_SideshiftAsset> get copyWith =>
      __$$_SideshiftAssetCopyWithImpl<_$_SideshiftAsset>(this, _$identity);
}

abstract class _SideshiftAsset implements SideshiftAsset {
  factory _SideshiftAsset(
      {required final String id,
      required final String coin,
      required final String network,
      required final String name,
      final bool? hasMemo}) = _$_SideshiftAsset;

  @override
  String get id;
  @override
  String get coin;
  @override
  String get network;
  @override
  String get name;
  @override
  bool? get hasMemo;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftAssetCopyWith<_$_SideshiftAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

SideShiftAssetPairInfo _$SideShiftAssetPairInfoFromJson(
    Map<String, dynamic> json) {
  return _SideShiftAssetPairInfo.fromJson(json);
}

/// @nodoc
mixin _$SideShiftAssetPairInfo {
  String get rate => throw _privateConstructorUsedError;
  String get min => throw _privateConstructorUsedError;
  String get max => throw _privateConstructorUsedError;
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  String? get settleNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideShiftAssetPairInfoCopyWith<SideShiftAssetPairInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideShiftAssetPairInfoCopyWith<$Res> {
  factory $SideShiftAssetPairInfoCopyWith(SideShiftAssetPairInfo value,
          $Res Function(SideShiftAssetPairInfo) then) =
      _$SideShiftAssetPairInfoCopyWithImpl<$Res>;
  $Res call(
      {String rate,
      String min,
      String max,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork});
}

/// @nodoc
class _$SideShiftAssetPairInfoCopyWithImpl<$Res>
    implements $SideShiftAssetPairInfoCopyWith<$Res> {
  _$SideShiftAssetPairInfoCopyWithImpl(this._value, this._then);

  final SideShiftAssetPairInfo _value;
  // ignore: unused_field
  final $Res Function(SideShiftAssetPairInfo) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideShiftAssetPairInfoCopyWith<$Res>
    implements $SideShiftAssetPairInfoCopyWith<$Res> {
  factory _$$_SideShiftAssetPairInfoCopyWith(_$_SideShiftAssetPairInfo value,
          $Res Function(_$_SideShiftAssetPairInfo) then) =
      __$$_SideShiftAssetPairInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String rate,
      String min,
      String max,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork});
}

/// @nodoc
class __$$_SideShiftAssetPairInfoCopyWithImpl<$Res>
    extends _$SideShiftAssetPairInfoCopyWithImpl<$Res>
    implements _$$_SideShiftAssetPairInfoCopyWith<$Res> {
  __$$_SideShiftAssetPairInfoCopyWithImpl(_$_SideShiftAssetPairInfo _value,
      $Res Function(_$_SideShiftAssetPairInfo) _then)
      : super(_value, (v) => _then(v as _$_SideShiftAssetPairInfo));

  @override
  _$_SideShiftAssetPairInfo get _value =>
      super._value as _$_SideShiftAssetPairInfo;

  @override
  $Res call({
    Object? rate = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
  }) {
    return _then(_$_SideShiftAssetPairInfo(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideShiftAssetPairInfo implements _SideShiftAssetPairInfo {
  const _$_SideShiftAssetPairInfo(
      {required this.rate,
      required this.min,
      required this.max,
      this.depositCoin,
      this.settleCoin,
      this.depositNetwork,
      this.settleNetwork});

  factory _$_SideShiftAssetPairInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SideShiftAssetPairInfoFromJson(json);

  @override
  final String rate;
  @override
  final String min;
  @override
  final String max;
  @override
  final String? depositCoin;
  @override
  final String? settleCoin;
  @override
  final String? depositNetwork;
  @override
  final String? settleNetwork;

  @override
  String toString() {
    return 'SideShiftAssetPairInfo(rate: $rate, min: $min, max: $max, depositCoin: $depositCoin, settleCoin: $settleCoin, depositNetwork: $depositNetwork, settleNetwork: $settleNetwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideShiftAssetPairInfo &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(depositCoin),
      const DeepCollectionEquality().hash(settleCoin),
      const DeepCollectionEquality().hash(depositNetwork),
      const DeepCollectionEquality().hash(settleNetwork));

  @JsonKey(ignore: true)
  @override
  _$$_SideShiftAssetPairInfoCopyWith<_$_SideShiftAssetPairInfo> get copyWith =>
      __$$_SideShiftAssetPairInfoCopyWithImpl<_$_SideShiftAssetPairInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideShiftAssetPairInfoToJson(
      this,
    );
  }
}

abstract class _SideShiftAssetPairInfo implements SideShiftAssetPairInfo {
  const factory _SideShiftAssetPairInfo(
      {required final String rate,
      required final String min,
      required final String max,
      final String? depositCoin,
      final String? settleCoin,
      final String? depositNetwork,
      final String? settleNetwork}) = _$_SideShiftAssetPairInfo;

  factory _SideShiftAssetPairInfo.fromJson(Map<String, dynamic> json) =
      _$_SideShiftAssetPairInfo.fromJson;

  @override
  String get rate;
  @override
  String get min;
  @override
  String get max;
  @override
  String? get depositCoin;
  @override
  String? get settleCoin;
  @override
  String? get depositNetwork;
  @override
  String? get settleNetwork;
  @override
  @JsonKey(ignore: true)
  _$$_SideShiftAssetPairInfoCopyWith<_$_SideShiftAssetPairInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

SideshiftPermissionsResponse _$SideshiftPermissionsResponseFromJson(
    Map<String, dynamic> json) {
  return _SideshiftPermissionsResponse.fromJson(json);
}

/// @nodoc
mixin _$SideshiftPermissionsResponse {
  String? get createdAt => throw _privateConstructorUsedError;
  bool get createShift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftPermissionsResponseCopyWith<SideshiftPermissionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftPermissionsResponseCopyWith<$Res> {
  factory $SideshiftPermissionsResponseCopyWith(
          SideshiftPermissionsResponse value,
          $Res Function(SideshiftPermissionsResponse) then) =
      _$SideshiftPermissionsResponseCopyWithImpl<$Res>;
  $Res call({String? createdAt, bool createShift});
}

/// @nodoc
class _$SideshiftPermissionsResponseCopyWithImpl<$Res>
    implements $SideshiftPermissionsResponseCopyWith<$Res> {
  _$SideshiftPermissionsResponseCopyWithImpl(this._value, this._then);

  final SideshiftPermissionsResponse _value;
  // ignore: unused_field
  final $Res Function(SideshiftPermissionsResponse) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? createShift = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createShift: createShift == freezed
          ? _value.createShift
          : createShift // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftPermissionsResponseCopyWith<$Res>
    implements $SideshiftPermissionsResponseCopyWith<$Res> {
  factory _$$_SideshiftPermissionsResponseCopyWith(
          _$_SideshiftPermissionsResponse value,
          $Res Function(_$_SideshiftPermissionsResponse) then) =
      __$$_SideshiftPermissionsResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? createdAt, bool createShift});
}

/// @nodoc
class __$$_SideshiftPermissionsResponseCopyWithImpl<$Res>
    extends _$SideshiftPermissionsResponseCopyWithImpl<$Res>
    implements _$$_SideshiftPermissionsResponseCopyWith<$Res> {
  __$$_SideshiftPermissionsResponseCopyWithImpl(
      _$_SideshiftPermissionsResponse _value,
      $Res Function(_$_SideshiftPermissionsResponse) _then)
      : super(_value, (v) => _then(v as _$_SideshiftPermissionsResponse));

  @override
  _$_SideshiftPermissionsResponse get _value =>
      super._value as _$_SideshiftPermissionsResponse;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? createShift = freezed,
  }) {
    return _then(_$_SideshiftPermissionsResponse(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createShift: createShift == freezed
          ? _value.createShift
          : createShift // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftPermissionsResponse implements _SideshiftPermissionsResponse {
  _$_SideshiftPermissionsResponse({this.createdAt, required this.createShift});

  factory _$_SideshiftPermissionsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftPermissionsResponseFromJson(json);

  @override
  final String? createdAt;
  @override
  final bool createShift;

  @override
  String toString() {
    return 'SideshiftPermissionsResponse(createdAt: $createdAt, createShift: $createShift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftPermissionsResponse &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.createShift, createShift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(createShift));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftPermissionsResponseCopyWith<_$_SideshiftPermissionsResponse>
      get copyWith => __$$_SideshiftPermissionsResponseCopyWithImpl<
          _$_SideshiftPermissionsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftPermissionsResponseToJson(
      this,
    );
  }
}

abstract class _SideshiftPermissionsResponse
    implements SideshiftPermissionsResponse {
  factory _SideshiftPermissionsResponse(
      {final String? createdAt,
      required final bool createShift}) = _$_SideshiftPermissionsResponse;

  factory _SideshiftPermissionsResponse.fromJson(Map<String, dynamic> json) =
      _$_SideshiftPermissionsResponse.fromJson;

  @override
  String? get createdAt;
  @override
  bool get createShift;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftPermissionsResponseCopyWith<_$_SideshiftPermissionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SideshiftQuoteRequest _$SideshiftQuoteRequestFromJson(
    Map<String, dynamic> json) {
  return _SideshiftQuoteRequest.fromJson(json);
}

/// @nodoc
mixin _$SideshiftQuoteRequest {
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get settleNetwork => throw _privateConstructorUsedError;
  String? get depositAmount => throw _privateConstructorUsedError;
  String? get settleAmount => throw _privateConstructorUsedError;
  String? get affiliateId => throw _privateConstructorUsedError;
  String? get commissionRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftQuoteRequestCopyWith<SideshiftQuoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftQuoteRequestCopyWith<$Res> {
  factory $SideshiftQuoteRequestCopyWith(SideshiftQuoteRequest value,
          $Res Function(SideshiftQuoteRequest) then) =
      _$SideshiftQuoteRequestCopyWithImpl<$Res>;
  $Res call(
      {String? depositCoin,
      String? depositNetwork,
      String? settleCoin,
      String? settleNetwork,
      String? depositAmount,
      String? settleAmount,
      String? affiliateId,
      String? commissionRate});
}

/// @nodoc
class _$SideshiftQuoteRequestCopyWithImpl<$Res>
    implements $SideshiftQuoteRequestCopyWith<$Res> {
  _$SideshiftQuoteRequestCopyWithImpl(this._value, this._then);

  final SideshiftQuoteRequest _value;
  // ignore: unused_field
  final $Res Function(SideshiftQuoteRequest) _then;

  @override
  $Res call({
    Object? depositCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleCoin = freezed,
    Object? settleNetwork = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? affiliateId = freezed,
    Object? commissionRate = freezed,
  }) {
    return _then(_value.copyWith(
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
      commissionRate: commissionRate == freezed
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftQuoteRequestCopyWith<$Res>
    implements $SideshiftQuoteRequestCopyWith<$Res> {
  factory _$$_SideshiftQuoteRequestCopyWith(_$_SideshiftQuoteRequest value,
          $Res Function(_$_SideshiftQuoteRequest) then) =
      __$$_SideshiftQuoteRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? depositCoin,
      String? depositNetwork,
      String? settleCoin,
      String? settleNetwork,
      String? depositAmount,
      String? settleAmount,
      String? affiliateId,
      String? commissionRate});
}

/// @nodoc
class __$$_SideshiftQuoteRequestCopyWithImpl<$Res>
    extends _$SideshiftQuoteRequestCopyWithImpl<$Res>
    implements _$$_SideshiftQuoteRequestCopyWith<$Res> {
  __$$_SideshiftQuoteRequestCopyWithImpl(_$_SideshiftQuoteRequest _value,
      $Res Function(_$_SideshiftQuoteRequest) _then)
      : super(_value, (v) => _then(v as _$_SideshiftQuoteRequest));

  @override
  _$_SideshiftQuoteRequest get _value =>
      super._value as _$_SideshiftQuoteRequest;

  @override
  $Res call({
    Object? depositCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleCoin = freezed,
    Object? settleNetwork = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? affiliateId = freezed,
    Object? commissionRate = freezed,
  }) {
    return _then(_$_SideshiftQuoteRequest(
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
      commissionRate: commissionRate == freezed
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftQuoteRequest implements _SideshiftQuoteRequest {
  _$_SideshiftQuoteRequest(
      {this.depositCoin,
      this.depositNetwork,
      this.settleCoin,
      this.settleNetwork,
      this.depositAmount,
      this.settleAmount,
      this.affiliateId,
      this.commissionRate});

  factory _$_SideshiftQuoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftQuoteRequestFromJson(json);

  @override
  final String? depositCoin;
  @override
  final String? depositNetwork;
  @override
  final String? settleCoin;
  @override
  final String? settleNetwork;
  @override
  final String? depositAmount;
  @override
  final String? settleAmount;
  @override
  final String? affiliateId;
  @override
  final String? commissionRate;

  @override
  String toString() {
    return 'SideshiftQuoteRequest(depositCoin: $depositCoin, depositNetwork: $depositNetwork, settleCoin: $settleCoin, settleNetwork: $settleNetwork, depositAmount: $depositAmount, settleAmount: $settleAmount, affiliateId: $affiliateId, commissionRate: $commissionRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftQuoteRequest &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork) &&
            const DeepCollectionEquality()
                .equals(other.depositAmount, depositAmount) &&
            const DeepCollectionEquality()
                .equals(other.settleAmount, settleAmount) &&
            const DeepCollectionEquality()
                .equals(other.affiliateId, affiliateId) &&
            const DeepCollectionEquality()
                .equals(other.commissionRate, commissionRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(depositCoin),
      const DeepCollectionEquality().hash(depositNetwork),
      const DeepCollectionEquality().hash(settleCoin),
      const DeepCollectionEquality().hash(settleNetwork),
      const DeepCollectionEquality().hash(depositAmount),
      const DeepCollectionEquality().hash(settleAmount),
      const DeepCollectionEquality().hash(affiliateId),
      const DeepCollectionEquality().hash(commissionRate));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftQuoteRequestCopyWith<_$_SideshiftQuoteRequest> get copyWith =>
      __$$_SideshiftQuoteRequestCopyWithImpl<_$_SideshiftQuoteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftQuoteRequestToJson(
      this,
    );
  }
}

abstract class _SideshiftQuoteRequest implements SideshiftQuoteRequest {
  factory _SideshiftQuoteRequest(
      {final String? depositCoin,
      final String? depositNetwork,
      final String? settleCoin,
      final String? settleNetwork,
      final String? depositAmount,
      final String? settleAmount,
      final String? affiliateId,
      final String? commissionRate}) = _$_SideshiftQuoteRequest;

  factory _SideshiftQuoteRequest.fromJson(Map<String, dynamic> json) =
      _$_SideshiftQuoteRequest.fromJson;

  @override
  String? get depositCoin;
  @override
  String? get depositNetwork;
  @override
  String? get settleCoin;
  @override
  String? get settleNetwork;
  @override
  String? get depositAmount;
  @override
  String? get settleAmount;
  @override
  String? get affiliateId;
  @override
  String? get commissionRate;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftQuoteRequestCopyWith<_$_SideshiftQuoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SideshiftQuoteResponse _$SideshiftQuoteResponseFromJson(
    Map<String, dynamic> json) {
  return _SideshiftQuoteResponse.fromJson(json);
}

/// @nodoc
mixin _$SideshiftQuoteResponse {
  String get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  String? get settleNetwork => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get depositAmount => throw _privateConstructorUsedError;
  String? get settleAmount => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;
  String? get affiliateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftQuoteResponseCopyWith<SideshiftQuoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftQuoteResponseCopyWith<$Res> {
  factory $SideshiftQuoteResponseCopyWith(SideshiftQuoteResponse value,
          $Res Function(SideshiftQuoteResponse) then) =
      _$SideshiftQuoteResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      DateTime? expiresAt,
      String? depositAmount,
      String? settleAmount,
      String? rate,
      String? affiliateId});
}

/// @nodoc
class _$SideshiftQuoteResponseCopyWithImpl<$Res>
    implements $SideshiftQuoteResponseCopyWith<$Res> {
  _$SideshiftQuoteResponseCopyWithImpl(this._value, this._then);

  final SideshiftQuoteResponse _value;
  // ignore: unused_field
  final $Res Function(SideshiftQuoteResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? expiresAt = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? rate = freezed,
    Object? affiliateId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftQuoteResponseCopyWith<$Res>
    implements $SideshiftQuoteResponseCopyWith<$Res> {
  factory _$$_SideshiftQuoteResponseCopyWith(_$_SideshiftQuoteResponse value,
          $Res Function(_$_SideshiftQuoteResponse) then) =
      __$$_SideshiftQuoteResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      DateTime? expiresAt,
      String? depositAmount,
      String? settleAmount,
      String? rate,
      String? affiliateId});
}

/// @nodoc
class __$$_SideshiftQuoteResponseCopyWithImpl<$Res>
    extends _$SideshiftQuoteResponseCopyWithImpl<$Res>
    implements _$$_SideshiftQuoteResponseCopyWith<$Res> {
  __$$_SideshiftQuoteResponseCopyWithImpl(_$_SideshiftQuoteResponse _value,
      $Res Function(_$_SideshiftQuoteResponse) _then)
      : super(_value, (v) => _then(v as _$_SideshiftQuoteResponse));

  @override
  _$_SideshiftQuoteResponse get _value =>
      super._value as _$_SideshiftQuoteResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? expiresAt = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? rate = freezed,
    Object? affiliateId = freezed,
  }) {
    return _then(_$_SideshiftQuoteResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftQuoteResponse implements _SideshiftQuoteResponse {
  _$_SideshiftQuoteResponse(
      {required this.id,
      this.createdAt,
      this.depositCoin,
      this.settleCoin,
      this.depositNetwork,
      this.settleNetwork,
      this.expiresAt,
      this.depositAmount,
      this.settleAmount,
      this.rate,
      this.affiliateId});

  factory _$_SideshiftQuoteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftQuoteResponseFromJson(json);

  @override
  final String id;
  @override
  final DateTime? createdAt;
  @override
  final String? depositCoin;
  @override
  final String? settleCoin;
  @override
  final String? depositNetwork;
  @override
  final String? settleNetwork;
  @override
  final DateTime? expiresAt;
  @override
  final String? depositAmount;
  @override
  final String? settleAmount;
  @override
  final String? rate;
  @override
  final String? affiliateId;

  @override
  String toString() {
    return 'SideshiftQuoteResponse(id: $id, createdAt: $createdAt, depositCoin: $depositCoin, settleCoin: $settleCoin, depositNetwork: $depositNetwork, settleNetwork: $settleNetwork, expiresAt: $expiresAt, depositAmount: $depositAmount, settleAmount: $settleAmount, rate: $rate, affiliateId: $affiliateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftQuoteResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt) &&
            const DeepCollectionEquality()
                .equals(other.depositAmount, depositAmount) &&
            const DeepCollectionEquality()
                .equals(other.settleAmount, settleAmount) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality()
                .equals(other.affiliateId, affiliateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(depositCoin),
      const DeepCollectionEquality().hash(settleCoin),
      const DeepCollectionEquality().hash(depositNetwork),
      const DeepCollectionEquality().hash(settleNetwork),
      const DeepCollectionEquality().hash(expiresAt),
      const DeepCollectionEquality().hash(depositAmount),
      const DeepCollectionEquality().hash(settleAmount),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(affiliateId));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftQuoteResponseCopyWith<_$_SideshiftQuoteResponse> get copyWith =>
      __$$_SideshiftQuoteResponseCopyWithImpl<_$_SideshiftQuoteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftQuoteResponseToJson(
      this,
    );
  }
}

abstract class _SideshiftQuoteResponse implements SideshiftQuoteResponse {
  factory _SideshiftQuoteResponse(
      {required final String id,
      final DateTime? createdAt,
      final String? depositCoin,
      final String? settleCoin,
      final String? depositNetwork,
      final String? settleNetwork,
      final DateTime? expiresAt,
      final String? depositAmount,
      final String? settleAmount,
      final String? rate,
      final String? affiliateId}) = _$_SideshiftQuoteResponse;

  factory _SideshiftQuoteResponse.fromJson(Map<String, dynamic> json) =
      _$_SideshiftQuoteResponse.fromJson;

  @override
  String get id;
  @override
  DateTime? get createdAt;
  @override
  String? get depositCoin;
  @override
  String? get settleCoin;
  @override
  String? get depositNetwork;
  @override
  String? get settleNetwork;
  @override
  DateTime? get expiresAt;
  @override
  String? get depositAmount;
  @override
  String? get settleAmount;
  @override
  String? get rate;
  @override
  String? get affiliateId;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftQuoteResponseCopyWith<_$_SideshiftQuoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SideshiftFixedOrderRequest _$SideshiftFixedOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _SideshiftFixedOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$SideshiftFixedOrderRequest {
  String? get settleAddress => throw _privateConstructorUsedError;
  String? get affiliateId => throw _privateConstructorUsedError;
  String? get quoteId => throw _privateConstructorUsedError;
  String? get refundAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftFixedOrderRequestCopyWith<SideshiftFixedOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftFixedOrderRequestCopyWith<$Res> {
  factory $SideshiftFixedOrderRequestCopyWith(SideshiftFixedOrderRequest value,
          $Res Function(SideshiftFixedOrderRequest) then) =
      _$SideshiftFixedOrderRequestCopyWithImpl<$Res>;
  $Res call(
      {String? settleAddress,
      String? affiliateId,
      String? quoteId,
      String? refundAddress});
}

/// @nodoc
class _$SideshiftFixedOrderRequestCopyWithImpl<$Res>
    implements $SideshiftFixedOrderRequestCopyWith<$Res> {
  _$SideshiftFixedOrderRequestCopyWithImpl(this._value, this._then);

  final SideshiftFixedOrderRequest _value;
  // ignore: unused_field
  final $Res Function(SideshiftFixedOrderRequest) _then;

  @override
  $Res call({
    Object? settleAddress = freezed,
    Object? affiliateId = freezed,
    Object? quoteId = freezed,
    Object? refundAddress = freezed,
  }) {
    return _then(_value.copyWith(
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteId: quoteId == freezed
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundAddress: refundAddress == freezed
          ? _value.refundAddress
          : refundAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftFixedOrderRequestCopyWith<$Res>
    implements $SideshiftFixedOrderRequestCopyWith<$Res> {
  factory _$$_SideshiftFixedOrderRequestCopyWith(
          _$_SideshiftFixedOrderRequest value,
          $Res Function(_$_SideshiftFixedOrderRequest) then) =
      __$$_SideshiftFixedOrderRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? settleAddress,
      String? affiliateId,
      String? quoteId,
      String? refundAddress});
}

/// @nodoc
class __$$_SideshiftFixedOrderRequestCopyWithImpl<$Res>
    extends _$SideshiftFixedOrderRequestCopyWithImpl<$Res>
    implements _$$_SideshiftFixedOrderRequestCopyWith<$Res> {
  __$$_SideshiftFixedOrderRequestCopyWithImpl(
      _$_SideshiftFixedOrderRequest _value,
      $Res Function(_$_SideshiftFixedOrderRequest) _then)
      : super(_value, (v) => _then(v as _$_SideshiftFixedOrderRequest));

  @override
  _$_SideshiftFixedOrderRequest get _value =>
      super._value as _$_SideshiftFixedOrderRequest;

  @override
  $Res call({
    Object? settleAddress = freezed,
    Object? affiliateId = freezed,
    Object? quoteId = freezed,
    Object? refundAddress = freezed,
  }) {
    return _then(_$_SideshiftFixedOrderRequest(
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteId: quoteId == freezed
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundAddress: refundAddress == freezed
          ? _value.refundAddress
          : refundAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftFixedOrderRequest implements _SideshiftFixedOrderRequest {
  _$_SideshiftFixedOrderRequest(
      {this.settleAddress, this.affiliateId, this.quoteId, this.refundAddress});

  factory _$_SideshiftFixedOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftFixedOrderRequestFromJson(json);

  @override
  final String? settleAddress;
  @override
  final String? affiliateId;
  @override
  final String? quoteId;
  @override
  final String? refundAddress;

  @override
  String toString() {
    return 'SideshiftFixedOrderRequest(settleAddress: $settleAddress, affiliateId: $affiliateId, quoteId: $quoteId, refundAddress: $refundAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftFixedOrderRequest &&
            const DeepCollectionEquality()
                .equals(other.settleAddress, settleAddress) &&
            const DeepCollectionEquality()
                .equals(other.affiliateId, affiliateId) &&
            const DeepCollectionEquality().equals(other.quoteId, quoteId) &&
            const DeepCollectionEquality()
                .equals(other.refundAddress, refundAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(settleAddress),
      const DeepCollectionEquality().hash(affiliateId),
      const DeepCollectionEquality().hash(quoteId),
      const DeepCollectionEquality().hash(refundAddress));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftFixedOrderRequestCopyWith<_$_SideshiftFixedOrderRequest>
      get copyWith => __$$_SideshiftFixedOrderRequestCopyWithImpl<
          _$_SideshiftFixedOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftFixedOrderRequestToJson(
      this,
    );
  }
}

abstract class _SideshiftFixedOrderRequest
    implements SideshiftFixedOrderRequest {
  factory _SideshiftFixedOrderRequest(
      {final String? settleAddress,
      final String? affiliateId,
      final String? quoteId,
      final String? refundAddress}) = _$_SideshiftFixedOrderRequest;

  factory _SideshiftFixedOrderRequest.fromJson(Map<String, dynamic> json) =
      _$_SideshiftFixedOrderRequest.fromJson;

  @override
  String? get settleAddress;
  @override
  String? get affiliateId;
  @override
  String? get quoteId;
  @override
  String? get refundAddress;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftFixedOrderRequestCopyWith<_$_SideshiftFixedOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

SideshiftFixedOrderResponse _$SideshiftFixedOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _SideshiftFixedOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$SideshiftFixedOrderResponse {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  String? get settleNetwork => throw _privateConstructorUsedError;
  String? get depositAddress => throw _privateConstructorUsedError;
  String? get settleAddress => throw _privateConstructorUsedError;
  String? get depositMin => throw _privateConstructorUsedError;
  String? get depositMax => throw _privateConstructorUsedError;
  OrderType? get type => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String get refundAddress => throw _privateConstructorUsedError;
  String? get quoteId => throw _privateConstructorUsedError;
  String? get depositAmount => throw _privateConstructorUsedError;
  String? get settleAmount => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftFixedOrderResponseCopyWith<SideshiftFixedOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftFixedOrderResponseCopyWith<$Res> {
  factory $SideshiftFixedOrderResponseCopyWith(
          SideshiftFixedOrderResponse value,
          $Res Function(SideshiftFixedOrderResponse) then) =
      _$SideshiftFixedOrderResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      String? depositAddress,
      String? settleAddress,
      String? depositMin,
      String? depositMax,
      OrderType? type,
      DateTime? expiresAt,
      String refundAddress,
      String? quoteId,
      String? depositAmount,
      String? settleAmount,
      OrderStatus? status,
      DateTime? updatedAt,
      String? rate});
}

/// @nodoc
class _$SideshiftFixedOrderResponseCopyWithImpl<$Res>
    implements $SideshiftFixedOrderResponseCopyWith<$Res> {
  _$SideshiftFixedOrderResponseCopyWithImpl(this._value, this._then);

  final SideshiftFixedOrderResponse _value;
  // ignore: unused_field
  final $Res Function(SideshiftFixedOrderResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? depositAddress = freezed,
    Object? settleAddress = freezed,
    Object? depositMin = freezed,
    Object? depositMax = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? refundAddress = freezed,
    Object? quoteId = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAddress: depositAddress == freezed
          ? _value.depositAddress
          : depositAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMin: depositMin == freezed
          ? _value.depositMin
          : depositMin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMax: depositMax == freezed
          ? _value.depositMax
          : depositMax // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundAddress: refundAddress == freezed
          ? _value.refundAddress
          : refundAddress // ignore: cast_nullable_to_non_nullable
              as String,
      quoteId: quoteId == freezed
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftFixedOrderResponseCopyWith<$Res>
    implements $SideshiftFixedOrderResponseCopyWith<$Res> {
  factory _$$_SideshiftFixedOrderResponseCopyWith(
          _$_SideshiftFixedOrderResponse value,
          $Res Function(_$_SideshiftFixedOrderResponse) then) =
      __$$_SideshiftFixedOrderResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      String? depositAddress,
      String? settleAddress,
      String? depositMin,
      String? depositMax,
      OrderType? type,
      DateTime? expiresAt,
      String refundAddress,
      String? quoteId,
      String? depositAmount,
      String? settleAmount,
      OrderStatus? status,
      DateTime? updatedAt,
      String? rate});
}

/// @nodoc
class __$$_SideshiftFixedOrderResponseCopyWithImpl<$Res>
    extends _$SideshiftFixedOrderResponseCopyWithImpl<$Res>
    implements _$$_SideshiftFixedOrderResponseCopyWith<$Res> {
  __$$_SideshiftFixedOrderResponseCopyWithImpl(
      _$_SideshiftFixedOrderResponse _value,
      $Res Function(_$_SideshiftFixedOrderResponse) _then)
      : super(_value, (v) => _then(v as _$_SideshiftFixedOrderResponse));

  @override
  _$_SideshiftFixedOrderResponse get _value =>
      super._value as _$_SideshiftFixedOrderResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? depositAddress = freezed,
    Object? settleAddress = freezed,
    Object? depositMin = freezed,
    Object? depositMax = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? refundAddress = freezed,
    Object? quoteId = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$_SideshiftFixedOrderResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAddress: depositAddress == freezed
          ? _value.depositAddress
          : depositAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMin: depositMin == freezed
          ? _value.depositMin
          : depositMin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMax: depositMax == freezed
          ? _value.depositMax
          : depositMax // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundAddress: refundAddress == freezed
          ? _value.refundAddress
          : refundAddress // ignore: cast_nullable_to_non_nullable
              as String,
      quoteId: quoteId == freezed
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftFixedOrderResponse implements _SideshiftFixedOrderResponse {
  const _$_SideshiftFixedOrderResponse(
      {this.id,
      this.createdAt,
      this.depositCoin,
      this.settleCoin,
      this.depositNetwork,
      this.settleNetwork,
      this.depositAddress,
      this.settleAddress,
      this.depositMin,
      this.depositMax,
      this.type,
      this.expiresAt,
      required this.refundAddress,
      this.quoteId,
      this.depositAmount,
      this.settleAmount,
      this.status,
      this.updatedAt,
      this.rate});

  factory _$_SideshiftFixedOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftFixedOrderResponseFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? depositCoin;
  @override
  final String? settleCoin;
  @override
  final String? depositNetwork;
  @override
  final String? settleNetwork;
  @override
  final String? depositAddress;
  @override
  final String? settleAddress;
  @override
  final String? depositMin;
  @override
  final String? depositMax;
  @override
  final OrderType? type;
  @override
  final DateTime? expiresAt;
  @override
  final String refundAddress;
  @override
  final String? quoteId;
  @override
  final String? depositAmount;
  @override
  final String? settleAmount;
  @override
  final OrderStatus? status;
  @override
  final DateTime? updatedAt;
  @override
  final String? rate;

  @override
  String toString() {
    return 'SideshiftFixedOrderResponse(id: $id, createdAt: $createdAt, depositCoin: $depositCoin, settleCoin: $settleCoin, depositNetwork: $depositNetwork, settleNetwork: $settleNetwork, depositAddress: $depositAddress, settleAddress: $settleAddress, depositMin: $depositMin, depositMax: $depositMax, type: $type, expiresAt: $expiresAt, refundAddress: $refundAddress, quoteId: $quoteId, depositAmount: $depositAmount, settleAmount: $settleAmount, status: $status, updatedAt: $updatedAt, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftFixedOrderResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork) &&
            const DeepCollectionEquality()
                .equals(other.depositAddress, depositAddress) &&
            const DeepCollectionEquality()
                .equals(other.settleAddress, settleAddress) &&
            const DeepCollectionEquality()
                .equals(other.depositMin, depositMin) &&
            const DeepCollectionEquality()
                .equals(other.depositMax, depositMax) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt) &&
            const DeepCollectionEquality()
                .equals(other.refundAddress, refundAddress) &&
            const DeepCollectionEquality().equals(other.quoteId, quoteId) &&
            const DeepCollectionEquality()
                .equals(other.depositAmount, depositAmount) &&
            const DeepCollectionEquality()
                .equals(other.settleAmount, settleAmount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(depositCoin),
        const DeepCollectionEquality().hash(settleCoin),
        const DeepCollectionEquality().hash(depositNetwork),
        const DeepCollectionEquality().hash(settleNetwork),
        const DeepCollectionEquality().hash(depositAddress),
        const DeepCollectionEquality().hash(settleAddress),
        const DeepCollectionEquality().hash(depositMin),
        const DeepCollectionEquality().hash(depositMax),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(expiresAt),
        const DeepCollectionEquality().hash(refundAddress),
        const DeepCollectionEquality().hash(quoteId),
        const DeepCollectionEquality().hash(depositAmount),
        const DeepCollectionEquality().hash(settleAmount),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(rate)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftFixedOrderResponseCopyWith<_$_SideshiftFixedOrderResponse>
      get copyWith => __$$_SideshiftFixedOrderResponseCopyWithImpl<
          _$_SideshiftFixedOrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftFixedOrderResponseToJson(
      this,
    );
  }
}

abstract class _SideshiftFixedOrderResponse
    implements SideshiftFixedOrderResponse {
  const factory _SideshiftFixedOrderResponse(
      {final String? id,
      final DateTime? createdAt,
      final String? depositCoin,
      final String? settleCoin,
      final String? depositNetwork,
      final String? settleNetwork,
      final String? depositAddress,
      final String? settleAddress,
      final String? depositMin,
      final String? depositMax,
      final OrderType? type,
      final DateTime? expiresAt,
      required final String refundAddress,
      final String? quoteId,
      final String? depositAmount,
      final String? settleAmount,
      final OrderStatus? status,
      final DateTime? updatedAt,
      final String? rate}) = _$_SideshiftFixedOrderResponse;

  factory _SideshiftFixedOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_SideshiftFixedOrderResponse.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get depositCoin;
  @override
  String? get settleCoin;
  @override
  String? get depositNetwork;
  @override
  String? get settleNetwork;
  @override
  String? get depositAddress;
  @override
  String? get settleAddress;
  @override
  String? get depositMin;
  @override
  String? get depositMax;
  @override
  OrderType? get type;
  @override
  DateTime? get expiresAt;
  @override
  String get refundAddress;
  @override
  String? get quoteId;
  @override
  String? get depositAmount;
  @override
  String? get settleAmount;
  @override
  OrderStatus? get status;
  @override
  DateTime? get updatedAt;
  @override
  String? get rate;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftFixedOrderResponseCopyWith<_$_SideshiftFixedOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SideshiftVariableOrderRequest _$SideshiftVariableOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _SideshiftVariableOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$SideshiftVariableOrderRequest {
  String? get settleAddress => throw _privateConstructorUsedError;
  String? get refundAddress => throw _privateConstructorUsedError;
  String? get affiliateId => throw _privateConstructorUsedError;
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  dynamic get settleNetwork => throw _privateConstructorUsedError;
  String? get commissionRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftVariableOrderRequestCopyWith<SideshiftVariableOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftVariableOrderRequestCopyWith<$Res> {
  factory $SideshiftVariableOrderRequestCopyWith(
          SideshiftVariableOrderRequest value,
          $Res Function(SideshiftVariableOrderRequest) then) =
      _$SideshiftVariableOrderRequestCopyWithImpl<$Res>;
  $Res call(
      {String? settleAddress,
      String? refundAddress,
      String? affiliateId,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      dynamic settleNetwork,
      String? commissionRate});
}

/// @nodoc
class _$SideshiftVariableOrderRequestCopyWithImpl<$Res>
    implements $SideshiftVariableOrderRequestCopyWith<$Res> {
  _$SideshiftVariableOrderRequestCopyWithImpl(this._value, this._then);

  final SideshiftVariableOrderRequest _value;
  // ignore: unused_field
  final $Res Function(SideshiftVariableOrderRequest) _then;

  @override
  $Res call({
    Object? settleAddress = freezed,
    Object? refundAddress = freezed,
    Object? affiliateId = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? commissionRate = freezed,
  }) {
    return _then(_value.copyWith(
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      refundAddress: refundAddress == freezed
          ? _value.refundAddress
          : refundAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commissionRate: commissionRate == freezed
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftVariableOrderRequestCopyWith<$Res>
    implements $SideshiftVariableOrderRequestCopyWith<$Res> {
  factory _$$_SideshiftVariableOrderRequestCopyWith(
          _$_SideshiftVariableOrderRequest value,
          $Res Function(_$_SideshiftVariableOrderRequest) then) =
      __$$_SideshiftVariableOrderRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? settleAddress,
      String? refundAddress,
      String? affiliateId,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      dynamic settleNetwork,
      String? commissionRate});
}

/// @nodoc
class __$$_SideshiftVariableOrderRequestCopyWithImpl<$Res>
    extends _$SideshiftVariableOrderRequestCopyWithImpl<$Res>
    implements _$$_SideshiftVariableOrderRequestCopyWith<$Res> {
  __$$_SideshiftVariableOrderRequestCopyWithImpl(
      _$_SideshiftVariableOrderRequest _value,
      $Res Function(_$_SideshiftVariableOrderRequest) _then)
      : super(_value, (v) => _then(v as _$_SideshiftVariableOrderRequest));

  @override
  _$_SideshiftVariableOrderRequest get _value =>
      super._value as _$_SideshiftVariableOrderRequest;

  @override
  $Res call({
    Object? settleAddress = freezed,
    Object? refundAddress = freezed,
    Object? affiliateId = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? commissionRate = freezed,
  }) {
    return _then(_$_SideshiftVariableOrderRequest(
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      refundAddress: refundAddress == freezed
          ? _value.refundAddress
          : refundAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliateId: affiliateId == freezed
          ? _value.affiliateId
          : affiliateId // ignore: cast_nullable_to_non_nullable
              as String?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commissionRate: commissionRate == freezed
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftVariableOrderRequest
    implements _SideshiftVariableOrderRequest {
  _$_SideshiftVariableOrderRequest(
      {this.settleAddress,
      this.refundAddress,
      this.affiliateId,
      this.depositCoin,
      this.settleCoin,
      this.depositNetwork,
      this.settleNetwork,
      this.commissionRate});

  factory _$_SideshiftVariableOrderRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_SideshiftVariableOrderRequestFromJson(json);

  @override
  final String? settleAddress;
  @override
  final String? refundAddress;
  @override
  final String? affiliateId;
  @override
  final String? depositCoin;
  @override
  final String? settleCoin;
  @override
  final String? depositNetwork;
  @override
  final dynamic settleNetwork;
  @override
  final String? commissionRate;

  @override
  String toString() {
    return 'SideshiftVariableOrderRequest(settleAddress: $settleAddress, refundAddress: $refundAddress, affiliateId: $affiliateId, depositCoin: $depositCoin, settleCoin: $settleCoin, depositNetwork: $depositNetwork, settleNetwork: $settleNetwork, commissionRate: $commissionRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftVariableOrderRequest &&
            const DeepCollectionEquality()
                .equals(other.settleAddress, settleAddress) &&
            const DeepCollectionEquality()
                .equals(other.refundAddress, refundAddress) &&
            const DeepCollectionEquality()
                .equals(other.affiliateId, affiliateId) &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork) &&
            const DeepCollectionEquality()
                .equals(other.commissionRate, commissionRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(settleAddress),
      const DeepCollectionEquality().hash(refundAddress),
      const DeepCollectionEquality().hash(affiliateId),
      const DeepCollectionEquality().hash(depositCoin),
      const DeepCollectionEquality().hash(settleCoin),
      const DeepCollectionEquality().hash(depositNetwork),
      const DeepCollectionEquality().hash(settleNetwork),
      const DeepCollectionEquality().hash(commissionRate));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftVariableOrderRequestCopyWith<_$_SideshiftVariableOrderRequest>
      get copyWith => __$$_SideshiftVariableOrderRequestCopyWithImpl<
          _$_SideshiftVariableOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftVariableOrderRequestToJson(
      this,
    );
  }
}

abstract class _SideshiftVariableOrderRequest
    implements SideshiftVariableOrderRequest {
  factory _SideshiftVariableOrderRequest(
      {final String? settleAddress,
      final String? refundAddress,
      final String? affiliateId,
      final String? depositCoin,
      final String? settleCoin,
      final String? depositNetwork,
      final dynamic settleNetwork,
      final String? commissionRate}) = _$_SideshiftVariableOrderRequest;

  factory _SideshiftVariableOrderRequest.fromJson(Map<String, dynamic> json) =
      _$_SideshiftVariableOrderRequest.fromJson;

  @override
  String? get settleAddress;
  @override
  String? get refundAddress;
  @override
  String? get affiliateId;
  @override
  String? get depositCoin;
  @override
  String? get settleCoin;
  @override
  String? get depositNetwork;
  @override
  dynamic get settleNetwork;
  @override
  String? get commissionRate;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftVariableOrderRequestCopyWith<_$_SideshiftVariableOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

SideshiftVariableOrderResponse _$SideshiftVariableOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _SideshiftVariableOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$SideshiftVariableOrderResponse {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  String? get settleNetwork => throw _privateConstructorUsedError;
  String? get depositAddress => throw _privateConstructorUsedError;
  String? get settleAddress => throw _privateConstructorUsedError;
  String? get depositMin => throw _privateConstructorUsedError;
  String? get depositMax => throw _privateConstructorUsedError;
  OrderType? get type => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftVariableOrderResponseCopyWith<SideshiftVariableOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftVariableOrderResponseCopyWith<$Res> {
  factory $SideshiftVariableOrderResponseCopyWith(
          SideshiftVariableOrderResponse value,
          $Res Function(SideshiftVariableOrderResponse) then) =
      _$SideshiftVariableOrderResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      String? depositAddress,
      String? settleAddress,
      String? depositMin,
      String? depositMax,
      OrderType? type,
      DateTime? expiresAt,
      String? status});
}

/// @nodoc
class _$SideshiftVariableOrderResponseCopyWithImpl<$Res>
    implements $SideshiftVariableOrderResponseCopyWith<$Res> {
  _$SideshiftVariableOrderResponseCopyWithImpl(this._value, this._then);

  final SideshiftVariableOrderResponse _value;
  // ignore: unused_field
  final $Res Function(SideshiftVariableOrderResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? depositAddress = freezed,
    Object? settleAddress = freezed,
    Object? depositMin = freezed,
    Object? depositMax = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAddress: depositAddress == freezed
          ? _value.depositAddress
          : depositAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMin: depositMin == freezed
          ? _value.depositMin
          : depositMin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMax: depositMax == freezed
          ? _value.depositMax
          : depositMax // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftVariableOrderResponseCopyWith<$Res>
    implements $SideshiftVariableOrderResponseCopyWith<$Res> {
  factory _$$_SideshiftVariableOrderResponseCopyWith(
          _$_SideshiftVariableOrderResponse value,
          $Res Function(_$_SideshiftVariableOrderResponse) then) =
      __$$_SideshiftVariableOrderResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      String? depositAddress,
      String? settleAddress,
      String? depositMin,
      String? depositMax,
      OrderType? type,
      DateTime? expiresAt,
      String? status});
}

/// @nodoc
class __$$_SideshiftVariableOrderResponseCopyWithImpl<$Res>
    extends _$SideshiftVariableOrderResponseCopyWithImpl<$Res>
    implements _$$_SideshiftVariableOrderResponseCopyWith<$Res> {
  __$$_SideshiftVariableOrderResponseCopyWithImpl(
      _$_SideshiftVariableOrderResponse _value,
      $Res Function(_$_SideshiftVariableOrderResponse) _then)
      : super(_value, (v) => _then(v as _$_SideshiftVariableOrderResponse));

  @override
  _$_SideshiftVariableOrderResponse get _value =>
      super._value as _$_SideshiftVariableOrderResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? depositAddress = freezed,
    Object? settleAddress = freezed,
    Object? depositMin = freezed,
    Object? depositMax = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_SideshiftVariableOrderResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAddress: depositAddress == freezed
          ? _value.depositAddress
          : depositAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMin: depositMin == freezed
          ? _value.depositMin
          : depositMin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMax: depositMax == freezed
          ? _value.depositMax
          : depositMax // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftVariableOrderResponse
    implements _SideshiftVariableOrderResponse {
  const _$_SideshiftVariableOrderResponse(
      {this.id,
      this.createdAt,
      this.depositCoin,
      this.settleCoin,
      this.depositNetwork,
      this.settleNetwork,
      this.depositAddress,
      this.settleAddress,
      this.depositMin,
      this.depositMax,
      this.type,
      this.expiresAt,
      this.status});

  factory _$_SideshiftVariableOrderResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_SideshiftVariableOrderResponseFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? depositCoin;
  @override
  final String? settleCoin;
  @override
  final String? depositNetwork;
  @override
  final String? settleNetwork;
  @override
  final String? depositAddress;
  @override
  final String? settleAddress;
  @override
  final String? depositMin;
  @override
  final String? depositMax;
  @override
  final OrderType? type;
  @override
  final DateTime? expiresAt;
  @override
  final String? status;

  @override
  String toString() {
    return 'SideshiftVariableOrderResponse(id: $id, createdAt: $createdAt, depositCoin: $depositCoin, settleCoin: $settleCoin, depositNetwork: $depositNetwork, settleNetwork: $settleNetwork, depositAddress: $depositAddress, settleAddress: $settleAddress, depositMin: $depositMin, depositMax: $depositMax, type: $type, expiresAt: $expiresAt, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftVariableOrderResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork) &&
            const DeepCollectionEquality()
                .equals(other.depositAddress, depositAddress) &&
            const DeepCollectionEquality()
                .equals(other.settleAddress, settleAddress) &&
            const DeepCollectionEquality()
                .equals(other.depositMin, depositMin) &&
            const DeepCollectionEquality()
                .equals(other.depositMax, depositMax) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(depositCoin),
      const DeepCollectionEquality().hash(settleCoin),
      const DeepCollectionEquality().hash(depositNetwork),
      const DeepCollectionEquality().hash(settleNetwork),
      const DeepCollectionEquality().hash(depositAddress),
      const DeepCollectionEquality().hash(settleAddress),
      const DeepCollectionEquality().hash(depositMin),
      const DeepCollectionEquality().hash(depositMax),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(expiresAt),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftVariableOrderResponseCopyWith<_$_SideshiftVariableOrderResponse>
      get copyWith => __$$_SideshiftVariableOrderResponseCopyWithImpl<
          _$_SideshiftVariableOrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftVariableOrderResponseToJson(
      this,
    );
  }
}

abstract class _SideshiftVariableOrderResponse
    implements SideshiftVariableOrderResponse {
  const factory _SideshiftVariableOrderResponse(
      {final String? id,
      final DateTime? createdAt,
      final String? depositCoin,
      final String? settleCoin,
      final String? depositNetwork,
      final String? settleNetwork,
      final String? depositAddress,
      final String? settleAddress,
      final String? depositMin,
      final String? depositMax,
      final OrderType? type,
      final DateTime? expiresAt,
      final String? status}) = _$_SideshiftVariableOrderResponse;

  factory _SideshiftVariableOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_SideshiftVariableOrderResponse.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get depositCoin;
  @override
  String? get settleCoin;
  @override
  String? get depositNetwork;
  @override
  String? get settleNetwork;
  @override
  String? get depositAddress;
  @override
  String? get settleAddress;
  @override
  String? get depositMin;
  @override
  String? get depositMax;
  @override
  OrderType? get type;
  @override
  DateTime? get expiresAt;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftVariableOrderResponseCopyWith<_$_SideshiftVariableOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SideshiftOrderStatusResponse _$SideshiftOrderStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _SideshiftOrderStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$SideshiftOrderStatusResponse {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get depositCoin => throw _privateConstructorUsedError;
  String? get settleCoin => throw _privateConstructorUsedError;
  String? get depositNetwork => throw _privateConstructorUsedError;
  String? get settleNetwork => throw _privateConstructorUsedError;
  String? get depositAddress => throw _privateConstructorUsedError;
  String? get settleAddress => throw _privateConstructorUsedError;
  String? get depositMin => throw _privateConstructorUsedError;
  String? get depositMax => throw _privateConstructorUsedError;
  OrderType? get type => throw _privateConstructorUsedError;
  String? get depositAmount => throw _privateConstructorUsedError;
  String? get settleAmount => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get depositHash => throw _privateConstructorUsedError;
  String? get settleHash => throw _privateConstructorUsedError;
  DateTime? get depositReceivedAt => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideshiftOrderStatusResponseCopyWith<SideshiftOrderStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftOrderStatusResponseCopyWith<$Res> {
  factory $SideshiftOrderStatusResponseCopyWith(
          SideshiftOrderStatusResponse value,
          $Res Function(SideshiftOrderStatusResponse) then) =
      _$SideshiftOrderStatusResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      String? depositAddress,
      String? settleAddress,
      String? depositMin,
      String? depositMax,
      OrderType? type,
      String? depositAmount,
      String? settleAmount,
      DateTime? expiresAt,
      OrderStatus? status,
      DateTime? updatedAt,
      String? depositHash,
      String? settleHash,
      DateTime? depositReceivedAt,
      String? rate});
}

/// @nodoc
class _$SideshiftOrderStatusResponseCopyWithImpl<$Res>
    implements $SideshiftOrderStatusResponseCopyWith<$Res> {
  _$SideshiftOrderStatusResponseCopyWithImpl(this._value, this._then);

  final SideshiftOrderStatusResponse _value;
  // ignore: unused_field
  final $Res Function(SideshiftOrderStatusResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? depositAddress = freezed,
    Object? settleAddress = freezed,
    Object? depositMin = freezed,
    Object? depositMax = freezed,
    Object? type = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? expiresAt = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? depositHash = freezed,
    Object? settleHash = freezed,
    Object? depositReceivedAt = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAddress: depositAddress == freezed
          ? _value.depositAddress
          : depositAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMin: depositMin == freezed
          ? _value.depositMin
          : depositMin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMax: depositMax == freezed
          ? _value.depositMax
          : depositMax // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositHash: depositHash == freezed
          ? _value.depositHash
          : depositHash // ignore: cast_nullable_to_non_nullable
              as String?,
      settleHash: settleHash == freezed
          ? _value.settleHash
          : settleHash // ignore: cast_nullable_to_non_nullable
              as String?,
      depositReceivedAt: depositReceivedAt == freezed
          ? _value.depositReceivedAt
          : depositReceivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SideshiftOrderStatusResponseCopyWith<$Res>
    implements $SideshiftOrderStatusResponseCopyWith<$Res> {
  factory _$$_SideshiftOrderStatusResponseCopyWith(
          _$_SideshiftOrderStatusResponse value,
          $Res Function(_$_SideshiftOrderStatusResponse) then) =
      __$$_SideshiftOrderStatusResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? depositCoin,
      String? settleCoin,
      String? depositNetwork,
      String? settleNetwork,
      String? depositAddress,
      String? settleAddress,
      String? depositMin,
      String? depositMax,
      OrderType? type,
      String? depositAmount,
      String? settleAmount,
      DateTime? expiresAt,
      OrderStatus? status,
      DateTime? updatedAt,
      String? depositHash,
      String? settleHash,
      DateTime? depositReceivedAt,
      String? rate});
}

/// @nodoc
class __$$_SideshiftOrderStatusResponseCopyWithImpl<$Res>
    extends _$SideshiftOrderStatusResponseCopyWithImpl<$Res>
    implements _$$_SideshiftOrderStatusResponseCopyWith<$Res> {
  __$$_SideshiftOrderStatusResponseCopyWithImpl(
      _$_SideshiftOrderStatusResponse _value,
      $Res Function(_$_SideshiftOrderStatusResponse) _then)
      : super(_value, (v) => _then(v as _$_SideshiftOrderStatusResponse));

  @override
  _$_SideshiftOrderStatusResponse get _value =>
      super._value as _$_SideshiftOrderStatusResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? depositCoin = freezed,
    Object? settleCoin = freezed,
    Object? depositNetwork = freezed,
    Object? settleNetwork = freezed,
    Object? depositAddress = freezed,
    Object? settleAddress = freezed,
    Object? depositMin = freezed,
    Object? depositMax = freezed,
    Object? type = freezed,
    Object? depositAmount = freezed,
    Object? settleAmount = freezed,
    Object? expiresAt = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? depositHash = freezed,
    Object? settleHash = freezed,
    Object? depositReceivedAt = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$_SideshiftOrderStatusResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositCoin: depositCoin == freezed
          ? _value.depositCoin
          : depositCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      settleCoin: settleCoin == freezed
          ? _value.settleCoin
          : settleCoin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNetwork: depositNetwork == freezed
          ? _value.depositNetwork
          : depositNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      settleNetwork: settleNetwork == freezed
          ? _value.settleNetwork
          : settleNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      depositAddress: depositAddress == freezed
          ? _value.depositAddress
          : depositAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAddress: settleAddress == freezed
          ? _value.settleAddress
          : settleAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMin: depositMin == freezed
          ? _value.depositMin
          : depositMin // ignore: cast_nullable_to_non_nullable
              as String?,
      depositMax: depositMax == freezed
          ? _value.depositMax
          : depositMax // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      depositAmount: depositAmount == freezed
          ? _value.depositAmount
          : depositAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      settleAmount: settleAmount == freezed
          ? _value.settleAmount
          : settleAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      depositHash: depositHash == freezed
          ? _value.depositHash
          : depositHash // ignore: cast_nullable_to_non_nullable
              as String?,
      settleHash: settleHash == freezed
          ? _value.settleHash
          : settleHash // ignore: cast_nullable_to_non_nullable
              as String?,
      depositReceivedAt: depositReceivedAt == freezed
          ? _value.depositReceivedAt
          : depositReceivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SideshiftOrderStatusResponse implements _SideshiftOrderStatusResponse {
  _$_SideshiftOrderStatusResponse(
      {this.id,
      this.createdAt,
      this.depositCoin,
      this.settleCoin,
      this.depositNetwork,
      this.settleNetwork,
      this.depositAddress,
      this.settleAddress,
      this.depositMin,
      this.depositMax,
      this.type,
      this.depositAmount,
      this.settleAmount,
      this.expiresAt,
      required this.status,
      this.updatedAt,
      this.depositHash,
      this.settleHash,
      this.depositReceivedAt,
      this.rate});

  factory _$_SideshiftOrderStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SideshiftOrderStatusResponseFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? depositCoin;
  @override
  final String? settleCoin;
  @override
  final String? depositNetwork;
  @override
  final String? settleNetwork;
  @override
  final String? depositAddress;
  @override
  final String? settleAddress;
  @override
  final String? depositMin;
  @override
  final String? depositMax;
  @override
  final OrderType? type;
  @override
  final String? depositAmount;
  @override
  final String? settleAmount;
  @override
  final DateTime? expiresAt;
  @override
  final OrderStatus? status;
  @override
  final DateTime? updatedAt;
  @override
  final String? depositHash;
  @override
  final String? settleHash;
  @override
  final DateTime? depositReceivedAt;
  @override
  final String? rate;

  @override
  String toString() {
    return 'SideshiftOrderStatusResponse(id: $id, createdAt: $createdAt, depositCoin: $depositCoin, settleCoin: $settleCoin, depositNetwork: $depositNetwork, settleNetwork: $settleNetwork, depositAddress: $depositAddress, settleAddress: $settleAddress, depositMin: $depositMin, depositMax: $depositMax, type: $type, depositAmount: $depositAmount, settleAmount: $settleAmount, expiresAt: $expiresAt, status: $status, updatedAt: $updatedAt, depositHash: $depositHash, settleHash: $settleHash, depositReceivedAt: $depositReceivedAt, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideshiftOrderStatusResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.depositCoin, depositCoin) &&
            const DeepCollectionEquality()
                .equals(other.settleCoin, settleCoin) &&
            const DeepCollectionEquality()
                .equals(other.depositNetwork, depositNetwork) &&
            const DeepCollectionEquality()
                .equals(other.settleNetwork, settleNetwork) &&
            const DeepCollectionEquality()
                .equals(other.depositAddress, depositAddress) &&
            const DeepCollectionEquality()
                .equals(other.settleAddress, settleAddress) &&
            const DeepCollectionEquality()
                .equals(other.depositMin, depositMin) &&
            const DeepCollectionEquality()
                .equals(other.depositMax, depositMax) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.depositAmount, depositAmount) &&
            const DeepCollectionEquality()
                .equals(other.settleAmount, settleAmount) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.depositHash, depositHash) &&
            const DeepCollectionEquality()
                .equals(other.settleHash, settleHash) &&
            const DeepCollectionEquality()
                .equals(other.depositReceivedAt, depositReceivedAt) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(depositCoin),
        const DeepCollectionEquality().hash(settleCoin),
        const DeepCollectionEquality().hash(depositNetwork),
        const DeepCollectionEquality().hash(settleNetwork),
        const DeepCollectionEquality().hash(depositAddress),
        const DeepCollectionEquality().hash(settleAddress),
        const DeepCollectionEquality().hash(depositMin),
        const DeepCollectionEquality().hash(depositMax),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(depositAmount),
        const DeepCollectionEquality().hash(settleAmount),
        const DeepCollectionEquality().hash(expiresAt),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(depositHash),
        const DeepCollectionEquality().hash(settleHash),
        const DeepCollectionEquality().hash(depositReceivedAt),
        const DeepCollectionEquality().hash(rate)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_SideshiftOrderStatusResponseCopyWith<_$_SideshiftOrderStatusResponse>
      get copyWith => __$$_SideshiftOrderStatusResponseCopyWithImpl<
          _$_SideshiftOrderStatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideshiftOrderStatusResponseToJson(
      this,
    );
  }
}

abstract class _SideshiftOrderStatusResponse
    implements SideshiftOrderStatusResponse {
  factory _SideshiftOrderStatusResponse(
      {final String? id,
      final DateTime? createdAt,
      final String? depositCoin,
      final String? settleCoin,
      final String? depositNetwork,
      final String? settleNetwork,
      final String? depositAddress,
      final String? settleAddress,
      final String? depositMin,
      final String? depositMax,
      final OrderType? type,
      final String? depositAmount,
      final String? settleAmount,
      final DateTime? expiresAt,
      required final OrderStatus? status,
      final DateTime? updatedAt,
      final String? depositHash,
      final String? settleHash,
      final DateTime? depositReceivedAt,
      final String? rate}) = _$_SideshiftOrderStatusResponse;

  factory _SideshiftOrderStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_SideshiftOrderStatusResponse.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get depositCoin;
  @override
  String? get settleCoin;
  @override
  String? get depositNetwork;
  @override
  String? get settleNetwork;
  @override
  String? get depositAddress;
  @override
  String? get settleAddress;
  @override
  String? get depositMin;
  @override
  String? get depositMax;
  @override
  OrderType? get type;
  @override
  String? get depositAmount;
  @override
  String? get settleAmount;
  @override
  DateTime? get expiresAt;
  @override
  OrderStatus? get status;
  @override
  DateTime? get updatedAt;
  @override
  String? get depositHash;
  @override
  String? get settleHash;
  @override
  DateTime? get depositReceivedAt;
  @override
  String? get rate;
  @override
  @JsonKey(ignore: true)
  _$$_SideshiftOrderStatusResponseCopyWith<_$_SideshiftOrderStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

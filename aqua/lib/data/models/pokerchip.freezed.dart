// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokerchip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokerChipAsset _$PokerChipAssetFromJson(Map<String, dynamic> json) {
  return _PokerChipAsset.fromJson(json);
}

/// @nodoc
mixin _$PokerChipAsset {
  String? get txid => throw _privateConstructorUsedError;
  int? get vout => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokerChipAssetCopyWith<PokerChipAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokerChipAssetCopyWith<$Res> {
  factory $PokerChipAssetCopyWith(
          PokerChipAsset value, $Res Function(PokerChipAsset) then) =
      _$PokerChipAssetCopyWithImpl<$Res>;
  $Res call({String? txid, int? vout, Status? status, int value, String asset});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$PokerChipAssetCopyWithImpl<$Res>
    implements $PokerChipAssetCopyWith<$Res> {
  _$PokerChipAssetCopyWithImpl(this._value, this._then);

  final PokerChipAsset _value;
  // ignore: unused_field
  final $Res Function(PokerChipAsset) _then;

  @override
  $Res call({
    Object? txid = freezed,
    Object? vout = freezed,
    Object? status = freezed,
    Object? value = freezed,
    Object? asset = freezed,
  }) {
    return _then(_value.copyWith(
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: vout == freezed
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokerChipAssetCopyWith<$Res>
    implements $PokerChipAssetCopyWith<$Res> {
  factory _$$_PokerChipAssetCopyWith(
          _$_PokerChipAsset value, $Res Function(_$_PokerChipAsset) then) =
      __$$_PokerChipAssetCopyWithImpl<$Res>;
  @override
  $Res call({String? txid, int? vout, Status? status, int value, String asset});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_PokerChipAssetCopyWithImpl<$Res>
    extends _$PokerChipAssetCopyWithImpl<$Res>
    implements _$$_PokerChipAssetCopyWith<$Res> {
  __$$_PokerChipAssetCopyWithImpl(
      _$_PokerChipAsset _value, $Res Function(_$_PokerChipAsset) _then)
      : super(_value, (v) => _then(v as _$_PokerChipAsset));

  @override
  _$_PokerChipAsset get _value => super._value as _$_PokerChipAsset;

  @override
  $Res call({
    Object? txid = freezed,
    Object? vout = freezed,
    Object? status = freezed,
    Object? value = freezed,
    Object? asset = freezed,
  }) {
    return _then(_$_PokerChipAsset(
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: vout == freezed
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokerChipAsset implements _PokerChipAsset {
  _$_PokerChipAsset(
      {this.txid,
      this.vout,
      this.status,
      required this.value,
      required this.asset});

  factory _$_PokerChipAsset.fromJson(Map<String, dynamic> json) =>
      _$$_PokerChipAssetFromJson(json);

  @override
  final String? txid;
  @override
  final int? vout;
  @override
  final Status? status;
  @override
  final int value;
  @override
  final String asset;

  @override
  String toString() {
    return 'PokerChipAsset(txid: $txid, vout: $vout, status: $status, value: $value, asset: $asset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokerChipAsset &&
            const DeepCollectionEquality().equals(other.txid, txid) &&
            const DeepCollectionEquality().equals(other.vout, vout) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.asset, asset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(txid),
      const DeepCollectionEquality().hash(vout),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(asset));

  @JsonKey(ignore: true)
  @override
  _$$_PokerChipAssetCopyWith<_$_PokerChipAsset> get copyWith =>
      __$$_PokerChipAssetCopyWithImpl<_$_PokerChipAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokerChipAssetToJson(
      this,
    );
  }
}

abstract class _PokerChipAsset implements PokerChipAsset {
  factory _PokerChipAsset(
      {final String? txid,
      final int? vout,
      final Status? status,
      required final int value,
      required final String asset}) = _$_PokerChipAsset;

  factory _PokerChipAsset.fromJson(Map<String, dynamic> json) =
      _$_PokerChipAsset.fromJson;

  @override
  String? get txid;
  @override
  int? get vout;
  @override
  Status? get status;
  @override
  int get value;
  @override
  String get asset;
  @override
  @JsonKey(ignore: true)
  _$$_PokerChipAssetCopyWith<_$_PokerChipAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_height')
  int? get blockHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_hash')
  String? get blockHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_time')
  int? get blockTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call(
      {bool? confirmed,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_time') int? blockTime});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? blockTime = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: blockHash == freezed
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: blockTime == freezed
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? confirmed,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_time') int? blockTime});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, (v) => _then(v as _$_Status));

  @override
  _$_Status get _value => super._value as _$_Status;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? blockTime = freezed,
  }) {
    return _then(_$_Status(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: blockHash == freezed
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: blockTime == freezed
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  _$_Status(
      {this.confirmed,
      @JsonKey(name: 'block_height') this.blockHeight,
      @JsonKey(name: 'block_hash') this.blockHash,
      @JsonKey(name: 'block_time') this.blockTime});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final bool? confirmed;
  @override
  @JsonKey(name: 'block_height')
  final int? blockHeight;
  @override
  @JsonKey(name: 'block_hash')
  final String? blockHash;
  @override
  @JsonKey(name: 'block_time')
  final int? blockTime;

  @override
  String toString() {
    return 'Status(confirmed: $confirmed, blockHeight: $blockHeight, blockHash: $blockHash, blockTime: $blockTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            const DeepCollectionEquality().equals(other.confirmed, confirmed) &&
            const DeepCollectionEquality()
                .equals(other.blockHeight, blockHeight) &&
            const DeepCollectionEquality().equals(other.blockHash, blockHash) &&
            const DeepCollectionEquality().equals(other.blockTime, blockTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confirmed),
      const DeepCollectionEquality().hash(blockHeight),
      const DeepCollectionEquality().hash(blockHash),
      const DeepCollectionEquality().hash(blockTime));

  @JsonKey(ignore: true)
  @override
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  factory _Status(
      {final bool? confirmed,
      @JsonKey(name: 'block_height') final int? blockHeight,
      @JsonKey(name: 'block_hash') final String? blockHash,
      @JsonKey(name: 'block_time') final int? blockTime}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  bool? get confirmed;
  @override
  @JsonKey(name: 'block_height')
  int? get blockHeight;
  @override
  @JsonKey(name: 'block_hash')
  String? get blockHash;
  @override
  @JsonKey(name: 'block_time')
  int? get blockTime;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

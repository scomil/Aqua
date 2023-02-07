// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_addresses_history_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveAddressesHistoryArguments {
  Asset get asset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveAddressesHistoryArgumentsCopyWith<ReceiveAddressesHistoryArguments>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAddressesHistoryArgumentsCopyWith<$Res> {
  factory $ReceiveAddressesHistoryArgumentsCopyWith(
          ReceiveAddressesHistoryArguments value,
          $Res Function(ReceiveAddressesHistoryArguments) then) =
      _$ReceiveAddressesHistoryArgumentsCopyWithImpl<$Res>;
  $Res call({Asset asset});
}

/// @nodoc
class _$ReceiveAddressesHistoryArgumentsCopyWithImpl<$Res>
    implements $ReceiveAddressesHistoryArgumentsCopyWith<$Res> {
  _$ReceiveAddressesHistoryArgumentsCopyWithImpl(this._value, this._then);

  final ReceiveAddressesHistoryArguments _value;
  // ignore: unused_field
  final $Res Function(ReceiveAddressesHistoryArguments) _then;

  @override
  $Res call({
    Object? asset = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiveAddressesHistoryArgumentsCopyWith<$Res>
    implements $ReceiveAddressesHistoryArgumentsCopyWith<$Res> {
  factory _$$_ReceiveAddressesHistoryArgumentsCopyWith(
          _$_ReceiveAddressesHistoryArguments value,
          $Res Function(_$_ReceiveAddressesHistoryArguments) then) =
      __$$_ReceiveAddressesHistoryArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({Asset asset});
}

/// @nodoc
class __$$_ReceiveAddressesHistoryArgumentsCopyWithImpl<$Res>
    extends _$ReceiveAddressesHistoryArgumentsCopyWithImpl<$Res>
    implements _$$_ReceiveAddressesHistoryArgumentsCopyWith<$Res> {
  __$$_ReceiveAddressesHistoryArgumentsCopyWithImpl(
      _$_ReceiveAddressesHistoryArguments _value,
      $Res Function(_$_ReceiveAddressesHistoryArguments) _then)
      : super(_value, (v) => _then(v as _$_ReceiveAddressesHistoryArguments));

  @override
  _$_ReceiveAddressesHistoryArguments get _value =>
      super._value as _$_ReceiveAddressesHistoryArguments;

  @override
  $Res call({
    Object? asset = freezed,
  }) {
    return _then(_$_ReceiveAddressesHistoryArguments(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
    ));
  }
}

/// @nodoc

class _$_ReceiveAddressesHistoryArguments
    implements _ReceiveAddressesHistoryArguments {
  const _$_ReceiveAddressesHistoryArguments({required this.asset});

  @override
  final Asset asset;

  @override
  String toString() {
    return 'ReceiveAddressesHistoryArguments(asset: $asset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveAddressesHistoryArguments &&
            const DeepCollectionEquality().equals(other.asset, asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(asset));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveAddressesHistoryArgumentsCopyWith<
          _$_ReceiveAddressesHistoryArguments>
      get copyWith => __$$_ReceiveAddressesHistoryArgumentsCopyWithImpl<
          _$_ReceiveAddressesHistoryArguments>(this, _$identity);
}

abstract class _ReceiveAddressesHistoryArguments
    implements ReceiveAddressesHistoryArguments {
  const factory _ReceiveAddressesHistoryArguments(
      {required final Asset asset}) = _$_ReceiveAddressesHistoryArguments;

  @override
  Asset get asset;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveAddressesHistoryArgumentsCopyWith<
          _$_ReceiveAddressesHistoryArguments>
      get copyWith => throw _privateConstructorUsedError;
}

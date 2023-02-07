// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_amount_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveAmountArguments {
  Asset get asset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveAmountArgumentsCopyWith<ReceiveAmountArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAmountArgumentsCopyWith<$Res> {
  factory $ReceiveAmountArgumentsCopyWith(ReceiveAmountArguments value,
          $Res Function(ReceiveAmountArguments) then) =
      _$ReceiveAmountArgumentsCopyWithImpl<$Res>;
  $Res call({Asset asset});
}

/// @nodoc
class _$ReceiveAmountArgumentsCopyWithImpl<$Res>
    implements $ReceiveAmountArgumentsCopyWith<$Res> {
  _$ReceiveAmountArgumentsCopyWithImpl(this._value, this._then);

  final ReceiveAmountArguments _value;
  // ignore: unused_field
  final $Res Function(ReceiveAmountArguments) _then;

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
abstract class _$$_ReceiveAmountArgumentsCopyWith<$Res>
    implements $ReceiveAmountArgumentsCopyWith<$Res> {
  factory _$$_ReceiveAmountArgumentsCopyWith(_$_ReceiveAmountArguments value,
          $Res Function(_$_ReceiveAmountArguments) then) =
      __$$_ReceiveAmountArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({Asset asset});
}

/// @nodoc
class __$$_ReceiveAmountArgumentsCopyWithImpl<$Res>
    extends _$ReceiveAmountArgumentsCopyWithImpl<$Res>
    implements _$$_ReceiveAmountArgumentsCopyWith<$Res> {
  __$$_ReceiveAmountArgumentsCopyWithImpl(_$_ReceiveAmountArguments _value,
      $Res Function(_$_ReceiveAmountArguments) _then)
      : super(_value, (v) => _then(v as _$_ReceiveAmountArguments));

  @override
  _$_ReceiveAmountArguments get _value =>
      super._value as _$_ReceiveAmountArguments;

  @override
  $Res call({
    Object? asset = freezed,
  }) {
    return _then(_$_ReceiveAmountArguments(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
    ));
  }
}

/// @nodoc

class _$_ReceiveAmountArguments implements _ReceiveAmountArguments {
  const _$_ReceiveAmountArguments({required this.asset});

  @override
  final Asset asset;

  @override
  String toString() {
    return 'ReceiveAmountArguments(asset: $asset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveAmountArguments &&
            const DeepCollectionEquality().equals(other.asset, asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(asset));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveAmountArgumentsCopyWith<_$_ReceiveAmountArguments> get copyWith =>
      __$$_ReceiveAmountArgumentsCopyWithImpl<_$_ReceiveAmountArguments>(
          this, _$identity);
}

abstract class _ReceiveAmountArguments implements ReceiveAmountArguments {
  const factory _ReceiveAmountArguments({required final Asset asset}) =
      _$_ReceiveAmountArguments;

  @override
  Asset get asset;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveAmountArgumentsCopyWith<_$_ReceiveAmountArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

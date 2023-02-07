// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_review_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendReviewArguments {
  Asset get asset => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendReviewArgumentsCopyWith<SendReviewArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendReviewArgumentsCopyWith<$Res> {
  factory $SendReviewArgumentsCopyWith(
          SendReviewArguments value, $Res Function(SendReviewArguments) then) =
      _$SendReviewArgumentsCopyWithImpl<$Res>;
  $Res call({Asset asset, String address, String amount});
}

/// @nodoc
class _$SendReviewArgumentsCopyWithImpl<$Res>
    implements $SendReviewArgumentsCopyWith<$Res> {
  _$SendReviewArgumentsCopyWithImpl(this._value, this._then);

  final SendReviewArguments _value;
  // ignore: unused_field
  final $Res Function(SendReviewArguments) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? address = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SendReviewArgumentsCopyWith<$Res>
    implements $SendReviewArgumentsCopyWith<$Res> {
  factory _$$_SendReviewArgumentsCopyWith(_$_SendReviewArguments value,
          $Res Function(_$_SendReviewArguments) then) =
      __$$_SendReviewArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({Asset asset, String address, String amount});
}

/// @nodoc
class __$$_SendReviewArgumentsCopyWithImpl<$Res>
    extends _$SendReviewArgumentsCopyWithImpl<$Res>
    implements _$$_SendReviewArgumentsCopyWith<$Res> {
  __$$_SendReviewArgumentsCopyWithImpl(_$_SendReviewArguments _value,
      $Res Function(_$_SendReviewArguments) _then)
      : super(_value, (v) => _then(v as _$_SendReviewArguments));

  @override
  _$_SendReviewArguments get _value => super._value as _$_SendReviewArguments;

  @override
  $Res call({
    Object? asset = freezed,
    Object? address = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_SendReviewArguments(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendReviewArguments implements _SendReviewArguments {
  const _$_SendReviewArguments(
      {required this.asset, required this.address, required this.amount});

  @override
  final Asset asset;
  @override
  final String address;
  @override
  final String amount;

  @override
  String toString() {
    return 'SendReviewArguments(asset: $asset, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendReviewArguments &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_SendReviewArgumentsCopyWith<_$_SendReviewArguments> get copyWith =>
      __$$_SendReviewArgumentsCopyWithImpl<_$_SendReviewArguments>(
          this, _$identity);
}

abstract class _SendReviewArguments implements SendReviewArguments {
  const factory _SendReviewArguments(
      {required final Asset asset,
      required final String address,
      required final String amount}) = _$_SendReviewArguments;

  @override
  Asset get asset;
  @override
  String get address;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$_SendReviewArgumentsCopyWith<_$_SendReviewArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

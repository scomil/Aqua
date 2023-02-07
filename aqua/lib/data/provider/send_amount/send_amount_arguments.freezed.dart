// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_amount_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendAmountArguments {
  String get address => throw _privateConstructorUsedError;
  Asset get asset => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendAmountArgumentsCopyWith<SendAmountArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAmountArgumentsCopyWith<$Res> {
  factory $SendAmountArgumentsCopyWith(
          SendAmountArguments value, $Res Function(SendAmountArguments) then) =
      _$SendAmountArgumentsCopyWithImpl<$Res>;
  $Res call(
      {String address,
      Asset asset,
      String? amount,
      String? label,
      String? message});
}

/// @nodoc
class _$SendAmountArgumentsCopyWithImpl<$Res>
    implements $SendAmountArgumentsCopyWith<$Res> {
  _$SendAmountArgumentsCopyWithImpl(this._value, this._then);

  final SendAmountArguments _value;
  // ignore: unused_field
  final $Res Function(SendAmountArguments) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? asset = freezed,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SendAmountArgumentsCopyWith<$Res>
    implements $SendAmountArgumentsCopyWith<$Res> {
  factory _$$_SendAmountArgumentsCopyWith(_$_SendAmountArguments value,
          $Res Function(_$_SendAmountArguments) then) =
      __$$_SendAmountArgumentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      Asset asset,
      String? amount,
      String? label,
      String? message});
}

/// @nodoc
class __$$_SendAmountArgumentsCopyWithImpl<$Res>
    extends _$SendAmountArgumentsCopyWithImpl<$Res>
    implements _$$_SendAmountArgumentsCopyWith<$Res> {
  __$$_SendAmountArgumentsCopyWithImpl(_$_SendAmountArguments _value,
      $Res Function(_$_SendAmountArguments) _then)
      : super(_value, (v) => _then(v as _$_SendAmountArguments));

  @override
  _$_SendAmountArguments get _value => super._value as _$_SendAmountArguments;

  @override
  $Res call({
    Object? address = freezed,
    Object? asset = freezed,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_SendAmountArguments(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SendAmountArguments implements _SendAmountArguments {
  const _$_SendAmountArguments(
      {required this.address,
      required this.asset,
      this.amount,
      this.label,
      this.message});

  @override
  final String address;
  @override
  final Asset asset;
  @override
  final String? amount;
  @override
  final String? label;
  @override
  final String? message;

  @override
  String toString() {
    return 'SendAmountArguments(address: $address, asset: $asset, amount: $amount, label: $label, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendAmountArguments &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SendAmountArgumentsCopyWith<_$_SendAmountArguments> get copyWith =>
      __$$_SendAmountArgumentsCopyWithImpl<_$_SendAmountArguments>(
          this, _$identity);
}

abstract class _SendAmountArguments implements SendAmountArguments {
  const factory _SendAmountArguments(
      {required final String address,
      required final Asset asset,
      final String? amount,
      final String? label,
      final String? message}) = _$_SendAmountArguments;

  @override
  String get address;
  @override
  Asset get asset;
  @override
  String? get amount;
  @override
  String? get label;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_SendAmountArgumentsCopyWith<_$_SendAmountArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

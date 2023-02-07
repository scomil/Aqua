// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_qr_code_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveQrCodeArguments {
  Asset get asset => throw _privateConstructorUsedError;
  bool get isGenericAsset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveQrCodeArgumentsCopyWith<ReceiveQrCodeArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveQrCodeArgumentsCopyWith<$Res> {
  factory $ReceiveQrCodeArgumentsCopyWith(ReceiveQrCodeArguments value,
          $Res Function(ReceiveQrCodeArguments) then) =
      _$ReceiveQrCodeArgumentsCopyWithImpl<$Res>;
  $Res call({Asset asset, bool isGenericAsset});
}

/// @nodoc
class _$ReceiveQrCodeArgumentsCopyWithImpl<$Res>
    implements $ReceiveQrCodeArgumentsCopyWith<$Res> {
  _$ReceiveQrCodeArgumentsCopyWithImpl(this._value, this._then);

  final ReceiveQrCodeArguments _value;
  // ignore: unused_field
  final $Res Function(ReceiveQrCodeArguments) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? isGenericAsset = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      isGenericAsset: isGenericAsset == freezed
          ? _value.isGenericAsset
          : isGenericAsset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiveQrCodeArgumentsCopyWith<$Res>
    implements $ReceiveQrCodeArgumentsCopyWith<$Res> {
  factory _$$_ReceiveQrCodeArgumentsCopyWith(_$_ReceiveQrCodeArguments value,
          $Res Function(_$_ReceiveQrCodeArguments) then) =
      __$$_ReceiveQrCodeArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({Asset asset, bool isGenericAsset});
}

/// @nodoc
class __$$_ReceiveQrCodeArgumentsCopyWithImpl<$Res>
    extends _$ReceiveQrCodeArgumentsCopyWithImpl<$Res>
    implements _$$_ReceiveQrCodeArgumentsCopyWith<$Res> {
  __$$_ReceiveQrCodeArgumentsCopyWithImpl(_$_ReceiveQrCodeArguments _value,
      $Res Function(_$_ReceiveQrCodeArguments) _then)
      : super(_value, (v) => _then(v as _$_ReceiveQrCodeArguments));

  @override
  _$_ReceiveQrCodeArguments get _value =>
      super._value as _$_ReceiveQrCodeArguments;

  @override
  $Res call({
    Object? asset = freezed,
    Object? isGenericAsset = freezed,
  }) {
    return _then(_$_ReceiveQrCodeArguments(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      isGenericAsset: isGenericAsset == freezed
          ? _value.isGenericAsset
          : isGenericAsset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReceiveQrCodeArguments implements _ReceiveQrCodeArguments {
  const _$_ReceiveQrCodeArguments(
      {required this.asset, this.isGenericAsset = false});

  @override
  final Asset asset;
  @override
  @JsonKey()
  final bool isGenericAsset;

  @override
  String toString() {
    return 'ReceiveQrCodeArguments(asset: $asset, isGenericAsset: $isGenericAsset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveQrCodeArguments &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality()
                .equals(other.isGenericAsset, isGenericAsset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(isGenericAsset));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveQrCodeArgumentsCopyWith<_$_ReceiveQrCodeArguments> get copyWith =>
      __$$_ReceiveQrCodeArgumentsCopyWithImpl<_$_ReceiveQrCodeArguments>(
          this, _$identity);
}

abstract class _ReceiveQrCodeArguments implements ReceiveQrCodeArguments {
  const factory _ReceiveQrCodeArguments(
      {required final Asset asset,
      final bool isGenericAsset}) = _$_ReceiveQrCodeArguments;

  @override
  Asset get asset;
  @override
  bool get isGenericAsset;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveQrCodeArgumentsCopyWith<_$_ReceiveQrCodeArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_qr_code_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveQrCodeData {
  String get address => throw _privateConstructorUsedError;
  String get qrImageData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveQrCodeDataCopyWith<ReceiveQrCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveQrCodeDataCopyWith<$Res> {
  factory $ReceiveQrCodeDataCopyWith(
          ReceiveQrCodeData value, $Res Function(ReceiveQrCodeData) then) =
      _$ReceiveQrCodeDataCopyWithImpl<$Res>;
  $Res call({String address, String qrImageData});
}

/// @nodoc
class _$ReceiveQrCodeDataCopyWithImpl<$Res>
    implements $ReceiveQrCodeDataCopyWith<$Res> {
  _$ReceiveQrCodeDataCopyWithImpl(this._value, this._then);

  final ReceiveQrCodeData _value;
  // ignore: unused_field
  final $Res Function(ReceiveQrCodeData) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? qrImageData = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      qrImageData: qrImageData == freezed
          ? _value.qrImageData
          : qrImageData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiveQrCodeDataCopyWith<$Res>
    implements $ReceiveQrCodeDataCopyWith<$Res> {
  factory _$$_ReceiveQrCodeDataCopyWith(_$_ReceiveQrCodeData value,
          $Res Function(_$_ReceiveQrCodeData) then) =
      __$$_ReceiveQrCodeDataCopyWithImpl<$Res>;
  @override
  $Res call({String address, String qrImageData});
}

/// @nodoc
class __$$_ReceiveQrCodeDataCopyWithImpl<$Res>
    extends _$ReceiveQrCodeDataCopyWithImpl<$Res>
    implements _$$_ReceiveQrCodeDataCopyWith<$Res> {
  __$$_ReceiveQrCodeDataCopyWithImpl(
      _$_ReceiveQrCodeData _value, $Res Function(_$_ReceiveQrCodeData) _then)
      : super(_value, (v) => _then(v as _$_ReceiveQrCodeData));

  @override
  _$_ReceiveQrCodeData get _value => super._value as _$_ReceiveQrCodeData;

  @override
  $Res call({
    Object? address = freezed,
    Object? qrImageData = freezed,
  }) {
    return _then(_$_ReceiveQrCodeData(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      qrImageData: qrImageData == freezed
          ? _value.qrImageData
          : qrImageData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReceiveQrCodeData implements _ReceiveQrCodeData {
  const _$_ReceiveQrCodeData(
      {required this.address, required this.qrImageData});

  @override
  final String address;
  @override
  final String qrImageData;

  @override
  String toString() {
    return 'ReceiveQrCodeData(address: $address, qrImageData: $qrImageData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveQrCodeData &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.qrImageData, qrImageData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(qrImageData));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveQrCodeDataCopyWith<_$_ReceiveQrCodeData> get copyWith =>
      __$$_ReceiveQrCodeDataCopyWithImpl<_$_ReceiveQrCodeData>(
          this, _$identity);
}

abstract class _ReceiveQrCodeData implements ReceiveQrCodeData {
  const factory _ReceiveQrCodeData(
      {required final String address,
      required final String qrImageData}) = _$_ReceiveQrCodeData;

  @override
  String get address;
  @override
  String get qrImageData;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveQrCodeDataCopyWith<_$_ReceiveQrCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

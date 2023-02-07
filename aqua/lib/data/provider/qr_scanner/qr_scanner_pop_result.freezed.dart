// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qr_scanner_pop_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrScannerPopResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)
        success,
    required TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)
        swap,
    required TResult Function() requiresRestart,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrScannerPopSuccessResult value) success,
    required TResult Function(QrScannerPopSwapResult value) swap,
    required TResult Function(QrScannerPopRequiresRestartResult value)
        requiresRestart,
    required TResult Function(QrScannerPopEmptyResult value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScannerPopResultCopyWith<$Res> {
  factory $QrScannerPopResultCopyWith(
          QrScannerPopResult value, $Res Function(QrScannerPopResult) then) =
      _$QrScannerPopResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$QrScannerPopResultCopyWithImpl<$Res>
    implements $QrScannerPopResultCopyWith<$Res> {
  _$QrScannerPopResultCopyWithImpl(this._value, this._then);

  final QrScannerPopResult _value;
  // ignore: unused_field
  final $Res Function(QrScannerPopResult) _then;
}

/// @nodoc
abstract class _$$QrScannerPopSuccessResultCopyWith<$Res> {
  factory _$$QrScannerPopSuccessResultCopyWith(
          _$QrScannerPopSuccessResult value,
          $Res Function(_$QrScannerPopSuccessResult) then) =
      __$$QrScannerPopSuccessResultCopyWithImpl<$Res>;
  $Res call(
      {String address,
      Asset? asset,
      String? amount,
      String? label,
      String? message});
}

/// @nodoc
class __$$QrScannerPopSuccessResultCopyWithImpl<$Res>
    extends _$QrScannerPopResultCopyWithImpl<$Res>
    implements _$$QrScannerPopSuccessResultCopyWith<$Res> {
  __$$QrScannerPopSuccessResultCopyWithImpl(_$QrScannerPopSuccessResult _value,
      $Res Function(_$QrScannerPopSuccessResult) _then)
      : super(_value, (v) => _then(v as _$QrScannerPopSuccessResult));

  @override
  _$QrScannerPopSuccessResult get _value =>
      super._value as _$QrScannerPopSuccessResult;

  @override
  $Res call({
    Object? address = freezed,
    Object? asset = freezed,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
  }) {
    return _then(_$QrScannerPopSuccessResult(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset?,
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

class _$QrScannerPopSuccessResult implements QrScannerPopSuccessResult {
  const _$QrScannerPopSuccessResult(
      {required this.address,
      this.asset,
      this.amount,
      this.label,
      this.message});

  @override
  final String address;
  @override
  final Asset? asset;
  @override
  final String? amount;
  @override
  final String? label;
  @override
  final String? message;

  @override
  String toString() {
    return 'QrScannerPopResult.success(address: $address, asset: $asset, amount: $amount, label: $label, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrScannerPopSuccessResult &&
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
  _$$QrScannerPopSuccessResultCopyWith<_$QrScannerPopSuccessResult>
      get copyWith => __$$QrScannerPopSuccessResultCopyWithImpl<
          _$QrScannerPopSuccessResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)
        success,
    required TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)
        swap,
    required TResult Function() requiresRestart,
    required TResult Function() empty,
  }) {
    return success(address, asset, amount, label, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
  }) {
    return success?.call(address, asset, amount, label, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(address, asset, amount, label, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrScannerPopSuccessResult value) success,
    required TResult Function(QrScannerPopSwapResult value) swap,
    required TResult Function(QrScannerPopRequiresRestartResult value)
        requiresRestart,
    required TResult Function(QrScannerPopEmptyResult value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class QrScannerPopSuccessResult implements QrScannerPopResult {
  const factory QrScannerPopSuccessResult(
      {required final String address,
      final Asset? asset,
      final String? amount,
      final String? label,
      final String? message}) = _$QrScannerPopSuccessResult;

  String get address;
  Asset? get asset;
  String? get amount;
  String? get label;
  String? get message;
  @JsonKey(ignore: true)
  _$$QrScannerPopSuccessResultCopyWith<_$QrScannerPopSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QrScannerPopSwapResultCopyWith<$Res> {
  factory _$$QrScannerPopSwapResultCopyWith(_$QrScannerPopSwapResult value,
          $Res Function(_$QrScannerPopSwapResult) then) =
      __$$QrScannerPopSwapResultCopyWithImpl<$Res>;
  $Res call(
      {String orderId,
      String sendAsset,
      int sendAmount,
      String recvAsset,
      int recvAmount,
      String uploadUrl});
}

/// @nodoc
class __$$QrScannerPopSwapResultCopyWithImpl<$Res>
    extends _$QrScannerPopResultCopyWithImpl<$Res>
    implements _$$QrScannerPopSwapResultCopyWith<$Res> {
  __$$QrScannerPopSwapResultCopyWithImpl(_$QrScannerPopSwapResult _value,
      $Res Function(_$QrScannerPopSwapResult) _then)
      : super(_value, (v) => _then(v as _$QrScannerPopSwapResult));

  @override
  _$QrScannerPopSwapResult get _value =>
      super._value as _$QrScannerPopSwapResult;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
    Object? uploadUrl = freezed,
  }) {
    return _then(_$QrScannerPopSwapResult(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QrScannerPopSwapResult implements QrScannerPopSwapResult {
  const _$QrScannerPopSwapResult(
      {required this.orderId,
      required this.sendAsset,
      required this.sendAmount,
      required this.recvAsset,
      required this.recvAmount,
      required this.uploadUrl});

  @override
  final String orderId;
  @override
  final String sendAsset;
  @override
  final int sendAmount;
  @override
  final String recvAsset;
  @override
  final int recvAmount;
  @override
  final String uploadUrl;

  @override
  String toString() {
    return 'QrScannerPopResult.swap(orderId: $orderId, sendAsset: $sendAsset, sendAmount: $sendAmount, recvAsset: $recvAsset, recvAmount: $recvAmount, uploadUrl: $uploadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrScannerPopSwapResult &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount) &&
            const DeepCollectionEquality().equals(other.uploadUrl, uploadUrl));
  }

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
  _$$QrScannerPopSwapResultCopyWith<_$QrScannerPopSwapResult> get copyWith =>
      __$$QrScannerPopSwapResultCopyWithImpl<_$QrScannerPopSwapResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)
        success,
    required TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)
        swap,
    required TResult Function() requiresRestart,
    required TResult Function() empty,
  }) {
    return swap(
        orderId, sendAsset, sendAmount, recvAsset, recvAmount, uploadUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
  }) {
    return swap?.call(
        orderId, sendAsset, sendAmount, recvAsset, recvAmount, uploadUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(
          orderId, sendAsset, sendAmount, recvAsset, recvAmount, uploadUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrScannerPopSuccessResult value) success,
    required TResult Function(QrScannerPopSwapResult value) swap,
    required TResult Function(QrScannerPopRequiresRestartResult value)
        requiresRestart,
    required TResult Function(QrScannerPopEmptyResult value) empty,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class QrScannerPopSwapResult implements QrScannerPopResult {
  const factory QrScannerPopSwapResult(
      {required final String orderId,
      required final String sendAsset,
      required final int sendAmount,
      required final String recvAsset,
      required final int recvAmount,
      required final String uploadUrl}) = _$QrScannerPopSwapResult;

  String get orderId;
  String get sendAsset;
  int get sendAmount;
  String get recvAsset;
  int get recvAmount;
  String get uploadUrl;
  @JsonKey(ignore: true)
  _$$QrScannerPopSwapResultCopyWith<_$QrScannerPopSwapResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QrScannerPopRequiresRestartResultCopyWith<$Res> {
  factory _$$QrScannerPopRequiresRestartResultCopyWith(
          _$QrScannerPopRequiresRestartResult value,
          $Res Function(_$QrScannerPopRequiresRestartResult) then) =
      __$$QrScannerPopRequiresRestartResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrScannerPopRequiresRestartResultCopyWithImpl<$Res>
    extends _$QrScannerPopResultCopyWithImpl<$Res>
    implements _$$QrScannerPopRequiresRestartResultCopyWith<$Res> {
  __$$QrScannerPopRequiresRestartResultCopyWithImpl(
      _$QrScannerPopRequiresRestartResult _value,
      $Res Function(_$QrScannerPopRequiresRestartResult) _then)
      : super(_value, (v) => _then(v as _$QrScannerPopRequiresRestartResult));

  @override
  _$QrScannerPopRequiresRestartResult get _value =>
      super._value as _$QrScannerPopRequiresRestartResult;
}

/// @nodoc

class _$QrScannerPopRequiresRestartResult
    implements QrScannerPopRequiresRestartResult {
  const _$QrScannerPopRequiresRestartResult();

  @override
  String toString() {
    return 'QrScannerPopResult.requiresRestart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrScannerPopRequiresRestartResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)
        success,
    required TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)
        swap,
    required TResult Function() requiresRestart,
    required TResult Function() empty,
  }) {
    return requiresRestart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
  }) {
    return requiresRestart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (requiresRestart != null) {
      return requiresRestart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrScannerPopSuccessResult value) success,
    required TResult Function(QrScannerPopSwapResult value) swap,
    required TResult Function(QrScannerPopRequiresRestartResult value)
        requiresRestart,
    required TResult Function(QrScannerPopEmptyResult value) empty,
  }) {
    return requiresRestart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
  }) {
    return requiresRestart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
    required TResult orElse(),
  }) {
    if (requiresRestart != null) {
      return requiresRestart(this);
    }
    return orElse();
  }
}

abstract class QrScannerPopRequiresRestartResult implements QrScannerPopResult {
  const factory QrScannerPopRequiresRestartResult() =
      _$QrScannerPopRequiresRestartResult;
}

/// @nodoc
abstract class _$$QrScannerPopEmptyResultCopyWith<$Res> {
  factory _$$QrScannerPopEmptyResultCopyWith(_$QrScannerPopEmptyResult value,
          $Res Function(_$QrScannerPopEmptyResult) then) =
      __$$QrScannerPopEmptyResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrScannerPopEmptyResultCopyWithImpl<$Res>
    extends _$QrScannerPopResultCopyWithImpl<$Res>
    implements _$$QrScannerPopEmptyResultCopyWith<$Res> {
  __$$QrScannerPopEmptyResultCopyWithImpl(_$QrScannerPopEmptyResult _value,
      $Res Function(_$QrScannerPopEmptyResult) _then)
      : super(_value, (v) => _then(v as _$QrScannerPopEmptyResult));

  @override
  _$QrScannerPopEmptyResult get _value =>
      super._value as _$QrScannerPopEmptyResult;
}

/// @nodoc

class _$QrScannerPopEmptyResult implements QrScannerPopEmptyResult {
  const _$QrScannerPopEmptyResult();

  @override
  String toString() {
    return 'QrScannerPopResult.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrScannerPopEmptyResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)
        success,
    required TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)
        swap,
    required TResult Function() requiresRestart,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Asset? asset, String? amount,
            String? label, String? message)?
        success,
    TResult Function(String orderId, String sendAsset, int sendAmount,
            String recvAsset, int recvAmount, String uploadUrl)?
        swap,
    TResult Function()? requiresRestart,
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
    required TResult Function(QrScannerPopSuccessResult value) success,
    required TResult Function(QrScannerPopSwapResult value) swap,
    required TResult Function(QrScannerPopRequiresRestartResult value)
        requiresRestart,
    required TResult Function(QrScannerPopEmptyResult value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrScannerPopSuccessResult value)? success,
    TResult Function(QrScannerPopSwapResult value)? swap,
    TResult Function(QrScannerPopRequiresRestartResult value)? requiresRestart,
    TResult Function(QrScannerPopEmptyResult value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class QrScannerPopEmptyResult implements QrScannerPopResult {
  const factory QrScannerPopEmptyResult() = _$QrScannerPopEmptyResult;
}

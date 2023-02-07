// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sideswap_http_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SideswapHttpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Asset asset, GdkTransaction transaction) success,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function(String? message) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SideswapHttpStateSuccess value) success,
    required TResult Function(SideswapHttpStateError value) error,
    required TResult Function(SideswapHttpStateNetworkError value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideswapHttpStateCopyWith<$Res> {
  factory $SideswapHttpStateCopyWith(
          SideswapHttpState value, $Res Function(SideswapHttpState) then) =
      _$SideswapHttpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SideswapHttpStateCopyWithImpl<$Res>
    implements $SideswapHttpStateCopyWith<$Res> {
  _$SideswapHttpStateCopyWithImpl(this._value, this._then);

  final SideswapHttpState _value;
  // ignore: unused_field
  final $Res Function(SideswapHttpState) _then;
}

/// @nodoc
abstract class _$$SideswapHttpStateSuccessCopyWith<$Res> {
  factory _$$SideswapHttpStateSuccessCopyWith(_$SideswapHttpStateSuccess value,
          $Res Function(_$SideswapHttpStateSuccess) then) =
      __$$SideswapHttpStateSuccessCopyWithImpl<$Res>;
  $Res call({Asset asset, GdkTransaction transaction});

  $GdkTransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$SideswapHttpStateSuccessCopyWithImpl<$Res>
    extends _$SideswapHttpStateCopyWithImpl<$Res>
    implements _$$SideswapHttpStateSuccessCopyWith<$Res> {
  __$$SideswapHttpStateSuccessCopyWithImpl(_$SideswapHttpStateSuccess _value,
      $Res Function(_$SideswapHttpStateSuccess) _then)
      : super(_value, (v) => _then(v as _$SideswapHttpStateSuccess));

  @override
  _$SideswapHttpStateSuccess get _value =>
      super._value as _$SideswapHttpStateSuccess;

  @override
  $Res call({
    Object? asset = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$SideswapHttpStateSuccess(
      asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as GdkTransaction,
    ));
  }

  @override
  $GdkTransactionCopyWith<$Res> get transaction {
    return $GdkTransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc

class _$SideswapHttpStateSuccess implements SideswapHttpStateSuccess {
  const _$SideswapHttpStateSuccess(this.asset, this.transaction);

  @override
  final Asset asset;
  @override
  final GdkTransaction transaction;

  @override
  String toString() {
    return 'SideswapHttpState.success(asset: $asset, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideswapHttpStateSuccess &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(transaction));

  @JsonKey(ignore: true)
  @override
  _$$SideswapHttpStateSuccessCopyWith<_$SideswapHttpStateSuccess>
      get copyWith =>
          __$$SideswapHttpStateSuccessCopyWithImpl<_$SideswapHttpStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Asset asset, GdkTransaction transaction) success,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function(String? message) networkError,
  }) {
    return success(asset, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
  }) {
    return success?.call(asset, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(asset, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SideswapHttpStateSuccess value) success,
    required TResult Function(SideswapHttpStateError value) error,
    required TResult Function(SideswapHttpStateNetworkError value) networkError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SideswapHttpStateSuccess implements SideswapHttpState {
  const factory SideswapHttpStateSuccess(
          final Asset asset, final GdkTransaction transaction) =
      _$SideswapHttpStateSuccess;

  Asset get asset;
  GdkTransaction get transaction;
  @JsonKey(ignore: true)
  _$$SideswapHttpStateSuccessCopyWith<_$SideswapHttpStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SideswapHttpStateErrorCopyWith<$Res> {
  factory _$$SideswapHttpStateErrorCopyWith(_$SideswapHttpStateError value,
          $Res Function(_$SideswapHttpStateError) then) =
      __$$SideswapHttpStateErrorCopyWithImpl<$Res>;
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$SideswapHttpStateErrorCopyWithImpl<$Res>
    extends _$SideswapHttpStateCopyWithImpl<$Res>
    implements _$$SideswapHttpStateErrorCopyWith<$Res> {
  __$$SideswapHttpStateErrorCopyWithImpl(_$SideswapHttpStateError _value,
      $Res Function(_$SideswapHttpStateError) _then)
      : super(_value, (v) => _then(v as _$SideswapHttpStateError));

  @override
  _$SideswapHttpStateError get _value =>
      super._value as _$SideswapHttpStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SideswapHttpStateError(
      error == freezed ? _value.error : error,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$SideswapHttpStateError implements SideswapHttpStateError {
  const _$SideswapHttpStateError(this.error, this.stackTrace);

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'SideswapHttpState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideswapHttpStateError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$SideswapHttpStateErrorCopyWith<_$SideswapHttpStateError> get copyWith =>
      __$$SideswapHttpStateErrorCopyWithImpl<_$SideswapHttpStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Asset asset, GdkTransaction transaction) success,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function(String? message) networkError,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SideswapHttpStateSuccess value) success,
    required TResult Function(SideswapHttpStateError value) error,
    required TResult Function(SideswapHttpStateNetworkError value) networkError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SideswapHttpStateError implements SideswapHttpState {
  const factory SideswapHttpStateError(
          final Object? error, final StackTrace? stackTrace) =
      _$SideswapHttpStateError;

  Object? get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$SideswapHttpStateErrorCopyWith<_$SideswapHttpStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SideswapHttpStateNetworkErrorCopyWith<$Res> {
  factory _$$SideswapHttpStateNetworkErrorCopyWith(
          _$SideswapHttpStateNetworkError value,
          $Res Function(_$SideswapHttpStateNetworkError) then) =
      __$$SideswapHttpStateNetworkErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$SideswapHttpStateNetworkErrorCopyWithImpl<$Res>
    extends _$SideswapHttpStateCopyWithImpl<$Res>
    implements _$$SideswapHttpStateNetworkErrorCopyWith<$Res> {
  __$$SideswapHttpStateNetworkErrorCopyWithImpl(
      _$SideswapHttpStateNetworkError _value,
      $Res Function(_$SideswapHttpStateNetworkError) _then)
      : super(_value, (v) => _then(v as _$SideswapHttpStateNetworkError));

  @override
  _$SideswapHttpStateNetworkError get _value =>
      super._value as _$SideswapHttpStateNetworkError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SideswapHttpStateNetworkError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SideswapHttpStateNetworkError implements SideswapHttpStateNetworkError {
  const _$SideswapHttpStateNetworkError(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SideswapHttpState.networkError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideswapHttpStateNetworkError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$SideswapHttpStateNetworkErrorCopyWith<_$SideswapHttpStateNetworkError>
      get copyWith => __$$SideswapHttpStateNetworkErrorCopyWithImpl<
          _$SideswapHttpStateNetworkError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Asset asset, GdkTransaction transaction) success,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function(String? message) networkError,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Asset asset, GdkTransaction transaction)? success,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function(String? message)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SideswapHttpStateSuccess value) success,
    required TResult Function(SideswapHttpStateError value) error,
    required TResult Function(SideswapHttpStateNetworkError value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SideswapHttpStateSuccess value)? success,
    TResult Function(SideswapHttpStateError value)? error,
    TResult Function(SideswapHttpStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class SideswapHttpStateNetworkError implements SideswapHttpState {
  const factory SideswapHttpStateNetworkError(final String? message) =
      _$SideswapHttpStateNetworkError;

  String? get message;
  @JsonKey(ignore: true)
  _$$SideswapHttpStateNetworkErrorCopyWith<_$SideswapHttpStateNetworkError>
      get copyWith => throw _privateConstructorUsedError;
}

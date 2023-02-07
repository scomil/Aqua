// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sideshift_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SideshiftTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionComplete value) complete,
    required TResult Function(TransactionLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransactionComplete value)? complete,
    TResult Function(TransactionLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionComplete value)? complete,
    TResult Function(TransactionLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideshiftTransactionStateCopyWith<$Res> {
  factory $SideshiftTransactionStateCopyWith(SideshiftTransactionState value,
          $Res Function(SideshiftTransactionState) then) =
      _$SideshiftTransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SideshiftTransactionStateCopyWithImpl<$Res>
    implements $SideshiftTransactionStateCopyWith<$Res> {
  _$SideshiftTransactionStateCopyWithImpl(this._value, this._then);

  final SideshiftTransactionState _value;
  // ignore: unused_field
  final $Res Function(SideshiftTransactionState) _then;
}

/// @nodoc
abstract class _$$_TransactionCompleteCopyWith<$Res> {
  factory _$$_TransactionCompleteCopyWith(_$_TransactionComplete value,
          $Res Function(_$_TransactionComplete) then) =
      __$$_TransactionCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TransactionCompleteCopyWithImpl<$Res>
    extends _$SideshiftTransactionStateCopyWithImpl<$Res>
    implements _$$_TransactionCompleteCopyWith<$Res> {
  __$$_TransactionCompleteCopyWithImpl(_$_TransactionComplete _value,
      $Res Function(_$_TransactionComplete) _then)
      : super(_value, (v) => _then(v as _$_TransactionComplete));

  @override
  _$_TransactionComplete get _value => super._value as _$_TransactionComplete;
}

/// @nodoc

class _$_TransactionComplete implements _TransactionComplete {
  const _$_TransactionComplete();

  @override
  String toString() {
    return 'SideshiftTransactionState.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TransactionComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function() loading,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function()? loading,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionComplete value) complete,
    required TResult Function(TransactionLoading value) loading,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransactionComplete value)? complete,
    TResult Function(TransactionLoading value)? loading,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionComplete value)? complete,
    TResult Function(TransactionLoading value)? loading,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _TransactionComplete implements SideshiftTransactionState {
  const factory _TransactionComplete() = _$_TransactionComplete;
}

/// @nodoc
abstract class _$$TransactionLoadingCopyWith<$Res> {
  factory _$$TransactionLoadingCopyWith(_$TransactionLoading value,
          $Res Function(_$TransactionLoading) then) =
      __$$TransactionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingCopyWithImpl<$Res>
    extends _$SideshiftTransactionStateCopyWithImpl<$Res>
    implements _$$TransactionLoadingCopyWith<$Res> {
  __$$TransactionLoadingCopyWithImpl(
      _$TransactionLoading _value, $Res Function(_$TransactionLoading) _then)
      : super(_value, (v) => _then(v as _$TransactionLoading));

  @override
  _$TransactionLoading get _value => super._value as _$TransactionLoading;
}

/// @nodoc

class _$TransactionLoading implements TransactionLoading {
  const _$TransactionLoading();

  @override
  String toString() {
    return 'SideshiftTransactionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() complete,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? complete,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionComplete value) complete,
    required TResult Function(TransactionLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransactionComplete value)? complete,
    TResult Function(TransactionLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionComplete value)? complete,
    TResult Function(TransactionLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionLoading implements SideshiftTransactionState {
  const factory TransactionLoading() = _$TransactionLoading;
}

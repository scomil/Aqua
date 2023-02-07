// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_prompt_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwapPromptItemUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sendAmount,
            String sendTicker,
            Uint8List sendIcon,
            String recvAmount,
            String recvTicker,
            Uint8List recvIcon)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapPromptItemUiModelData value) data,
    required TResult Function(SwapPromptItemUiModelLoading value) loading,
    required TResult Function(SwapPromptItemUiModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapPromptItemUiModelCopyWith<$Res> {
  factory $SwapPromptItemUiModelCopyWith(SwapPromptItemUiModel value,
          $Res Function(SwapPromptItemUiModel) then) =
      _$SwapPromptItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapPromptItemUiModelCopyWithImpl<$Res>
    implements $SwapPromptItemUiModelCopyWith<$Res> {
  _$SwapPromptItemUiModelCopyWithImpl(this._value, this._then);

  final SwapPromptItemUiModel _value;
  // ignore: unused_field
  final $Res Function(SwapPromptItemUiModel) _then;
}

/// @nodoc
abstract class _$$SwapPromptItemUiModelDataCopyWith<$Res> {
  factory _$$SwapPromptItemUiModelDataCopyWith(
          _$SwapPromptItemUiModelData value,
          $Res Function(_$SwapPromptItemUiModelData) then) =
      __$$SwapPromptItemUiModelDataCopyWithImpl<$Res>;
  $Res call(
      {String sendAmount,
      String sendTicker,
      Uint8List sendIcon,
      String recvAmount,
      String recvTicker,
      Uint8List recvIcon});
}

/// @nodoc
class __$$SwapPromptItemUiModelDataCopyWithImpl<$Res>
    extends _$SwapPromptItemUiModelCopyWithImpl<$Res>
    implements _$$SwapPromptItemUiModelDataCopyWith<$Res> {
  __$$SwapPromptItemUiModelDataCopyWithImpl(_$SwapPromptItemUiModelData _value,
      $Res Function(_$SwapPromptItemUiModelData) _then)
      : super(_value, (v) => _then(v as _$SwapPromptItemUiModelData));

  @override
  _$SwapPromptItemUiModelData get _value =>
      super._value as _$SwapPromptItemUiModelData;

  @override
  $Res call({
    Object? sendAmount = freezed,
    Object? sendTicker = freezed,
    Object? sendIcon = freezed,
    Object? recvAmount = freezed,
    Object? recvTicker = freezed,
    Object? recvIcon = freezed,
  }) {
    return _then(_$SwapPromptItemUiModelData(
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as String,
      sendTicker: sendTicker == freezed
          ? _value.sendTicker
          : sendTicker // ignore: cast_nullable_to_non_nullable
              as String,
      sendIcon: sendIcon == freezed
          ? _value.sendIcon
          : sendIcon // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as String,
      recvTicker: recvTicker == freezed
          ? _value.recvTicker
          : recvTicker // ignore: cast_nullable_to_non_nullable
              as String,
      recvIcon: recvIcon == freezed
          ? _value.recvIcon
          : recvIcon // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$SwapPromptItemUiModelData implements SwapPromptItemUiModelData {
  const _$SwapPromptItemUiModelData(
      {required this.sendAmount,
      required this.sendTicker,
      required this.sendIcon,
      required this.recvAmount,
      required this.recvTicker,
      required this.recvIcon});

  @override
  final String sendAmount;
  @override
  final String sendTicker;
  @override
  final Uint8List sendIcon;
  @override
  final String recvAmount;
  @override
  final String recvTicker;
  @override
  final Uint8List recvIcon;

  @override
  String toString() {
    return 'SwapPromptItemUiModel.data(sendAmount: $sendAmount, sendTicker: $sendTicker, sendIcon: $sendIcon, recvAmount: $recvAmount, recvTicker: $recvTicker, recvIcon: $recvIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapPromptItemUiModelData &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality()
                .equals(other.sendTicker, sendTicker) &&
            const DeepCollectionEquality().equals(other.sendIcon, sendIcon) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount) &&
            const DeepCollectionEquality()
                .equals(other.recvTicker, recvTicker) &&
            const DeepCollectionEquality().equals(other.recvIcon, recvIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(sendTicker),
      const DeepCollectionEquality().hash(sendIcon),
      const DeepCollectionEquality().hash(recvAmount),
      const DeepCollectionEquality().hash(recvTicker),
      const DeepCollectionEquality().hash(recvIcon));

  @JsonKey(ignore: true)
  @override
  _$$SwapPromptItemUiModelDataCopyWith<_$SwapPromptItemUiModelData>
      get copyWith => __$$SwapPromptItemUiModelDataCopyWithImpl<
          _$SwapPromptItemUiModelData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sendAmount,
            String sendTicker,
            Uint8List sendIcon,
            String recvAmount,
            String recvTicker,
            Uint8List recvIcon)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(
        sendAmount, sendTicker, sendIcon, recvAmount, recvTicker, recvIcon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return data?.call(
        sendAmount, sendTicker, sendIcon, recvAmount, recvTicker, recvIcon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          sendAmount, sendTicker, sendIcon, recvAmount, recvTicker, recvIcon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapPromptItemUiModelData value) data,
    required TResult Function(SwapPromptItemUiModelLoading value) loading,
    required TResult Function(SwapPromptItemUiModelError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SwapPromptItemUiModelData implements SwapPromptItemUiModel {
  const factory SwapPromptItemUiModelData(
      {required final String sendAmount,
      required final String sendTicker,
      required final Uint8List sendIcon,
      required final String recvAmount,
      required final String recvTicker,
      required final Uint8List recvIcon}) = _$SwapPromptItemUiModelData;

  String get sendAmount;
  String get sendTicker;
  Uint8List get sendIcon;
  String get recvAmount;
  String get recvTicker;
  Uint8List get recvIcon;
  @JsonKey(ignore: true)
  _$$SwapPromptItemUiModelDataCopyWith<_$SwapPromptItemUiModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapPromptItemUiModelLoadingCopyWith<$Res> {
  factory _$$SwapPromptItemUiModelLoadingCopyWith(
          _$SwapPromptItemUiModelLoading value,
          $Res Function(_$SwapPromptItemUiModelLoading) then) =
      __$$SwapPromptItemUiModelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapPromptItemUiModelLoadingCopyWithImpl<$Res>
    extends _$SwapPromptItemUiModelCopyWithImpl<$Res>
    implements _$$SwapPromptItemUiModelLoadingCopyWith<$Res> {
  __$$SwapPromptItemUiModelLoadingCopyWithImpl(
      _$SwapPromptItemUiModelLoading _value,
      $Res Function(_$SwapPromptItemUiModelLoading) _then)
      : super(_value, (v) => _then(v as _$SwapPromptItemUiModelLoading));

  @override
  _$SwapPromptItemUiModelLoading get _value =>
      super._value as _$SwapPromptItemUiModelLoading;
}

/// @nodoc

class _$SwapPromptItemUiModelLoading implements SwapPromptItemUiModelLoading {
  const _$SwapPromptItemUiModelLoading();

  @override
  String toString() {
    return 'SwapPromptItemUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapPromptItemUiModelLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sendAmount,
            String sendTicker,
            Uint8List sendIcon,
            String recvAmount,
            String recvTicker,
            Uint8List recvIcon)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
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
    required TResult Function(SwapPromptItemUiModelData value) data,
    required TResult Function(SwapPromptItemUiModelLoading value) loading,
    required TResult Function(SwapPromptItemUiModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SwapPromptItemUiModelLoading implements SwapPromptItemUiModel {
  const factory SwapPromptItemUiModelLoading() = _$SwapPromptItemUiModelLoading;
}

/// @nodoc
abstract class _$$SwapPromptItemUiModelErrorCopyWith<$Res> {
  factory _$$SwapPromptItemUiModelErrorCopyWith(
          _$SwapPromptItemUiModelError value,
          $Res Function(_$SwapPromptItemUiModelError) then) =
      __$$SwapPromptItemUiModelErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$SwapPromptItemUiModelErrorCopyWithImpl<$Res>
    extends _$SwapPromptItemUiModelCopyWithImpl<$Res>
    implements _$$SwapPromptItemUiModelErrorCopyWith<$Res> {
  __$$SwapPromptItemUiModelErrorCopyWithImpl(
      _$SwapPromptItemUiModelError _value,
      $Res Function(_$SwapPromptItemUiModelError) _then)
      : super(_value, (v) => _then(v as _$SwapPromptItemUiModelError));

  @override
  _$SwapPromptItemUiModelError get _value =>
      super._value as _$SwapPromptItemUiModelError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SwapPromptItemUiModelError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwapPromptItemUiModelError implements SwapPromptItemUiModelError {
  const _$SwapPromptItemUiModelError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SwapPromptItemUiModel.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapPromptItemUiModelError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$SwapPromptItemUiModelErrorCopyWith<_$SwapPromptItemUiModelError>
      get copyWith => __$$SwapPromptItemUiModelErrorCopyWithImpl<
          _$SwapPromptItemUiModelError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sendAmount,
            String sendTicker,
            Uint8List sendIcon,
            String recvAmount,
            String recvTicker,
            Uint8List recvIcon)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sendAmount, String sendTicker, Uint8List sendIcon,
            String recvAmount, String recvTicker, Uint8List recvIcon)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapPromptItemUiModelData value) data,
    required TResult Function(SwapPromptItemUiModelLoading value) loading,
    required TResult Function(SwapPromptItemUiModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapPromptItemUiModelData value)? data,
    TResult Function(SwapPromptItemUiModelLoading value)? loading,
    TResult Function(SwapPromptItemUiModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SwapPromptItemUiModelError implements SwapPromptItemUiModel {
  const factory SwapPromptItemUiModelError({required final String message}) =
      _$SwapPromptItemUiModelError;

  String get message;
  @JsonKey(ignore: true)
  _$$SwapPromptItemUiModelErrorCopyWith<_$SwapPromptItemUiModelError>
      get copyWith => throw _privateConstructorUsedError;
}

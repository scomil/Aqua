// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'passcode_processing_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasscodeProcessingResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? arguments) success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeProcessingSuccessResult value) success,
    required TResult Function(PasscodeProcessingLoadingResult value) loading,
    required TResult Function(PasscodeProcessingFailureResult value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeProcessingResultCopyWith<$Res> {
  factory $PasscodeProcessingResultCopyWith(PasscodeProcessingResult value,
          $Res Function(PasscodeProcessingResult) then) =
      _$PasscodeProcessingResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasscodeProcessingResultCopyWithImpl<$Res>
    implements $PasscodeProcessingResultCopyWith<$Res> {
  _$PasscodeProcessingResultCopyWithImpl(this._value, this._then);

  final PasscodeProcessingResult _value;
  // ignore: unused_field
  final $Res Function(PasscodeProcessingResult) _then;
}

/// @nodoc
abstract class _$$PasscodeProcessingSuccessResultCopyWith<$Res> {
  factory _$$PasscodeProcessingSuccessResultCopyWith(
          _$PasscodeProcessingSuccessResult value,
          $Res Function(_$PasscodeProcessingSuccessResult) then) =
      __$$PasscodeProcessingSuccessResultCopyWithImpl<$Res>;
  $Res call({Object? arguments});
}

/// @nodoc
class __$$PasscodeProcessingSuccessResultCopyWithImpl<$Res>
    extends _$PasscodeProcessingResultCopyWithImpl<$Res>
    implements _$$PasscodeProcessingSuccessResultCopyWith<$Res> {
  __$$PasscodeProcessingSuccessResultCopyWithImpl(
      _$PasscodeProcessingSuccessResult _value,
      $Res Function(_$PasscodeProcessingSuccessResult) _then)
      : super(_value, (v) => _then(v as _$PasscodeProcessingSuccessResult));

  @override
  _$PasscodeProcessingSuccessResult get _value =>
      super._value as _$PasscodeProcessingSuccessResult;

  @override
  $Res call({
    Object? arguments = freezed,
  }) {
    return _then(_$PasscodeProcessingSuccessResult(
      arguments: arguments == freezed ? _value.arguments : arguments,
    ));
  }
}

/// @nodoc

class _$PasscodeProcessingSuccessResult
    implements PasscodeProcessingSuccessResult {
  const _$PasscodeProcessingSuccessResult({this.arguments});

  @override
  final Object? arguments;

  @override
  String toString() {
    return 'PasscodeProcessingResult.success(arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasscodeProcessingSuccessResult &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arguments));

  @JsonKey(ignore: true)
  @override
  _$$PasscodeProcessingSuccessResultCopyWith<_$PasscodeProcessingSuccessResult>
      get copyWith => __$$PasscodeProcessingSuccessResultCopyWithImpl<
          _$PasscodeProcessingSuccessResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? arguments) success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        failure,
  }) {
    return success(arguments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
  }) {
    return success?.call(arguments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(arguments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeProcessingSuccessResult value) success,
    required TResult Function(PasscodeProcessingLoadingResult value) loading,
    required TResult Function(PasscodeProcessingFailureResult value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PasscodeProcessingSuccessResult
    implements PasscodeProcessingResult {
  const factory PasscodeProcessingSuccessResult({final Object? arguments}) =
      _$PasscodeProcessingSuccessResult;

  Object? get arguments;
  @JsonKey(ignore: true)
  _$$PasscodeProcessingSuccessResultCopyWith<_$PasscodeProcessingSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasscodeProcessingLoadingResultCopyWith<$Res> {
  factory _$$PasscodeProcessingLoadingResultCopyWith(
          _$PasscodeProcessingLoadingResult value,
          $Res Function(_$PasscodeProcessingLoadingResult) then) =
      __$$PasscodeProcessingLoadingResultCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$PasscodeProcessingLoadingResultCopyWithImpl<$Res>
    extends _$PasscodeProcessingResultCopyWithImpl<$Res>
    implements _$$PasscodeProcessingLoadingResultCopyWith<$Res> {
  __$$PasscodeProcessingLoadingResultCopyWithImpl(
      _$PasscodeProcessingLoadingResult _value,
      $Res Function(_$PasscodeProcessingLoadingResult) _then)
      : super(_value, (v) => _then(v as _$PasscodeProcessingLoadingResult));

  @override
  _$PasscodeProcessingLoadingResult get _value =>
      super._value as _$PasscodeProcessingLoadingResult;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$PasscodeProcessingLoadingResult(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasscodeProcessingLoadingResult
    implements PasscodeProcessingLoadingResult {
  const _$PasscodeProcessingLoadingResult({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'PasscodeProcessingResult.loading(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasscodeProcessingLoadingResult &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$PasscodeProcessingLoadingResultCopyWith<_$PasscodeProcessingLoadingResult>
      get copyWith => __$$PasscodeProcessingLoadingResultCopyWithImpl<
          _$PasscodeProcessingLoadingResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? arguments) success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        failure,
  }) {
    return loading(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
  }) {
    return loading?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeProcessingSuccessResult value) success,
    required TResult Function(PasscodeProcessingLoadingResult value) loading,
    required TResult Function(PasscodeProcessingFailureResult value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PasscodeProcessingLoadingResult
    implements PasscodeProcessingResult {
  const factory PasscodeProcessingLoadingResult(
      {required final String description}) = _$PasscodeProcessingLoadingResult;

  String get description;
  @JsonKey(ignore: true)
  _$$PasscodeProcessingLoadingResultCopyWith<_$PasscodeProcessingLoadingResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasscodeProcessingFailureResultCopyWith<$Res> {
  factory _$$PasscodeProcessingFailureResultCopyWith(
          _$PasscodeProcessingFailureResult value,
          $Res Function(_$PasscodeProcessingFailureResult) then) =
      __$$PasscodeProcessingFailureResultCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subtitle,
      String buttonTitle,
      VoidCallback onButtonPressed});
}

/// @nodoc
class __$$PasscodeProcessingFailureResultCopyWithImpl<$Res>
    extends _$PasscodeProcessingResultCopyWithImpl<$Res>
    implements _$$PasscodeProcessingFailureResultCopyWith<$Res> {
  __$$PasscodeProcessingFailureResultCopyWithImpl(
      _$PasscodeProcessingFailureResult _value,
      $Res Function(_$PasscodeProcessingFailureResult) _then)
      : super(_value, (v) => _then(v as _$PasscodeProcessingFailureResult));

  @override
  _$PasscodeProcessingFailureResult get _value =>
      super._value as _$PasscodeProcessingFailureResult;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? buttonTitle = freezed,
    Object? onButtonPressed = freezed,
  }) {
    return _then(_$PasscodeProcessingFailureResult(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      buttonTitle: buttonTitle == freezed
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      onButtonPressed: onButtonPressed == freezed
          ? _value.onButtonPressed
          : onButtonPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$PasscodeProcessingFailureResult
    implements PasscodeProcessingFailureResult {
  const _$PasscodeProcessingFailureResult(
      {required this.title,
      required this.subtitle,
      required this.buttonTitle,
      required this.onButtonPressed});

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String buttonTitle;
  @override
  final VoidCallback onButtonPressed;

  @override
  String toString() {
    return 'PasscodeProcessingResult.failure(title: $title, subtitle: $subtitle, buttonTitle: $buttonTitle, onButtonPressed: $onButtonPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasscodeProcessingFailureResult &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.buttonTitle, buttonTitle) &&
            (identical(other.onButtonPressed, onButtonPressed) ||
                other.onButtonPressed == onButtonPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(buttonTitle),
      onButtonPressed);

  @JsonKey(ignore: true)
  @override
  _$$PasscodeProcessingFailureResultCopyWith<_$PasscodeProcessingFailureResult>
      get copyWith => __$$PasscodeProcessingFailureResultCopyWithImpl<
          _$PasscodeProcessingFailureResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? arguments) success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        failure,
  }) {
    return failure(title, subtitle, buttonTitle, onButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
  }) {
    return failure?.call(title, subtitle, buttonTitle, onButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? arguments)? success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(title, subtitle, buttonTitle, onButtonPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeProcessingSuccessResult value) success,
    required TResult Function(PasscodeProcessingLoadingResult value) loading,
    required TResult Function(PasscodeProcessingFailureResult value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeProcessingSuccessResult value)? success,
    TResult Function(PasscodeProcessingLoadingResult value)? loading,
    TResult Function(PasscodeProcessingFailureResult value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PasscodeProcessingFailureResult
    implements PasscodeProcessingResult {
  const factory PasscodeProcessingFailureResult(
          {required final String title,
          required final String subtitle,
          required final String buttonTitle,
          required final VoidCallback onButtonPressed}) =
      _$PasscodeProcessingFailureResult;

  String get title;
  String get subtitle;
  String get buttonTitle;
  VoidCallback get onButtonPressed;
  @JsonKey(ignore: true)
  _$$PasscodeProcessingFailureResultCopyWith<_$PasscodeProcessingFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasscodeUnlockResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeUnlockSuccessResult value) success,
    required TResult Function(PasscodeUnlockFailureResult value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeUnlockSuccessResult value)? success,
    TResult Function(PasscodeUnlockFailureResult value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeUnlockSuccessResult value)? success,
    TResult Function(PasscodeUnlockFailureResult value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeUnlockResultCopyWith<$Res> {
  factory $PasscodeUnlockResultCopyWith(PasscodeUnlockResult value,
          $Res Function(PasscodeUnlockResult) then) =
      _$PasscodeUnlockResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasscodeUnlockResultCopyWithImpl<$Res>
    implements $PasscodeUnlockResultCopyWith<$Res> {
  _$PasscodeUnlockResultCopyWithImpl(this._value, this._then);

  final PasscodeUnlockResult _value;
  // ignore: unused_field
  final $Res Function(PasscodeUnlockResult) _then;
}

/// @nodoc
abstract class _$$PasscodeUnlockSuccessResultCopyWith<$Res> {
  factory _$$PasscodeUnlockSuccessResultCopyWith(
          _$PasscodeUnlockSuccessResult value,
          $Res Function(_$PasscodeUnlockSuccessResult) then) =
      __$$PasscodeUnlockSuccessResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasscodeUnlockSuccessResultCopyWithImpl<$Res>
    extends _$PasscodeUnlockResultCopyWithImpl<$Res>
    implements _$$PasscodeUnlockSuccessResultCopyWith<$Res> {
  __$$PasscodeUnlockSuccessResultCopyWithImpl(
      _$PasscodeUnlockSuccessResult _value,
      $Res Function(_$PasscodeUnlockSuccessResult) _then)
      : super(_value, (v) => _then(v as _$PasscodeUnlockSuccessResult));

  @override
  _$PasscodeUnlockSuccessResult get _value =>
      super._value as _$PasscodeUnlockSuccessResult;
}

/// @nodoc

class _$PasscodeUnlockSuccessResult implements PasscodeUnlockSuccessResult {
  const _$PasscodeUnlockSuccessResult();

  @override
  String toString() {
    return 'PasscodeUnlockResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasscodeUnlockSuccessResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeUnlockSuccessResult value) success,
    required TResult Function(PasscodeUnlockFailureResult value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeUnlockSuccessResult value)? success,
    TResult Function(PasscodeUnlockFailureResult value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeUnlockSuccessResult value)? success,
    TResult Function(PasscodeUnlockFailureResult value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PasscodeUnlockSuccessResult implements PasscodeUnlockResult {
  const factory PasscodeUnlockSuccessResult() = _$PasscodeUnlockSuccessResult;
}

/// @nodoc
abstract class _$$PasscodeUnlockFailureResultCopyWith<$Res> {
  factory _$$PasscodeUnlockFailureResultCopyWith(
          _$PasscodeUnlockFailureResult value,
          $Res Function(_$PasscodeUnlockFailureResult) then) =
      __$$PasscodeUnlockFailureResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasscodeUnlockFailureResultCopyWithImpl<$Res>
    extends _$PasscodeUnlockResultCopyWithImpl<$Res>
    implements _$$PasscodeUnlockFailureResultCopyWith<$Res> {
  __$$PasscodeUnlockFailureResultCopyWithImpl(
      _$PasscodeUnlockFailureResult _value,
      $Res Function(_$PasscodeUnlockFailureResult) _then)
      : super(_value, (v) => _then(v as _$PasscodeUnlockFailureResult));

  @override
  _$PasscodeUnlockFailureResult get _value =>
      super._value as _$PasscodeUnlockFailureResult;
}

/// @nodoc

class _$PasscodeUnlockFailureResult implements PasscodeUnlockFailureResult {
  const _$PasscodeUnlockFailureResult();

  @override
  String toString() {
    return 'PasscodeUnlockResult.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasscodeUnlockFailureResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeUnlockSuccessResult value) success,
    required TResult Function(PasscodeUnlockFailureResult value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeUnlockSuccessResult value)? success,
    TResult Function(PasscodeUnlockFailureResult value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeUnlockSuccessResult value)? success,
    TResult Function(PasscodeUnlockFailureResult value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PasscodeUnlockFailureResult implements PasscodeUnlockResult {
  const factory PasscodeUnlockFailureResult() = _$PasscodeUnlockFailureResult;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_tutorial_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwapTutorialState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        bubble,
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        circle,
    required TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)
        overlay,
    required TResult Function() congrats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Bubble value) bubble,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_Congrats value) congrats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapTutorialStateCopyWith<$Res> {
  factory $SwapTutorialStateCopyWith(
          SwapTutorialState value, $Res Function(SwapTutorialState) then) =
      _$SwapTutorialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapTutorialStateCopyWithImpl<$Res>
    implements $SwapTutorialStateCopyWith<$Res> {
  _$SwapTutorialStateCopyWithImpl(this._value, this._then);

  final SwapTutorialState _value;
  // ignore: unused_field
  final $Res Function(SwapTutorialState) _then;
}

/// @nodoc
abstract class _$$_BubbleCopyWith<$Res> {
  factory _$$_BubbleCopyWith(_$_Bubble value, $Res Function(_$_Bubble) then) =
      __$$_BubbleCopyWithImpl<$Res>;
  $Res call(
      {Tuple2<double, double> position,
      String message,
      PointerDirection pointerDirection});
}

/// @nodoc
class __$$_BubbleCopyWithImpl<$Res>
    extends _$SwapTutorialStateCopyWithImpl<$Res>
    implements _$$_BubbleCopyWith<$Res> {
  __$$_BubbleCopyWithImpl(_$_Bubble _value, $Res Function(_$_Bubble) _then)
      : super(_value, (v) => _then(v as _$_Bubble));

  @override
  _$_Bubble get _value => super._value as _$_Bubble;

  @override
  $Res call({
    Object? position = freezed,
    Object? message = freezed,
    Object? pointerDirection = freezed,
  }) {
    return _then(_$_Bubble(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Tuple2<double, double>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pointerDirection: pointerDirection == freezed
          ? _value.pointerDirection
          : pointerDirection // ignore: cast_nullable_to_non_nullable
              as PointerDirection,
    ));
  }
}

/// @nodoc

class _$_Bubble implements _Bubble {
  const _$_Bubble(
      {required this.position,
      required this.message,
      this.pointerDirection = PointerDirection.downLeft});

  @override
  final Tuple2<double, double> position;
  @override
  final String message;
  @override
  @JsonKey()
  final PointerDirection pointerDirection;

  @override
  String toString() {
    return 'SwapTutorialState.bubble(position: $position, message: $message, pointerDirection: $pointerDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bubble &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.pointerDirection, pointerDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(pointerDirection));

  @JsonKey(ignore: true)
  @override
  _$$_BubbleCopyWith<_$_Bubble> get copyWith =>
      __$$_BubbleCopyWithImpl<_$_Bubble>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        bubble,
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        circle,
    required TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)
        overlay,
    required TResult Function() congrats,
  }) {
    return bubble(position, message, pointerDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
  }) {
    return bubble?.call(position, message, pointerDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
    required TResult orElse(),
  }) {
    if (bubble != null) {
      return bubble(position, message, pointerDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Bubble value) bubble,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_Congrats value) congrats,
  }) {
    return bubble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
  }) {
    return bubble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
    required TResult orElse(),
  }) {
    if (bubble != null) {
      return bubble(this);
    }
    return orElse();
  }
}

abstract class _Bubble implements SwapTutorialState {
  const factory _Bubble(
      {required final Tuple2<double, double> position,
      required final String message,
      final PointerDirection pointerDirection}) = _$_Bubble;

  Tuple2<double, double> get position;
  String get message;
  PointerDirection get pointerDirection;
  @JsonKey(ignore: true)
  _$$_BubbleCopyWith<_$_Bubble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CircleCopyWith<$Res> {
  factory _$$_CircleCopyWith(_$_Circle value, $Res Function(_$_Circle) then) =
      __$$_CircleCopyWithImpl<$Res>;
  $Res call(
      {Tuple2<double, double> position,
      String message,
      PointerDirection pointerDirection});
}

/// @nodoc
class __$$_CircleCopyWithImpl<$Res>
    extends _$SwapTutorialStateCopyWithImpl<$Res>
    implements _$$_CircleCopyWith<$Res> {
  __$$_CircleCopyWithImpl(_$_Circle _value, $Res Function(_$_Circle) _then)
      : super(_value, (v) => _then(v as _$_Circle));

  @override
  _$_Circle get _value => super._value as _$_Circle;

  @override
  $Res call({
    Object? position = freezed,
    Object? message = freezed,
    Object? pointerDirection = freezed,
  }) {
    return _then(_$_Circle(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Tuple2<double, double>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pointerDirection: pointerDirection == freezed
          ? _value.pointerDirection
          : pointerDirection // ignore: cast_nullable_to_non_nullable
              as PointerDirection,
    ));
  }
}

/// @nodoc

class _$_Circle implements _Circle {
  const _$_Circle(
      {required this.position,
      required this.message,
      this.pointerDirection = PointerDirection.downLeft});

  @override
  final Tuple2<double, double> position;
  @override
  final String message;
  @override
  @JsonKey()
  final PointerDirection pointerDirection;

  @override
  String toString() {
    return 'SwapTutorialState.circle(position: $position, message: $message, pointerDirection: $pointerDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Circle &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.pointerDirection, pointerDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(pointerDirection));

  @JsonKey(ignore: true)
  @override
  _$$_CircleCopyWith<_$_Circle> get copyWith =>
      __$$_CircleCopyWithImpl<_$_Circle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        bubble,
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        circle,
    required TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)
        overlay,
    required TResult Function() congrats,
  }) {
    return circle(position, message, pointerDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
  }) {
    return circle?.call(position, message, pointerDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
    required TResult orElse(),
  }) {
    if (circle != null) {
      return circle(position, message, pointerDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Bubble value) bubble,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_Congrats value) congrats,
  }) {
    return circle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
  }) {
    return circle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
    required TResult orElse(),
  }) {
    if (circle != null) {
      return circle(this);
    }
    return orElse();
  }
}

abstract class _Circle implements SwapTutorialState {
  const factory _Circle(
      {required final Tuple2<double, double> position,
      required final String message,
      final PointerDirection pointerDirection}) = _$_Circle;

  Tuple2<double, double> get position;
  String get message;
  PointerDirection get pointerDirection;
  @JsonKey(ignore: true)
  _$$_CircleCopyWith<_$_Circle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OverlayCopyWith<$Res> {
  factory _$$_OverlayCopyWith(
          _$_Overlay value, $Res Function(_$_Overlay) then) =
      __$$_OverlayCopyWithImpl<$Res>;
  $Res call(
      {Tuple2<double, double> position,
      String message,
      double? buttonOverlayPositionY,
      PointerDirection pointerDirection});
}

/// @nodoc
class __$$_OverlayCopyWithImpl<$Res>
    extends _$SwapTutorialStateCopyWithImpl<$Res>
    implements _$$_OverlayCopyWith<$Res> {
  __$$_OverlayCopyWithImpl(_$_Overlay _value, $Res Function(_$_Overlay) _then)
      : super(_value, (v) => _then(v as _$_Overlay));

  @override
  _$_Overlay get _value => super._value as _$_Overlay;

  @override
  $Res call({
    Object? position = freezed,
    Object? message = freezed,
    Object? buttonOverlayPositionY = freezed,
    Object? pointerDirection = freezed,
  }) {
    return _then(_$_Overlay(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Tuple2<double, double>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      buttonOverlayPositionY: buttonOverlayPositionY == freezed
          ? _value.buttonOverlayPositionY
          : buttonOverlayPositionY // ignore: cast_nullable_to_non_nullable
              as double?,
      pointerDirection: pointerDirection == freezed
          ? _value.pointerDirection
          : pointerDirection // ignore: cast_nullable_to_non_nullable
              as PointerDirection,
    ));
  }
}

/// @nodoc

class _$_Overlay implements _Overlay {
  const _$_Overlay(
      {required this.position,
      required this.message,
      this.buttonOverlayPositionY,
      this.pointerDirection = PointerDirection.downLeft});

  @override
  final Tuple2<double, double> position;
  @override
  final String message;
  @override
  final double? buttonOverlayPositionY;
  @override
  @JsonKey()
  final PointerDirection pointerDirection;

  @override
  String toString() {
    return 'SwapTutorialState.overlay(position: $position, message: $message, buttonOverlayPositionY: $buttonOverlayPositionY, pointerDirection: $pointerDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Overlay &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.buttonOverlayPositionY, buttonOverlayPositionY) &&
            const DeepCollectionEquality()
                .equals(other.pointerDirection, pointerDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(buttonOverlayPositionY),
      const DeepCollectionEquality().hash(pointerDirection));

  @JsonKey(ignore: true)
  @override
  _$$_OverlayCopyWith<_$_Overlay> get copyWith =>
      __$$_OverlayCopyWithImpl<_$_Overlay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        bubble,
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        circle,
    required TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)
        overlay,
    required TResult Function() congrats,
  }) {
    return overlay(position, message, buttonOverlayPositionY, pointerDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
  }) {
    return overlay?.call(
        position, message, buttonOverlayPositionY, pointerDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
    required TResult orElse(),
  }) {
    if (overlay != null) {
      return overlay(
          position, message, buttonOverlayPositionY, pointerDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Bubble value) bubble,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_Congrats value) congrats,
  }) {
    return overlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
  }) {
    return overlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
    required TResult orElse(),
  }) {
    if (overlay != null) {
      return overlay(this);
    }
    return orElse();
  }
}

abstract class _Overlay implements SwapTutorialState {
  const factory _Overlay(
      {required final Tuple2<double, double> position,
      required final String message,
      final double? buttonOverlayPositionY,
      final PointerDirection pointerDirection}) = _$_Overlay;

  Tuple2<double, double> get position;
  String get message;
  double? get buttonOverlayPositionY;
  PointerDirection get pointerDirection;
  @JsonKey(ignore: true)
  _$$_OverlayCopyWith<_$_Overlay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CongratsCopyWith<$Res> {
  factory _$$_CongratsCopyWith(
          _$_Congrats value, $Res Function(_$_Congrats) then) =
      __$$_CongratsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CongratsCopyWithImpl<$Res>
    extends _$SwapTutorialStateCopyWithImpl<$Res>
    implements _$$_CongratsCopyWith<$Res> {
  __$$_CongratsCopyWithImpl(
      _$_Congrats _value, $Res Function(_$_Congrats) _then)
      : super(_value, (v) => _then(v as _$_Congrats));

  @override
  _$_Congrats get _value => super._value as _$_Congrats;
}

/// @nodoc

class _$_Congrats implements _Congrats {
  const _$_Congrats();

  @override
  String toString() {
    return 'SwapTutorialState.congrats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Congrats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        bubble,
    required TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)
        circle,
    required TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)
        overlay,
    required TResult Function() congrats,
  }) {
    return congrats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
  }) {
    return congrats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        bubble,
    TResult Function(Tuple2<double, double> position, String message,
            PointerDirection pointerDirection)?
        circle,
    TResult Function(Tuple2<double, double> position, String message,
            double? buttonOverlayPositionY, PointerDirection pointerDirection)?
        overlay,
    TResult Function()? congrats,
    required TResult orElse(),
  }) {
    if (congrats != null) {
      return congrats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Bubble value) bubble,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_Congrats value) congrats,
  }) {
    return congrats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
  }) {
    return congrats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Bubble value)? bubble,
    TResult Function(_Circle value)? circle,
    TResult Function(_Overlay value)? overlay,
    TResult Function(_Congrats value)? congrats,
    required TResult orElse(),
  }) {
    if (congrats != null) {
      return congrats(this);
    }
    return orElse();
  }
}

abstract class _Congrats implements SwapTutorialState {
  const factory _Congrats() = _$_Congrats;
}

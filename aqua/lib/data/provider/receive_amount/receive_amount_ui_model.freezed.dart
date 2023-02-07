// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_amount_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveAmountUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, int precision)
        success,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveAmountSuccessUiModel value) success,
    required TResult Function(ReceiveAmountLoadingUiModel value) loading,
    required TResult Function(ReceiveAmountErrorUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAmountUiModelCopyWith<$Res> {
  factory $ReceiveAmountUiModelCopyWith(ReceiveAmountUiModel value,
          $Res Function(ReceiveAmountUiModel) then) =
      _$ReceiveAmountUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReceiveAmountUiModelCopyWithImpl<$Res>
    implements $ReceiveAmountUiModelCopyWith<$Res> {
  _$ReceiveAmountUiModelCopyWithImpl(this._value, this._then);

  final ReceiveAmountUiModel _value;
  // ignore: unused_field
  final $Res Function(ReceiveAmountUiModel) _then;
}

/// @nodoc
abstract class _$$ReceiveAmountSuccessUiModelCopyWith<$Res> {
  factory _$$ReceiveAmountSuccessUiModelCopyWith(
          _$ReceiveAmountSuccessUiModel value,
          $Res Function(_$ReceiveAmountSuccessUiModel) then) =
      __$$ReceiveAmountSuccessUiModelCopyWithImpl<$Res>;
  $Res call(
      {Uint8List icon,
      String name,
      String ticker,
      String amount,
      int precision});
}

/// @nodoc
class __$$ReceiveAmountSuccessUiModelCopyWithImpl<$Res>
    extends _$ReceiveAmountUiModelCopyWithImpl<$Res>
    implements _$$ReceiveAmountSuccessUiModelCopyWith<$Res> {
  __$$ReceiveAmountSuccessUiModelCopyWithImpl(
      _$ReceiveAmountSuccessUiModel _value,
      $Res Function(_$ReceiveAmountSuccessUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveAmountSuccessUiModel));

  @override
  _$ReceiveAmountSuccessUiModel get _value =>
      super._value as _$ReceiveAmountSuccessUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? ticker = freezed,
    Object? amount = freezed,
    Object? precision = freezed,
  }) {
    return _then(_$ReceiveAmountSuccessUiModel(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReceiveAmountSuccessUiModel implements ReceiveAmountSuccessUiModel {
  const _$ReceiveAmountSuccessUiModel(
      {required this.icon,
      required this.name,
      required this.ticker,
      required this.amount,
      required this.precision});

  @override
  final Uint8List icon;
  @override
  final String name;
  @override
  final String ticker;
  @override
  final String amount;
  @override
  final int precision;

  @override
  String toString() {
    return 'ReceiveAmountUiModel.success(icon: $icon, name: $name, ticker: $ticker, amount: $amount, precision: $precision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAmountSuccessUiModel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ticker, ticker) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.precision, precision));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ticker),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(precision));

  @JsonKey(ignore: true)
  @override
  _$$ReceiveAmountSuccessUiModelCopyWith<_$ReceiveAmountSuccessUiModel>
      get copyWith => __$$ReceiveAmountSuccessUiModelCopyWithImpl<
          _$ReceiveAmountSuccessUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, int precision)
        success,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return success(icon, name, ticker, amount, precision);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return success?.call(icon, name, ticker, amount, precision);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(icon, name, ticker, amount, precision);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveAmountSuccessUiModel value) success,
    required TResult Function(ReceiveAmountLoadingUiModel value) loading,
    required TResult Function(ReceiveAmountErrorUiModel value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReceiveAmountSuccessUiModel implements ReceiveAmountUiModel {
  const factory ReceiveAmountSuccessUiModel(
      {required final Uint8List icon,
      required final String name,
      required final String ticker,
      required final String amount,
      required final int precision}) = _$ReceiveAmountSuccessUiModel;

  Uint8List get icon;
  String get name;
  String get ticker;
  String get amount;
  int get precision;
  @JsonKey(ignore: true)
  _$$ReceiveAmountSuccessUiModelCopyWith<_$ReceiveAmountSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveAmountLoadingUiModelCopyWith<$Res> {
  factory _$$ReceiveAmountLoadingUiModelCopyWith(
          _$ReceiveAmountLoadingUiModel value,
          $Res Function(_$ReceiveAmountLoadingUiModel) then) =
      __$$ReceiveAmountLoadingUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveAmountLoadingUiModelCopyWithImpl<$Res>
    extends _$ReceiveAmountUiModelCopyWithImpl<$Res>
    implements _$$ReceiveAmountLoadingUiModelCopyWith<$Res> {
  __$$ReceiveAmountLoadingUiModelCopyWithImpl(
      _$ReceiveAmountLoadingUiModel _value,
      $Res Function(_$ReceiveAmountLoadingUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveAmountLoadingUiModel));

  @override
  _$ReceiveAmountLoadingUiModel get _value =>
      super._value as _$ReceiveAmountLoadingUiModel;
}

/// @nodoc

class _$ReceiveAmountLoadingUiModel implements ReceiveAmountLoadingUiModel {
  const _$ReceiveAmountLoadingUiModel();

  @override
  String toString() {
    return 'ReceiveAmountUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAmountLoadingUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, int precision)
        success,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
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
    required TResult Function(ReceiveAmountSuccessUiModel value) success,
    required TResult Function(ReceiveAmountLoadingUiModel value) loading,
    required TResult Function(ReceiveAmountErrorUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReceiveAmountLoadingUiModel implements ReceiveAmountUiModel {
  const factory ReceiveAmountLoadingUiModel() = _$ReceiveAmountLoadingUiModel;
}

/// @nodoc
abstract class _$$ReceiveAmountErrorUiModelCopyWith<$Res> {
  factory _$$ReceiveAmountErrorUiModelCopyWith(
          _$ReceiveAmountErrorUiModel value,
          $Res Function(_$ReceiveAmountErrorUiModel) then) =
      __$$ReceiveAmountErrorUiModelCopyWithImpl<$Res>;
  $Res call(
      {String description, String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class __$$ReceiveAmountErrorUiModelCopyWithImpl<$Res>
    extends _$ReceiveAmountUiModelCopyWithImpl<$Res>
    implements _$$ReceiveAmountErrorUiModelCopyWith<$Res> {
  __$$ReceiveAmountErrorUiModelCopyWithImpl(_$ReceiveAmountErrorUiModel _value,
      $Res Function(_$ReceiveAmountErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveAmountErrorUiModel));

  @override
  _$ReceiveAmountErrorUiModel get _value =>
      super._value as _$ReceiveAmountErrorUiModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_$ReceiveAmountErrorUiModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      buttonTitle: buttonTitle == freezed
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      buttonAction: buttonAction == freezed
          ? _value.buttonAction
          : buttonAction // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ReceiveAmountErrorUiModel implements ReceiveAmountErrorUiModel {
  const _$ReceiveAmountErrorUiModel(
      {required this.description,
      required this.buttonTitle,
      required this.buttonAction});

  @override
  final String description;
  @override
  final String buttonTitle;
  @override
  final VoidCallback buttonAction;

  @override
  String toString() {
    return 'ReceiveAmountUiModel.error(description: $description, buttonTitle: $buttonTitle, buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAmountErrorUiModel &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.buttonTitle, buttonTitle) &&
            (identical(other.buttonAction, buttonAction) ||
                other.buttonAction == buttonAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(buttonTitle),
      buttonAction);

  @JsonKey(ignore: true)
  @override
  _$$ReceiveAmountErrorUiModelCopyWith<_$ReceiveAmountErrorUiModel>
      get copyWith => __$$ReceiveAmountErrorUiModelCopyWithImpl<
          _$ReceiveAmountErrorUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, int precision)
        success,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return error(description, buttonTitle, buttonAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return error?.call(description, buttonTitle, buttonAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            int precision)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(description, buttonTitle, buttonAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveAmountSuccessUiModel value) success,
    required TResult Function(ReceiveAmountLoadingUiModel value) loading,
    required TResult Function(ReceiveAmountErrorUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAmountSuccessUiModel value)? success,
    TResult Function(ReceiveAmountLoadingUiModel value)? loading,
    TResult Function(ReceiveAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReceiveAmountErrorUiModel implements ReceiveAmountUiModel {
  const factory ReceiveAmountErrorUiModel(
      {required final String description,
      required final String buttonTitle,
      required final VoidCallback buttonAction}) = _$ReceiveAmountErrorUiModel;

  String get description;
  String get buttonTitle;
  VoidCallback get buttonAction;
  @JsonKey(ignore: true)
  _$$ReceiveAmountErrorUiModelCopyWith<_$ReceiveAmountErrorUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiveAmountCurrencyButtonUiModel {
  String get title => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  VoidCallback? get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveAmountCurrencyButtonUiModelCopyWith<
          ReceiveAmountCurrencyButtonUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAmountCurrencyButtonUiModelCopyWith<$Res> {
  factory $ReceiveAmountCurrencyButtonUiModelCopyWith(
          ReceiveAmountCurrencyButtonUiModel value,
          $Res Function(ReceiveAmountCurrencyButtonUiModel) then) =
      _$ReceiveAmountCurrencyButtonUiModelCopyWithImpl<$Res>;
  $Res call({String title, Color color, VoidCallback? onPressed});
}

/// @nodoc
class _$ReceiveAmountCurrencyButtonUiModelCopyWithImpl<$Res>
    implements $ReceiveAmountCurrencyButtonUiModelCopyWith<$Res> {
  _$ReceiveAmountCurrencyButtonUiModelCopyWithImpl(this._value, this._then);

  final ReceiveAmountCurrencyButtonUiModel _value;
  // ignore: unused_field
  final $Res Function(ReceiveAmountCurrencyButtonUiModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiveAmountCurrencyButtonUiModelCopyWith<$Res>
    implements $ReceiveAmountCurrencyButtonUiModelCopyWith<$Res> {
  factory _$$_ReceiveAmountCurrencyButtonUiModelCopyWith(
          _$_ReceiveAmountCurrencyButtonUiModel value,
          $Res Function(_$_ReceiveAmountCurrencyButtonUiModel) then) =
      __$$_ReceiveAmountCurrencyButtonUiModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, Color color, VoidCallback? onPressed});
}

/// @nodoc
class __$$_ReceiveAmountCurrencyButtonUiModelCopyWithImpl<$Res>
    extends _$ReceiveAmountCurrencyButtonUiModelCopyWithImpl<$Res>
    implements _$$_ReceiveAmountCurrencyButtonUiModelCopyWith<$Res> {
  __$$_ReceiveAmountCurrencyButtonUiModelCopyWithImpl(
      _$_ReceiveAmountCurrencyButtonUiModel _value,
      $Res Function(_$_ReceiveAmountCurrencyButtonUiModel) _then)
      : super(_value, (v) => _then(v as _$_ReceiveAmountCurrencyButtonUiModel));

  @override
  _$_ReceiveAmountCurrencyButtonUiModel get _value =>
      super._value as _$_ReceiveAmountCurrencyButtonUiModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_$_ReceiveAmountCurrencyButtonUiModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_ReceiveAmountCurrencyButtonUiModel
    implements _ReceiveAmountCurrencyButtonUiModel {
  const _$_ReceiveAmountCurrencyButtonUiModel(
      {required this.title, required this.color, required this.onPressed});

  @override
  final String title;
  @override
  final Color color;
  @override
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'ReceiveAmountCurrencyButtonUiModel(title: $title, color: $color, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveAmountCurrencyButtonUiModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(color),
      onPressed);

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveAmountCurrencyButtonUiModelCopyWith<
          _$_ReceiveAmountCurrencyButtonUiModel>
      get copyWith => __$$_ReceiveAmountCurrencyButtonUiModelCopyWithImpl<
          _$_ReceiveAmountCurrencyButtonUiModel>(this, _$identity);
}

abstract class _ReceiveAmountCurrencyButtonUiModel
    implements ReceiveAmountCurrencyButtonUiModel {
  const factory _ReceiveAmountCurrencyButtonUiModel(
          {required final String title,
          required final Color color,
          required final VoidCallback? onPressed}) =
      _$_ReceiveAmountCurrencyButtonUiModel;

  @override
  String get title;
  @override
  Color get color;
  @override
  VoidCallback? get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveAmountCurrencyButtonUiModelCopyWith<
          _$_ReceiveAmountCurrencyButtonUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

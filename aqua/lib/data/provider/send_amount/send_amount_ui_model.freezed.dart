// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_amount_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendAmountUiModel {
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
    required TResult Function(SendAmountSuccessUiModel value) success,
    required TResult Function(SendAmountLoadingUiModel value) loading,
    required TResult Function(SendAmountErrorUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAmountUiModelCopyWith<$Res> {
  factory $SendAmountUiModelCopyWith(
          SendAmountUiModel value, $Res Function(SendAmountUiModel) then) =
      _$SendAmountUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendAmountUiModelCopyWithImpl<$Res>
    implements $SendAmountUiModelCopyWith<$Res> {
  _$SendAmountUiModelCopyWithImpl(this._value, this._then);

  final SendAmountUiModel _value;
  // ignore: unused_field
  final $Res Function(SendAmountUiModel) _then;
}

/// @nodoc
abstract class _$$SendAmountSuccessUiModelCopyWith<$Res> {
  factory _$$SendAmountSuccessUiModelCopyWith(_$SendAmountSuccessUiModel value,
          $Res Function(_$SendAmountSuccessUiModel) then) =
      __$$SendAmountSuccessUiModelCopyWithImpl<$Res>;
  $Res call(
      {Uint8List icon,
      String name,
      String ticker,
      String amount,
      int precision});
}

/// @nodoc
class __$$SendAmountSuccessUiModelCopyWithImpl<$Res>
    extends _$SendAmountUiModelCopyWithImpl<$Res>
    implements _$$SendAmountSuccessUiModelCopyWith<$Res> {
  __$$SendAmountSuccessUiModelCopyWithImpl(_$SendAmountSuccessUiModel _value,
      $Res Function(_$SendAmountSuccessUiModel) _then)
      : super(_value, (v) => _then(v as _$SendAmountSuccessUiModel));

  @override
  _$SendAmountSuccessUiModel get _value =>
      super._value as _$SendAmountSuccessUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? ticker = freezed,
    Object? amount = freezed,
    Object? precision = freezed,
  }) {
    return _then(_$SendAmountSuccessUiModel(
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

class _$SendAmountSuccessUiModel implements SendAmountSuccessUiModel {
  const _$SendAmountSuccessUiModel(
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
    return 'SendAmountUiModel.success(icon: $icon, name: $name, ticker: $ticker, amount: $amount, precision: $precision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAmountSuccessUiModel &&
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
  _$$SendAmountSuccessUiModelCopyWith<_$SendAmountSuccessUiModel>
      get copyWith =>
          __$$SendAmountSuccessUiModelCopyWithImpl<_$SendAmountSuccessUiModel>(
              this, _$identity);

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
    required TResult Function(SendAmountSuccessUiModel value) success,
    required TResult Function(SendAmountLoadingUiModel value) loading,
    required TResult Function(SendAmountErrorUiModel value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendAmountSuccessUiModel implements SendAmountUiModel {
  const factory SendAmountSuccessUiModel(
      {required final Uint8List icon,
      required final String name,
      required final String ticker,
      required final String amount,
      required final int precision}) = _$SendAmountSuccessUiModel;

  Uint8List get icon;
  String get name;
  String get ticker;
  String get amount;
  int get precision;
  @JsonKey(ignore: true)
  _$$SendAmountSuccessUiModelCopyWith<_$SendAmountSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendAmountLoadingUiModelCopyWith<$Res> {
  factory _$$SendAmountLoadingUiModelCopyWith(_$SendAmountLoadingUiModel value,
          $Res Function(_$SendAmountLoadingUiModel) then) =
      __$$SendAmountLoadingUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendAmountLoadingUiModelCopyWithImpl<$Res>
    extends _$SendAmountUiModelCopyWithImpl<$Res>
    implements _$$SendAmountLoadingUiModelCopyWith<$Res> {
  __$$SendAmountLoadingUiModelCopyWithImpl(_$SendAmountLoadingUiModel _value,
      $Res Function(_$SendAmountLoadingUiModel) _then)
      : super(_value, (v) => _then(v as _$SendAmountLoadingUiModel));

  @override
  _$SendAmountLoadingUiModel get _value =>
      super._value as _$SendAmountLoadingUiModel;
}

/// @nodoc

class _$SendAmountLoadingUiModel implements SendAmountLoadingUiModel {
  const _$SendAmountLoadingUiModel();

  @override
  String toString() {
    return 'SendAmountUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAmountLoadingUiModel);
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
    required TResult Function(SendAmountSuccessUiModel value) success,
    required TResult Function(SendAmountLoadingUiModel value) loading,
    required TResult Function(SendAmountErrorUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendAmountLoadingUiModel implements SendAmountUiModel {
  const factory SendAmountLoadingUiModel() = _$SendAmountLoadingUiModel;
}

/// @nodoc
abstract class _$$SendAmountErrorUiModelCopyWith<$Res> {
  factory _$$SendAmountErrorUiModelCopyWith(_$SendAmountErrorUiModel value,
          $Res Function(_$SendAmountErrorUiModel) then) =
      __$$SendAmountErrorUiModelCopyWithImpl<$Res>;
  $Res call(
      {String description, String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class __$$SendAmountErrorUiModelCopyWithImpl<$Res>
    extends _$SendAmountUiModelCopyWithImpl<$Res>
    implements _$$SendAmountErrorUiModelCopyWith<$Res> {
  __$$SendAmountErrorUiModelCopyWithImpl(_$SendAmountErrorUiModel _value,
      $Res Function(_$SendAmountErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$SendAmountErrorUiModel));

  @override
  _$SendAmountErrorUiModel get _value =>
      super._value as _$SendAmountErrorUiModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_$SendAmountErrorUiModel(
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

class _$SendAmountErrorUiModel implements SendAmountErrorUiModel {
  const _$SendAmountErrorUiModel(
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
    return 'SendAmountUiModel.error(description: $description, buttonTitle: $buttonTitle, buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAmountErrorUiModel &&
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
  _$$SendAmountErrorUiModelCopyWith<_$SendAmountErrorUiModel> get copyWith =>
      __$$SendAmountErrorUiModelCopyWithImpl<_$SendAmountErrorUiModel>(
          this, _$identity);

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
    required TResult Function(SendAmountSuccessUiModel value) success,
    required TResult Function(SendAmountLoadingUiModel value) loading,
    required TResult Function(SendAmountErrorUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendAmountSuccessUiModel value)? success,
    TResult Function(SendAmountLoadingUiModel value)? loading,
    TResult Function(SendAmountErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SendAmountErrorUiModel implements SendAmountUiModel {
  const factory SendAmountErrorUiModel(
      {required final String description,
      required final String buttonTitle,
      required final VoidCallback buttonAction}) = _$SendAmountErrorUiModel;

  String get description;
  String get buttonTitle;
  VoidCallback get buttonAction;
  @JsonKey(ignore: true)
  _$$SendAmountErrorUiModelCopyWith<_$SendAmountErrorUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendAmountCurrencyButtonUiModel {
  String get title => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  VoidCallback? get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendAmountCurrencyButtonUiModelCopyWith<SendAmountCurrencyButtonUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAmountCurrencyButtonUiModelCopyWith<$Res> {
  factory $SendAmountCurrencyButtonUiModelCopyWith(
          SendAmountCurrencyButtonUiModel value,
          $Res Function(SendAmountCurrencyButtonUiModel) then) =
      _$SendAmountCurrencyButtonUiModelCopyWithImpl<$Res>;
  $Res call({String title, Color color, VoidCallback? onPressed});
}

/// @nodoc
class _$SendAmountCurrencyButtonUiModelCopyWithImpl<$Res>
    implements $SendAmountCurrencyButtonUiModelCopyWith<$Res> {
  _$SendAmountCurrencyButtonUiModelCopyWithImpl(this._value, this._then);

  final SendAmountCurrencyButtonUiModel _value;
  // ignore: unused_field
  final $Res Function(SendAmountCurrencyButtonUiModel) _then;

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
abstract class _$$_SendAmountCurrencyButtonUiModelCopyWith<$Res>
    implements $SendAmountCurrencyButtonUiModelCopyWith<$Res> {
  factory _$$_SendAmountCurrencyButtonUiModelCopyWith(
          _$_SendAmountCurrencyButtonUiModel value,
          $Res Function(_$_SendAmountCurrencyButtonUiModel) then) =
      __$$_SendAmountCurrencyButtonUiModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, Color color, VoidCallback? onPressed});
}

/// @nodoc
class __$$_SendAmountCurrencyButtonUiModelCopyWithImpl<$Res>
    extends _$SendAmountCurrencyButtonUiModelCopyWithImpl<$Res>
    implements _$$_SendAmountCurrencyButtonUiModelCopyWith<$Res> {
  __$$_SendAmountCurrencyButtonUiModelCopyWithImpl(
      _$_SendAmountCurrencyButtonUiModel _value,
      $Res Function(_$_SendAmountCurrencyButtonUiModel) _then)
      : super(_value, (v) => _then(v as _$_SendAmountCurrencyButtonUiModel));

  @override
  _$_SendAmountCurrencyButtonUiModel get _value =>
      super._value as _$_SendAmountCurrencyButtonUiModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_$_SendAmountCurrencyButtonUiModel(
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

class _$_SendAmountCurrencyButtonUiModel
    implements _SendAmountCurrencyButtonUiModel {
  const _$_SendAmountCurrencyButtonUiModel(
      {required this.title, required this.color, required this.onPressed});

  @override
  final String title;
  @override
  final Color color;
  @override
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'SendAmountCurrencyButtonUiModel(title: $title, color: $color, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendAmountCurrencyButtonUiModel &&
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
  _$$_SendAmountCurrencyButtonUiModelCopyWith<
          _$_SendAmountCurrencyButtonUiModel>
      get copyWith => __$$_SendAmountCurrencyButtonUiModelCopyWithImpl<
          _$_SendAmountCurrencyButtonUiModel>(this, _$identity);
}

abstract class _SendAmountCurrencyButtonUiModel
    implements SendAmountCurrencyButtonUiModel {
  const factory _SendAmountCurrencyButtonUiModel(
          {required final String title,
          required final Color color,
          required final VoidCallback? onPressed}) =
      _$_SendAmountCurrencyButtonUiModel;

  @override
  String get title;
  @override
  Color get color;
  @override
  VoidCallback? get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$_SendAmountCurrencyButtonUiModelCopyWith<
          _$_SendAmountCurrencyButtonUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

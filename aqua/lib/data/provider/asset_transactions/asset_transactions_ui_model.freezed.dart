// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_transactions_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssetTransactionsUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String titleText,
            String cryptoAmountText, String cryptoCurrencyText)
        success,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
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
    required TResult Function(AssetTransactionsSuccessUiModel value) success,
    required TResult Function(AssetTransactionsLoadingUiModel value) loading,
    required TResult Function(AssetTransactionsErrorUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetTransactionsUiModelCopyWith<$Res> {
  factory $AssetTransactionsUiModelCopyWith(AssetTransactionsUiModel value,
          $Res Function(AssetTransactionsUiModel) then) =
      _$AssetTransactionsUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetTransactionsUiModelCopyWithImpl<$Res>
    implements $AssetTransactionsUiModelCopyWith<$Res> {
  _$AssetTransactionsUiModelCopyWithImpl(this._value, this._then);

  final AssetTransactionsUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetTransactionsUiModel) _then;
}

/// @nodoc
abstract class _$$AssetTransactionsSuccessUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsSuccessUiModelCopyWith(
          _$AssetTransactionsSuccessUiModel value,
          $Res Function(_$AssetTransactionsSuccessUiModel) then) =
      __$$AssetTransactionsSuccessUiModelCopyWithImpl<$Res>;
  $Res call(
      {Uint8List icon,
      String titleText,
      String cryptoAmountText,
      String cryptoCurrencyText});
}

/// @nodoc
class __$$AssetTransactionsSuccessUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsSuccessUiModelCopyWith<$Res> {
  __$$AssetTransactionsSuccessUiModelCopyWithImpl(
      _$AssetTransactionsSuccessUiModel _value,
      $Res Function(_$AssetTransactionsSuccessUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsSuccessUiModel));

  @override
  _$AssetTransactionsSuccessUiModel get _value =>
      super._value as _$AssetTransactionsSuccessUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? titleText = freezed,
    Object? cryptoAmountText = freezed,
    Object? cryptoCurrencyText = freezed,
  }) {
    return _then(_$AssetTransactionsSuccessUiModel(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      titleText: titleText == freezed
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoAmountText: cryptoAmountText == freezed
          ? _value.cryptoAmountText
          : cryptoAmountText // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrencyText: cryptoCurrencyText == freezed
          ? _value.cryptoCurrencyText
          : cryptoCurrencyText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetTransactionsSuccessUiModel
    implements AssetTransactionsSuccessUiModel {
  const _$AssetTransactionsSuccessUiModel(
      {required this.icon,
      required this.titleText,
      required this.cryptoAmountText,
      required this.cryptoCurrencyText});

  @override
  final Uint8List icon;
  @override
  final String titleText;
  @override
  final String cryptoAmountText;
  @override
  final String cryptoCurrencyText;

  @override
  String toString() {
    return 'AssetTransactionsUiModel.success(icon: $icon, titleText: $titleText, cryptoAmountText: $cryptoAmountText, cryptoCurrencyText: $cryptoCurrencyText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsSuccessUiModel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.titleText, titleText) &&
            const DeepCollectionEquality()
                .equals(other.cryptoAmountText, cryptoAmountText) &&
            const DeepCollectionEquality()
                .equals(other.cryptoCurrencyText, cryptoCurrencyText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(titleText),
      const DeepCollectionEquality().hash(cryptoAmountText),
      const DeepCollectionEquality().hash(cryptoCurrencyText));

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionsSuccessUiModelCopyWith<_$AssetTransactionsSuccessUiModel>
      get copyWith => __$$AssetTransactionsSuccessUiModelCopyWithImpl<
          _$AssetTransactionsSuccessUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String titleText,
            String cryptoAmountText, String cryptoCurrencyText)
        success,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return success(icon, titleText, cryptoAmountText, cryptoCurrencyText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return success?.call(icon, titleText, cryptoAmountText, cryptoCurrencyText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
        success,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(icon, titleText, cryptoAmountText, cryptoCurrencyText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsSuccessUiModel value) success,
    required TResult Function(AssetTransactionsLoadingUiModel value) loading,
    required TResult Function(AssetTransactionsErrorUiModel value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsSuccessUiModel
    implements AssetTransactionsUiModel {
  const factory AssetTransactionsSuccessUiModel(
          {required final Uint8List icon,
          required final String titleText,
          required final String cryptoAmountText,
          required final String cryptoCurrencyText}) =
      _$AssetTransactionsSuccessUiModel;

  Uint8List get icon;
  String get titleText;
  String get cryptoAmountText;
  String get cryptoCurrencyText;
  @JsonKey(ignore: true)
  _$$AssetTransactionsSuccessUiModelCopyWith<_$AssetTransactionsSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionsLoadingUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsLoadingUiModelCopyWith(
          _$AssetTransactionsLoadingUiModel value,
          $Res Function(_$AssetTransactionsLoadingUiModel) then) =
      __$$AssetTransactionsLoadingUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionsLoadingUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsLoadingUiModelCopyWith<$Res> {
  __$$AssetTransactionsLoadingUiModelCopyWithImpl(
      _$AssetTransactionsLoadingUiModel _value,
      $Res Function(_$AssetTransactionsLoadingUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsLoadingUiModel));

  @override
  _$AssetTransactionsLoadingUiModel get _value =>
      super._value as _$AssetTransactionsLoadingUiModel;
}

/// @nodoc

class _$AssetTransactionsLoadingUiModel
    implements AssetTransactionsLoadingUiModel {
  const _$AssetTransactionsLoadingUiModel();

  @override
  String toString() {
    return 'AssetTransactionsUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsLoadingUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String titleText,
            String cryptoAmountText, String cryptoCurrencyText)
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
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
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
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
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
    required TResult Function(AssetTransactionsSuccessUiModel value) success,
    required TResult Function(AssetTransactionsLoadingUiModel value) loading,
    required TResult Function(AssetTransactionsErrorUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsLoadingUiModel
    implements AssetTransactionsUiModel {
  const factory AssetTransactionsLoadingUiModel() =
      _$AssetTransactionsLoadingUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionsErrorUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsErrorUiModelCopyWith(
          _$AssetTransactionsErrorUiModel value,
          $Res Function(_$AssetTransactionsErrorUiModel) then) =
      __$$AssetTransactionsErrorUiModelCopyWithImpl<$Res>;
  $Res call(
      {String description, String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class __$$AssetTransactionsErrorUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsErrorUiModelCopyWith<$Res> {
  __$$AssetTransactionsErrorUiModelCopyWithImpl(
      _$AssetTransactionsErrorUiModel _value,
      $Res Function(_$AssetTransactionsErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsErrorUiModel));

  @override
  _$AssetTransactionsErrorUiModel get _value =>
      super._value as _$AssetTransactionsErrorUiModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_$AssetTransactionsErrorUiModel(
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

class _$AssetTransactionsErrorUiModel implements AssetTransactionsErrorUiModel {
  const _$AssetTransactionsErrorUiModel(
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
    return 'AssetTransactionsUiModel.error(description: $description, buttonTitle: $buttonTitle, buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsErrorUiModel &&
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
  _$$AssetTransactionsErrorUiModelCopyWith<_$AssetTransactionsErrorUiModel>
      get copyWith => __$$AssetTransactionsErrorUiModelCopyWithImpl<
          _$AssetTransactionsErrorUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String titleText,
            String cryptoAmountText, String cryptoCurrencyText)
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
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
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
    TResult Function(Uint8List icon, String titleText, String cryptoAmountText,
            String cryptoCurrencyText)?
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
    required TResult Function(AssetTransactionsSuccessUiModel value) success,
    required TResult Function(AssetTransactionsLoadingUiModel value) loading,
    required TResult Function(AssetTransactionsErrorUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessUiModel value)? success,
    TResult Function(AssetTransactionsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionsErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsErrorUiModel
    implements AssetTransactionsUiModel {
  const factory AssetTransactionsErrorUiModel(
          {required final String description,
          required final String buttonTitle,
          required final VoidCallback buttonAction}) =
      _$AssetTransactionsErrorUiModel;

  String get description;
  String get buttonTitle;
  VoidCallback get buttonAction;
  @JsonKey(ignore: true)
  _$$AssetTransactionsErrorUiModelCopyWith<_$AssetTransactionsErrorUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssetTransactionsListUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emptyBitcoin,
    required TResult Function(String description) emptyLiquid,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsSuccessListUiModel value)
        success,
    required TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)
        emptyBitcoin,
    required TResult Function(AssetTransactionsEmptyLiquidListUiModel value)
        emptyLiquid,
    required TResult Function(AssetTransactionsLoadingListUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorListUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetTransactionsListUiModelCopyWith<$Res> {
  factory $AssetTransactionsListUiModelCopyWith(
          AssetTransactionsListUiModel value,
          $Res Function(AssetTransactionsListUiModel) then) =
      _$AssetTransactionsListUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetTransactionsListUiModelCopyWithImpl<$Res>
    implements $AssetTransactionsListUiModelCopyWith<$Res> {
  _$AssetTransactionsListUiModelCopyWithImpl(this._value, this._then);

  final AssetTransactionsListUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetTransactionsListUiModel) _then;
}

/// @nodoc
abstract class _$$AssetTransactionsSuccessListUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsSuccessListUiModelCopyWith(
          _$AssetTransactionsSuccessListUiModel value,
          $Res Function(_$AssetTransactionsSuccessListUiModel) then) =
      __$$AssetTransactionsSuccessListUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionsSuccessListUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsListUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsSuccessListUiModelCopyWith<$Res> {
  __$$AssetTransactionsSuccessListUiModelCopyWithImpl(
      _$AssetTransactionsSuccessListUiModel _value,
      $Res Function(_$AssetTransactionsSuccessListUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsSuccessListUiModel));

  @override
  _$AssetTransactionsSuccessListUiModel get _value =>
      super._value as _$AssetTransactionsSuccessListUiModel;
}

/// @nodoc

class _$AssetTransactionsSuccessListUiModel
    implements AssetTransactionsSuccessListUiModel {
  const _$AssetTransactionsSuccessListUiModel();

  @override
  String toString() {
    return 'AssetTransactionsListUiModel.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsSuccessListUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emptyBitcoin,
    required TResult Function(String description) emptyLiquid,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
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
    required TResult Function(AssetTransactionsSuccessListUiModel value)
        success,
    required TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)
        emptyBitcoin,
    required TResult Function(AssetTransactionsEmptyLiquidListUiModel value)
        emptyLiquid,
    required TResult Function(AssetTransactionsLoadingListUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorListUiModel value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsSuccessListUiModel
    implements AssetTransactionsListUiModel {
  const factory AssetTransactionsSuccessListUiModel() =
      _$AssetTransactionsSuccessListUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionsEmptyBitcoinListUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsEmptyBitcoinListUiModelCopyWith(
          _$AssetTransactionsEmptyBitcoinListUiModel value,
          $Res Function(_$AssetTransactionsEmptyBitcoinListUiModel) then) =
      __$$AssetTransactionsEmptyBitcoinListUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionsEmptyBitcoinListUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsListUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsEmptyBitcoinListUiModelCopyWith<$Res> {
  __$$AssetTransactionsEmptyBitcoinListUiModelCopyWithImpl(
      _$AssetTransactionsEmptyBitcoinListUiModel _value,
      $Res Function(_$AssetTransactionsEmptyBitcoinListUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionsEmptyBitcoinListUiModel));

  @override
  _$AssetTransactionsEmptyBitcoinListUiModel get _value =>
      super._value as _$AssetTransactionsEmptyBitcoinListUiModel;
}

/// @nodoc

class _$AssetTransactionsEmptyBitcoinListUiModel
    implements AssetTransactionsEmptyBitcoinListUiModel {
  const _$AssetTransactionsEmptyBitcoinListUiModel();

  @override
  String toString() {
    return 'AssetTransactionsListUiModel.emptyBitcoin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsEmptyBitcoinListUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emptyBitcoin,
    required TResult Function(String description) emptyLiquid,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return emptyBitcoin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return emptyBitcoin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) {
    if (emptyBitcoin != null) {
      return emptyBitcoin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsSuccessListUiModel value)
        success,
    required TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)
        emptyBitcoin,
    required TResult Function(AssetTransactionsEmptyLiquidListUiModel value)
        emptyLiquid,
    required TResult Function(AssetTransactionsLoadingListUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorListUiModel value) error,
  }) {
    return emptyBitcoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
  }) {
    return emptyBitcoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
    required TResult orElse(),
  }) {
    if (emptyBitcoin != null) {
      return emptyBitcoin(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsEmptyBitcoinListUiModel
    implements AssetTransactionsListUiModel {
  const factory AssetTransactionsEmptyBitcoinListUiModel() =
      _$AssetTransactionsEmptyBitcoinListUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionsEmptyLiquidListUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsEmptyLiquidListUiModelCopyWith(
          _$AssetTransactionsEmptyLiquidListUiModel value,
          $Res Function(_$AssetTransactionsEmptyLiquidListUiModel) then) =
      __$$AssetTransactionsEmptyLiquidListUiModelCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$AssetTransactionsEmptyLiquidListUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsListUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsEmptyLiquidListUiModelCopyWith<$Res> {
  __$$AssetTransactionsEmptyLiquidListUiModelCopyWithImpl(
      _$AssetTransactionsEmptyLiquidListUiModel _value,
      $Res Function(_$AssetTransactionsEmptyLiquidListUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionsEmptyLiquidListUiModel));

  @override
  _$AssetTransactionsEmptyLiquidListUiModel get _value =>
      super._value as _$AssetTransactionsEmptyLiquidListUiModel;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$AssetTransactionsEmptyLiquidListUiModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetTransactionsEmptyLiquidListUiModel
    implements AssetTransactionsEmptyLiquidListUiModel {
  const _$AssetTransactionsEmptyLiquidListUiModel({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'AssetTransactionsListUiModel.emptyLiquid(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsEmptyLiquidListUiModel &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionsEmptyLiquidListUiModelCopyWith<
          _$AssetTransactionsEmptyLiquidListUiModel>
      get copyWith => __$$AssetTransactionsEmptyLiquidListUiModelCopyWithImpl<
          _$AssetTransactionsEmptyLiquidListUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emptyBitcoin,
    required TResult Function(String description) emptyLiquid,
    required TResult Function() loading,
    required TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return emptyLiquid(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
  }) {
    return emptyLiquid?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
    TResult Function()? loading,
    TResult Function(
            String description, String buttonTitle, VoidCallback buttonAction)?
        error,
    required TResult orElse(),
  }) {
    if (emptyLiquid != null) {
      return emptyLiquid(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsSuccessListUiModel value)
        success,
    required TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)
        emptyBitcoin,
    required TResult Function(AssetTransactionsEmptyLiquidListUiModel value)
        emptyLiquid,
    required TResult Function(AssetTransactionsLoadingListUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorListUiModel value) error,
  }) {
    return emptyLiquid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
  }) {
    return emptyLiquid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
    required TResult orElse(),
  }) {
    if (emptyLiquid != null) {
      return emptyLiquid(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsEmptyLiquidListUiModel
    implements AssetTransactionsListUiModel {
  const factory AssetTransactionsEmptyLiquidListUiModel(
          {required final String description}) =
      _$AssetTransactionsEmptyLiquidListUiModel;

  String get description;
  @JsonKey(ignore: true)
  _$$AssetTransactionsEmptyLiquidListUiModelCopyWith<
          _$AssetTransactionsEmptyLiquidListUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionsLoadingListUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsLoadingListUiModelCopyWith(
          _$AssetTransactionsLoadingListUiModel value,
          $Res Function(_$AssetTransactionsLoadingListUiModel) then) =
      __$$AssetTransactionsLoadingListUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionsLoadingListUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsListUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsLoadingListUiModelCopyWith<$Res> {
  __$$AssetTransactionsLoadingListUiModelCopyWithImpl(
      _$AssetTransactionsLoadingListUiModel _value,
      $Res Function(_$AssetTransactionsLoadingListUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsLoadingListUiModel));

  @override
  _$AssetTransactionsLoadingListUiModel get _value =>
      super._value as _$AssetTransactionsLoadingListUiModel;
}

/// @nodoc

class _$AssetTransactionsLoadingListUiModel
    implements AssetTransactionsLoadingListUiModel {
  const _$AssetTransactionsLoadingListUiModel();

  @override
  String toString() {
    return 'AssetTransactionsListUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsLoadingListUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emptyBitcoin,
    required TResult Function(String description) emptyLiquid,
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
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
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
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
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
    required TResult Function(AssetTransactionsSuccessListUiModel value)
        success,
    required TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)
        emptyBitcoin,
    required TResult Function(AssetTransactionsEmptyLiquidListUiModel value)
        emptyLiquid,
    required TResult Function(AssetTransactionsLoadingListUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorListUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsLoadingListUiModel
    implements AssetTransactionsListUiModel {
  const factory AssetTransactionsLoadingListUiModel() =
      _$AssetTransactionsLoadingListUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionsErrorListUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsErrorListUiModelCopyWith(
          _$AssetTransactionsErrorListUiModel value,
          $Res Function(_$AssetTransactionsErrorListUiModel) then) =
      __$$AssetTransactionsErrorListUiModelCopyWithImpl<$Res>;
  $Res call(
      {String description, String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class __$$AssetTransactionsErrorListUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsListUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsErrorListUiModelCopyWith<$Res> {
  __$$AssetTransactionsErrorListUiModelCopyWithImpl(
      _$AssetTransactionsErrorListUiModel _value,
      $Res Function(_$AssetTransactionsErrorListUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsErrorListUiModel));

  @override
  _$AssetTransactionsErrorListUiModel get _value =>
      super._value as _$AssetTransactionsErrorListUiModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_$AssetTransactionsErrorListUiModel(
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

class _$AssetTransactionsErrorListUiModel
    implements AssetTransactionsErrorListUiModel {
  const _$AssetTransactionsErrorListUiModel(
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
    return 'AssetTransactionsListUiModel.error(description: $description, buttonTitle: $buttonTitle, buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsErrorListUiModel &&
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
  _$$AssetTransactionsErrorListUiModelCopyWith<
          _$AssetTransactionsErrorListUiModel>
      get copyWith => __$$AssetTransactionsErrorListUiModelCopyWithImpl<
          _$AssetTransactionsErrorListUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emptyBitcoin,
    required TResult Function(String description) emptyLiquid,
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
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
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
    TResult Function()? success,
    TResult Function()? emptyBitcoin,
    TResult Function(String description)? emptyLiquid,
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
    required TResult Function(AssetTransactionsSuccessListUiModel value)
        success,
    required TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)
        emptyBitcoin,
    required TResult Function(AssetTransactionsEmptyLiquidListUiModel value)
        emptyLiquid,
    required TResult Function(AssetTransactionsLoadingListUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorListUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsSuccessListUiModel value)? success,
    TResult Function(AssetTransactionsEmptyBitcoinListUiModel value)?
        emptyBitcoin,
    TResult Function(AssetTransactionsEmptyLiquidListUiModel value)?
        emptyLiquid,
    TResult Function(AssetTransactionsLoadingListUiModel value)? loading,
    TResult Function(AssetTransactionsErrorListUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsErrorListUiModel
    implements AssetTransactionsListUiModel {
  const factory AssetTransactionsErrorListUiModel(
          {required final String description,
          required final String buttonTitle,
          required final VoidCallback buttonAction}) =
      _$AssetTransactionsErrorListUiModel;

  String get description;
  String get buttonTitle;
  VoidCallback get buttonAction;
  @JsonKey(ignore: true)
  _$$AssetTransactionsErrorListUiModelCopyWith<
          _$AssetTransactionsErrorListUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_transactions_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssetTransactionsItemUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsDataItemUiModel value) data,
    required TResult Function(AssetTransactionsLoadingItemUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorItemUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetTransactionsItemUiModelCopyWith<$Res> {
  factory $AssetTransactionsItemUiModelCopyWith(
          AssetTransactionsItemUiModel value,
          $Res Function(AssetTransactionsItemUiModel) then) =
      _$AssetTransactionsItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetTransactionsItemUiModelCopyWithImpl<$Res>
    implements $AssetTransactionsItemUiModelCopyWith<$Res> {
  _$AssetTransactionsItemUiModelCopyWithImpl(this._value, this._then);

  final AssetTransactionsItemUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetTransactionsItemUiModel) _then;
}

/// @nodoc
abstract class _$$AssetTransactionsDataItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsDataItemUiModelCopyWith(
          _$AssetTransactionsDataItemUiModel value,
          $Res Function(_$AssetTransactionsDataItemUiModel) then) =
      __$$AssetTransactionsDataItemUiModelCopyWithImpl<$Res>;
  $Res call(
      {String assetName,
      String createdAt,
      String type,
      String cryptoAmount,
      String fiat,
      VoidCallback onPressed,
      GdkTransactionTypeEnum? gdkType});
}

/// @nodoc
class __$$AssetTransactionsDataItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsDataItemUiModelCopyWith<$Res> {
  __$$AssetTransactionsDataItemUiModelCopyWithImpl(
      _$AssetTransactionsDataItemUiModel _value,
      $Res Function(_$AssetTransactionsDataItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsDataItemUiModel));

  @override
  _$AssetTransactionsDataItemUiModel get _value =>
      super._value as _$AssetTransactionsDataItemUiModel;

  @override
  $Res call({
    Object? assetName = freezed,
    Object? createdAt = freezed,
    Object? type = freezed,
    Object? cryptoAmount = freezed,
    Object? fiat = freezed,
    Object? onPressed = freezed,
    Object? gdkType = freezed,
  }) {
    return _then(_$AssetTransactionsDataItemUiModel(
      assetName: assetName == freezed
          ? _value.assetName
          : assetName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoAmount: cryptoAmount == freezed
          ? _value.cryptoAmount
          : cryptoAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fiat: fiat == freezed
          ? _value.fiat
          : fiat // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      gdkType: gdkType == freezed
          ? _value.gdkType
          : gdkType // ignore: cast_nullable_to_non_nullable
              as GdkTransactionTypeEnum?,
    ));
  }
}

/// @nodoc

class _$AssetTransactionsDataItemUiModel
    implements AssetTransactionsDataItemUiModel {
  const _$AssetTransactionsDataItemUiModel(
      {required this.assetName,
      required this.createdAt,
      required this.type,
      required this.cryptoAmount,
      required this.fiat,
      required this.onPressed,
      this.gdkType});

  @override
  final String assetName;
  @override
  final String createdAt;
  @override
  final String type;
  @override
  final String cryptoAmount;
  @override
  final String fiat;
  @override
  final VoidCallback onPressed;
  @override
  final GdkTransactionTypeEnum? gdkType;

  @override
  String toString() {
    return 'AssetTransactionsItemUiModel.data(assetName: $assetName, createdAt: $createdAt, type: $type, cryptoAmount: $cryptoAmount, fiat: $fiat, onPressed: $onPressed, gdkType: $gdkType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsDataItemUiModel &&
            const DeepCollectionEquality().equals(other.assetName, assetName) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.cryptoAmount, cryptoAmount) &&
            const DeepCollectionEquality().equals(other.fiat, fiat) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            const DeepCollectionEquality().equals(other.gdkType, gdkType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(assetName),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(cryptoAmount),
      const DeepCollectionEquality().hash(fiat),
      onPressed,
      const DeepCollectionEquality().hash(gdkType));

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionsDataItemUiModelCopyWith<
          _$AssetTransactionsDataItemUiModel>
      get copyWith => __$$AssetTransactionsDataItemUiModelCopyWithImpl<
          _$AssetTransactionsDataItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(
        assetName, createdAt, type, cryptoAmount, fiat, onPressed, gdkType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return data?.call(
        assetName, createdAt, type, cryptoAmount, fiat, onPressed, gdkType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          assetName, createdAt, type, cryptoAmount, fiat, onPressed, gdkType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsDataItemUiModel value) data,
    required TResult Function(AssetTransactionsLoadingItemUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorItemUiModel value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsDataItemUiModel
    implements AssetTransactionsItemUiModel {
  const factory AssetTransactionsDataItemUiModel(
          {required final String assetName,
          required final String createdAt,
          required final String type,
          required final String cryptoAmount,
          required final String fiat,
          required final VoidCallback onPressed,
          final GdkTransactionTypeEnum? gdkType}) =
      _$AssetTransactionsDataItemUiModel;

  String get assetName;
  String get createdAt;
  String get type;
  String get cryptoAmount;
  String get fiat;
  VoidCallback get onPressed;
  GdkTransactionTypeEnum? get gdkType;
  @JsonKey(ignore: true)
  _$$AssetTransactionsDataItemUiModelCopyWith<
          _$AssetTransactionsDataItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionsLoadingItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsLoadingItemUiModelCopyWith(
          _$AssetTransactionsLoadingItemUiModel value,
          $Res Function(_$AssetTransactionsLoadingItemUiModel) then) =
      __$$AssetTransactionsLoadingItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionsLoadingItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsLoadingItemUiModelCopyWith<$Res> {
  __$$AssetTransactionsLoadingItemUiModelCopyWithImpl(
      _$AssetTransactionsLoadingItemUiModel _value,
      $Res Function(_$AssetTransactionsLoadingItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsLoadingItemUiModel));

  @override
  _$AssetTransactionsLoadingItemUiModel get _value =>
      super._value as _$AssetTransactionsLoadingItemUiModel;
}

/// @nodoc

class _$AssetTransactionsLoadingItemUiModel
    implements AssetTransactionsLoadingItemUiModel {
  const _$AssetTransactionsLoadingItemUiModel();

  @override
  String toString() {
    return 'AssetTransactionsItemUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsLoadingItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(AssetTransactionsDataItemUiModel value) data,
    required TResult Function(AssetTransactionsLoadingItemUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorItemUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsLoadingItemUiModel
    implements AssetTransactionsItemUiModel {
  const factory AssetTransactionsLoadingItemUiModel() =
      _$AssetTransactionsLoadingItemUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionsErrorItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionsErrorItemUiModelCopyWith(
          _$AssetTransactionsErrorItemUiModel value,
          $Res Function(_$AssetTransactionsErrorItemUiModel) then) =
      __$$AssetTransactionsErrorItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionsErrorItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionsErrorItemUiModelCopyWith<$Res> {
  __$$AssetTransactionsErrorItemUiModelCopyWithImpl(
      _$AssetTransactionsErrorItemUiModel _value,
      $Res Function(_$AssetTransactionsErrorItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionsErrorItemUiModel));

  @override
  _$AssetTransactionsErrorItemUiModel get _value =>
      super._value as _$AssetTransactionsErrorItemUiModel;
}

/// @nodoc

class _$AssetTransactionsErrorItemUiModel
    implements AssetTransactionsErrorItemUiModel {
  const _$AssetTransactionsErrorItemUiModel();

  @override
  String toString() {
    return 'AssetTransactionsItemUiModel.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionsErrorItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String assetName,
            String createdAt,
            String type,
            String cryptoAmount,
            String fiat,
            VoidCallback onPressed,
            GdkTransactionTypeEnum? gdkType)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionsDataItemUiModel value) data,
    required TResult Function(AssetTransactionsLoadingItemUiModel value)
        loading,
    required TResult Function(AssetTransactionsErrorItemUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionsDataItemUiModel value)? data,
    TResult Function(AssetTransactionsLoadingItemUiModel value)? loading,
    TResult Function(AssetTransactionsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionsErrorItemUiModel
    implements AssetTransactionsItemUiModel {
  const factory AssetTransactionsErrorItemUiModel() =
      _$AssetTransactionsErrorItemUiModel;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_add_asset_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletAddAssetListItemModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)
        data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)?
        data,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)?
        data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletAddAssetListDataItemModel value) data,
    required TResult Function(WalletAddAssetListEmptyItemModel value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletAddAssetListDataItemModel value)? data,
    TResult Function(WalletAddAssetListEmptyItemModel value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletAddAssetListDataItemModel value)? data,
    TResult Function(WalletAddAssetListEmptyItemModel value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletAddAssetListItemModelCopyWith<$Res> {
  factory $WalletAddAssetListItemModelCopyWith(
          WalletAddAssetListItemModel value,
          $Res Function(WalletAddAssetListItemModel) then) =
      _$WalletAddAssetListItemModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletAddAssetListItemModelCopyWithImpl<$Res>
    implements $WalletAddAssetListItemModelCopyWith<$Res> {
  _$WalletAddAssetListItemModelCopyWithImpl(this._value, this._then);

  final WalletAddAssetListItemModel _value;
  // ignore: unused_field
  final $Res Function(WalletAddAssetListItemModel) _then;
}

/// @nodoc
abstract class _$$WalletAddAssetListDataItemModelCopyWith<$Res> {
  factory _$$WalletAddAssetListDataItemModelCopyWith(
          _$WalletAddAssetListDataItemModel value,
          $Res Function(_$WalletAddAssetListDataItemModel) then) =
      __$$WalletAddAssetListDataItemModelCopyWithImpl<$Res>;
  $Res call(
      {WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable});

  $WalletAddAssetItemUiModelCopyWith<$Res> get uiModel;
}

/// @nodoc
class __$$WalletAddAssetListDataItemModelCopyWithImpl<$Res>
    extends _$WalletAddAssetListItemModelCopyWithImpl<$Res>
    implements _$$WalletAddAssetListDataItemModelCopyWith<$Res> {
  __$$WalletAddAssetListDataItemModelCopyWithImpl(
      _$WalletAddAssetListDataItemModel _value,
      $Res Function(_$WalletAddAssetListDataItemModel) _then)
      : super(_value, (v) => _then(v as _$WalletAddAssetListDataItemModel));

  @override
  _$WalletAddAssetListDataItemModel get _value =>
      super._value as _$WalletAddAssetListDataItemModel;

  @override
  $Res call({
    Object? uiModel = freezed,
    Object? asset = freezed,
    Object? unselectable = freezed,
  }) {
    return _then(_$WalletAddAssetListDataItemModel(
      uiModel: uiModel == freezed
          ? _value.uiModel
          : uiModel // ignore: cast_nullable_to_non_nullable
              as WalletAddAssetItemUiModel,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
      unselectable: unselectable == freezed
          ? _value.unselectable
          : unselectable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $WalletAddAssetItemUiModelCopyWith<$Res> get uiModel {
    return $WalletAddAssetItemUiModelCopyWith<$Res>(_value.uiModel, (value) {
      return _then(_value.copyWith(uiModel: value));
    });
  }
}

/// @nodoc

class _$WalletAddAssetListDataItemModel
    implements WalletAddAssetListDataItemModel {
  const _$WalletAddAssetListDataItemModel(
      {required this.uiModel, required this.asset, required this.unselectable});

  @override
  final WalletAddAssetItemUiModel uiModel;
  @override
  final Asset asset;
  @override
  final bool unselectable;

  @override
  String toString() {
    return 'WalletAddAssetListItemModel.data(uiModel: $uiModel, asset: $asset, unselectable: $unselectable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletAddAssetListDataItemModel &&
            const DeepCollectionEquality().equals(other.uiModel, uiModel) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality()
                .equals(other.unselectable, unselectable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uiModel),
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(unselectable));

  @JsonKey(ignore: true)
  @override
  _$$WalletAddAssetListDataItemModelCopyWith<_$WalletAddAssetListDataItemModel>
      get copyWith => __$$WalletAddAssetListDataItemModelCopyWithImpl<
          _$WalletAddAssetListDataItemModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)
        data,
    required TResult Function() empty,
  }) {
    return data(uiModel, asset, unselectable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)?
        data,
    TResult Function()? empty,
  }) {
    return data?.call(uiModel, asset, unselectable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)?
        data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(uiModel, asset, unselectable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletAddAssetListDataItemModel value) data,
    required TResult Function(WalletAddAssetListEmptyItemModel value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletAddAssetListDataItemModel value)? data,
    TResult Function(WalletAddAssetListEmptyItemModel value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletAddAssetListDataItemModel value)? data,
    TResult Function(WalletAddAssetListEmptyItemModel value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class WalletAddAssetListDataItemModel
    implements WalletAddAssetListItemModel {
  const factory WalletAddAssetListDataItemModel(
      {required final WalletAddAssetItemUiModel uiModel,
      required final Asset asset,
      required final bool unselectable}) = _$WalletAddAssetListDataItemModel;

  WalletAddAssetItemUiModel get uiModel;
  Asset get asset;
  bool get unselectable;
  @JsonKey(ignore: true)
  _$$WalletAddAssetListDataItemModelCopyWith<_$WalletAddAssetListDataItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletAddAssetListEmptyItemModelCopyWith<$Res> {
  factory _$$WalletAddAssetListEmptyItemModelCopyWith(
          _$WalletAddAssetListEmptyItemModel value,
          $Res Function(_$WalletAddAssetListEmptyItemModel) then) =
      __$$WalletAddAssetListEmptyItemModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletAddAssetListEmptyItemModelCopyWithImpl<$Res>
    extends _$WalletAddAssetListItemModelCopyWithImpl<$Res>
    implements _$$WalletAddAssetListEmptyItemModelCopyWith<$Res> {
  __$$WalletAddAssetListEmptyItemModelCopyWithImpl(
      _$WalletAddAssetListEmptyItemModel _value,
      $Res Function(_$WalletAddAssetListEmptyItemModel) _then)
      : super(_value, (v) => _then(v as _$WalletAddAssetListEmptyItemModel));

  @override
  _$WalletAddAssetListEmptyItemModel get _value =>
      super._value as _$WalletAddAssetListEmptyItemModel;
}

/// @nodoc

class _$WalletAddAssetListEmptyItemModel
    implements WalletAddAssetListEmptyItemModel {
  const _$WalletAddAssetListEmptyItemModel();

  @override
  String toString() {
    return 'WalletAddAssetListItemModel.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletAddAssetListEmptyItemModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)
        data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)?
        data,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WalletAddAssetItemUiModel uiModel, Asset asset, bool unselectable)?
        data,
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
    required TResult Function(WalletAddAssetListDataItemModel value) data,
    required TResult Function(WalletAddAssetListEmptyItemModel value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletAddAssetListDataItemModel value)? data,
    TResult Function(WalletAddAssetListEmptyItemModel value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletAddAssetListDataItemModel value)? data,
    TResult Function(WalletAddAssetListEmptyItemModel value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class WalletAddAssetListEmptyItemModel
    implements WalletAddAssetListItemModel {
  const factory WalletAddAssetListEmptyItemModel() =
      _$WalletAddAssetListEmptyItemModel;
}

/// @nodoc
mixin _$WalletAddAssetItemUiModel {
  Uint8List get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get ticker => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletAddAssetItemUiModelCopyWith<WalletAddAssetItemUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletAddAssetItemUiModelCopyWith<$Res> {
  factory $WalletAddAssetItemUiModelCopyWith(WalletAddAssetItemUiModel value,
          $Res Function(WalletAddAssetItemUiModel) then) =
      _$WalletAddAssetItemUiModelCopyWithImpl<$Res>;
  $Res call({Uint8List icon, String name, String ticker});
}

/// @nodoc
class _$WalletAddAssetItemUiModelCopyWithImpl<$Res>
    implements $WalletAddAssetItemUiModelCopyWith<$Res> {
  _$WalletAddAssetItemUiModelCopyWithImpl(this._value, this._then);

  final WalletAddAssetItemUiModel _value;
  // ignore: unused_field
  final $Res Function(WalletAddAssetItemUiModel) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$$_WalletAddAssetItemUiModelCopyWith<$Res>
    implements $WalletAddAssetItemUiModelCopyWith<$Res> {
  factory _$$_WalletAddAssetItemUiModelCopyWith(
          _$_WalletAddAssetItemUiModel value,
          $Res Function(_$_WalletAddAssetItemUiModel) then) =
      __$$_WalletAddAssetItemUiModelCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List icon, String name, String ticker});
}

/// @nodoc
class __$$_WalletAddAssetItemUiModelCopyWithImpl<$Res>
    extends _$WalletAddAssetItemUiModelCopyWithImpl<$Res>
    implements _$$_WalletAddAssetItemUiModelCopyWith<$Res> {
  __$$_WalletAddAssetItemUiModelCopyWithImpl(
      _$_WalletAddAssetItemUiModel _value,
      $Res Function(_$_WalletAddAssetItemUiModel) _then)
      : super(_value, (v) => _then(v as _$_WalletAddAssetItemUiModel));

  @override
  _$_WalletAddAssetItemUiModel get _value =>
      super._value as _$_WalletAddAssetItemUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_$_WalletAddAssetItemUiModel(
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
    ));
  }
}

/// @nodoc

class _$_WalletAddAssetItemUiModel implements _WalletAddAssetItemUiModel {
  const _$_WalletAddAssetItemUiModel(
      {required this.icon, required this.name, required this.ticker});

  @override
  final Uint8List icon;
  @override
  final String name;
  @override
  final String ticker;

  @override
  String toString() {
    return 'WalletAddAssetItemUiModel(icon: $icon, name: $name, ticker: $ticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletAddAssetItemUiModel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ticker, ticker));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ticker));

  @JsonKey(ignore: true)
  @override
  _$$_WalletAddAssetItemUiModelCopyWith<_$_WalletAddAssetItemUiModel>
      get copyWith => __$$_WalletAddAssetItemUiModelCopyWithImpl<
          _$_WalletAddAssetItemUiModel>(this, _$identity);
}

abstract class _WalletAddAssetItemUiModel implements WalletAddAssetItemUiModel {
  const factory _WalletAddAssetItemUiModel(
      {required final Uint8List icon,
      required final String name,
      required final String ticker}) = _$_WalletAddAssetItemUiModel;

  @override
  Uint8List get icon;
  @override
  String get name;
  @override
  String get ticker;
  @override
  @JsonKey(ignore: true)
  _$$_WalletAddAssetItemUiModelCopyWith<_$_WalletAddAssetItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletAddAssetControlUiModel {
  IconData get icon => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  VoidCallback? get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletAddAssetControlUiModelCopyWith<WalletAddAssetControlUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletAddAssetControlUiModelCopyWith<$Res> {
  factory $WalletAddAssetControlUiModelCopyWith(
          WalletAddAssetControlUiModel value,
          $Res Function(WalletAddAssetControlUiModel) then) =
      _$WalletAddAssetControlUiModelCopyWithImpl<$Res>;
  $Res call({IconData icon, Color color, VoidCallback? onPressed});
}

/// @nodoc
class _$WalletAddAssetControlUiModelCopyWithImpl<$Res>
    implements $WalletAddAssetControlUiModelCopyWith<$Res> {
  _$WalletAddAssetControlUiModelCopyWithImpl(this._value, this._then);

  final WalletAddAssetControlUiModel _value;
  // ignore: unused_field
  final $Res Function(WalletAddAssetControlUiModel) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? color = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
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
abstract class _$$_WalletAddAssetControlUiModelCopyWith<$Res>
    implements $WalletAddAssetControlUiModelCopyWith<$Res> {
  factory _$$_WalletAddAssetControlUiModelCopyWith(
          _$_WalletAddAssetControlUiModel value,
          $Res Function(_$_WalletAddAssetControlUiModel) then) =
      __$$_WalletAddAssetControlUiModelCopyWithImpl<$Res>;
  @override
  $Res call({IconData icon, Color color, VoidCallback? onPressed});
}

/// @nodoc
class __$$_WalletAddAssetControlUiModelCopyWithImpl<$Res>
    extends _$WalletAddAssetControlUiModelCopyWithImpl<$Res>
    implements _$$_WalletAddAssetControlUiModelCopyWith<$Res> {
  __$$_WalletAddAssetControlUiModelCopyWithImpl(
      _$_WalletAddAssetControlUiModel _value,
      $Res Function(_$_WalletAddAssetControlUiModel) _then)
      : super(_value, (v) => _then(v as _$_WalletAddAssetControlUiModel));

  @override
  _$_WalletAddAssetControlUiModel get _value =>
      super._value as _$_WalletAddAssetControlUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? color = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_$_WalletAddAssetControlUiModel(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
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

class _$_WalletAddAssetControlUiModel implements _WalletAddAssetControlUiModel {
  const _$_WalletAddAssetControlUiModel(
      {required this.icon, required this.color, this.onPressed});

  @override
  final IconData icon;
  @override
  final Color color;
  @override
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'WalletAddAssetControlUiModel(icon: $icon, color: $color, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletAddAssetControlUiModel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(color),
      onPressed);

  @JsonKey(ignore: true)
  @override
  _$$_WalletAddAssetControlUiModelCopyWith<_$_WalletAddAssetControlUiModel>
      get copyWith => __$$_WalletAddAssetControlUiModelCopyWithImpl<
          _$_WalletAddAssetControlUiModel>(this, _$identity);
}

abstract class _WalletAddAssetControlUiModel
    implements WalletAddAssetControlUiModel {
  const factory _WalletAddAssetControlUiModel(
      {required final IconData icon,
      required final Color color,
      final VoidCallback? onPressed}) = _$_WalletAddAssetControlUiModel;

  @override
  IconData get icon;
  @override
  Color get color;
  @override
  VoidCallback? get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$_WalletAddAssetControlUiModelCopyWith<_$_WalletAddAssetControlUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

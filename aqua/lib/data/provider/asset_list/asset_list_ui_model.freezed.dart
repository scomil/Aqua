// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_list_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssetListItemUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, VoidCallback onTap)
        asset,
    required TResult Function(String title, String assets) nft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            VoidCallback onTap)?
        asset,
    TResult Function(String title, String assets)? nft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            VoidCallback onTap)?
        asset,
    TResult Function(String title, String assets)? nft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetListAssetItemUiModel value) asset,
    required TResult Function(AssetListNftItemUiModel value) nft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetListAssetItemUiModel value)? asset,
    TResult Function(AssetListNftItemUiModel value)? nft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetListAssetItemUiModel value)? asset,
    TResult Function(AssetListNftItemUiModel value)? nft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetListItemUiModelCopyWith<$Res> {
  factory $AssetListItemUiModelCopyWith(AssetListItemUiModel value,
          $Res Function(AssetListItemUiModel) then) =
      _$AssetListItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetListItemUiModelCopyWithImpl<$Res>
    implements $AssetListItemUiModelCopyWith<$Res> {
  _$AssetListItemUiModelCopyWithImpl(this._value, this._then);

  final AssetListItemUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetListItemUiModel) _then;
}

/// @nodoc
abstract class _$$AssetListAssetItemUiModelCopyWith<$Res> {
  factory _$$AssetListAssetItemUiModelCopyWith(
          _$AssetListAssetItemUiModel value,
          $Res Function(_$AssetListAssetItemUiModel) then) =
      __$$AssetListAssetItemUiModelCopyWithImpl<$Res>;
  $Res call(
      {Uint8List icon,
      String name,
      String ticker,
      String amount,
      VoidCallback onTap});
}

/// @nodoc
class __$$AssetListAssetItemUiModelCopyWithImpl<$Res>
    extends _$AssetListItemUiModelCopyWithImpl<$Res>
    implements _$$AssetListAssetItemUiModelCopyWith<$Res> {
  __$$AssetListAssetItemUiModelCopyWithImpl(_$AssetListAssetItemUiModel _value,
      $Res Function(_$AssetListAssetItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetListAssetItemUiModel));

  @override
  _$AssetListAssetItemUiModel get _value =>
      super._value as _$AssetListAssetItemUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? ticker = freezed,
    Object? amount = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_$AssetListAssetItemUiModel(
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
      onTap: onTap == freezed
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AssetListAssetItemUiModel implements AssetListAssetItemUiModel {
  const _$AssetListAssetItemUiModel(
      {required this.icon,
      required this.name,
      required this.ticker,
      required this.amount,
      required this.onTap});

  @override
  final Uint8List icon;
  @override
  final String name;
  @override
  final String ticker;
  @override
  final String amount;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'AssetListItemUiModel.asset(icon: $icon, name: $name, ticker: $ticker, amount: $amount, onTap: $onTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetListAssetItemUiModel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ticker, ticker) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ticker),
      const DeepCollectionEquality().hash(amount),
      onTap);

  @JsonKey(ignore: true)
  @override
  _$$AssetListAssetItemUiModelCopyWith<_$AssetListAssetItemUiModel>
      get copyWith => __$$AssetListAssetItemUiModelCopyWithImpl<
          _$AssetListAssetItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, VoidCallback onTap)
        asset,
    required TResult Function(String title, String assets) nft,
  }) {
    return asset(icon, name, ticker, amount, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            VoidCallback onTap)?
        asset,
    TResult Function(String title, String assets)? nft,
  }) {
    return asset?.call(icon, name, ticker, amount, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            VoidCallback onTap)?
        asset,
    TResult Function(String title, String assets)? nft,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(icon, name, ticker, amount, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetListAssetItemUiModel value) asset,
    required TResult Function(AssetListNftItemUiModel value) nft,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetListAssetItemUiModel value)? asset,
    TResult Function(AssetListNftItemUiModel value)? nft,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetListAssetItemUiModel value)? asset,
    TResult Function(AssetListNftItemUiModel value)? nft,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }
}

abstract class AssetListAssetItemUiModel implements AssetListItemUiModel {
  const factory AssetListAssetItemUiModel(
      {required final Uint8List icon,
      required final String name,
      required final String ticker,
      required final String amount,
      required final VoidCallback onTap}) = _$AssetListAssetItemUiModel;

  Uint8List get icon;
  String get name;
  String get ticker;
  String get amount;
  VoidCallback get onTap;
  @JsonKey(ignore: true)
  _$$AssetListAssetItemUiModelCopyWith<_$AssetListAssetItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetListNftItemUiModelCopyWith<$Res> {
  factory _$$AssetListNftItemUiModelCopyWith(_$AssetListNftItemUiModel value,
          $Res Function(_$AssetListNftItemUiModel) then) =
      __$$AssetListNftItemUiModelCopyWithImpl<$Res>;
  $Res call({String title, String assets});
}

/// @nodoc
class __$$AssetListNftItemUiModelCopyWithImpl<$Res>
    extends _$AssetListItemUiModelCopyWithImpl<$Res>
    implements _$$AssetListNftItemUiModelCopyWith<$Res> {
  __$$AssetListNftItemUiModelCopyWithImpl(_$AssetListNftItemUiModel _value,
      $Res Function(_$AssetListNftItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetListNftItemUiModel));

  @override
  _$AssetListNftItemUiModel get _value =>
      super._value as _$AssetListNftItemUiModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? assets = freezed,
  }) {
    return _then(_$AssetListNftItemUiModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetListNftItemUiModel implements AssetListNftItemUiModel {
  const _$AssetListNftItemUiModel({required this.title, required this.assets});

  @override
  final String title;
  @override
  final String assets;

  @override
  String toString() {
    return 'AssetListItemUiModel.nft(title: $title, assets: $assets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetListNftItemUiModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.assets, assets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(assets));

  @JsonKey(ignore: true)
  @override
  _$$AssetListNftItemUiModelCopyWith<_$AssetListNftItemUiModel> get copyWith =>
      __$$AssetListNftItemUiModelCopyWithImpl<_$AssetListNftItemUiModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker,
            String amount, VoidCallback onTap)
        asset,
    required TResult Function(String title, String assets) nft,
  }) {
    return nft(title, assets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            VoidCallback onTap)?
        asset,
    TResult Function(String title, String assets)? nft,
  }) {
    return nft?.call(title, assets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker, String amount,
            VoidCallback onTap)?
        asset,
    TResult Function(String title, String assets)? nft,
    required TResult orElse(),
  }) {
    if (nft != null) {
      return nft(title, assets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetListAssetItemUiModel value) asset,
    required TResult Function(AssetListNftItemUiModel value) nft,
  }) {
    return nft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetListAssetItemUiModel value)? asset,
    TResult Function(AssetListNftItemUiModel value)? nft,
  }) {
    return nft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetListAssetItemUiModel value)? asset,
    TResult Function(AssetListNftItemUiModel value)? nft,
    required TResult orElse(),
  }) {
    if (nft != null) {
      return nft(this);
    }
    return orElse();
  }
}

abstract class AssetListNftItemUiModel implements AssetListItemUiModel {
  const factory AssetListNftItemUiModel(
      {required final String title,
      required final String assets}) = _$AssetListNftItemUiModel;

  String get title;
  String get assets;
  @JsonKey(ignore: true)
  _$$AssetListNftItemUiModelCopyWith<_$AssetListNftItemUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssetListErrorUiModel {
  String get buttonTitle => throw _privateConstructorUsedError;
  VoidCallback get buttonAction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssetListErrorUiModelCopyWith<AssetListErrorUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetListErrorUiModelCopyWith<$Res> {
  factory $AssetListErrorUiModelCopyWith(AssetListErrorUiModel value,
          $Res Function(AssetListErrorUiModel) then) =
      _$AssetListErrorUiModelCopyWithImpl<$Res>;
  $Res call({String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class _$AssetListErrorUiModelCopyWithImpl<$Res>
    implements $AssetListErrorUiModelCopyWith<$Res> {
  _$AssetListErrorUiModelCopyWithImpl(this._value, this._then);

  final AssetListErrorUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetListErrorUiModel) _then;

  @override
  $Res call({
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_AssetListErrorUiModelCopyWith<$Res>
    implements $AssetListErrorUiModelCopyWith<$Res> {
  factory _$$_AssetListErrorUiModelCopyWith(_$_AssetListErrorUiModel value,
          $Res Function(_$_AssetListErrorUiModel) then) =
      __$$_AssetListErrorUiModelCopyWithImpl<$Res>;
  @override
  $Res call({String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class __$$_AssetListErrorUiModelCopyWithImpl<$Res>
    extends _$AssetListErrorUiModelCopyWithImpl<$Res>
    implements _$$_AssetListErrorUiModelCopyWith<$Res> {
  __$$_AssetListErrorUiModelCopyWithImpl(_$_AssetListErrorUiModel _value,
      $Res Function(_$_AssetListErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$_AssetListErrorUiModel));

  @override
  _$_AssetListErrorUiModel get _value =>
      super._value as _$_AssetListErrorUiModel;

  @override
  $Res call({
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_$_AssetListErrorUiModel(
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

class _$_AssetListErrorUiModel implements _AssetListErrorUiModel {
  const _$_AssetListErrorUiModel(
      {required this.buttonTitle, required this.buttonAction});

  @override
  final String buttonTitle;
  @override
  final VoidCallback buttonAction;

  @override
  String toString() {
    return 'AssetListErrorUiModel(buttonTitle: $buttonTitle, buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetListErrorUiModel &&
            const DeepCollectionEquality()
                .equals(other.buttonTitle, buttonTitle) &&
            (identical(other.buttonAction, buttonAction) ||
                other.buttonAction == buttonAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(buttonTitle), buttonAction);

  @JsonKey(ignore: true)
  @override
  _$$_AssetListErrorUiModelCopyWith<_$_AssetListErrorUiModel> get copyWith =>
      __$$_AssetListErrorUiModelCopyWithImpl<_$_AssetListErrorUiModel>(
          this, _$identity);
}

abstract class _AssetListErrorUiModel implements AssetListErrorUiModel {
  const factory _AssetListErrorUiModel(
      {required final String buttonTitle,
      required final VoidCallback buttonAction}) = _$_AssetListErrorUiModel;

  @override
  String get buttonTitle;
  @override
  VoidCallback get buttonAction;
  @override
  @JsonKey(ignore: true)
  _$$_AssetListErrorUiModelCopyWith<_$_AssetListErrorUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

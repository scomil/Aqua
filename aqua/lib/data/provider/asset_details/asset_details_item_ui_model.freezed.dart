// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_details_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssetDetailsItemUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetDetailsItemUiModelCopyWith<$Res> {
  factory $AssetDetailsItemUiModelCopyWith(AssetDetailsItemUiModel value,
          $Res Function(AssetDetailsItemUiModel) then) =
      _$AssetDetailsItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements $AssetDetailsItemUiModelCopyWith<$Res> {
  _$AssetDetailsItemUiModelCopyWithImpl(this._value, this._then);

  final AssetDetailsItemUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetDetailsItemUiModel) _then;
}

/// @nodoc
abstract class _$$AssetDetailsHeaderItemUiModelCopyWith<$Res> {
  factory _$$AssetDetailsHeaderItemUiModelCopyWith(
          _$AssetDetailsHeaderItemUiModel value,
          $Res Function(_$AssetDetailsHeaderItemUiModel) then) =
      __$$AssetDetailsHeaderItemUiModelCopyWithImpl<$Res>;
  $Res call({Uint8List icon, String name, String ticker});
}

/// @nodoc
class __$$AssetDetailsHeaderItemUiModelCopyWithImpl<$Res>
    extends _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetDetailsHeaderItemUiModelCopyWith<$Res> {
  __$$AssetDetailsHeaderItemUiModelCopyWithImpl(
      _$AssetDetailsHeaderItemUiModel _value,
      $Res Function(_$AssetDetailsHeaderItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetDetailsHeaderItemUiModel));

  @override
  _$AssetDetailsHeaderItemUiModel get _value =>
      super._value as _$AssetDetailsHeaderItemUiModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? ticker = freezed,
  }) {
    return _then(_$AssetDetailsHeaderItemUiModel(
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

class _$AssetDetailsHeaderItemUiModel implements AssetDetailsHeaderItemUiModel {
  const _$AssetDetailsHeaderItemUiModel(
      {required this.icon, required this.name, required this.ticker});

  @override
  final Uint8List icon;
  @override
  final String name;
  @override
  final String ticker;

  @override
  String toString() {
    return 'AssetDetailsItemUiModel.header(icon: $icon, name: $name, ticker: $ticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailsHeaderItemUiModel &&
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
  _$$AssetDetailsHeaderItemUiModelCopyWith<_$AssetDetailsHeaderItemUiModel>
      get copyWith => __$$AssetDetailsHeaderItemUiModelCopyWithImpl<
          _$AssetDetailsHeaderItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return header(icon, name, ticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) {
    return header?.call(icon, name, ticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(icon, name, ticker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }
}

abstract class AssetDetailsHeaderItemUiModel
    implements AssetDetailsItemUiModel {
  const factory AssetDetailsHeaderItemUiModel(
      {required final Uint8List icon,
      required final String name,
      required final String ticker}) = _$AssetDetailsHeaderItemUiModel;

  Uint8List get icon;
  String get name;
  String get ticker;
  @JsonKey(ignore: true)
  _$$AssetDetailsHeaderItemUiModelCopyWith<_$AssetDetailsHeaderItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetDetailsIssuerItemUiModelCopyWith<$Res> {
  factory _$$AssetDetailsIssuerItemUiModelCopyWith(
          _$AssetDetailsIssuerItemUiModel value,
          $Res Function(_$AssetDetailsIssuerItemUiModel) then) =
      __$$AssetDetailsIssuerItemUiModelCopyWithImpl<$Res>;
  $Res call({String issuer});
}

/// @nodoc
class __$$AssetDetailsIssuerItemUiModelCopyWithImpl<$Res>
    extends _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetDetailsIssuerItemUiModelCopyWith<$Res> {
  __$$AssetDetailsIssuerItemUiModelCopyWithImpl(
      _$AssetDetailsIssuerItemUiModel _value,
      $Res Function(_$AssetDetailsIssuerItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetDetailsIssuerItemUiModel));

  @override
  _$AssetDetailsIssuerItemUiModel get _value =>
      super._value as _$AssetDetailsIssuerItemUiModel;

  @override
  $Res call({
    Object? issuer = freezed,
  }) {
    return _then(_$AssetDetailsIssuerItemUiModel(
      issuer: issuer == freezed
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetDetailsIssuerItemUiModel implements AssetDetailsIssuerItemUiModel {
  const _$AssetDetailsIssuerItemUiModel({required this.issuer});

  @override
  final String issuer;

  @override
  String toString() {
    return 'AssetDetailsItemUiModel.issuer(issuer: $issuer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailsIssuerItemUiModel &&
            const DeepCollectionEquality().equals(other.issuer, issuer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(issuer));

  @JsonKey(ignore: true)
  @override
  _$$AssetDetailsIssuerItemUiModelCopyWith<_$AssetDetailsIssuerItemUiModel>
      get copyWith => __$$AssetDetailsIssuerItemUiModelCopyWithImpl<
          _$AssetDetailsIssuerItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return issuer(this.issuer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) {
    return issuer?.call(this.issuer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (issuer != null) {
      return issuer(this.issuer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) {
    return issuer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) {
    return issuer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (issuer != null) {
      return issuer(this);
    }
    return orElse();
  }
}

abstract class AssetDetailsIssuerItemUiModel
    implements AssetDetailsItemUiModel {
  const factory AssetDetailsIssuerItemUiModel({required final String issuer}) =
      _$AssetDetailsIssuerItemUiModel;

  String get issuer;
  @JsonKey(ignore: true)
  _$$AssetDetailsIssuerItemUiModelCopyWith<_$AssetDetailsIssuerItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetDetailsIdItemUiModelCopyWith<$Res> {
  factory _$$AssetDetailsIdItemUiModelCopyWith(
          _$AssetDetailsIdItemUiModel value,
          $Res Function(_$AssetDetailsIdItemUiModel) then) =
      __$$AssetDetailsIdItemUiModelCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$AssetDetailsIdItemUiModelCopyWithImpl<$Res>
    extends _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetDetailsIdItemUiModelCopyWith<$Res> {
  __$$AssetDetailsIdItemUiModelCopyWithImpl(_$AssetDetailsIdItemUiModel _value,
      $Res Function(_$AssetDetailsIdItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetDetailsIdItemUiModel));

  @override
  _$AssetDetailsIdItemUiModel get _value =>
      super._value as _$AssetDetailsIdItemUiModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$AssetDetailsIdItemUiModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetDetailsIdItemUiModel implements AssetDetailsIdItemUiModel {
  const _$AssetDetailsIdItemUiModel({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AssetDetailsItemUiModel.id(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailsIdItemUiModel &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$AssetDetailsIdItemUiModelCopyWith<_$AssetDetailsIdItemUiModel>
      get copyWith => __$$AssetDetailsIdItemUiModelCopyWithImpl<
          _$AssetDetailsIdItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) {
    return id?.call(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class AssetDetailsIdItemUiModel implements AssetDetailsItemUiModel {
  const factory AssetDetailsIdItemUiModel({required final String id}) =
      _$AssetDetailsIdItemUiModel;

  String get id;
  @JsonKey(ignore: true)
  _$$AssetDetailsIdItemUiModelCopyWith<_$AssetDetailsIdItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetDetailsIntroItemUiModelCopyWith<$Res> {
  factory _$$AssetDetailsIntroItemUiModelCopyWith(
          _$AssetDetailsIntroItemUiModel value,
          $Res Function(_$AssetDetailsIntroItemUiModel) then) =
      __$$AssetDetailsIntroItemUiModelCopyWithImpl<$Res>;
  $Res call({String intro});
}

/// @nodoc
class __$$AssetDetailsIntroItemUiModelCopyWithImpl<$Res>
    extends _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetDetailsIntroItemUiModelCopyWith<$Res> {
  __$$AssetDetailsIntroItemUiModelCopyWithImpl(
      _$AssetDetailsIntroItemUiModel _value,
      $Res Function(_$AssetDetailsIntroItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetDetailsIntroItemUiModel));

  @override
  _$AssetDetailsIntroItemUiModel get _value =>
      super._value as _$AssetDetailsIntroItemUiModel;

  @override
  $Res call({
    Object? intro = freezed,
  }) {
    return _then(_$AssetDetailsIntroItemUiModel(
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetDetailsIntroItemUiModel implements AssetDetailsIntroItemUiModel {
  const _$AssetDetailsIntroItemUiModel({required this.intro});

  @override
  final String intro;

  @override
  String toString() {
    return 'AssetDetailsItemUiModel.intro(intro: $intro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailsIntroItemUiModel &&
            const DeepCollectionEquality().equals(other.intro, intro));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(intro));

  @JsonKey(ignore: true)
  @override
  _$$AssetDetailsIntroItemUiModelCopyWith<_$AssetDetailsIntroItemUiModel>
      get copyWith => __$$AssetDetailsIntroItemUiModelCopyWithImpl<
          _$AssetDetailsIntroItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return intro(this.intro);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) {
    return intro?.call(this.intro);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (intro != null) {
      return intro(this.intro);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) {
    return intro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) {
    return intro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (intro != null) {
      return intro(this);
    }
    return orElse();
  }
}

abstract class AssetDetailsIntroItemUiModel implements AssetDetailsItemUiModel {
  const factory AssetDetailsIntroItemUiModel({required final String intro}) =
      _$AssetDetailsIntroItemUiModel;

  String get intro;
  @JsonKey(ignore: true)
  _$$AssetDetailsIntroItemUiModelCopyWith<_$AssetDetailsIntroItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetDetailsLoadingItemUiModelCopyWith<$Res> {
  factory _$$AssetDetailsLoadingItemUiModelCopyWith(
          _$AssetDetailsLoadingItemUiModel value,
          $Res Function(_$AssetDetailsLoadingItemUiModel) then) =
      __$$AssetDetailsLoadingItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetDetailsLoadingItemUiModelCopyWithImpl<$Res>
    extends _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetDetailsLoadingItemUiModelCopyWith<$Res> {
  __$$AssetDetailsLoadingItemUiModelCopyWithImpl(
      _$AssetDetailsLoadingItemUiModel _value,
      $Res Function(_$AssetDetailsLoadingItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetDetailsLoadingItemUiModel));

  @override
  _$AssetDetailsLoadingItemUiModel get _value =>
      super._value as _$AssetDetailsLoadingItemUiModel;
}

/// @nodoc

class _$AssetDetailsLoadingItemUiModel
    implements AssetDetailsLoadingItemUiModel {
  const _$AssetDetailsLoadingItemUiModel();

  @override
  String toString() {
    return 'AssetDetailsItemUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailsLoadingItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
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
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssetDetailsLoadingItemUiModel
    implements AssetDetailsItemUiModel {
  const factory AssetDetailsLoadingItemUiModel() =
      _$AssetDetailsLoadingItemUiModel;
}

/// @nodoc
abstract class _$$AssetDetailsErrorItemUiModelCopyWith<$Res> {
  factory _$$AssetDetailsErrorItemUiModelCopyWith(
          _$AssetDetailsErrorItemUiModel value,
          $Res Function(_$AssetDetailsErrorItemUiModel) then) =
      __$$AssetDetailsErrorItemUiModelCopyWithImpl<$Res>;
  $Res call({String buttonTitle, VoidCallback buttonAction});
}

/// @nodoc
class __$$AssetDetailsErrorItemUiModelCopyWithImpl<$Res>
    extends _$AssetDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetDetailsErrorItemUiModelCopyWith<$Res> {
  __$$AssetDetailsErrorItemUiModelCopyWithImpl(
      _$AssetDetailsErrorItemUiModel _value,
      $Res Function(_$AssetDetailsErrorItemUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetDetailsErrorItemUiModel));

  @override
  _$AssetDetailsErrorItemUiModel get _value =>
      super._value as _$AssetDetailsErrorItemUiModel;

  @override
  $Res call({
    Object? buttonTitle = freezed,
    Object? buttonAction = freezed,
  }) {
    return _then(_$AssetDetailsErrorItemUiModel(
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

class _$AssetDetailsErrorItemUiModel implements AssetDetailsErrorItemUiModel {
  const _$AssetDetailsErrorItemUiModel(
      {required this.buttonTitle, required this.buttonAction});

  @override
  final String buttonTitle;
  @override
  final VoidCallback buttonAction;

  @override
  String toString() {
    return 'AssetDetailsItemUiModel.error(buttonTitle: $buttonTitle, buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDetailsErrorItemUiModel &&
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
  _$$AssetDetailsErrorItemUiModelCopyWith<_$AssetDetailsErrorItemUiModel>
      get copyWith => __$$AssetDetailsErrorItemUiModelCopyWithImpl<
          _$AssetDetailsErrorItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List icon, String name, String ticker)
        header,
    required TResult Function(String issuer) issuer,
    required TResult Function(String id) id,
    required TResult Function(String intro) intro,
    required TResult Function() loading,
    required TResult Function(String buttonTitle, VoidCallback buttonAction)
        error,
  }) {
    return error(buttonTitle, buttonAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
  }) {
    return error?.call(buttonTitle, buttonAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List icon, String name, String ticker)? header,
    TResult Function(String issuer)? issuer,
    TResult Function(String id)? id,
    TResult Function(String intro)? intro,
    TResult Function()? loading,
    TResult Function(String buttonTitle, VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(buttonTitle, buttonAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetDetailsHeaderItemUiModel value) header,
    required TResult Function(AssetDetailsIssuerItemUiModel value) issuer,
    required TResult Function(AssetDetailsIdItemUiModel value) id,
    required TResult Function(AssetDetailsIntroItemUiModel value) intro,
    required TResult Function(AssetDetailsLoadingItemUiModel value) loading,
    required TResult Function(AssetDetailsErrorItemUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetDetailsIssuerItemUiModel value)? issuer,
    TResult Function(AssetDetailsIdItemUiModel value)? id,
    TResult Function(AssetDetailsIntroItemUiModel value)? intro,
    TResult Function(AssetDetailsLoadingItemUiModel value)? loading,
    TResult Function(AssetDetailsErrorItemUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssetDetailsErrorItemUiModel implements AssetDetailsItemUiModel {
  const factory AssetDetailsErrorItemUiModel(
          {required final String buttonTitle,
          required final VoidCallback buttonAction}) =
      _$AssetDetailsErrorItemUiModel;

  String get buttonTitle;
  VoidCallback get buttonAction;
  @JsonKey(ignore: true)
  _$$AssetDetailsErrorItemUiModelCopyWith<_$AssetDetailsErrorItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

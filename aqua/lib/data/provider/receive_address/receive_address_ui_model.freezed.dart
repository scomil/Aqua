// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_address_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveAddressUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)
        usedAddresses,
    required TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)
        allAddresses,
    required TResult Function() loading,
    required TResult Function(VoidCallback buttonAction) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveUsedAddressUiModel value) usedAddresses,
    required TResult Function(ReceiveAllAddressesUiModel value) allAddresses,
    required TResult Function(ReceiveAddressLoadingUiModel value) loading,
    required TResult Function(ReceiveAddressErrorUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAddressUiModelCopyWith<$Res> {
  factory $ReceiveAddressUiModelCopyWith(ReceiveAddressUiModel value,
          $Res Function(ReceiveAddressUiModel) then) =
      _$ReceiveAddressUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReceiveAddressUiModelCopyWithImpl<$Res>
    implements $ReceiveAddressUiModelCopyWith<$Res> {
  _$ReceiveAddressUiModelCopyWithImpl(this._value, this._then);

  final ReceiveAddressUiModel _value;
  // ignore: unused_field
  final $Res Function(ReceiveAddressUiModel) _then;
}

/// @nodoc
abstract class _$$ReceiveUsedAddressUiModelCopyWith<$Res> {
  factory _$$ReceiveUsedAddressUiModelCopyWith(
          _$ReceiveUsedAddressUiModel value,
          $Res Function(_$ReceiveUsedAddressUiModel) then) =
      __$$ReceiveUsedAddressUiModelCopyWithImpl<$Res>;
  $Res call({List<ReceiveUsedAddressItemUiModel> itemUiModels});
}

/// @nodoc
class __$$ReceiveUsedAddressUiModelCopyWithImpl<$Res>
    extends _$ReceiveAddressUiModelCopyWithImpl<$Res>
    implements _$$ReceiveUsedAddressUiModelCopyWith<$Res> {
  __$$ReceiveUsedAddressUiModelCopyWithImpl(_$ReceiveUsedAddressUiModel _value,
      $Res Function(_$ReceiveUsedAddressUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveUsedAddressUiModel));

  @override
  _$ReceiveUsedAddressUiModel get _value =>
      super._value as _$ReceiveUsedAddressUiModel;

  @override
  $Res call({
    Object? itemUiModels = freezed,
  }) {
    return _then(_$ReceiveUsedAddressUiModel(
      itemUiModels: itemUiModels == freezed
          ? _value._itemUiModels
          : itemUiModels // ignore: cast_nullable_to_non_nullable
              as List<ReceiveUsedAddressItemUiModel>,
    ));
  }
}

/// @nodoc

class _$ReceiveUsedAddressUiModel implements ReceiveUsedAddressUiModel {
  const _$ReceiveUsedAddressUiModel(
      {required final List<ReceiveUsedAddressItemUiModel> itemUiModels})
      : _itemUiModels = itemUiModels;

  final List<ReceiveUsedAddressItemUiModel> _itemUiModels;
  @override
  List<ReceiveUsedAddressItemUiModel> get itemUiModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemUiModels);
  }

  @override
  String toString() {
    return 'ReceiveAddressUiModel.usedAddresses(itemUiModels: $itemUiModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveUsedAddressUiModel &&
            const DeepCollectionEquality()
                .equals(other._itemUiModels, _itemUiModels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_itemUiModels));

  @JsonKey(ignore: true)
  @override
  _$$ReceiveUsedAddressUiModelCopyWith<_$ReceiveUsedAddressUiModel>
      get copyWith => __$$ReceiveUsedAddressUiModelCopyWithImpl<
          _$ReceiveUsedAddressUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)
        usedAddresses,
    required TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)
        allAddresses,
    required TResult Function() loading,
    required TResult Function(VoidCallback buttonAction) error,
  }) {
    return usedAddresses(itemUiModels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
  }) {
    return usedAddresses?.call(itemUiModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (usedAddresses != null) {
      return usedAddresses(itemUiModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveUsedAddressUiModel value) usedAddresses,
    required TResult Function(ReceiveAllAddressesUiModel value) allAddresses,
    required TResult Function(ReceiveAddressLoadingUiModel value) loading,
    required TResult Function(ReceiveAddressErrorUiModel value) error,
  }) {
    return usedAddresses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
  }) {
    return usedAddresses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (usedAddresses != null) {
      return usedAddresses(this);
    }
    return orElse();
  }
}

abstract class ReceiveUsedAddressUiModel implements ReceiveAddressUiModel {
  const factory ReceiveUsedAddressUiModel(
          {required final List<ReceiveUsedAddressItemUiModel> itemUiModels}) =
      _$ReceiveUsedAddressUiModel;

  List<ReceiveUsedAddressItemUiModel> get itemUiModels;
  @JsonKey(ignore: true)
  _$$ReceiveUsedAddressUiModelCopyWith<_$ReceiveUsedAddressUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveAllAddressesUiModelCopyWith<$Res> {
  factory _$$ReceiveAllAddressesUiModelCopyWith(
          _$ReceiveAllAddressesUiModel value,
          $Res Function(_$ReceiveAllAddressesUiModel) then) =
      __$$ReceiveAllAddressesUiModelCopyWithImpl<$Res>;
  $Res call({List<ReceiveAllAddressItemUiModel> itemUiModels});
}

/// @nodoc
class __$$ReceiveAllAddressesUiModelCopyWithImpl<$Res>
    extends _$ReceiveAddressUiModelCopyWithImpl<$Res>
    implements _$$ReceiveAllAddressesUiModelCopyWith<$Res> {
  __$$ReceiveAllAddressesUiModelCopyWithImpl(
      _$ReceiveAllAddressesUiModel _value,
      $Res Function(_$ReceiveAllAddressesUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveAllAddressesUiModel));

  @override
  _$ReceiveAllAddressesUiModel get _value =>
      super._value as _$ReceiveAllAddressesUiModel;

  @override
  $Res call({
    Object? itemUiModels = freezed,
  }) {
    return _then(_$ReceiveAllAddressesUiModel(
      itemUiModels: itemUiModels == freezed
          ? _value._itemUiModels
          : itemUiModels // ignore: cast_nullable_to_non_nullable
              as List<ReceiveAllAddressItemUiModel>,
    ));
  }
}

/// @nodoc

class _$ReceiveAllAddressesUiModel implements ReceiveAllAddressesUiModel {
  const _$ReceiveAllAddressesUiModel(
      {required final List<ReceiveAllAddressItemUiModel> itemUiModels})
      : _itemUiModels = itemUiModels;

  final List<ReceiveAllAddressItemUiModel> _itemUiModels;
  @override
  List<ReceiveAllAddressItemUiModel> get itemUiModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemUiModels);
  }

  @override
  String toString() {
    return 'ReceiveAddressUiModel.allAddresses(itemUiModels: $itemUiModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAllAddressesUiModel &&
            const DeepCollectionEquality()
                .equals(other._itemUiModels, _itemUiModels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_itemUiModels));

  @JsonKey(ignore: true)
  @override
  _$$ReceiveAllAddressesUiModelCopyWith<_$ReceiveAllAddressesUiModel>
      get copyWith => __$$ReceiveAllAddressesUiModelCopyWithImpl<
          _$ReceiveAllAddressesUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)
        usedAddresses,
    required TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)
        allAddresses,
    required TResult Function() loading,
    required TResult Function(VoidCallback buttonAction) error,
  }) {
    return allAddresses(itemUiModels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
  }) {
    return allAddresses?.call(itemUiModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (allAddresses != null) {
      return allAddresses(itemUiModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveUsedAddressUiModel value) usedAddresses,
    required TResult Function(ReceiveAllAddressesUiModel value) allAddresses,
    required TResult Function(ReceiveAddressLoadingUiModel value) loading,
    required TResult Function(ReceiveAddressErrorUiModel value) error,
  }) {
    return allAddresses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
  }) {
    return allAddresses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (allAddresses != null) {
      return allAddresses(this);
    }
    return orElse();
  }
}

abstract class ReceiveAllAddressesUiModel implements ReceiveAddressUiModel {
  const factory ReceiveAllAddressesUiModel(
          {required final List<ReceiveAllAddressItemUiModel> itemUiModels}) =
      _$ReceiveAllAddressesUiModel;

  List<ReceiveAllAddressItemUiModel> get itemUiModels;
  @JsonKey(ignore: true)
  _$$ReceiveAllAddressesUiModelCopyWith<_$ReceiveAllAddressesUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveAddressLoadingUiModelCopyWith<$Res> {
  factory _$$ReceiveAddressLoadingUiModelCopyWith(
          _$ReceiveAddressLoadingUiModel value,
          $Res Function(_$ReceiveAddressLoadingUiModel) then) =
      __$$ReceiveAddressLoadingUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveAddressLoadingUiModelCopyWithImpl<$Res>
    extends _$ReceiveAddressUiModelCopyWithImpl<$Res>
    implements _$$ReceiveAddressLoadingUiModelCopyWith<$Res> {
  __$$ReceiveAddressLoadingUiModelCopyWithImpl(
      _$ReceiveAddressLoadingUiModel _value,
      $Res Function(_$ReceiveAddressLoadingUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveAddressLoadingUiModel));

  @override
  _$ReceiveAddressLoadingUiModel get _value =>
      super._value as _$ReceiveAddressLoadingUiModel;
}

/// @nodoc

class _$ReceiveAddressLoadingUiModel implements ReceiveAddressLoadingUiModel {
  const _$ReceiveAddressLoadingUiModel();

  @override
  String toString() {
    return 'ReceiveAddressUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAddressLoadingUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)
        usedAddresses,
    required TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)
        allAddresses,
    required TResult Function() loading,
    required TResult Function(VoidCallback buttonAction) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
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
    required TResult Function(ReceiveUsedAddressUiModel value) usedAddresses,
    required TResult Function(ReceiveAllAddressesUiModel value) allAddresses,
    required TResult Function(ReceiveAddressLoadingUiModel value) loading,
    required TResult Function(ReceiveAddressErrorUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReceiveAddressLoadingUiModel implements ReceiveAddressUiModel {
  const factory ReceiveAddressLoadingUiModel() = _$ReceiveAddressLoadingUiModel;
}

/// @nodoc
abstract class _$$ReceiveAddressErrorUiModelCopyWith<$Res> {
  factory _$$ReceiveAddressErrorUiModelCopyWith(
          _$ReceiveAddressErrorUiModel value,
          $Res Function(_$ReceiveAddressErrorUiModel) then) =
      __$$ReceiveAddressErrorUiModelCopyWithImpl<$Res>;
  $Res call({VoidCallback buttonAction});
}

/// @nodoc
class __$$ReceiveAddressErrorUiModelCopyWithImpl<$Res>
    extends _$ReceiveAddressUiModelCopyWithImpl<$Res>
    implements _$$ReceiveAddressErrorUiModelCopyWith<$Res> {
  __$$ReceiveAddressErrorUiModelCopyWithImpl(
      _$ReceiveAddressErrorUiModel _value,
      $Res Function(_$ReceiveAddressErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$ReceiveAddressErrorUiModel));

  @override
  _$ReceiveAddressErrorUiModel get _value =>
      super._value as _$ReceiveAddressErrorUiModel;

  @override
  $Res call({
    Object? buttonAction = freezed,
  }) {
    return _then(_$ReceiveAddressErrorUiModel(
      buttonAction: buttonAction == freezed
          ? _value.buttonAction
          : buttonAction // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ReceiveAddressErrorUiModel implements ReceiveAddressErrorUiModel {
  const _$ReceiveAddressErrorUiModel({required this.buttonAction});

  @override
  final VoidCallback buttonAction;

  @override
  String toString() {
    return 'ReceiveAddressUiModel.error(buttonAction: $buttonAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAddressErrorUiModel &&
            (identical(other.buttonAction, buttonAction) ||
                other.buttonAction == buttonAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buttonAction);

  @JsonKey(ignore: true)
  @override
  _$$ReceiveAddressErrorUiModelCopyWith<_$ReceiveAddressErrorUiModel>
      get copyWith => __$$ReceiveAddressErrorUiModelCopyWithImpl<
          _$ReceiveAddressErrorUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)
        usedAddresses,
    required TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)
        allAddresses,
    required TResult Function() loading,
    required TResult Function(VoidCallback buttonAction) error,
  }) {
    return error(buttonAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
  }) {
    return error?.call(buttonAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReceiveUsedAddressItemUiModel> itemUiModels)?
        usedAddresses,
    TResult Function(List<ReceiveAllAddressItemUiModel> itemUiModels)?
        allAddresses,
    TResult Function()? loading,
    TResult Function(VoidCallback buttonAction)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(buttonAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveUsedAddressUiModel value) usedAddresses,
    required TResult Function(ReceiveAllAddressesUiModel value) allAddresses,
    required TResult Function(ReceiveAddressLoadingUiModel value) loading,
    required TResult Function(ReceiveAddressErrorUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveUsedAddressUiModel value)? usedAddresses,
    TResult Function(ReceiveAllAddressesUiModel value)? allAddresses,
    TResult Function(ReceiveAddressLoadingUiModel value)? loading,
    TResult Function(ReceiveAddressErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReceiveAddressErrorUiModel implements ReceiveAddressUiModel {
  const factory ReceiveAddressErrorUiModel(
          {required final VoidCallback buttonAction}) =
      _$ReceiveAddressErrorUiModel;

  VoidCallback get buttonAction;
  @JsonKey(ignore: true)
  _$$ReceiveAddressErrorUiModelCopyWith<_$ReceiveAddressErrorUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiveUsedAddressItemUiModel {
  String get date => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  List<String> get addresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveUsedAddressItemUiModelCopyWith<ReceiveUsedAddressItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveUsedAddressItemUiModelCopyWith<$Res> {
  factory $ReceiveUsedAddressItemUiModelCopyWith(
          ReceiveUsedAddressItemUiModel value,
          $Res Function(ReceiveUsedAddressItemUiModel) then) =
      _$ReceiveUsedAddressItemUiModelCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String amount,
      String transactionId,
      List<String> addresses});
}

/// @nodoc
class _$ReceiveUsedAddressItemUiModelCopyWithImpl<$Res>
    implements $ReceiveUsedAddressItemUiModelCopyWith<$Res> {
  _$ReceiveUsedAddressItemUiModelCopyWithImpl(this._value, this._then);

  final ReceiveUsedAddressItemUiModel _value;
  // ignore: unused_field
  final $Res Function(ReceiveUsedAddressItemUiModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiveUsedAddressItemUiModelCopyWith<$Res>
    implements $ReceiveUsedAddressItemUiModelCopyWith<$Res> {
  factory _$$_ReceiveUsedAddressItemUiModelCopyWith(
          _$_ReceiveUsedAddressItemUiModel value,
          $Res Function(_$_ReceiveUsedAddressItemUiModel) then) =
      __$$_ReceiveUsedAddressItemUiModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String amount,
      String transactionId,
      List<String> addresses});
}

/// @nodoc
class __$$_ReceiveUsedAddressItemUiModelCopyWithImpl<$Res>
    extends _$ReceiveUsedAddressItemUiModelCopyWithImpl<$Res>
    implements _$$_ReceiveUsedAddressItemUiModelCopyWith<$Res> {
  __$$_ReceiveUsedAddressItemUiModelCopyWithImpl(
      _$_ReceiveUsedAddressItemUiModel _value,
      $Res Function(_$_ReceiveUsedAddressItemUiModel) _then)
      : super(_value, (v) => _then(v as _$_ReceiveUsedAddressItemUiModel));

  @override
  _$_ReceiveUsedAddressItemUiModel get _value =>
      super._value as _$_ReceiveUsedAddressItemUiModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_$_ReceiveUsedAddressItemUiModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: addresses == freezed
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ReceiveUsedAddressItemUiModel
    implements _ReceiveUsedAddressItemUiModel {
  const _$_ReceiveUsedAddressItemUiModel(
      {required this.date,
      required this.amount,
      required this.transactionId,
      required final List<String> addresses})
      : _addresses = addresses;

  @override
  final String date;
  @override
  final String amount;
  @override
  final String transactionId;
  final List<String> _addresses;
  @override
  List<String> get addresses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'ReceiveUsedAddressItemUiModel(date: $date, amount: $amount, transactionId: $transactionId, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveUsedAddressItemUiModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveUsedAddressItemUiModelCopyWith<_$_ReceiveUsedAddressItemUiModel>
      get copyWith => __$$_ReceiveUsedAddressItemUiModelCopyWithImpl<
          _$_ReceiveUsedAddressItemUiModel>(this, _$identity);
}

abstract class _ReceiveUsedAddressItemUiModel
    implements ReceiveUsedAddressItemUiModel {
  const factory _ReceiveUsedAddressItemUiModel(
          {required final String date,
          required final String amount,
          required final String transactionId,
          required final List<String> addresses}) =
      _$_ReceiveUsedAddressItemUiModel;

  @override
  String get date;
  @override
  String get amount;
  @override
  String get transactionId;
  @override
  List<String> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveUsedAddressItemUiModelCopyWith<_$_ReceiveUsedAddressItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiveAllAddressItemUiModel {
  int get txCount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressType => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveAllAddressItemUiModelCopyWith<ReceiveAllAddressItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAllAddressItemUiModelCopyWith<$Res> {
  factory $ReceiveAllAddressItemUiModelCopyWith(
          ReceiveAllAddressItemUiModel value,
          $Res Function(ReceiveAllAddressItemUiModel) then) =
      _$ReceiveAllAddressItemUiModelCopyWithImpl<$Res>;
  $Res call({int txCount, String address, String addressType, String date});
}

/// @nodoc
class _$ReceiveAllAddressItemUiModelCopyWithImpl<$Res>
    implements $ReceiveAllAddressItemUiModelCopyWith<$Res> {
  _$ReceiveAllAddressItemUiModelCopyWithImpl(this._value, this._then);

  final ReceiveAllAddressItemUiModel _value;
  // ignore: unused_field
  final $Res Function(ReceiveAllAddressItemUiModel) _then;

  @override
  $Res call({
    Object? txCount = freezed,
    Object? address = freezed,
    Object? addressType = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      txCount: txCount == freezed
          ? _value.txCount
          : txCount // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiveAllAddressItemUiModelCopyWith<$Res>
    implements $ReceiveAllAddressItemUiModelCopyWith<$Res> {
  factory _$$_ReceiveAllAddressItemUiModelCopyWith(
          _$_ReceiveAllAddressItemUiModel value,
          $Res Function(_$_ReceiveAllAddressItemUiModel) then) =
      __$$_ReceiveAllAddressItemUiModelCopyWithImpl<$Res>;
  @override
  $Res call({int txCount, String address, String addressType, String date});
}

/// @nodoc
class __$$_ReceiveAllAddressItemUiModelCopyWithImpl<$Res>
    extends _$ReceiveAllAddressItemUiModelCopyWithImpl<$Res>
    implements _$$_ReceiveAllAddressItemUiModelCopyWith<$Res> {
  __$$_ReceiveAllAddressItemUiModelCopyWithImpl(
      _$_ReceiveAllAddressItemUiModel _value,
      $Res Function(_$_ReceiveAllAddressItemUiModel) _then)
      : super(_value, (v) => _then(v as _$_ReceiveAllAddressItemUiModel));

  @override
  _$_ReceiveAllAddressItemUiModel get _value =>
      super._value as _$_ReceiveAllAddressItemUiModel;

  @override
  $Res call({
    Object? txCount = freezed,
    Object? address = freezed,
    Object? addressType = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ReceiveAllAddressItemUiModel(
      txCount: txCount == freezed
          ? _value.txCount
          : txCount // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReceiveAllAddressItemUiModel implements _ReceiveAllAddressItemUiModel {
  const _$_ReceiveAllAddressItemUiModel(
      {required this.txCount,
      required this.address,
      required this.addressType,
      required this.date});

  @override
  final int txCount;
  @override
  final String address;
  @override
  final String addressType;
  @override
  final String date;

  @override
  String toString() {
    return 'ReceiveAllAddressItemUiModel(txCount: $txCount, address: $address, addressType: $addressType, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveAllAddressItemUiModel &&
            const DeepCollectionEquality().equals(other.txCount, txCount) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.addressType, addressType) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(txCount),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(addressType),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiveAllAddressItemUiModelCopyWith<_$_ReceiveAllAddressItemUiModel>
      get copyWith => __$$_ReceiveAllAddressItemUiModelCopyWithImpl<
          _$_ReceiveAllAddressItemUiModel>(this, _$identity);
}

abstract class _ReceiveAllAddressItemUiModel
    implements ReceiveAllAddressItemUiModel {
  const factory _ReceiveAllAddressItemUiModel(
      {required final int txCount,
      required final String address,
      required final String addressType,
      required final String date}) = _$_ReceiveAllAddressItemUiModel;

  @override
  int get txCount;
  @override
  String get address;
  @override
  String get addressType;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveAllAddressItemUiModelCopyWith<_$_ReceiveAllAddressItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiveAddressChipsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() used,
    required TResult Function() all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? used,
    TResult Function()? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? used,
    TResult Function()? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveAddressChipsStateUsed value) used,
    required TResult Function(ReceiveAddressChipsStateAll value) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAddressChipsStateUsed value)? used,
    TResult Function(ReceiveAddressChipsStateAll value)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAddressChipsStateUsed value)? used,
    TResult Function(ReceiveAddressChipsStateAll value)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveAddressChipsStateCopyWith<$Res> {
  factory $ReceiveAddressChipsStateCopyWith(ReceiveAddressChipsState value,
          $Res Function(ReceiveAddressChipsState) then) =
      _$ReceiveAddressChipsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReceiveAddressChipsStateCopyWithImpl<$Res>
    implements $ReceiveAddressChipsStateCopyWith<$Res> {
  _$ReceiveAddressChipsStateCopyWithImpl(this._value, this._then);

  final ReceiveAddressChipsState _value;
  // ignore: unused_field
  final $Res Function(ReceiveAddressChipsState) _then;
}

/// @nodoc
abstract class _$$ReceiveAddressChipsStateUsedCopyWith<$Res> {
  factory _$$ReceiveAddressChipsStateUsedCopyWith(
          _$ReceiveAddressChipsStateUsed value,
          $Res Function(_$ReceiveAddressChipsStateUsed) then) =
      __$$ReceiveAddressChipsStateUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveAddressChipsStateUsedCopyWithImpl<$Res>
    extends _$ReceiveAddressChipsStateCopyWithImpl<$Res>
    implements _$$ReceiveAddressChipsStateUsedCopyWith<$Res> {
  __$$ReceiveAddressChipsStateUsedCopyWithImpl(
      _$ReceiveAddressChipsStateUsed _value,
      $Res Function(_$ReceiveAddressChipsStateUsed) _then)
      : super(_value, (v) => _then(v as _$ReceiveAddressChipsStateUsed));

  @override
  _$ReceiveAddressChipsStateUsed get _value =>
      super._value as _$ReceiveAddressChipsStateUsed;
}

/// @nodoc

class _$ReceiveAddressChipsStateUsed implements ReceiveAddressChipsStateUsed {
  const _$ReceiveAddressChipsStateUsed();

  @override
  String toString() {
    return 'ReceiveAddressChipsState.used()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAddressChipsStateUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() used,
    required TResult Function() all,
  }) {
    return used();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? used,
    TResult Function()? all,
  }) {
    return used?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? used,
    TResult Function()? all,
    required TResult orElse(),
  }) {
    if (used != null) {
      return used();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveAddressChipsStateUsed value) used,
    required TResult Function(ReceiveAddressChipsStateAll value) all,
  }) {
    return used(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAddressChipsStateUsed value)? used,
    TResult Function(ReceiveAddressChipsStateAll value)? all,
  }) {
    return used?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAddressChipsStateUsed value)? used,
    TResult Function(ReceiveAddressChipsStateAll value)? all,
    required TResult orElse(),
  }) {
    if (used != null) {
      return used(this);
    }
    return orElse();
  }
}

abstract class ReceiveAddressChipsStateUsed
    implements ReceiveAddressChipsState {
  const factory ReceiveAddressChipsStateUsed() = _$ReceiveAddressChipsStateUsed;
}

/// @nodoc
abstract class _$$ReceiveAddressChipsStateAllCopyWith<$Res> {
  factory _$$ReceiveAddressChipsStateAllCopyWith(
          _$ReceiveAddressChipsStateAll value,
          $Res Function(_$ReceiveAddressChipsStateAll) then) =
      __$$ReceiveAddressChipsStateAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveAddressChipsStateAllCopyWithImpl<$Res>
    extends _$ReceiveAddressChipsStateCopyWithImpl<$Res>
    implements _$$ReceiveAddressChipsStateAllCopyWith<$Res> {
  __$$ReceiveAddressChipsStateAllCopyWithImpl(
      _$ReceiveAddressChipsStateAll _value,
      $Res Function(_$ReceiveAddressChipsStateAll) _then)
      : super(_value, (v) => _then(v as _$ReceiveAddressChipsStateAll));

  @override
  _$ReceiveAddressChipsStateAll get _value =>
      super._value as _$ReceiveAddressChipsStateAll;
}

/// @nodoc

class _$ReceiveAddressChipsStateAll implements ReceiveAddressChipsStateAll {
  const _$ReceiveAddressChipsStateAll();

  @override
  String toString() {
    return 'ReceiveAddressChipsState.all()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveAddressChipsStateAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() used,
    required TResult Function() all,
  }) {
    return all();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? used,
    TResult Function()? all,
  }) {
    return all?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? used,
    TResult Function()? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiveAddressChipsStateUsed value) used,
    required TResult Function(ReceiveAddressChipsStateAll value) all,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReceiveAddressChipsStateUsed value)? used,
    TResult Function(ReceiveAddressChipsStateAll value)? all,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiveAddressChipsStateUsed value)? used,
    TResult Function(ReceiveAddressChipsStateAll value)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class ReceiveAddressChipsStateAll implements ReceiveAddressChipsState {
  const factory ReceiveAddressChipsStateAll() = _$ReceiveAddressChipsStateAll;
}

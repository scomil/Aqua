// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_transaction_details_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssetTransactionDetailsUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)
        success,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
    TResult Function()? loading,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsSuccessUiModel value)
        success,
    required TResult Function(AssetTransactionDetailsLoadingUiModel value)
        loading,
    required TResult Function(AssetTransactionDetailsErrorUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetTransactionDetailsUiModelCopyWith<$Res> {
  factory $AssetTransactionDetailsUiModelCopyWith(
          AssetTransactionDetailsUiModel value,
          $Res Function(AssetTransactionDetailsUiModel) then) =
      _$AssetTransactionDetailsUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetTransactionDetailsUiModelCopyWithImpl<$Res>
    implements $AssetTransactionDetailsUiModelCopyWith<$Res> {
  _$AssetTransactionDetailsUiModelCopyWithImpl(this._value, this._then);

  final AssetTransactionDetailsUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetTransactionDetailsUiModel) _then;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsSuccessUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsSuccessUiModelCopyWith(
          _$AssetTransactionDetailsSuccessUiModel value,
          $Res Function(_$AssetTransactionDetailsSuccessUiModel) then) =
      __$$AssetTransactionDetailsSuccessUiModelCopyWithImpl<$Res>;
  $Res call(
      {List<AssetTransactionDetailsItemUiModel> items,
      VoidCallback explorerCallback});
}

/// @nodoc
class __$$AssetTransactionDetailsSuccessUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsSuccessUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsSuccessUiModelCopyWithImpl(
      _$AssetTransactionDetailsSuccessUiModel _value,
      $Res Function(_$AssetTransactionDetailsSuccessUiModel) _then)
      : super(
            _value, (v) => _then(v as _$AssetTransactionDetailsSuccessUiModel));

  @override
  _$AssetTransactionDetailsSuccessUiModel get _value =>
      super._value as _$AssetTransactionDetailsSuccessUiModel;

  @override
  $Res call({
    Object? items = freezed,
    Object? explorerCallback = freezed,
  }) {
    return _then(_$AssetTransactionDetailsSuccessUiModel(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AssetTransactionDetailsItemUiModel>,
      explorerCallback: explorerCallback == freezed
          ? _value.explorerCallback
          : explorerCallback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AssetTransactionDetailsSuccessUiModel
    implements AssetTransactionDetailsSuccessUiModel {
  const _$AssetTransactionDetailsSuccessUiModel(
      {required final List<AssetTransactionDetailsItemUiModel> items,
      required this.explorerCallback})
      : _items = items;

  final List<AssetTransactionDetailsItemUiModel> _items;
  @override
  List<AssetTransactionDetailsItemUiModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final VoidCallback explorerCallback;

  @override
  String toString() {
    return 'AssetTransactionDetailsUiModel.success(items: $items, explorerCallback: $explorerCallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsSuccessUiModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.explorerCallback, explorerCallback) ||
                other.explorerCallback == explorerCallback));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), explorerCallback);

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionDetailsSuccessUiModelCopyWith<
          _$AssetTransactionDetailsSuccessUiModel>
      get copyWith => __$$AssetTransactionDetailsSuccessUiModelCopyWithImpl<
          _$AssetTransactionDetailsSuccessUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)
        success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return success(items, explorerCallback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return success?.call(items, explorerCallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items, explorerCallback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsSuccessUiModel value)
        success,
    required TResult Function(AssetTransactionDetailsLoadingUiModel value)
        loading,
    required TResult Function(AssetTransactionDetailsErrorUiModel value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsSuccessUiModel
    implements AssetTransactionDetailsUiModel {
  const factory AssetTransactionDetailsSuccessUiModel(
          {required final List<AssetTransactionDetailsItemUiModel> items,
          required final VoidCallback explorerCallback}) =
      _$AssetTransactionDetailsSuccessUiModel;

  List<AssetTransactionDetailsItemUiModel> get items;
  VoidCallback get explorerCallback;
  @JsonKey(ignore: true)
  _$$AssetTransactionDetailsSuccessUiModelCopyWith<
          _$AssetTransactionDetailsSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsLoadingUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsLoadingUiModelCopyWith(
          _$AssetTransactionDetailsLoadingUiModel value,
          $Res Function(_$AssetTransactionDetailsLoadingUiModel) then) =
      __$$AssetTransactionDetailsLoadingUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionDetailsLoadingUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsLoadingUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsLoadingUiModelCopyWithImpl(
      _$AssetTransactionDetailsLoadingUiModel _value,
      $Res Function(_$AssetTransactionDetailsLoadingUiModel) _then)
      : super(
            _value, (v) => _then(v as _$AssetTransactionDetailsLoadingUiModel));

  @override
  _$AssetTransactionDetailsLoadingUiModel get _value =>
      super._value as _$AssetTransactionDetailsLoadingUiModel;
}

/// @nodoc

class _$AssetTransactionDetailsLoadingUiModel
    implements AssetTransactionDetailsLoadingUiModel {
  const _$AssetTransactionDetailsLoadingUiModel();

  @override
  String toString() {
    return 'AssetTransactionDetailsUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsLoadingUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)
        success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
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
    required TResult Function(AssetTransactionDetailsSuccessUiModel value)
        success,
    required TResult Function(AssetTransactionDetailsLoadingUiModel value)
        loading,
    required TResult Function(AssetTransactionDetailsErrorUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsLoadingUiModel
    implements AssetTransactionDetailsUiModel {
  const factory AssetTransactionDetailsLoadingUiModel() =
      _$AssetTransactionDetailsLoadingUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsErrorUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsErrorUiModelCopyWith(
          _$AssetTransactionDetailsErrorUiModel value,
          $Res Function(_$AssetTransactionDetailsErrorUiModel) then) =
      __$$AssetTransactionDetailsErrorUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionDetailsErrorUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsErrorUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsErrorUiModelCopyWithImpl(
      _$AssetTransactionDetailsErrorUiModel _value,
      $Res Function(_$AssetTransactionDetailsErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$AssetTransactionDetailsErrorUiModel));

  @override
  _$AssetTransactionDetailsErrorUiModel get _value =>
      super._value as _$AssetTransactionDetailsErrorUiModel;
}

/// @nodoc

class _$AssetTransactionDetailsErrorUiModel
    implements AssetTransactionDetailsErrorUiModel {
  const _$AssetTransactionDetailsErrorUiModel();

  @override
  String toString() {
    return 'AssetTransactionDetailsUiModel.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsErrorUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)
        success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetTransactionDetailsItemUiModel> items,
            VoidCallback explorerCallback)?
        success,
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
    required TResult Function(AssetTransactionDetailsSuccessUiModel value)
        success,
    required TResult Function(AssetTransactionDetailsLoadingUiModel value)
        loading,
    required TResult Function(AssetTransactionDetailsErrorUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsSuccessUiModel value)? success,
    TResult Function(AssetTransactionDetailsLoadingUiModel value)? loading,
    TResult Function(AssetTransactionDetailsErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsErrorUiModel
    implements AssetTransactionDetailsUiModel {
  const factory AssetTransactionDetailsErrorUiModel() =
      _$AssetTransactionDetailsErrorUiModel;
}

/// @nodoc
mixin _$AssetTransactionDetailsItemUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, bool showPendingIndicator, String date)
        header,
    required TResult Function(String title, String value) data,
    required TResult Function(String? notes, VoidCallback onTap) notes,
    required TResult Function() divider,
    required TResult Function(String title, String value, VoidCallback callback)
        copyableData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsHeaderItemUiModel value)
        header,
    required TResult Function(AssetTransactionDetailsDataItemUiModel value)
        data,
    required TResult Function(AssetTransactionDetailsNotesItemUiModel value)
        notes,
    required TResult Function(AssetTransactionDetailsDividerItemUiModel value)
        divider,
    required TResult Function(AssetTransactionDetailsCopyableItemUiModel value)
        copyableData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetTransactionDetailsItemUiModelCopyWith<$Res> {
  factory $AssetTransactionDetailsItemUiModelCopyWith(
          AssetTransactionDetailsItemUiModel value,
          $Res Function(AssetTransactionDetailsItemUiModel) then) =
      _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>
    implements $AssetTransactionDetailsItemUiModelCopyWith<$Res> {
  _$AssetTransactionDetailsItemUiModelCopyWithImpl(this._value, this._then);

  final AssetTransactionDetailsItemUiModel _value;
  // ignore: unused_field
  final $Res Function(AssetTransactionDetailsItemUiModel) _then;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsHeaderItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsHeaderItemUiModelCopyWith(
          _$AssetTransactionDetailsHeaderItemUiModel value,
          $Res Function(_$AssetTransactionDetailsHeaderItemUiModel) then) =
      __$$AssetTransactionDetailsHeaderItemUiModelCopyWithImpl<$Res>;
  $Res call({String type, bool showPendingIndicator, String date});
}

/// @nodoc
class __$$AssetTransactionDetailsHeaderItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsHeaderItemUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsHeaderItemUiModelCopyWithImpl(
      _$AssetTransactionDetailsHeaderItemUiModel _value,
      $Res Function(_$AssetTransactionDetailsHeaderItemUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionDetailsHeaderItemUiModel));

  @override
  _$AssetTransactionDetailsHeaderItemUiModel get _value =>
      super._value as _$AssetTransactionDetailsHeaderItemUiModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? showPendingIndicator = freezed,
    Object? date = freezed,
  }) {
    return _then(_$AssetTransactionDetailsHeaderItemUiModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      showPendingIndicator: showPendingIndicator == freezed
          ? _value.showPendingIndicator
          : showPendingIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetTransactionDetailsHeaderItemUiModel
    implements AssetTransactionDetailsHeaderItemUiModel {
  const _$AssetTransactionDetailsHeaderItemUiModel(
      {required this.type,
      required this.showPendingIndicator,
      required this.date});

  @override
  final String type;
  @override
  final bool showPendingIndicator;
  @override
  final String date;

  @override
  String toString() {
    return 'AssetTransactionDetailsItemUiModel.header(type: $type, showPendingIndicator: $showPendingIndicator, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsHeaderItemUiModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.showPendingIndicator, showPendingIndicator) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(showPendingIndicator),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionDetailsHeaderItemUiModelCopyWith<
          _$AssetTransactionDetailsHeaderItemUiModel>
      get copyWith => __$$AssetTransactionDetailsHeaderItemUiModelCopyWithImpl<
          _$AssetTransactionDetailsHeaderItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, bool showPendingIndicator, String date)
        header,
    required TResult Function(String title, String value) data,
    required TResult Function(String? notes, VoidCallback onTap) notes,
    required TResult Function() divider,
    required TResult Function(String title, String value, VoidCallback callback)
        copyableData,
  }) {
    return header(type, showPendingIndicator, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
  }) {
    return header?.call(type, showPendingIndicator, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(type, showPendingIndicator, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsHeaderItemUiModel value)
        header,
    required TResult Function(AssetTransactionDetailsDataItemUiModel value)
        data,
    required TResult Function(AssetTransactionDetailsNotesItemUiModel value)
        notes,
    required TResult Function(AssetTransactionDetailsDividerItemUiModel value)
        divider,
    required TResult Function(AssetTransactionDetailsCopyableItemUiModel value)
        copyableData,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsHeaderItemUiModel
    implements AssetTransactionDetailsItemUiModel {
  const factory AssetTransactionDetailsHeaderItemUiModel(
      {required final String type,
      required final bool showPendingIndicator,
      required final String date}) = _$AssetTransactionDetailsHeaderItemUiModel;

  String get type;
  bool get showPendingIndicator;
  String get date;
  @JsonKey(ignore: true)
  _$$AssetTransactionDetailsHeaderItemUiModelCopyWith<
          _$AssetTransactionDetailsHeaderItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsDataItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsDataItemUiModelCopyWith(
          _$AssetTransactionDetailsDataItemUiModel value,
          $Res Function(_$AssetTransactionDetailsDataItemUiModel) then) =
      __$$AssetTransactionDetailsDataItemUiModelCopyWithImpl<$Res>;
  $Res call({String title, String value});
}

/// @nodoc
class __$$AssetTransactionDetailsDataItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsDataItemUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsDataItemUiModelCopyWithImpl(
      _$AssetTransactionDetailsDataItemUiModel _value,
      $Res Function(_$AssetTransactionDetailsDataItemUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionDetailsDataItemUiModel));

  @override
  _$AssetTransactionDetailsDataItemUiModel get _value =>
      super._value as _$AssetTransactionDetailsDataItemUiModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_$AssetTransactionDetailsDataItemUiModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetTransactionDetailsDataItemUiModel
    implements AssetTransactionDetailsDataItemUiModel {
  const _$AssetTransactionDetailsDataItemUiModel(
      {required this.title, required this.value});

  @override
  final String title;
  @override
  final String value;

  @override
  String toString() {
    return 'AssetTransactionDetailsItemUiModel.data(title: $title, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsDataItemUiModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionDetailsDataItemUiModelCopyWith<
          _$AssetTransactionDetailsDataItemUiModel>
      get copyWith => __$$AssetTransactionDetailsDataItemUiModelCopyWithImpl<
          _$AssetTransactionDetailsDataItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, bool showPendingIndicator, String date)
        header,
    required TResult Function(String title, String value) data,
    required TResult Function(String? notes, VoidCallback onTap) notes,
    required TResult Function() divider,
    required TResult Function(String title, String value, VoidCallback callback)
        copyableData,
  }) {
    return data(title, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
  }) {
    return data?.call(title, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(title, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsHeaderItemUiModel value)
        header,
    required TResult Function(AssetTransactionDetailsDataItemUiModel value)
        data,
    required TResult Function(AssetTransactionDetailsNotesItemUiModel value)
        notes,
    required TResult Function(AssetTransactionDetailsDividerItemUiModel value)
        divider,
    required TResult Function(AssetTransactionDetailsCopyableItemUiModel value)
        copyableData,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsDataItemUiModel
    implements AssetTransactionDetailsItemUiModel {
  const factory AssetTransactionDetailsDataItemUiModel(
      {required final String title,
      required final String value}) = _$AssetTransactionDetailsDataItemUiModel;

  String get title;
  String get value;
  @JsonKey(ignore: true)
  _$$AssetTransactionDetailsDataItemUiModelCopyWith<
          _$AssetTransactionDetailsDataItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsNotesItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsNotesItemUiModelCopyWith(
          _$AssetTransactionDetailsNotesItemUiModel value,
          $Res Function(_$AssetTransactionDetailsNotesItemUiModel) then) =
      __$$AssetTransactionDetailsNotesItemUiModelCopyWithImpl<$Res>;
  $Res call({String? notes, VoidCallback onTap});
}

/// @nodoc
class __$$AssetTransactionDetailsNotesItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsNotesItemUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsNotesItemUiModelCopyWithImpl(
      _$AssetTransactionDetailsNotesItemUiModel _value,
      $Res Function(_$AssetTransactionDetailsNotesItemUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionDetailsNotesItemUiModel));

  @override
  _$AssetTransactionDetailsNotesItemUiModel get _value =>
      super._value as _$AssetTransactionDetailsNotesItemUiModel;

  @override
  $Res call({
    Object? notes = freezed,
    Object? onTap = freezed,
  }) {
    return _then(_$AssetTransactionDetailsNotesItemUiModel(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      onTap: onTap == freezed
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AssetTransactionDetailsNotesItemUiModel
    implements AssetTransactionDetailsNotesItemUiModel {
  const _$AssetTransactionDetailsNotesItemUiModel(
      {required this.notes, required this.onTap});

  @override
  final String? notes;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'AssetTransactionDetailsItemUiModel.notes(notes: $notes, onTap: $onTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsNotesItemUiModel &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notes), onTap);

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionDetailsNotesItemUiModelCopyWith<
          _$AssetTransactionDetailsNotesItemUiModel>
      get copyWith => __$$AssetTransactionDetailsNotesItemUiModelCopyWithImpl<
          _$AssetTransactionDetailsNotesItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, bool showPendingIndicator, String date)
        header,
    required TResult Function(String title, String value) data,
    required TResult Function(String? notes, VoidCallback onTap) notes,
    required TResult Function() divider,
    required TResult Function(String title, String value, VoidCallback callback)
        copyableData,
  }) {
    return notes(this.notes, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
  }) {
    return notes?.call(this.notes, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(this.notes, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsHeaderItemUiModel value)
        header,
    required TResult Function(AssetTransactionDetailsDataItemUiModel value)
        data,
    required TResult Function(AssetTransactionDetailsNotesItemUiModel value)
        notes,
    required TResult Function(AssetTransactionDetailsDividerItemUiModel value)
        divider,
    required TResult Function(AssetTransactionDetailsCopyableItemUiModel value)
        copyableData,
  }) {
    return notes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
  }) {
    return notes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsNotesItemUiModel
    implements AssetTransactionDetailsItemUiModel {
  const factory AssetTransactionDetailsNotesItemUiModel(
          {required final String? notes, required final VoidCallback onTap}) =
      _$AssetTransactionDetailsNotesItemUiModel;

  String? get notes;
  VoidCallback get onTap;
  @JsonKey(ignore: true)
  _$$AssetTransactionDetailsNotesItemUiModelCopyWith<
          _$AssetTransactionDetailsNotesItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsDividerItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsDividerItemUiModelCopyWith(
          _$AssetTransactionDetailsDividerItemUiModel value,
          $Res Function(_$AssetTransactionDetailsDividerItemUiModel) then) =
      __$$AssetTransactionDetailsDividerItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetTransactionDetailsDividerItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsDividerItemUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsDividerItemUiModelCopyWithImpl(
      _$AssetTransactionDetailsDividerItemUiModel _value,
      $Res Function(_$AssetTransactionDetailsDividerItemUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionDetailsDividerItemUiModel));

  @override
  _$AssetTransactionDetailsDividerItemUiModel get _value =>
      super._value as _$AssetTransactionDetailsDividerItemUiModel;
}

/// @nodoc

class _$AssetTransactionDetailsDividerItemUiModel
    implements AssetTransactionDetailsDividerItemUiModel {
  const _$AssetTransactionDetailsDividerItemUiModel();

  @override
  String toString() {
    return 'AssetTransactionDetailsItemUiModel.divider()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsDividerItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, bool showPendingIndicator, String date)
        header,
    required TResult Function(String title, String value) data,
    required TResult Function(String? notes, VoidCallback onTap) notes,
    required TResult Function() divider,
    required TResult Function(String title, String value, VoidCallback callback)
        copyableData,
  }) {
    return divider();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
  }) {
    return divider?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
    required TResult orElse(),
  }) {
    if (divider != null) {
      return divider();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsHeaderItemUiModel value)
        header,
    required TResult Function(AssetTransactionDetailsDataItemUiModel value)
        data,
    required TResult Function(AssetTransactionDetailsNotesItemUiModel value)
        notes,
    required TResult Function(AssetTransactionDetailsDividerItemUiModel value)
        divider,
    required TResult Function(AssetTransactionDetailsCopyableItemUiModel value)
        copyableData,
  }) {
    return divider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
  }) {
    return divider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
    required TResult orElse(),
  }) {
    if (divider != null) {
      return divider(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsDividerItemUiModel
    implements AssetTransactionDetailsItemUiModel {
  const factory AssetTransactionDetailsDividerItemUiModel() =
      _$AssetTransactionDetailsDividerItemUiModel;
}

/// @nodoc
abstract class _$$AssetTransactionDetailsCopyableItemUiModelCopyWith<$Res> {
  factory _$$AssetTransactionDetailsCopyableItemUiModelCopyWith(
          _$AssetTransactionDetailsCopyableItemUiModel value,
          $Res Function(_$AssetTransactionDetailsCopyableItemUiModel) then) =
      __$$AssetTransactionDetailsCopyableItemUiModelCopyWithImpl<$Res>;
  $Res call({String title, String value, VoidCallback callback});
}

/// @nodoc
class __$$AssetTransactionDetailsCopyableItemUiModelCopyWithImpl<$Res>
    extends _$AssetTransactionDetailsItemUiModelCopyWithImpl<$Res>
    implements _$$AssetTransactionDetailsCopyableItemUiModelCopyWith<$Res> {
  __$$AssetTransactionDetailsCopyableItemUiModelCopyWithImpl(
      _$AssetTransactionDetailsCopyableItemUiModel _value,
      $Res Function(_$AssetTransactionDetailsCopyableItemUiModel) _then)
      : super(_value,
            (v) => _then(v as _$AssetTransactionDetailsCopyableItemUiModel));

  @override
  _$AssetTransactionDetailsCopyableItemUiModel get _value =>
      super._value as _$AssetTransactionDetailsCopyableItemUiModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
    Object? callback = freezed,
  }) {
    return _then(_$AssetTransactionDetailsCopyableItemUiModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AssetTransactionDetailsCopyableItemUiModel
    implements AssetTransactionDetailsCopyableItemUiModel {
  const _$AssetTransactionDetailsCopyableItemUiModel(
      {required this.title, required this.value, required this.callback});

  @override
  final String title;
  @override
  final String value;
  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'AssetTransactionDetailsItemUiModel.copyableData(title: $title, value: $value, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTransactionDetailsCopyableItemUiModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(value),
      callback);

  @JsonKey(ignore: true)
  @override
  _$$AssetTransactionDetailsCopyableItemUiModelCopyWith<
          _$AssetTransactionDetailsCopyableItemUiModel>
      get copyWith =>
          __$$AssetTransactionDetailsCopyableItemUiModelCopyWithImpl<
              _$AssetTransactionDetailsCopyableItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, bool showPendingIndicator, String date)
        header,
    required TResult Function(String title, String value) data,
    required TResult Function(String? notes, VoidCallback onTap) notes,
    required TResult Function() divider,
    required TResult Function(String title, String value, VoidCallback callback)
        copyableData,
  }) {
    return copyableData(title, value, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
  }) {
    return copyableData?.call(title, value, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool showPendingIndicator, String date)?
        header,
    TResult Function(String title, String value)? data,
    TResult Function(String? notes, VoidCallback onTap)? notes,
    TResult Function()? divider,
    TResult Function(String title, String value, VoidCallback callback)?
        copyableData,
    required TResult orElse(),
  }) {
    if (copyableData != null) {
      return copyableData(title, value, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetTransactionDetailsHeaderItemUiModel value)
        header,
    required TResult Function(AssetTransactionDetailsDataItemUiModel value)
        data,
    required TResult Function(AssetTransactionDetailsNotesItemUiModel value)
        notes,
    required TResult Function(AssetTransactionDetailsDividerItemUiModel value)
        divider,
    required TResult Function(AssetTransactionDetailsCopyableItemUiModel value)
        copyableData,
  }) {
    return copyableData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
  }) {
    return copyableData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetTransactionDetailsHeaderItemUiModel value)? header,
    TResult Function(AssetTransactionDetailsDataItemUiModel value)? data,
    TResult Function(AssetTransactionDetailsNotesItemUiModel value)? notes,
    TResult Function(AssetTransactionDetailsDividerItemUiModel value)? divider,
    TResult Function(AssetTransactionDetailsCopyableItemUiModel value)?
        copyableData,
    required TResult orElse(),
  }) {
    if (copyableData != null) {
      return copyableData(this);
    }
    return orElse();
  }
}

abstract class AssetTransactionDetailsCopyableItemUiModel
    implements AssetTransactionDetailsItemUiModel {
  const factory AssetTransactionDetailsCopyableItemUiModel(
          {required final String title,
          required final String value,
          required final VoidCallback callback}) =
      _$AssetTransactionDetailsCopyableItemUiModel;

  String get title;
  String get value;
  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$AssetTransactionDetailsCopyableItemUiModelCopyWith<
          _$AssetTransactionDetailsCopyableItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

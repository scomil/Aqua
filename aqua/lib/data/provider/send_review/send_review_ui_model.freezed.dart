// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_review_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendReviewUiModel {
  List<SendReviewItemUiModel> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SendReviewItemUiModel> items) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SendReviewItemUiModel> items)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SendReviewItemUiModel> items)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessUiModel value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessUiModel value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessUiModel value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendReviewUiModelCopyWith<SendReviewUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendReviewUiModelCopyWith<$Res> {
  factory $SendReviewUiModelCopyWith(
          SendReviewUiModel value, $Res Function(SendReviewUiModel) then) =
      _$SendReviewUiModelCopyWithImpl<$Res>;
  $Res call({List<SendReviewItemUiModel> items});
}

/// @nodoc
class _$SendReviewUiModelCopyWithImpl<$Res>
    implements $SendReviewUiModelCopyWith<$Res> {
  _$SendReviewUiModelCopyWithImpl(this._value, this._then);

  final SendReviewUiModel _value;
  // ignore: unused_field
  final $Res Function(SendReviewUiModel) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SendReviewItemUiModel>,
    ));
  }
}

/// @nodoc
abstract class _$$SendReviewSuccessUiModelCopyWith<$Res>
    implements $SendReviewUiModelCopyWith<$Res> {
  factory _$$SendReviewSuccessUiModelCopyWith(_$SendReviewSuccessUiModel value,
          $Res Function(_$SendReviewSuccessUiModel) then) =
      __$$SendReviewSuccessUiModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SendReviewItemUiModel> items});
}

/// @nodoc
class __$$SendReviewSuccessUiModelCopyWithImpl<$Res>
    extends _$SendReviewUiModelCopyWithImpl<$Res>
    implements _$$SendReviewSuccessUiModelCopyWith<$Res> {
  __$$SendReviewSuccessUiModelCopyWithImpl(_$SendReviewSuccessUiModel _value,
      $Res Function(_$SendReviewSuccessUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewSuccessUiModel));

  @override
  _$SendReviewSuccessUiModel get _value =>
      super._value as _$SendReviewSuccessUiModel;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$SendReviewSuccessUiModel(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SendReviewItemUiModel>,
    ));
  }
}

/// @nodoc

class _$SendReviewSuccessUiModel implements SendReviewSuccessUiModel {
  const _$SendReviewSuccessUiModel(
      {required final List<SendReviewItemUiModel> items})
      : _items = items;

  final List<SendReviewItemUiModel> _items;
  @override
  List<SendReviewItemUiModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SendReviewUiModel.success(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewSuccessUiModel &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewSuccessUiModelCopyWith<_$SendReviewSuccessUiModel>
      get copyWith =>
          __$$SendReviewSuccessUiModelCopyWithImpl<_$SendReviewSuccessUiModel>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SendReviewItemUiModel> items) success,
  }) {
    return success(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SendReviewItemUiModel> items)? success,
  }) {
    return success?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SendReviewItemUiModel> items)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessUiModel value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessUiModel value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessUiModel value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendReviewSuccessUiModel implements SendReviewUiModel {
  const factory SendReviewSuccessUiModel(
          {required final List<SendReviewItemUiModel> items}) =
      _$SendReviewSuccessUiModel;

  @override
  List<SendReviewItemUiModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$SendReviewSuccessUiModelCopyWith<_$SendReviewSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendReviewItemUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount, String address) details,
    required TResult Function() memo,
    required TResult Function() spacer,
    required TResult Function() button,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewDetailsItemUiModel value) details,
    required TResult Function(SendReviewMemoItemUiModel value) memo,
    required TResult Function(SendReviewSpacerItemUiModel value) spacer,
    required TResult Function(SendReviewButtonItemUiModel value) button,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendReviewItemUiModelCopyWith<$Res> {
  factory $SendReviewItemUiModelCopyWith(SendReviewItemUiModel value,
          $Res Function(SendReviewItemUiModel) then) =
      _$SendReviewItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendReviewItemUiModelCopyWithImpl<$Res>
    implements $SendReviewItemUiModelCopyWith<$Res> {
  _$SendReviewItemUiModelCopyWithImpl(this._value, this._then);

  final SendReviewItemUiModel _value;
  // ignore: unused_field
  final $Res Function(SendReviewItemUiModel) _then;
}

/// @nodoc
abstract class _$$SendReviewDetailsItemUiModelCopyWith<$Res> {
  factory _$$SendReviewDetailsItemUiModelCopyWith(
          _$SendReviewDetailsItemUiModel value,
          $Res Function(_$SendReviewDetailsItemUiModel) then) =
      __$$SendReviewDetailsItemUiModelCopyWithImpl<$Res>;
  $Res call({String amount, String address});
}

/// @nodoc
class __$$SendReviewDetailsItemUiModelCopyWithImpl<$Res>
    extends _$SendReviewItemUiModelCopyWithImpl<$Res>
    implements _$$SendReviewDetailsItemUiModelCopyWith<$Res> {
  __$$SendReviewDetailsItemUiModelCopyWithImpl(
      _$SendReviewDetailsItemUiModel _value,
      $Res Function(_$SendReviewDetailsItemUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewDetailsItemUiModel));

  @override
  _$SendReviewDetailsItemUiModel get _value =>
      super._value as _$SendReviewDetailsItemUiModel;

  @override
  $Res call({
    Object? amount = freezed,
    Object? address = freezed,
  }) {
    return _then(_$SendReviewDetailsItemUiModel(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewDetailsItemUiModel implements SendReviewDetailsItemUiModel {
  const _$SendReviewDetailsItemUiModel(
      {required this.amount, required this.address});

  @override
  final String amount;
  @override
  final String address;

  @override
  String toString() {
    return 'SendReviewItemUiModel.details(amount: $amount, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewDetailsItemUiModel &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewDetailsItemUiModelCopyWith<_$SendReviewDetailsItemUiModel>
      get copyWith => __$$SendReviewDetailsItemUiModelCopyWithImpl<
          _$SendReviewDetailsItemUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount, String address) details,
    required TResult Function() memo,
    required TResult Function() spacer,
    required TResult Function() button,
  }) {
    return details(amount, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
  }) {
    return details?.call(amount, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(amount, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewDetailsItemUiModel value) details,
    required TResult Function(SendReviewMemoItemUiModel value) memo,
    required TResult Function(SendReviewSpacerItemUiModel value) spacer,
    required TResult Function(SendReviewButtonItemUiModel value) button,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class SendReviewDetailsItemUiModel implements SendReviewItemUiModel {
  const factory SendReviewDetailsItemUiModel(
      {required final String amount,
      required final String address}) = _$SendReviewDetailsItemUiModel;

  String get amount;
  String get address;
  @JsonKey(ignore: true)
  _$$SendReviewDetailsItemUiModelCopyWith<_$SendReviewDetailsItemUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendReviewMemoItemUiModelCopyWith<$Res> {
  factory _$$SendReviewMemoItemUiModelCopyWith(
          _$SendReviewMemoItemUiModel value,
          $Res Function(_$SendReviewMemoItemUiModel) then) =
      __$$SendReviewMemoItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendReviewMemoItemUiModelCopyWithImpl<$Res>
    extends _$SendReviewItemUiModelCopyWithImpl<$Res>
    implements _$$SendReviewMemoItemUiModelCopyWith<$Res> {
  __$$SendReviewMemoItemUiModelCopyWithImpl(_$SendReviewMemoItemUiModel _value,
      $Res Function(_$SendReviewMemoItemUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewMemoItemUiModel));

  @override
  _$SendReviewMemoItemUiModel get _value =>
      super._value as _$SendReviewMemoItemUiModel;
}

/// @nodoc

class _$SendReviewMemoItemUiModel implements SendReviewMemoItemUiModel {
  const _$SendReviewMemoItemUiModel();

  @override
  String toString() {
    return 'SendReviewItemUiModel.memo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewMemoItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount, String address) details,
    required TResult Function() memo,
    required TResult Function() spacer,
    required TResult Function() button,
  }) {
    return memo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
  }) {
    return memo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
    required TResult orElse(),
  }) {
    if (memo != null) {
      return memo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewDetailsItemUiModel value) details,
    required TResult Function(SendReviewMemoItemUiModel value) memo,
    required TResult Function(SendReviewSpacerItemUiModel value) spacer,
    required TResult Function(SendReviewButtonItemUiModel value) button,
  }) {
    return memo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
  }) {
    return memo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
    required TResult orElse(),
  }) {
    if (memo != null) {
      return memo(this);
    }
    return orElse();
  }
}

abstract class SendReviewMemoItemUiModel implements SendReviewItemUiModel {
  const factory SendReviewMemoItemUiModel() = _$SendReviewMemoItemUiModel;
}

/// @nodoc
abstract class _$$SendReviewSpacerItemUiModelCopyWith<$Res> {
  factory _$$SendReviewSpacerItemUiModelCopyWith(
          _$SendReviewSpacerItemUiModel value,
          $Res Function(_$SendReviewSpacerItemUiModel) then) =
      __$$SendReviewSpacerItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendReviewSpacerItemUiModelCopyWithImpl<$Res>
    extends _$SendReviewItemUiModelCopyWithImpl<$Res>
    implements _$$SendReviewSpacerItemUiModelCopyWith<$Res> {
  __$$SendReviewSpacerItemUiModelCopyWithImpl(
      _$SendReviewSpacerItemUiModel _value,
      $Res Function(_$SendReviewSpacerItemUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewSpacerItemUiModel));

  @override
  _$SendReviewSpacerItemUiModel get _value =>
      super._value as _$SendReviewSpacerItemUiModel;
}

/// @nodoc

class _$SendReviewSpacerItemUiModel implements SendReviewSpacerItemUiModel {
  const _$SendReviewSpacerItemUiModel();

  @override
  String toString() {
    return 'SendReviewItemUiModel.spacer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewSpacerItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount, String address) details,
    required TResult Function() memo,
    required TResult Function() spacer,
    required TResult Function() button,
  }) {
    return spacer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
  }) {
    return spacer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
    required TResult orElse(),
  }) {
    if (spacer != null) {
      return spacer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewDetailsItemUiModel value) details,
    required TResult Function(SendReviewMemoItemUiModel value) memo,
    required TResult Function(SendReviewSpacerItemUiModel value) spacer,
    required TResult Function(SendReviewButtonItemUiModel value) button,
  }) {
    return spacer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
  }) {
    return spacer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
    required TResult orElse(),
  }) {
    if (spacer != null) {
      return spacer(this);
    }
    return orElse();
  }
}

abstract class SendReviewSpacerItemUiModel implements SendReviewItemUiModel {
  const factory SendReviewSpacerItemUiModel() = _$SendReviewSpacerItemUiModel;
}

/// @nodoc
abstract class _$$SendReviewButtonItemUiModelCopyWith<$Res> {
  factory _$$SendReviewButtonItemUiModelCopyWith(
          _$SendReviewButtonItemUiModel value,
          $Res Function(_$SendReviewButtonItemUiModel) then) =
      __$$SendReviewButtonItemUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendReviewButtonItemUiModelCopyWithImpl<$Res>
    extends _$SendReviewItemUiModelCopyWithImpl<$Res>
    implements _$$SendReviewButtonItemUiModelCopyWith<$Res> {
  __$$SendReviewButtonItemUiModelCopyWithImpl(
      _$SendReviewButtonItemUiModel _value,
      $Res Function(_$SendReviewButtonItemUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewButtonItemUiModel));

  @override
  _$SendReviewButtonItemUiModel get _value =>
      super._value as _$SendReviewButtonItemUiModel;
}

/// @nodoc

class _$SendReviewButtonItemUiModel implements SendReviewButtonItemUiModel {
  const _$SendReviewButtonItemUiModel();

  @override
  String toString() {
    return 'SendReviewItemUiModel.button()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewButtonItemUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount, String address) details,
    required TResult Function() memo,
    required TResult Function() spacer,
    required TResult Function() button,
  }) {
    return button();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
  }) {
    return button?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String address)? details,
    TResult Function()? memo,
    TResult Function()? spacer,
    TResult Function()? button,
    required TResult orElse(),
  }) {
    if (button != null) {
      return button();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewDetailsItemUiModel value) details,
    required TResult Function(SendReviewMemoItemUiModel value) memo,
    required TResult Function(SendReviewSpacerItemUiModel value) spacer,
    required TResult Function(SendReviewButtonItemUiModel value) button,
  }) {
    return button(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
  }) {
    return button?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewDetailsItemUiModel value)? details,
    TResult Function(SendReviewMemoItemUiModel value)? memo,
    TResult Function(SendReviewSpacerItemUiModel value)? spacer,
    TResult Function(SendReviewButtonItemUiModel value)? button,
    required TResult orElse(),
  }) {
    if (button != null) {
      return button(this);
    }
    return orElse();
  }
}

abstract class SendReviewButtonItemUiModel implements SendReviewItemUiModel {
  const factory SendReviewButtonItemUiModel() = _$SendReviewButtonItemUiModel;
}

/// @nodoc
mixin _$SendReviewFeeUiModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) success,
    required TResult Function() loading,
    required TResult Function(String title) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewFeeSuccessUiModel value) success,
    required TResult Function(SendReviewFeeLoadingUiModel value) loading,
    required TResult Function(SendReviewFeeErrorUiModel value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendReviewFeeUiModelCopyWith<$Res> {
  factory $SendReviewFeeUiModelCopyWith(SendReviewFeeUiModel value,
          $Res Function(SendReviewFeeUiModel) then) =
      _$SendReviewFeeUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendReviewFeeUiModelCopyWithImpl<$Res>
    implements $SendReviewFeeUiModelCopyWith<$Res> {
  _$SendReviewFeeUiModelCopyWithImpl(this._value, this._then);

  final SendReviewFeeUiModel _value;
  // ignore: unused_field
  final $Res Function(SendReviewFeeUiModel) _then;
}

/// @nodoc
abstract class _$$SendReviewFeeSuccessUiModelCopyWith<$Res> {
  factory _$$SendReviewFeeSuccessUiModelCopyWith(
          _$SendReviewFeeSuccessUiModel value,
          $Res Function(_$SendReviewFeeSuccessUiModel) then) =
      __$$SendReviewFeeSuccessUiModelCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$SendReviewFeeSuccessUiModelCopyWithImpl<$Res>
    extends _$SendReviewFeeUiModelCopyWithImpl<$Res>
    implements _$$SendReviewFeeSuccessUiModelCopyWith<$Res> {
  __$$SendReviewFeeSuccessUiModelCopyWithImpl(
      _$SendReviewFeeSuccessUiModel _value,
      $Res Function(_$SendReviewFeeSuccessUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewFeeSuccessUiModel));

  @override
  _$SendReviewFeeSuccessUiModel get _value =>
      super._value as _$SendReviewFeeSuccessUiModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SendReviewFeeSuccessUiModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewFeeSuccessUiModel implements SendReviewFeeSuccessUiModel {
  const _$SendReviewFeeSuccessUiModel({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SendReviewFeeUiModel.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewFeeSuccessUiModel &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewFeeSuccessUiModelCopyWith<_$SendReviewFeeSuccessUiModel>
      get copyWith => __$$SendReviewFeeSuccessUiModelCopyWithImpl<
          _$SendReviewFeeSuccessUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) success,
    required TResult Function() loading,
    required TResult Function(String title) error,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewFeeSuccessUiModel value) success,
    required TResult Function(SendReviewFeeLoadingUiModel value) loading,
    required TResult Function(SendReviewFeeErrorUiModel value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendReviewFeeSuccessUiModel implements SendReviewFeeUiModel {
  const factory SendReviewFeeSuccessUiModel({required final String value}) =
      _$SendReviewFeeSuccessUiModel;

  String get value;
  @JsonKey(ignore: true)
  _$$SendReviewFeeSuccessUiModelCopyWith<_$SendReviewFeeSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendReviewFeeLoadingUiModelCopyWith<$Res> {
  factory _$$SendReviewFeeLoadingUiModelCopyWith(
          _$SendReviewFeeLoadingUiModel value,
          $Res Function(_$SendReviewFeeLoadingUiModel) then) =
      __$$SendReviewFeeLoadingUiModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendReviewFeeLoadingUiModelCopyWithImpl<$Res>
    extends _$SendReviewFeeUiModelCopyWithImpl<$Res>
    implements _$$SendReviewFeeLoadingUiModelCopyWith<$Res> {
  __$$SendReviewFeeLoadingUiModelCopyWithImpl(
      _$SendReviewFeeLoadingUiModel _value,
      $Res Function(_$SendReviewFeeLoadingUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewFeeLoadingUiModel));

  @override
  _$SendReviewFeeLoadingUiModel get _value =>
      super._value as _$SendReviewFeeLoadingUiModel;
}

/// @nodoc

class _$SendReviewFeeLoadingUiModel implements SendReviewFeeLoadingUiModel {
  const _$SendReviewFeeLoadingUiModel();

  @override
  String toString() {
    return 'SendReviewFeeUiModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewFeeLoadingUiModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) success,
    required TResult Function() loading,
    required TResult Function(String title) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
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
    required TResult Function(SendReviewFeeSuccessUiModel value) success,
    required TResult Function(SendReviewFeeLoadingUiModel value) loading,
    required TResult Function(SendReviewFeeErrorUiModel value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendReviewFeeLoadingUiModel implements SendReviewFeeUiModel {
  const factory SendReviewFeeLoadingUiModel() = _$SendReviewFeeLoadingUiModel;
}

/// @nodoc
abstract class _$$SendReviewFeeErrorUiModelCopyWith<$Res> {
  factory _$$SendReviewFeeErrorUiModelCopyWith(
          _$SendReviewFeeErrorUiModel value,
          $Res Function(_$SendReviewFeeErrorUiModel) then) =
      __$$SendReviewFeeErrorUiModelCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$SendReviewFeeErrorUiModelCopyWithImpl<$Res>
    extends _$SendReviewFeeUiModelCopyWithImpl<$Res>
    implements _$$SendReviewFeeErrorUiModelCopyWith<$Res> {
  __$$SendReviewFeeErrorUiModelCopyWithImpl(_$SendReviewFeeErrorUiModel _value,
      $Res Function(_$SendReviewFeeErrorUiModel) _then)
      : super(_value, (v) => _then(v as _$SendReviewFeeErrorUiModel));

  @override
  _$SendReviewFeeErrorUiModel get _value =>
      super._value as _$SendReviewFeeErrorUiModel;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$SendReviewFeeErrorUiModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewFeeErrorUiModel implements SendReviewFeeErrorUiModel {
  const _$SendReviewFeeErrorUiModel({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'SendReviewFeeUiModel.error(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewFeeErrorUiModel &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewFeeErrorUiModelCopyWith<_$SendReviewFeeErrorUiModel>
      get copyWith => __$$SendReviewFeeErrorUiModelCopyWithImpl<
          _$SendReviewFeeErrorUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) success,
    required TResult Function() loading,
    required TResult Function(String title) error,
  }) {
    return error(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
  }) {
    return error?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? success,
    TResult Function()? loading,
    TResult Function(String title)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewFeeSuccessUiModel value) success,
    required TResult Function(SendReviewFeeLoadingUiModel value) loading,
    required TResult Function(SendReviewFeeErrorUiModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewFeeSuccessUiModel value)? success,
    TResult Function(SendReviewFeeLoadingUiModel value)? loading,
    TResult Function(SendReviewFeeErrorUiModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SendReviewFeeErrorUiModel implements SendReviewFeeUiModel {
  const factory SendReviewFeeErrorUiModel({required final String title}) =
      _$SendReviewFeeErrorUiModel;

  String get title;
  @JsonKey(ignore: true)
  _$$SendReviewFeeErrorUiModelCopyWith<_$SendReviewFeeErrorUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendReviewInsufficientFeeUiModel {
  String get requiredFeeLbtc => throw _privateConstructorUsedError;
  String get requiredFeeUsdt => throw _privateConstructorUsedError;
  String get currentLbtcBalance => throw _privateConstructorUsedError;
  String get currentUsdtBalance => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requiredFeeLbtc, String requiredFeeUsdt,
            String currentLbtcBalance, String currentUsdtBalance)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String requiredFeeLbtc, String requiredFeeUsdt,
            String currentLbtcBalance, String currentUsdtBalance)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requiredFeeLbtc, String requiredFeeUsdt,
            String currentLbtcBalance, String currentUsdtBalance)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewInsufficientFeeSuccessUiModel value)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewInsufficientFeeSuccessUiModel value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewInsufficientFeeSuccessUiModel value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendReviewInsufficientFeeUiModelCopyWith<SendReviewInsufficientFeeUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendReviewInsufficientFeeUiModelCopyWith<$Res> {
  factory $SendReviewInsufficientFeeUiModelCopyWith(
          SendReviewInsufficientFeeUiModel value,
          $Res Function(SendReviewInsufficientFeeUiModel) then) =
      _$SendReviewInsufficientFeeUiModelCopyWithImpl<$Res>;
  $Res call(
      {String requiredFeeLbtc,
      String requiredFeeUsdt,
      String currentLbtcBalance,
      String currentUsdtBalance});
}

/// @nodoc
class _$SendReviewInsufficientFeeUiModelCopyWithImpl<$Res>
    implements $SendReviewInsufficientFeeUiModelCopyWith<$Res> {
  _$SendReviewInsufficientFeeUiModelCopyWithImpl(this._value, this._then);

  final SendReviewInsufficientFeeUiModel _value;
  // ignore: unused_field
  final $Res Function(SendReviewInsufficientFeeUiModel) _then;

  @override
  $Res call({
    Object? requiredFeeLbtc = freezed,
    Object? requiredFeeUsdt = freezed,
    Object? currentLbtcBalance = freezed,
    Object? currentUsdtBalance = freezed,
  }) {
    return _then(_value.copyWith(
      requiredFeeLbtc: requiredFeeLbtc == freezed
          ? _value.requiredFeeLbtc
          : requiredFeeLbtc // ignore: cast_nullable_to_non_nullable
              as String,
      requiredFeeUsdt: requiredFeeUsdt == freezed
          ? _value.requiredFeeUsdt
          : requiredFeeUsdt // ignore: cast_nullable_to_non_nullable
              as String,
      currentLbtcBalance: currentLbtcBalance == freezed
          ? _value.currentLbtcBalance
          : currentLbtcBalance // ignore: cast_nullable_to_non_nullable
              as String,
      currentUsdtBalance: currentUsdtBalance == freezed
          ? _value.currentUsdtBalance
          : currentUsdtBalance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SendReviewInsufficientFeeSuccessUiModelCopyWith<$Res>
    implements $SendReviewInsufficientFeeUiModelCopyWith<$Res> {
  factory _$$SendReviewInsufficientFeeSuccessUiModelCopyWith(
          _$SendReviewInsufficientFeeSuccessUiModel value,
          $Res Function(_$SendReviewInsufficientFeeSuccessUiModel) then) =
      __$$SendReviewInsufficientFeeSuccessUiModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String requiredFeeLbtc,
      String requiredFeeUsdt,
      String currentLbtcBalance,
      String currentUsdtBalance});
}

/// @nodoc
class __$$SendReviewInsufficientFeeSuccessUiModelCopyWithImpl<$Res>
    extends _$SendReviewInsufficientFeeUiModelCopyWithImpl<$Res>
    implements _$$SendReviewInsufficientFeeSuccessUiModelCopyWith<$Res> {
  __$$SendReviewInsufficientFeeSuccessUiModelCopyWithImpl(
      _$SendReviewInsufficientFeeSuccessUiModel _value,
      $Res Function(_$SendReviewInsufficientFeeSuccessUiModel) _then)
      : super(_value,
            (v) => _then(v as _$SendReviewInsufficientFeeSuccessUiModel));

  @override
  _$SendReviewInsufficientFeeSuccessUiModel get _value =>
      super._value as _$SendReviewInsufficientFeeSuccessUiModel;

  @override
  $Res call({
    Object? requiredFeeLbtc = freezed,
    Object? requiredFeeUsdt = freezed,
    Object? currentLbtcBalance = freezed,
    Object? currentUsdtBalance = freezed,
  }) {
    return _then(_$SendReviewInsufficientFeeSuccessUiModel(
      requiredFeeLbtc: requiredFeeLbtc == freezed
          ? _value.requiredFeeLbtc
          : requiredFeeLbtc // ignore: cast_nullable_to_non_nullable
              as String,
      requiredFeeUsdt: requiredFeeUsdt == freezed
          ? _value.requiredFeeUsdt
          : requiredFeeUsdt // ignore: cast_nullable_to_non_nullable
              as String,
      currentLbtcBalance: currentLbtcBalance == freezed
          ? _value.currentLbtcBalance
          : currentLbtcBalance // ignore: cast_nullable_to_non_nullable
              as String,
      currentUsdtBalance: currentUsdtBalance == freezed
          ? _value.currentUsdtBalance
          : currentUsdtBalance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewInsufficientFeeSuccessUiModel
    implements SendReviewInsufficientFeeSuccessUiModel {
  const _$SendReviewInsufficientFeeSuccessUiModel(
      {required this.requiredFeeLbtc,
      required this.requiredFeeUsdt,
      required this.currentLbtcBalance,
      required this.currentUsdtBalance});

  @override
  final String requiredFeeLbtc;
  @override
  final String requiredFeeUsdt;
  @override
  final String currentLbtcBalance;
  @override
  final String currentUsdtBalance;

  @override
  String toString() {
    return 'SendReviewInsufficientFeeUiModel.success(requiredFeeLbtc: $requiredFeeLbtc, requiredFeeUsdt: $requiredFeeUsdt, currentLbtcBalance: $currentLbtcBalance, currentUsdtBalance: $currentUsdtBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewInsufficientFeeSuccessUiModel &&
            const DeepCollectionEquality()
                .equals(other.requiredFeeLbtc, requiredFeeLbtc) &&
            const DeepCollectionEquality()
                .equals(other.requiredFeeUsdt, requiredFeeUsdt) &&
            const DeepCollectionEquality()
                .equals(other.currentLbtcBalance, currentLbtcBalance) &&
            const DeepCollectionEquality()
                .equals(other.currentUsdtBalance, currentUsdtBalance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requiredFeeLbtc),
      const DeepCollectionEquality().hash(requiredFeeUsdt),
      const DeepCollectionEquality().hash(currentLbtcBalance),
      const DeepCollectionEquality().hash(currentUsdtBalance));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewInsufficientFeeSuccessUiModelCopyWith<
          _$SendReviewInsufficientFeeSuccessUiModel>
      get copyWith => __$$SendReviewInsufficientFeeSuccessUiModelCopyWithImpl<
          _$SendReviewInsufficientFeeSuccessUiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requiredFeeLbtc, String requiredFeeUsdt,
            String currentLbtcBalance, String currentUsdtBalance)
        success,
  }) {
    return success(requiredFeeLbtc, requiredFeeUsdt, currentLbtcBalance,
        currentUsdtBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String requiredFeeLbtc, String requiredFeeUsdt,
            String currentLbtcBalance, String currentUsdtBalance)?
        success,
  }) {
    return success?.call(requiredFeeLbtc, requiredFeeUsdt, currentLbtcBalance,
        currentUsdtBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requiredFeeLbtc, String requiredFeeUsdt,
            String currentLbtcBalance, String currentUsdtBalance)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(requiredFeeLbtc, requiredFeeUsdt, currentLbtcBalance,
          currentUsdtBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewInsufficientFeeSuccessUiModel value)
        success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewInsufficientFeeSuccessUiModel value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewInsufficientFeeSuccessUiModel value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendReviewInsufficientFeeSuccessUiModel
    implements SendReviewInsufficientFeeUiModel {
  const factory SendReviewInsufficientFeeSuccessUiModel(
          {required final String requiredFeeLbtc,
          required final String requiredFeeUsdt,
          required final String currentLbtcBalance,
          required final String currentUsdtBalance}) =
      _$SendReviewInsufficientFeeSuccessUiModel;

  @override
  String get requiredFeeLbtc;
  @override
  String get requiredFeeUsdt;
  @override
  String get currentLbtcBalance;
  @override
  String get currentUsdtBalance;
  @override
  @JsonKey(ignore: true)
  _$$SendReviewInsufficientFeeSuccessUiModelCopyWith<
          _$SendReviewInsufficientFeeSuccessUiModel>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_review_processing_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendReviewProcessingResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, int fee, String memo, String address, String txhash)
        success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        genericFailure,
    required TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)
        amountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessProcessingResult value) success,
    required TResult Function(SendReviewLoadingProcessingResult value) loading,
    required TResult Function(SendReviewGenericFailureProcessingResult value)
        genericFailure,
    required TResult Function(SendReviewAmountFailureProcessingResult value)
        amountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendReviewProcessingResultCopyWith<$Res> {
  factory $SendReviewProcessingResultCopyWith(SendReviewProcessingResult value,
          $Res Function(SendReviewProcessingResult) then) =
      _$SendReviewProcessingResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendReviewProcessingResultCopyWithImpl<$Res>
    implements $SendReviewProcessingResultCopyWith<$Res> {
  _$SendReviewProcessingResultCopyWithImpl(this._value, this._then);

  final SendReviewProcessingResult _value;
  // ignore: unused_field
  final $Res Function(SendReviewProcessingResult) _then;
}

/// @nodoc
abstract class _$$SendReviewSuccessProcessingResultCopyWith<$Res> {
  factory _$$SendReviewSuccessProcessingResultCopyWith(
          _$SendReviewSuccessProcessingResult value,
          $Res Function(_$SendReviewSuccessProcessingResult) then) =
      __$$SendReviewSuccessProcessingResultCopyWithImpl<$Res>;
  $Res call({int amount, int fee, String memo, String address, String txhash});
}

/// @nodoc
class __$$SendReviewSuccessProcessingResultCopyWithImpl<$Res>
    extends _$SendReviewProcessingResultCopyWithImpl<$Res>
    implements _$$SendReviewSuccessProcessingResultCopyWith<$Res> {
  __$$SendReviewSuccessProcessingResultCopyWithImpl(
      _$SendReviewSuccessProcessingResult _value,
      $Res Function(_$SendReviewSuccessProcessingResult) _then)
      : super(_value, (v) => _then(v as _$SendReviewSuccessProcessingResult));

  @override
  _$SendReviewSuccessProcessingResult get _value =>
      super._value as _$SendReviewSuccessProcessingResult;

  @override
  $Res call({
    Object? amount = freezed,
    Object? fee = freezed,
    Object? memo = freezed,
    Object? address = freezed,
    Object? txhash = freezed,
  }) {
    return _then(_$SendReviewSuccessProcessingResult(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewSuccessProcessingResult
    implements SendReviewSuccessProcessingResult {
  const _$SendReviewSuccessProcessingResult(
      {required this.amount,
      required this.fee,
      required this.memo,
      required this.address,
      required this.txhash});

  @override
  final int amount;
  @override
  final int fee;
  @override
  final String memo;
  @override
  final String address;
  @override
  final String txhash;

  @override
  String toString() {
    return 'SendReviewProcessingResult.success(amount: $amount, fee: $fee, memo: $memo, address: $address, txhash: $txhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewSuccessProcessingResult &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.fee, fee) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.txhash, txhash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(fee),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(txhash));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewSuccessProcessingResultCopyWith<
          _$SendReviewSuccessProcessingResult>
      get copyWith => __$$SendReviewSuccessProcessingResultCopyWithImpl<
          _$SendReviewSuccessProcessingResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, int fee, String memo, String address, String txhash)
        success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        genericFailure,
    required TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)
        amountFailure,
  }) {
    return success(amount, fee, memo, address, txhash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
  }) {
    return success?.call(amount, fee, memo, address, txhash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(amount, fee, memo, address, txhash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessProcessingResult value) success,
    required TResult Function(SendReviewLoadingProcessingResult value) loading,
    required TResult Function(SendReviewGenericFailureProcessingResult value)
        genericFailure,
    required TResult Function(SendReviewAmountFailureProcessingResult value)
        amountFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendReviewSuccessProcessingResult
    implements SendReviewProcessingResult {
  const factory SendReviewSuccessProcessingResult(
      {required final int amount,
      required final int fee,
      required final String memo,
      required final String address,
      required final String txhash}) = _$SendReviewSuccessProcessingResult;

  int get amount;
  int get fee;
  String get memo;
  String get address;
  String get txhash;
  @JsonKey(ignore: true)
  _$$SendReviewSuccessProcessingResultCopyWith<
          _$SendReviewSuccessProcessingResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendReviewLoadingProcessingResultCopyWith<$Res> {
  factory _$$SendReviewLoadingProcessingResultCopyWith(
          _$SendReviewLoadingProcessingResult value,
          $Res Function(_$SendReviewLoadingProcessingResult) then) =
      __$$SendReviewLoadingProcessingResultCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$SendReviewLoadingProcessingResultCopyWithImpl<$Res>
    extends _$SendReviewProcessingResultCopyWithImpl<$Res>
    implements _$$SendReviewLoadingProcessingResultCopyWith<$Res> {
  __$$SendReviewLoadingProcessingResultCopyWithImpl(
      _$SendReviewLoadingProcessingResult _value,
      $Res Function(_$SendReviewLoadingProcessingResult) _then)
      : super(_value, (v) => _then(v as _$SendReviewLoadingProcessingResult));

  @override
  _$SendReviewLoadingProcessingResult get _value =>
      super._value as _$SendReviewLoadingProcessingResult;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$SendReviewLoadingProcessingResult(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewLoadingProcessingResult
    implements SendReviewLoadingProcessingResult {
  const _$SendReviewLoadingProcessingResult({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'SendReviewProcessingResult.loading(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewLoadingProcessingResult &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$SendReviewLoadingProcessingResultCopyWith<
          _$SendReviewLoadingProcessingResult>
      get copyWith => __$$SendReviewLoadingProcessingResultCopyWithImpl<
          _$SendReviewLoadingProcessingResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, int fee, String memo, String address, String txhash)
        success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        genericFailure,
    required TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)
        amountFailure,
  }) {
    return loading(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
  }) {
    return loading?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessProcessingResult value) success,
    required TResult Function(SendReviewLoadingProcessingResult value) loading,
    required TResult Function(SendReviewGenericFailureProcessingResult value)
        genericFailure,
    required TResult Function(SendReviewAmountFailureProcessingResult value)
        amountFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendReviewLoadingProcessingResult
    implements SendReviewProcessingResult {
  const factory SendReviewLoadingProcessingResult(
          {required final String description}) =
      _$SendReviewLoadingProcessingResult;

  String get description;
  @JsonKey(ignore: true)
  _$$SendReviewLoadingProcessingResultCopyWith<
          _$SendReviewLoadingProcessingResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendReviewGenericFailureProcessingResultCopyWith<$Res> {
  factory _$$SendReviewGenericFailureProcessingResultCopyWith(
          _$SendReviewGenericFailureProcessingResult value,
          $Res Function(_$SendReviewGenericFailureProcessingResult) then) =
      __$$SendReviewGenericFailureProcessingResultCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subtitle,
      String buttonTitle,
      VoidCallback onButtonPressed});
}

/// @nodoc
class __$$SendReviewGenericFailureProcessingResultCopyWithImpl<$Res>
    extends _$SendReviewProcessingResultCopyWithImpl<$Res>
    implements _$$SendReviewGenericFailureProcessingResultCopyWith<$Res> {
  __$$SendReviewGenericFailureProcessingResultCopyWithImpl(
      _$SendReviewGenericFailureProcessingResult _value,
      $Res Function(_$SendReviewGenericFailureProcessingResult) _then)
      : super(_value,
            (v) => _then(v as _$SendReviewGenericFailureProcessingResult));

  @override
  _$SendReviewGenericFailureProcessingResult get _value =>
      super._value as _$SendReviewGenericFailureProcessingResult;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? buttonTitle = freezed,
    Object? onButtonPressed = freezed,
  }) {
    return _then(_$SendReviewGenericFailureProcessingResult(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      buttonTitle: buttonTitle == freezed
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      onButtonPressed: onButtonPressed == freezed
          ? _value.onButtonPressed
          : onButtonPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$SendReviewGenericFailureProcessingResult
    implements SendReviewGenericFailureProcessingResult {
  const _$SendReviewGenericFailureProcessingResult(
      {required this.title,
      required this.subtitle,
      required this.buttonTitle,
      required this.onButtonPressed});

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String buttonTitle;
  @override
  final VoidCallback onButtonPressed;

  @override
  String toString() {
    return 'SendReviewProcessingResult.genericFailure(title: $title, subtitle: $subtitle, buttonTitle: $buttonTitle, onButtonPressed: $onButtonPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewGenericFailureProcessingResult &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.buttonTitle, buttonTitle) &&
            (identical(other.onButtonPressed, onButtonPressed) ||
                other.onButtonPressed == onButtonPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(buttonTitle),
      onButtonPressed);

  @JsonKey(ignore: true)
  @override
  _$$SendReviewGenericFailureProcessingResultCopyWith<
          _$SendReviewGenericFailureProcessingResult>
      get copyWith => __$$SendReviewGenericFailureProcessingResultCopyWithImpl<
          _$SendReviewGenericFailureProcessingResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, int fee, String memo, String address, String txhash)
        success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        genericFailure,
    required TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)
        amountFailure,
  }) {
    return genericFailure(title, subtitle, buttonTitle, onButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
  }) {
    return genericFailure?.call(title, subtitle, buttonTitle, onButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (genericFailure != null) {
      return genericFailure(title, subtitle, buttonTitle, onButtonPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessProcessingResult value) success,
    required TResult Function(SendReviewLoadingProcessingResult value) loading,
    required TResult Function(SendReviewGenericFailureProcessingResult value)
        genericFailure,
    required TResult Function(SendReviewAmountFailureProcessingResult value)
        amountFailure,
  }) {
    return genericFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
  }) {
    return genericFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (genericFailure != null) {
      return genericFailure(this);
    }
    return orElse();
  }
}

abstract class SendReviewGenericFailureProcessingResult
    implements SendReviewProcessingResult {
  const factory SendReviewGenericFailureProcessingResult(
          {required final String title,
          required final String subtitle,
          required final String buttonTitle,
          required final VoidCallback onButtonPressed}) =
      _$SendReviewGenericFailureProcessingResult;

  String get title;
  String get subtitle;
  String get buttonTitle;
  VoidCallback get onButtonPressed;
  @JsonKey(ignore: true)
  _$$SendReviewGenericFailureProcessingResultCopyWith<
          _$SendReviewGenericFailureProcessingResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendReviewAmountFailureProcessingResultCopyWith<$Res> {
  factory _$$SendReviewAmountFailureProcessingResultCopyWith(
          _$SendReviewAmountFailureProcessingResult value,
          $Res Function(_$SendReviewAmountFailureProcessingResult) then) =
      __$$SendReviewAmountFailureProcessingResultCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subtitle,
      String cancelButtonTitle,
      String getButtonTitle,
      VoidCallback onCancelButtonPressed,
      VoidCallback onGetButtonPressed});
}

/// @nodoc
class __$$SendReviewAmountFailureProcessingResultCopyWithImpl<$Res>
    extends _$SendReviewProcessingResultCopyWithImpl<$Res>
    implements _$$SendReviewAmountFailureProcessingResultCopyWith<$Res> {
  __$$SendReviewAmountFailureProcessingResultCopyWithImpl(
      _$SendReviewAmountFailureProcessingResult _value,
      $Res Function(_$SendReviewAmountFailureProcessingResult) _then)
      : super(_value,
            (v) => _then(v as _$SendReviewAmountFailureProcessingResult));

  @override
  _$SendReviewAmountFailureProcessingResult get _value =>
      super._value as _$SendReviewAmountFailureProcessingResult;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? cancelButtonTitle = freezed,
    Object? getButtonTitle = freezed,
    Object? onCancelButtonPressed = freezed,
    Object? onGetButtonPressed = freezed,
  }) {
    return _then(_$SendReviewAmountFailureProcessingResult(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      cancelButtonTitle: cancelButtonTitle == freezed
          ? _value.cancelButtonTitle
          : cancelButtonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      getButtonTitle: getButtonTitle == freezed
          ? _value.getButtonTitle
          : getButtonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      onCancelButtonPressed: onCancelButtonPressed == freezed
          ? _value.onCancelButtonPressed
          : onCancelButtonPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onGetButtonPressed: onGetButtonPressed == freezed
          ? _value.onGetButtonPressed
          : onGetButtonPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$SendReviewAmountFailureProcessingResult
    implements SendReviewAmountFailureProcessingResult {
  const _$SendReviewAmountFailureProcessingResult(
      {required this.title,
      required this.subtitle,
      required this.cancelButtonTitle,
      required this.getButtonTitle,
      required this.onCancelButtonPressed,
      required this.onGetButtonPressed});

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String cancelButtonTitle;
  @override
  final String getButtonTitle;
  @override
  final VoidCallback onCancelButtonPressed;
  @override
  final VoidCallback onGetButtonPressed;

  @override
  String toString() {
    return 'SendReviewProcessingResult.amountFailure(title: $title, subtitle: $subtitle, cancelButtonTitle: $cancelButtonTitle, getButtonTitle: $getButtonTitle, onCancelButtonPressed: $onCancelButtonPressed, onGetButtonPressed: $onGetButtonPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewAmountFailureProcessingResult &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.cancelButtonTitle, cancelButtonTitle) &&
            const DeepCollectionEquality()
                .equals(other.getButtonTitle, getButtonTitle) &&
            (identical(other.onCancelButtonPressed, onCancelButtonPressed) ||
                other.onCancelButtonPressed == onCancelButtonPressed) &&
            (identical(other.onGetButtonPressed, onGetButtonPressed) ||
                other.onGetButtonPressed == onGetButtonPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(cancelButtonTitle),
      const DeepCollectionEquality().hash(getButtonTitle),
      onCancelButtonPressed,
      onGetButtonPressed);

  @JsonKey(ignore: true)
  @override
  _$$SendReviewAmountFailureProcessingResultCopyWith<
          _$SendReviewAmountFailureProcessingResult>
      get copyWith => __$$SendReviewAmountFailureProcessingResultCopyWithImpl<
          _$SendReviewAmountFailureProcessingResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, int fee, String memo, String address, String txhash)
        success,
    required TResult Function(String description) loading,
    required TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)
        genericFailure,
    required TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)
        amountFailure,
  }) {
    return amountFailure(title, subtitle, cancelButtonTitle, getButtonTitle,
        onCancelButtonPressed, onGetButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
  }) {
    return amountFailure?.call(title, subtitle, cancelButtonTitle,
        getButtonTitle, onCancelButtonPressed, onGetButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int amount, int fee, String memo, String address, String txhash)?
        success,
    TResult Function(String description)? loading,
    TResult Function(String title, String subtitle, String buttonTitle,
            VoidCallback onButtonPressed)?
        genericFailure,
    TResult Function(
            String title,
            String subtitle,
            String cancelButtonTitle,
            String getButtonTitle,
            VoidCallback onCancelButtonPressed,
            VoidCallback onGetButtonPressed)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (amountFailure != null) {
      return amountFailure(title, subtitle, cancelButtonTitle, getButtonTitle,
          onCancelButtonPressed, onGetButtonPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewSuccessProcessingResult value) success,
    required TResult Function(SendReviewLoadingProcessingResult value) loading,
    required TResult Function(SendReviewGenericFailureProcessingResult value)
        genericFailure,
    required TResult Function(SendReviewAmountFailureProcessingResult value)
        amountFailure,
  }) {
    return amountFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
  }) {
    return amountFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewSuccessProcessingResult value)? success,
    TResult Function(SendReviewLoadingProcessingResult value)? loading,
    TResult Function(SendReviewGenericFailureProcessingResult value)?
        genericFailure,
    TResult Function(SendReviewAmountFailureProcessingResult value)?
        amountFailure,
    required TResult orElse(),
  }) {
    if (amountFailure != null) {
      return amountFailure(this);
    }
    return orElse();
  }
}

abstract class SendReviewAmountFailureProcessingResult
    implements SendReviewProcessingResult {
  const factory SendReviewAmountFailureProcessingResult(
          {required final String title,
          required final String subtitle,
          required final String cancelButtonTitle,
          required final String getButtonTitle,
          required final VoidCallback onCancelButtonPressed,
          required final VoidCallback onGetButtonPressed}) =
      _$SendReviewAmountFailureProcessingResult;

  String get title;
  String get subtitle;
  String get cancelButtonTitle;
  String get getButtonTitle;
  VoidCallback get onCancelButtonPressed;
  VoidCallback get onGetButtonPressed;
  @JsonKey(ignore: true)
  _$$SendReviewAmountFailureProcessingResultCopyWith<
          _$SendReviewAmountFailureProcessingResult>
      get copyWith => throw _privateConstructorUsedError;
}

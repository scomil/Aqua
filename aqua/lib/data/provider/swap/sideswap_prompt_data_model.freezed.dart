// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sideswap_prompt_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SideSwapPromptDataModel {
  Asset get sendAsset => throw _privateConstructorUsedError;
  int get sendAmount => throw _privateConstructorUsedError;
  Asset get recvAsset => throw _privateConstructorUsedError;
  int get recvAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideSwapPromptDataModelCopyWith<SideSwapPromptDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideSwapPromptDataModelCopyWith<$Res> {
  factory $SideSwapPromptDataModelCopyWith(SideSwapPromptDataModel value,
          $Res Function(SideSwapPromptDataModel) then) =
      _$SideSwapPromptDataModelCopyWithImpl<$Res>;
  $Res call({Asset sendAsset, int sendAmount, Asset recvAsset, int recvAmount});
}

/// @nodoc
class _$SideSwapPromptDataModelCopyWithImpl<$Res>
    implements $SideSwapPromptDataModelCopyWith<$Res> {
  _$SideSwapPromptDataModelCopyWithImpl(this._value, this._then);

  final SideSwapPromptDataModel _value;
  // ignore: unused_field
  final $Res Function(SideSwapPromptDataModel) _then;

  @override
  $Res call({
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_value.copyWith(
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as Asset,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as Asset,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SideSwapPromptDataModelCopyWith<$Res>
    implements $SideSwapPromptDataModelCopyWith<$Res> {
  factory _$$_SideSwapPromptDataModelCopyWith(_$_SideSwapPromptDataModel value,
          $Res Function(_$_SideSwapPromptDataModel) then) =
      __$$_SideSwapPromptDataModelCopyWithImpl<$Res>;
  @override
  $Res call({Asset sendAsset, int sendAmount, Asset recvAsset, int recvAmount});
}

/// @nodoc
class __$$_SideSwapPromptDataModelCopyWithImpl<$Res>
    extends _$SideSwapPromptDataModelCopyWithImpl<$Res>
    implements _$$_SideSwapPromptDataModelCopyWith<$Res> {
  __$$_SideSwapPromptDataModelCopyWithImpl(_$_SideSwapPromptDataModel _value,
      $Res Function(_$_SideSwapPromptDataModel) _then)
      : super(_value, (v) => _then(v as _$_SideSwapPromptDataModel));

  @override
  _$_SideSwapPromptDataModel get _value =>
      super._value as _$_SideSwapPromptDataModel;

  @override
  $Res call({
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_$_SideSwapPromptDataModel(
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as Asset,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as Asset,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SideSwapPromptDataModel implements _SideSwapPromptDataModel {
  const _$_SideSwapPromptDataModel(
      {required this.sendAsset,
      required this.sendAmount,
      required this.recvAsset,
      required this.recvAmount});

  @override
  final Asset sendAsset;
  @override
  final int sendAmount;
  @override
  final Asset recvAsset;
  @override
  final int recvAmount;

  @override
  String toString() {
    return 'SideSwapPromptDataModel(sendAsset: $sendAsset, sendAmount: $sendAmount, recvAsset: $recvAsset, recvAmount: $recvAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SideSwapPromptDataModel &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sendAsset),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAsset),
      const DeepCollectionEquality().hash(recvAmount));

  @JsonKey(ignore: true)
  @override
  _$$_SideSwapPromptDataModelCopyWith<_$_SideSwapPromptDataModel>
      get copyWith =>
          __$$_SideSwapPromptDataModelCopyWithImpl<_$_SideSwapPromptDataModel>(
              this, _$identity);
}

abstract class _SideSwapPromptDataModel implements SideSwapPromptDataModel {
  const factory _SideSwapPromptDataModel(
      {required final Asset sendAsset,
      required final int sendAmount,
      required final Asset recvAsset,
      required final int recvAmount}) = _$_SideSwapPromptDataModel;

  @override
  Asset get sendAsset;
  @override
  int get sendAmount;
  @override
  Asset get recvAsset;
  @override
  int get recvAmount;
  @override
  @JsonKey(ignore: true)
  _$$_SideSwapPromptDataModelCopyWith<_$_SideSwapPromptDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

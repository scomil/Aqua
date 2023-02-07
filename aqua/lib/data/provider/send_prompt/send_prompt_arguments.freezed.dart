// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_prompt_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendPromptArguments {
  Asset get asset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendPromptArgumentsCopyWith<SendPromptArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPromptArgumentsCopyWith<$Res> {
  factory $SendPromptArgumentsCopyWith(
          SendPromptArguments value, $Res Function(SendPromptArguments) then) =
      _$SendPromptArgumentsCopyWithImpl<$Res>;
  $Res call({Asset asset});
}

/// @nodoc
class _$SendPromptArgumentsCopyWithImpl<$Res>
    implements $SendPromptArgumentsCopyWith<$Res> {
  _$SendPromptArgumentsCopyWithImpl(this._value, this._then);

  final SendPromptArguments _value;
  // ignore: unused_field
  final $Res Function(SendPromptArguments) _then;

  @override
  $Res call({
    Object? asset = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
    ));
  }
}

/// @nodoc
abstract class _$$_SendPromptArgumentsCopyWith<$Res>
    implements $SendPromptArgumentsCopyWith<$Res> {
  factory _$$_SendPromptArgumentsCopyWith(_$_SendPromptArguments value,
          $Res Function(_$_SendPromptArguments) then) =
      __$$_SendPromptArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({Asset asset});
}

/// @nodoc
class __$$_SendPromptArgumentsCopyWithImpl<$Res>
    extends _$SendPromptArgumentsCopyWithImpl<$Res>
    implements _$$_SendPromptArgumentsCopyWith<$Res> {
  __$$_SendPromptArgumentsCopyWithImpl(_$_SendPromptArguments _value,
      $Res Function(_$_SendPromptArguments) _then)
      : super(_value, (v) => _then(v as _$_SendPromptArguments));

  @override
  _$_SendPromptArguments get _value => super._value as _$_SendPromptArguments;

  @override
  $Res call({
    Object? asset = freezed,
  }) {
    return _then(_$_SendPromptArguments(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as Asset,
    ));
  }
}

/// @nodoc

class _$_SendPromptArguments implements _SendPromptArguments {
  const _$_SendPromptArguments({required this.asset});

  @override
  final Asset asset;

  @override
  String toString() {
    return 'SendPromptArguments(asset: $asset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendPromptArguments &&
            const DeepCollectionEquality().equals(other.asset, asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(asset));

  @JsonKey(ignore: true)
  @override
  _$$_SendPromptArgumentsCopyWith<_$_SendPromptArguments> get copyWith =>
      __$$_SendPromptArgumentsCopyWithImpl<_$_SendPromptArguments>(
          this, _$identity);
}

abstract class _SendPromptArguments implements SendPromptArguments {
  const factory _SendPromptArguments({required final Asset asset}) =
      _$_SendPromptArguments;

  @override
  Asset get asset;
  @override
  @JsonKey(ignore: true)
  _$$_SendPromptArgumentsCopyWith<_$_SendPromptArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_support_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileSupportRateAppItemModel {
  String? get appStoreId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileSupportRateAppItemModelCopyWith<ProfileSupportRateAppItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSupportRateAppItemModelCopyWith<$Res> {
  factory $ProfileSupportRateAppItemModelCopyWith(
          ProfileSupportRateAppItemModel value,
          $Res Function(ProfileSupportRateAppItemModel) then) =
      _$ProfileSupportRateAppItemModelCopyWithImpl<$Res>;
  $Res call({String? appStoreId});
}

/// @nodoc
class _$ProfileSupportRateAppItemModelCopyWithImpl<$Res>
    implements $ProfileSupportRateAppItemModelCopyWith<$Res> {
  _$ProfileSupportRateAppItemModelCopyWithImpl(this._value, this._then);

  final ProfileSupportRateAppItemModel _value;
  // ignore: unused_field
  final $Res Function(ProfileSupportRateAppItemModel) _then;

  @override
  $Res call({
    Object? appStoreId = freezed,
  }) {
    return _then(_value.copyWith(
      appStoreId: appStoreId == freezed
          ? _value.appStoreId
          : appStoreId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileSupportRateAppItemModelCopyWith<$Res>
    implements $ProfileSupportRateAppItemModelCopyWith<$Res> {
  factory _$$_ProfileSupportRateAppItemModelCopyWith(
          _$_ProfileSupportRateAppItemModel value,
          $Res Function(_$_ProfileSupportRateAppItemModel) then) =
      __$$_ProfileSupportRateAppItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? appStoreId});
}

/// @nodoc
class __$$_ProfileSupportRateAppItemModelCopyWithImpl<$Res>
    extends _$ProfileSupportRateAppItemModelCopyWithImpl<$Res>
    implements _$$_ProfileSupportRateAppItemModelCopyWith<$Res> {
  __$$_ProfileSupportRateAppItemModelCopyWithImpl(
      _$_ProfileSupportRateAppItemModel _value,
      $Res Function(_$_ProfileSupportRateAppItemModel) _then)
      : super(_value, (v) => _then(v as _$_ProfileSupportRateAppItemModel));

  @override
  _$_ProfileSupportRateAppItemModel get _value =>
      super._value as _$_ProfileSupportRateAppItemModel;

  @override
  $Res call({
    Object? appStoreId = freezed,
  }) {
    return _then(_$_ProfileSupportRateAppItemModel(
      appStoreId: appStoreId == freezed
          ? _value.appStoreId
          : appStoreId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfileSupportRateAppItemModel
    implements _ProfileSupportRateAppItemModel {
  const _$_ProfileSupportRateAppItemModel({this.appStoreId});

  @override
  final String? appStoreId;

  @override
  String toString() {
    return 'ProfileSupportRateAppItemModel(appStoreId: $appStoreId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileSupportRateAppItemModel &&
            const DeepCollectionEquality()
                .equals(other.appStoreId, appStoreId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appStoreId));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileSupportRateAppItemModelCopyWith<_$_ProfileSupportRateAppItemModel>
      get copyWith => __$$_ProfileSupportRateAppItemModelCopyWithImpl<
          _$_ProfileSupportRateAppItemModel>(this, _$identity);
}

abstract class _ProfileSupportRateAppItemModel
    implements ProfileSupportRateAppItemModel {
  const factory _ProfileSupportRateAppItemModel({final String? appStoreId}) =
      _$_ProfileSupportRateAppItemModel;

  @override
  String? get appStoreId;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileSupportRateAppItemModelCopyWith<_$_ProfileSupportRateAppItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

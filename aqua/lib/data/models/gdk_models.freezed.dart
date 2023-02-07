// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gdk_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GdkConfig _$GdkConfigFromJson(Map<String, dynamic> json) {
  return _GdkConfig.fromJson(json);
}

/// @nodoc
mixin _$GdkConfig {
  @JsonKey(name: 'datadir')
  String? get dataDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'tordir')
  String? get torDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'registrydir')
  String? get registryDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
  GdkConfigLogLevelEnum? get logLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkConfigCopyWith<GdkConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkConfigCopyWith<$Res> {
  factory $GdkConfigCopyWith(GdkConfig value, $Res Function(GdkConfig) then) =
      _$GdkConfigCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'datadir')
          String? dataDir,
      @JsonKey(name: 'tordir')
          String? torDir,
      @JsonKey(name: 'registrydir')
          String? registryDir,
      @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
          GdkConfigLogLevelEnum? logLevel});
}

/// @nodoc
class _$GdkConfigCopyWithImpl<$Res> implements $GdkConfigCopyWith<$Res> {
  _$GdkConfigCopyWithImpl(this._value, this._then);

  final GdkConfig _value;
  // ignore: unused_field
  final $Res Function(GdkConfig) _then;

  @override
  $Res call({
    Object? dataDir = freezed,
    Object? torDir = freezed,
    Object? registryDir = freezed,
    Object? logLevel = freezed,
  }) {
    return _then(_value.copyWith(
      dataDir: dataDir == freezed
          ? _value.dataDir
          : dataDir // ignore: cast_nullable_to_non_nullable
              as String?,
      torDir: torDir == freezed
          ? _value.torDir
          : torDir // ignore: cast_nullable_to_non_nullable
              as String?,
      registryDir: registryDir == freezed
          ? _value.registryDir
          : registryDir // ignore: cast_nullable_to_non_nullable
              as String?,
      logLevel: logLevel == freezed
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as GdkConfigLogLevelEnum?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkConfigCopyWith<$Res> implements $GdkConfigCopyWith<$Res> {
  factory _$$_GdkConfigCopyWith(
          _$_GdkConfig value, $Res Function(_$_GdkConfig) then) =
      __$$_GdkConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'datadir')
          String? dataDir,
      @JsonKey(name: 'tordir')
          String? torDir,
      @JsonKey(name: 'registrydir')
          String? registryDir,
      @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
          GdkConfigLogLevelEnum? logLevel});
}

/// @nodoc
class __$$_GdkConfigCopyWithImpl<$Res> extends _$GdkConfigCopyWithImpl<$Res>
    implements _$$_GdkConfigCopyWith<$Res> {
  __$$_GdkConfigCopyWithImpl(
      _$_GdkConfig _value, $Res Function(_$_GdkConfig) _then)
      : super(_value, (v) => _then(v as _$_GdkConfig));

  @override
  _$_GdkConfig get _value => super._value as _$_GdkConfig;

  @override
  $Res call({
    Object? dataDir = freezed,
    Object? torDir = freezed,
    Object? registryDir = freezed,
    Object? logLevel = freezed,
  }) {
    return _then(_$_GdkConfig(
      dataDir: dataDir == freezed
          ? _value.dataDir
          : dataDir // ignore: cast_nullable_to_non_nullable
              as String?,
      torDir: torDir == freezed
          ? _value.torDir
          : torDir // ignore: cast_nullable_to_non_nullable
              as String?,
      registryDir: registryDir == freezed
          ? _value.registryDir
          : registryDir // ignore: cast_nullable_to_non_nullable
              as String?,
      logLevel: logLevel == freezed
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as GdkConfigLogLevelEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkConfig extends _GdkConfig {
  const _$_GdkConfig(
      {@JsonKey(name: 'datadir')
          this.dataDir,
      @JsonKey(name: 'tordir')
          this.torDir,
      @JsonKey(name: 'registrydir')
          this.registryDir,
      @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
          this.logLevel})
      : super._();

  factory _$_GdkConfig.fromJson(Map<String, dynamic> json) =>
      _$$_GdkConfigFromJson(json);

  @override
  @JsonKey(name: 'datadir')
  final String? dataDir;
  @override
  @JsonKey(name: 'tordir')
  final String? torDir;
  @override
  @JsonKey(name: 'registrydir')
  final String? registryDir;
  @override
  @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
  final GdkConfigLogLevelEnum? logLevel;

  @override
  String toString() {
    return 'GdkConfig(dataDir: $dataDir, torDir: $torDir, registryDir: $registryDir, logLevel: $logLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkConfig &&
            const DeepCollectionEquality().equals(other.dataDir, dataDir) &&
            const DeepCollectionEquality().equals(other.torDir, torDir) &&
            const DeepCollectionEquality()
                .equals(other.registryDir, registryDir) &&
            const DeepCollectionEquality().equals(other.logLevel, logLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dataDir),
      const DeepCollectionEquality().hash(torDir),
      const DeepCollectionEquality().hash(registryDir),
      const DeepCollectionEquality().hash(logLevel));

  @JsonKey(ignore: true)
  @override
  _$$_GdkConfigCopyWith<_$_GdkConfig> get copyWith =>
      __$$_GdkConfigCopyWithImpl<_$_GdkConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkConfigToJson(
      this,
    );
  }
}

abstract class _GdkConfig extends GdkConfig {
  const factory _GdkConfig(
      {@JsonKey(name: 'datadir')
          final String? dataDir,
      @JsonKey(name: 'tordir')
          final String? torDir,
      @JsonKey(name: 'registrydir')
          final String? registryDir,
      @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
          final GdkConfigLogLevelEnum? logLevel}) = _$_GdkConfig;
  const _GdkConfig._() : super._();

  factory _GdkConfig.fromJson(Map<String, dynamic> json) =
      _$_GdkConfig.fromJson;

  @override
  @JsonKey(name: 'datadir')
  String? get dataDir;
  @override
  @JsonKey(name: 'tordir')
  String? get torDir;
  @override
  @JsonKey(name: 'registrydir')
  String? get registryDir;
  @override
  @JsonKey(name: 'log_level', defaultValue: GdkConfigLogLevelEnum.info)
  GdkConfigLogLevelEnum? get logLevel;
  @override
  @JsonKey(ignore: true)
  _$$_GdkConfigCopyWith<_$_GdkConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkConnectionParams _$GdkConnectionParamsFromJson(Map<String, dynamic> json) {
  return _GdkConnectionParams.fromJson(json);
}

/// @nodoc
mixin _$GdkConnectionParams {
  String? get name => throw _privateConstructorUsedError;
  String? get proxy => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_tor')
  bool? get useTor => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_agent')
  String? get userAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'spv_enabled')
  bool? get spvEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'cert_expiry_threshold')
  int? get certExpiryThreshold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkConnectionParamsCopyWith<GdkConnectionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkConnectionParamsCopyWith<$Res> {
  factory $GdkConnectionParamsCopyWith(
          GdkConnectionParams value, $Res Function(GdkConnectionParams) then) =
      _$GdkConnectionParamsCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? proxy,
      @JsonKey(name: 'use_tor') bool? useTor,
      @JsonKey(name: 'user_agent') String? userAgent,
      @JsonKey(name: 'spv_enabled') bool? spvEnabled,
      @JsonKey(name: 'cert_expiry_threshold') int? certExpiryThreshold});
}

/// @nodoc
class _$GdkConnectionParamsCopyWithImpl<$Res>
    implements $GdkConnectionParamsCopyWith<$Res> {
  _$GdkConnectionParamsCopyWithImpl(this._value, this._then);

  final GdkConnectionParams _value;
  // ignore: unused_field
  final $Res Function(GdkConnectionParams) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? proxy = freezed,
    Object? useTor = freezed,
    Object? userAgent = freezed,
    Object? spvEnabled = freezed,
    Object? certExpiryThreshold = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      proxy: proxy == freezed
          ? _value.proxy
          : proxy // ignore: cast_nullable_to_non_nullable
              as String?,
      useTor: useTor == freezed
          ? _value.useTor
          : useTor // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAgent: userAgent == freezed
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      spvEnabled: spvEnabled == freezed
          ? _value.spvEnabled
          : spvEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      certExpiryThreshold: certExpiryThreshold == freezed
          ? _value.certExpiryThreshold
          : certExpiryThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkConnectionParamsCopyWith<$Res>
    implements $GdkConnectionParamsCopyWith<$Res> {
  factory _$$_GdkConnectionParamsCopyWith(_$_GdkConnectionParams value,
          $Res Function(_$_GdkConnectionParams) then) =
      __$$_GdkConnectionParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? proxy,
      @JsonKey(name: 'use_tor') bool? useTor,
      @JsonKey(name: 'user_agent') String? userAgent,
      @JsonKey(name: 'spv_enabled') bool? spvEnabled,
      @JsonKey(name: 'cert_expiry_threshold') int? certExpiryThreshold});
}

/// @nodoc
class __$$_GdkConnectionParamsCopyWithImpl<$Res>
    extends _$GdkConnectionParamsCopyWithImpl<$Res>
    implements _$$_GdkConnectionParamsCopyWith<$Res> {
  __$$_GdkConnectionParamsCopyWithImpl(_$_GdkConnectionParams _value,
      $Res Function(_$_GdkConnectionParams) _then)
      : super(_value, (v) => _then(v as _$_GdkConnectionParams));

  @override
  _$_GdkConnectionParams get _value => super._value as _$_GdkConnectionParams;

  @override
  $Res call({
    Object? name = freezed,
    Object? proxy = freezed,
    Object? useTor = freezed,
    Object? userAgent = freezed,
    Object? spvEnabled = freezed,
    Object? certExpiryThreshold = freezed,
  }) {
    return _then(_$_GdkConnectionParams(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      proxy: proxy == freezed
          ? _value.proxy
          : proxy // ignore: cast_nullable_to_non_nullable
              as String?,
      useTor: useTor == freezed
          ? _value.useTor
          : useTor // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAgent: userAgent == freezed
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      spvEnabled: spvEnabled == freezed
          ? _value.spvEnabled
          : spvEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      certExpiryThreshold: certExpiryThreshold == freezed
          ? _value.certExpiryThreshold
          : certExpiryThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkConnectionParams extends _GdkConnectionParams {
  const _$_GdkConnectionParams(
      {this.name,
      this.proxy,
      @JsonKey(name: 'use_tor') this.useTor = false,
      @JsonKey(name: 'user_agent') this.userAgent = 'aqua',
      @JsonKey(name: 'spv_enabled') this.spvEnabled,
      @JsonKey(name: 'cert_expiry_threshold') this.certExpiryThreshold})
      : super._();

  factory _$_GdkConnectionParams.fromJson(Map<String, dynamic> json) =>
      _$$_GdkConnectionParamsFromJson(json);

  @override
  final String? name;
  @override
  final String? proxy;
  @override
  @JsonKey(name: 'use_tor')
  final bool? useTor;
  @override
  @JsonKey(name: 'user_agent')
  final String? userAgent;
  @override
  @JsonKey(name: 'spv_enabled')
  final bool? spvEnabled;
  @override
  @JsonKey(name: 'cert_expiry_threshold')
  final int? certExpiryThreshold;

  @override
  String toString() {
    return 'GdkConnectionParams(name: $name, proxy: $proxy, useTor: $useTor, userAgent: $userAgent, spvEnabled: $spvEnabled, certExpiryThreshold: $certExpiryThreshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkConnectionParams &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.proxy, proxy) &&
            const DeepCollectionEquality().equals(other.useTor, useTor) &&
            const DeepCollectionEquality().equals(other.userAgent, userAgent) &&
            const DeepCollectionEquality()
                .equals(other.spvEnabled, spvEnabled) &&
            const DeepCollectionEquality()
                .equals(other.certExpiryThreshold, certExpiryThreshold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(proxy),
      const DeepCollectionEquality().hash(useTor),
      const DeepCollectionEquality().hash(userAgent),
      const DeepCollectionEquality().hash(spvEnabled),
      const DeepCollectionEquality().hash(certExpiryThreshold));

  @JsonKey(ignore: true)
  @override
  _$$_GdkConnectionParamsCopyWith<_$_GdkConnectionParams> get copyWith =>
      __$$_GdkConnectionParamsCopyWithImpl<_$_GdkConnectionParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkConnectionParamsToJson(
      this,
    );
  }
}

abstract class _GdkConnectionParams extends GdkConnectionParams {
  const factory _GdkConnectionParams(
      {final String? name,
      final String? proxy,
      @JsonKey(name: 'use_tor')
          final bool? useTor,
      @JsonKey(name: 'user_agent')
          final String? userAgent,
      @JsonKey(name: 'spv_enabled')
          final bool? spvEnabled,
      @JsonKey(name: 'cert_expiry_threshold')
          final int? certExpiryThreshold}) = _$_GdkConnectionParams;
  const _GdkConnectionParams._() : super._();

  factory _GdkConnectionParams.fromJson(Map<String, dynamic> json) =
      _$_GdkConnectionParams.fromJson;

  @override
  String? get name;
  @override
  String? get proxy;
  @override
  @JsonKey(name: 'use_tor')
  bool? get useTor;
  @override
  @JsonKey(name: 'user_agent')
  String? get userAgent;
  @override
  @JsonKey(name: 'spv_enabled')
  bool? get spvEnabled;
  @override
  @JsonKey(name: 'cert_expiry_threshold')
  int? get certExpiryThreshold;
  @override
  @JsonKey(ignore: true)
  _$$_GdkConnectionParamsCopyWith<_$_GdkConnectionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkPinData _$GdkPinDataFromJson(Map<String, dynamic> json) {
  return _GdkPinData.fromJson(json);
}

/// @nodoc
mixin _$GdkPinData {
  @JsonKey(name: 'encrypted_data')
  String? get encryptedData => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_identifier')
  String? get pinIdentifier => throw _privateConstructorUsedError;
  String? get salt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkPinDataCopyWith<GdkPinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkPinDataCopyWith<$Res> {
  factory $GdkPinDataCopyWith(
          GdkPinData value, $Res Function(GdkPinData) then) =
      _$GdkPinDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'encrypted_data') String? encryptedData,
      @JsonKey(name: 'pin_identifier') String? pinIdentifier,
      String? salt});
}

/// @nodoc
class _$GdkPinDataCopyWithImpl<$Res> implements $GdkPinDataCopyWith<$Res> {
  _$GdkPinDataCopyWithImpl(this._value, this._then);

  final GdkPinData _value;
  // ignore: unused_field
  final $Res Function(GdkPinData) _then;

  @override
  $Res call({
    Object? encryptedData = freezed,
    Object? pinIdentifier = freezed,
    Object? salt = freezed,
  }) {
    return _then(_value.copyWith(
      encryptedData: encryptedData == freezed
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as String?,
      pinIdentifier: pinIdentifier == freezed
          ? _value.pinIdentifier
          : pinIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkPinDataCopyWith<$Res>
    implements $GdkPinDataCopyWith<$Res> {
  factory _$$_GdkPinDataCopyWith(
          _$_GdkPinData value, $Res Function(_$_GdkPinData) then) =
      __$$_GdkPinDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'encrypted_data') String? encryptedData,
      @JsonKey(name: 'pin_identifier') String? pinIdentifier,
      String? salt});
}

/// @nodoc
class __$$_GdkPinDataCopyWithImpl<$Res> extends _$GdkPinDataCopyWithImpl<$Res>
    implements _$$_GdkPinDataCopyWith<$Res> {
  __$$_GdkPinDataCopyWithImpl(
      _$_GdkPinData _value, $Res Function(_$_GdkPinData) _then)
      : super(_value, (v) => _then(v as _$_GdkPinData));

  @override
  _$_GdkPinData get _value => super._value as _$_GdkPinData;

  @override
  $Res call({
    Object? encryptedData = freezed,
    Object? pinIdentifier = freezed,
    Object? salt = freezed,
  }) {
    return _then(_$_GdkPinData(
      encryptedData: encryptedData == freezed
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as String?,
      pinIdentifier: pinIdentifier == freezed
          ? _value.pinIdentifier
          : pinIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkPinData implements _GdkPinData {
  const _$_GdkPinData(
      {@JsonKey(name: 'encrypted_data') this.encryptedData,
      @JsonKey(name: 'pin_identifier') this.pinIdentifier,
      this.salt});

  factory _$_GdkPinData.fromJson(Map<String, dynamic> json) =>
      _$$_GdkPinDataFromJson(json);

  @override
  @JsonKey(name: 'encrypted_data')
  final String? encryptedData;
  @override
  @JsonKey(name: 'pin_identifier')
  final String? pinIdentifier;
  @override
  final String? salt;

  @override
  String toString() {
    return 'GdkPinData(encryptedData: $encryptedData, pinIdentifier: $pinIdentifier, salt: $salt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkPinData &&
            const DeepCollectionEquality()
                .equals(other.encryptedData, encryptedData) &&
            const DeepCollectionEquality()
                .equals(other.pinIdentifier, pinIdentifier) &&
            const DeepCollectionEquality().equals(other.salt, salt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(encryptedData),
      const DeepCollectionEquality().hash(pinIdentifier),
      const DeepCollectionEquality().hash(salt));

  @JsonKey(ignore: true)
  @override
  _$$_GdkPinDataCopyWith<_$_GdkPinData> get copyWith =>
      __$$_GdkPinDataCopyWithImpl<_$_GdkPinData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkPinDataToJson(
      this,
    );
  }
}

abstract class _GdkPinData implements GdkPinData {
  const factory _GdkPinData(
      {@JsonKey(name: 'encrypted_data') final String? encryptedData,
      @JsonKey(name: 'pin_identifier') final String? pinIdentifier,
      final String? salt}) = _$_GdkPinData;

  factory _GdkPinData.fromJson(Map<String, dynamic> json) =
      _$_GdkPinData.fromJson;

  @override
  @JsonKey(name: 'encrypted_data')
  String? get encryptedData;
  @override
  @JsonKey(name: 'pin_identifier')
  String? get pinIdentifier;
  @override
  String? get salt;
  @override
  @JsonKey(ignore: true)
  _$$_GdkPinDataCopyWith<_$_GdkPinData> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkLoginCredentials _$GdkLoginCredentialsFromJson(Map<String, dynamic> json) {
  return _GdkLoginCredentials.fromJson(json);
}

/// @nodoc
mixin _$GdkLoginCredentials {
  String get mnemonic => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'bip39_passphrase')
  String? get bip39Passphrase => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_data')
  GdkPinData? get pinData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkLoginCredentialsCopyWith<GdkLoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkLoginCredentialsCopyWith<$Res> {
  factory $GdkLoginCredentialsCopyWith(
          GdkLoginCredentials value, $Res Function(GdkLoginCredentials) then) =
      _$GdkLoginCredentialsCopyWithImpl<$Res>;
  $Res call(
      {String mnemonic,
      String? username,
      String password,
      @JsonKey(name: 'bip39_passphrase') String? bip39Passphrase,
      String? pin,
      @JsonKey(name: 'pin_data') GdkPinData? pinData});

  $GdkPinDataCopyWith<$Res>? get pinData;
}

/// @nodoc
class _$GdkLoginCredentialsCopyWithImpl<$Res>
    implements $GdkLoginCredentialsCopyWith<$Res> {
  _$GdkLoginCredentialsCopyWithImpl(this._value, this._then);

  final GdkLoginCredentials _value;
  // ignore: unused_field
  final $Res Function(GdkLoginCredentials) _then;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? bip39Passphrase = freezed,
    Object? pin = freezed,
    Object? pinData = freezed,
  }) {
    return _then(_value.copyWith(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      bip39Passphrase: bip39Passphrase == freezed
          ? _value.bip39Passphrase
          : bip39Passphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      pinData: pinData == freezed
          ? _value.pinData
          : pinData // ignore: cast_nullable_to_non_nullable
              as GdkPinData?,
    ));
  }

  @override
  $GdkPinDataCopyWith<$Res>? get pinData {
    if (_value.pinData == null) {
      return null;
    }

    return $GdkPinDataCopyWith<$Res>(_value.pinData!, (value) {
      return _then(_value.copyWith(pinData: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkLoginCredentialsCopyWith<$Res>
    implements $GdkLoginCredentialsCopyWith<$Res> {
  factory _$$_GdkLoginCredentialsCopyWith(_$_GdkLoginCredentials value,
          $Res Function(_$_GdkLoginCredentials) then) =
      __$$_GdkLoginCredentialsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mnemonic,
      String? username,
      String password,
      @JsonKey(name: 'bip39_passphrase') String? bip39Passphrase,
      String? pin,
      @JsonKey(name: 'pin_data') GdkPinData? pinData});

  @override
  $GdkPinDataCopyWith<$Res>? get pinData;
}

/// @nodoc
class __$$_GdkLoginCredentialsCopyWithImpl<$Res>
    extends _$GdkLoginCredentialsCopyWithImpl<$Res>
    implements _$$_GdkLoginCredentialsCopyWith<$Res> {
  __$$_GdkLoginCredentialsCopyWithImpl(_$_GdkLoginCredentials _value,
      $Res Function(_$_GdkLoginCredentials) _then)
      : super(_value, (v) => _then(v as _$_GdkLoginCredentials));

  @override
  _$_GdkLoginCredentials get _value => super._value as _$_GdkLoginCredentials;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? bip39Passphrase = freezed,
    Object? pin = freezed,
    Object? pinData = freezed,
  }) {
    return _then(_$_GdkLoginCredentials(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      bip39Passphrase: bip39Passphrase == freezed
          ? _value.bip39Passphrase
          : bip39Passphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      pinData: pinData == freezed
          ? _value.pinData
          : pinData // ignore: cast_nullable_to_non_nullable
              as GdkPinData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkLoginCredentials extends _GdkLoginCredentials {
  const _$_GdkLoginCredentials(
      {required this.mnemonic,
      this.username,
      this.password = '',
      @JsonKey(name: 'bip39_passphrase') this.bip39Passphrase,
      this.pin,
      @JsonKey(name: 'pin_data') this.pinData})
      : super._();

  factory _$_GdkLoginCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_GdkLoginCredentialsFromJson(json);

  @override
  final String mnemonic;
  @override
  final String? username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey(name: 'bip39_passphrase')
  final String? bip39Passphrase;
  @override
  final String? pin;
  @override
  @JsonKey(name: 'pin_data')
  final GdkPinData? pinData;

  @override
  String toString() {
    return 'GdkLoginCredentials(mnemonic: $mnemonic, username: $username, password: $password, bip39Passphrase: $bip39Passphrase, pin: $pin, pinData: $pinData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkLoginCredentials &&
            const DeepCollectionEquality().equals(other.mnemonic, mnemonic) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.bip39Passphrase, bip39Passphrase) &&
            const DeepCollectionEquality().equals(other.pin, pin) &&
            const DeepCollectionEquality().equals(other.pinData, pinData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mnemonic),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(bip39Passphrase),
      const DeepCollectionEquality().hash(pin),
      const DeepCollectionEquality().hash(pinData));

  @JsonKey(ignore: true)
  @override
  _$$_GdkLoginCredentialsCopyWith<_$_GdkLoginCredentials> get copyWith =>
      __$$_GdkLoginCredentialsCopyWithImpl<_$_GdkLoginCredentials>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkLoginCredentialsToJson(
      this,
    );
  }
}

abstract class _GdkLoginCredentials extends GdkLoginCredentials {
  const factory _GdkLoginCredentials(
          {required final String mnemonic,
          final String? username,
          final String password,
          @JsonKey(name: 'bip39_passphrase') final String? bip39Passphrase,
          final String? pin,
          @JsonKey(name: 'pin_data') final GdkPinData? pinData}) =
      _$_GdkLoginCredentials;
  const _GdkLoginCredentials._() : super._();

  factory _GdkLoginCredentials.fromJson(Map<String, dynamic> json) =
      _$_GdkLoginCredentials.fromJson;

  @override
  String get mnemonic;
  @override
  String? get username;
  @override
  String get password;
  @override
  @JsonKey(name: 'bip39_passphrase')
  String? get bip39Passphrase;
  @override
  String? get pin;
  @override
  @JsonKey(name: 'pin_data')
  GdkPinData? get pinData;
  @override
  @JsonKey(ignore: true)
  _$$_GdkLoginCredentialsCopyWith<_$_GdkLoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkDevice _$GdkDeviceFromJson(Map<String, dynamic> json) {
  return _GdkDevice.fromJson(json);
}

/// @nodoc
mixin _$GdkDevice {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_ae_protocol')
  int? get supportsAeProtocol => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_arbitrary_scripts')
  bool? get supportsArbitraryScripts => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_host_unblinding')
  bool? get supportsHostUnblinding => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_liquid')
  int? get supportsLiquid => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_low_r')
  bool? get supportsLowR => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkDeviceCopyWith<GdkDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkDeviceCopyWith<$Res> {
  factory $GdkDeviceCopyWith(GdkDevice value, $Res Function(GdkDevice) then) =
      _$GdkDeviceCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      @JsonKey(name: 'supports_ae_protocol')
          int? supportsAeProtocol,
      @JsonKey(name: 'supports_arbitrary_scripts')
          bool? supportsArbitraryScripts,
      @JsonKey(name: 'supports_host_unblinding')
          bool? supportsHostUnblinding,
      @JsonKey(name: 'supports_liquid')
          int? supportsLiquid,
      @JsonKey(name: 'supports_low_r')
          bool? supportsLowR});
}

/// @nodoc
class _$GdkDeviceCopyWithImpl<$Res> implements $GdkDeviceCopyWith<$Res> {
  _$GdkDeviceCopyWithImpl(this._value, this._then);

  final GdkDevice _value;
  // ignore: unused_field
  final $Res Function(GdkDevice) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? supportsAeProtocol = freezed,
    Object? supportsArbitraryScripts = freezed,
    Object? supportsHostUnblinding = freezed,
    Object? supportsLiquid = freezed,
    Object? supportsLowR = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsAeProtocol: supportsAeProtocol == freezed
          ? _value.supportsAeProtocol
          : supportsAeProtocol // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsArbitraryScripts: supportsArbitraryScripts == freezed
          ? _value.supportsArbitraryScripts
          : supportsArbitraryScripts // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsHostUnblinding: supportsHostUnblinding == freezed
          ? _value.supportsHostUnblinding
          : supportsHostUnblinding // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsLiquid: supportsLiquid == freezed
          ? _value.supportsLiquid
          : supportsLiquid // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsLowR: supportsLowR == freezed
          ? _value.supportsLowR
          : supportsLowR // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkDeviceCopyWith<$Res> implements $GdkDeviceCopyWith<$Res> {
  factory _$$_GdkDeviceCopyWith(
          _$_GdkDevice value, $Res Function(_$_GdkDevice) then) =
      __$$_GdkDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      @JsonKey(name: 'supports_ae_protocol')
          int? supportsAeProtocol,
      @JsonKey(name: 'supports_arbitrary_scripts')
          bool? supportsArbitraryScripts,
      @JsonKey(name: 'supports_host_unblinding')
          bool? supportsHostUnblinding,
      @JsonKey(name: 'supports_liquid')
          int? supportsLiquid,
      @JsonKey(name: 'supports_low_r')
          bool? supportsLowR});
}

/// @nodoc
class __$$_GdkDeviceCopyWithImpl<$Res> extends _$GdkDeviceCopyWithImpl<$Res>
    implements _$$_GdkDeviceCopyWith<$Res> {
  __$$_GdkDeviceCopyWithImpl(
      _$_GdkDevice _value, $Res Function(_$_GdkDevice) _then)
      : super(_value, (v) => _then(v as _$_GdkDevice));

  @override
  _$_GdkDevice get _value => super._value as _$_GdkDevice;

  @override
  $Res call({
    Object? name = freezed,
    Object? supportsAeProtocol = freezed,
    Object? supportsArbitraryScripts = freezed,
    Object? supportsHostUnblinding = freezed,
    Object? supportsLiquid = freezed,
    Object? supportsLowR = freezed,
  }) {
    return _then(_$_GdkDevice(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsAeProtocol: supportsAeProtocol == freezed
          ? _value.supportsAeProtocol
          : supportsAeProtocol // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsArbitraryScripts: supportsArbitraryScripts == freezed
          ? _value.supportsArbitraryScripts
          : supportsArbitraryScripts // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsHostUnblinding: supportsHostUnblinding == freezed
          ? _value.supportsHostUnblinding
          : supportsHostUnblinding // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsLiquid: supportsLiquid == freezed
          ? _value.supportsLiquid
          : supportsLiquid // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsLowR: supportsLowR == freezed
          ? _value.supportsLowR
          : supportsLowR // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkDevice extends _GdkDevice {
  const _$_GdkDevice(
      {this.name,
      @JsonKey(name: 'supports_ae_protocol')
          this.supportsAeProtocol,
      @JsonKey(name: 'supports_arbitrary_scripts')
          this.supportsArbitraryScripts,
      @JsonKey(name: 'supports_host_unblinding')
          this.supportsHostUnblinding,
      @JsonKey(name: 'supports_liquid')
          this.supportsLiquid,
      @JsonKey(name: 'supports_low_r')
          this.supportsLowR})
      : super._();

  factory _$_GdkDevice.fromJson(Map<String, dynamic> json) =>
      _$$_GdkDeviceFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'supports_ae_protocol')
  final int? supportsAeProtocol;
  @override
  @JsonKey(name: 'supports_arbitrary_scripts')
  final bool? supportsArbitraryScripts;
  @override
  @JsonKey(name: 'supports_host_unblinding')
  final bool? supportsHostUnblinding;
  @override
  @JsonKey(name: 'supports_liquid')
  final int? supportsLiquid;
  @override
  @JsonKey(name: 'supports_low_r')
  final bool? supportsLowR;

  @override
  String toString() {
    return 'GdkDevice(name: $name, supportsAeProtocol: $supportsAeProtocol, supportsArbitraryScripts: $supportsArbitraryScripts, supportsHostUnblinding: $supportsHostUnblinding, supportsLiquid: $supportsLiquid, supportsLowR: $supportsLowR)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkDevice &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.supportsAeProtocol, supportsAeProtocol) &&
            const DeepCollectionEquality().equals(
                other.supportsArbitraryScripts, supportsArbitraryScripts) &&
            const DeepCollectionEquality()
                .equals(other.supportsHostUnblinding, supportsHostUnblinding) &&
            const DeepCollectionEquality()
                .equals(other.supportsLiquid, supportsLiquid) &&
            const DeepCollectionEquality()
                .equals(other.supportsLowR, supportsLowR));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(supportsAeProtocol),
      const DeepCollectionEquality().hash(supportsArbitraryScripts),
      const DeepCollectionEquality().hash(supportsHostUnblinding),
      const DeepCollectionEquality().hash(supportsLiquid),
      const DeepCollectionEquality().hash(supportsLowR));

  @JsonKey(ignore: true)
  @override
  _$$_GdkDeviceCopyWith<_$_GdkDevice> get copyWith =>
      __$$_GdkDeviceCopyWithImpl<_$_GdkDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkDeviceToJson(
      this,
    );
  }
}

abstract class _GdkDevice extends GdkDevice {
  const factory _GdkDevice(
      {final String? name,
      @JsonKey(name: 'supports_ae_protocol')
          final int? supportsAeProtocol,
      @JsonKey(name: 'supports_arbitrary_scripts')
          final bool? supportsArbitraryScripts,
      @JsonKey(name: 'supports_host_unblinding')
          final bool? supportsHostUnblinding,
      @JsonKey(name: 'supports_liquid')
          final int? supportsLiquid,
      @JsonKey(name: 'supports_low_r')
          final bool? supportsLowR}) = _$_GdkDevice;
  const _GdkDevice._() : super._();

  factory _GdkDevice.fromJson(Map<String, dynamic> json) =
      _$_GdkDevice.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'supports_ae_protocol')
  int? get supportsAeProtocol;
  @override
  @JsonKey(name: 'supports_arbitrary_scripts')
  bool? get supportsArbitraryScripts;
  @override
  @JsonKey(name: 'supports_host_unblinding')
  bool? get supportsHostUnblinding;
  @override
  @JsonKey(name: 'supports_liquid')
  int? get supportsLiquid;
  @override
  @JsonKey(name: 'supports_low_r')
  bool? get supportsLowR;
  @override
  @JsonKey(ignore: true)
  _$$_GdkDeviceCopyWith<_$_GdkDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkHwDevice _$GdkHwDeviceFromJson(Map<String, dynamic> json) {
  return _GdkHwDevice.fromJson(json);
}

/// @nodoc
mixin _$GdkHwDevice {
  GdkDevice? get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkHwDeviceCopyWith<GdkHwDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkHwDeviceCopyWith<$Res> {
  factory $GdkHwDeviceCopyWith(
          GdkHwDevice value, $Res Function(GdkHwDevice) then) =
      _$GdkHwDeviceCopyWithImpl<$Res>;
  $Res call({GdkDevice? device});

  $GdkDeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$GdkHwDeviceCopyWithImpl<$Res> implements $GdkHwDeviceCopyWith<$Res> {
  _$GdkHwDeviceCopyWithImpl(this._value, this._then);

  final GdkHwDevice _value;
  // ignore: unused_field
  final $Res Function(GdkHwDevice) _then;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as GdkDevice?,
    ));
  }

  @override
  $GdkDeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $GdkDeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkHwDeviceCopyWith<$Res>
    implements $GdkHwDeviceCopyWith<$Res> {
  factory _$$_GdkHwDeviceCopyWith(
          _$_GdkHwDevice value, $Res Function(_$_GdkHwDevice) then) =
      __$$_GdkHwDeviceCopyWithImpl<$Res>;
  @override
  $Res call({GdkDevice? device});

  @override
  $GdkDeviceCopyWith<$Res>? get device;
}

/// @nodoc
class __$$_GdkHwDeviceCopyWithImpl<$Res> extends _$GdkHwDeviceCopyWithImpl<$Res>
    implements _$$_GdkHwDeviceCopyWith<$Res> {
  __$$_GdkHwDeviceCopyWithImpl(
      _$_GdkHwDevice _value, $Res Function(_$_GdkHwDevice) _then)
      : super(_value, (v) => _then(v as _$_GdkHwDevice));

  @override
  _$_GdkHwDevice get _value => super._value as _$_GdkHwDevice;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_$_GdkHwDevice(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as GdkDevice?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkHwDevice extends _GdkHwDevice {
  const _$_GdkHwDevice({this.device}) : super._();

  factory _$_GdkHwDevice.fromJson(Map<String, dynamic> json) =>
      _$$_GdkHwDeviceFromJson(json);

  @override
  final GdkDevice? device;

  @override
  String toString() {
    return 'GdkHwDevice(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkHwDevice &&
            const DeepCollectionEquality().equals(other.device, device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(device));

  @JsonKey(ignore: true)
  @override
  _$$_GdkHwDeviceCopyWith<_$_GdkHwDevice> get copyWith =>
      __$$_GdkHwDeviceCopyWithImpl<_$_GdkHwDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkHwDeviceToJson(
      this,
    );
  }
}

abstract class _GdkHwDevice extends GdkHwDevice {
  const factory _GdkHwDevice({final GdkDevice? device}) = _$_GdkHwDevice;
  const _GdkHwDevice._() : super._();

  factory _GdkHwDevice.fromJson(Map<String, dynamic> json) =
      _$_GdkHwDevice.fromJson;

  @override
  GdkDevice? get device;
  @override
  @JsonKey(ignore: true)
  _$$_GdkHwDeviceCopyWith<_$_GdkHwDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkSubaccount _$GdkSubaccountFromJson(Map<String, dynamic> json) {
  return _GdkSubaccount.fromJson(json);
}

/// @nodoc
mixin _$GdkSubaccount {
  bool? get hidden => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get pointer => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiving_id')
  String? get receivingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_chain_code')
  String? get recoveryChainCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_pub_key')
  String? get recoveryPubKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_xpub')
  String? get recoveryXpub => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_ca')
  int? get requiredCa => throw _privateConstructorUsedError;
  GdkSubaccountTypeEnum? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'bip44_discovered')
  bool? get bip44Discovered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkSubaccountCopyWith<GdkSubaccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkSubaccountCopyWith<$Res> {
  factory $GdkSubaccountCopyWith(
          GdkSubaccount value, $Res Function(GdkSubaccount) then) =
      _$GdkSubaccountCopyWithImpl<$Res>;
  $Res call(
      {bool? hidden,
      String? name,
      int? pointer,
      @JsonKey(name: 'receiving_id') String? receivingId,
      @JsonKey(name: 'recovery_chain_code') String? recoveryChainCode,
      @JsonKey(name: 'recovery_pub_key') String? recoveryPubKey,
      @JsonKey(name: 'recovery_xpub') String? recoveryXpub,
      @JsonKey(name: 'required_ca') int? requiredCa,
      GdkSubaccountTypeEnum? type,
      @JsonKey(name: 'bip44_discovered') bool? bip44Discovered});
}

/// @nodoc
class _$GdkSubaccountCopyWithImpl<$Res>
    implements $GdkSubaccountCopyWith<$Res> {
  _$GdkSubaccountCopyWithImpl(this._value, this._then);

  final GdkSubaccount _value;
  // ignore: unused_field
  final $Res Function(GdkSubaccount) _then;

  @override
  $Res call({
    Object? hidden = freezed,
    Object? name = freezed,
    Object? pointer = freezed,
    Object? receivingId = freezed,
    Object? recoveryChainCode = freezed,
    Object? recoveryPubKey = freezed,
    Object? recoveryXpub = freezed,
    Object? requiredCa = freezed,
    Object? type = freezed,
    Object? bip44Discovered = freezed,
  }) {
    return _then(_value.copyWith(
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      receivingId: receivingId == freezed
          ? _value.receivingId
          : receivingId // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryChainCode: recoveryChainCode == freezed
          ? _value.recoveryChainCode
          : recoveryChainCode // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryPubKey: recoveryPubKey == freezed
          ? _value.recoveryPubKey
          : recoveryPubKey // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryXpub: recoveryXpub == freezed
          ? _value.recoveryXpub
          : recoveryXpub // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredCa: requiredCa == freezed
          ? _value.requiredCa
          : requiredCa // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkSubaccountTypeEnum?,
      bip44Discovered: bip44Discovered == freezed
          ? _value.bip44Discovered
          : bip44Discovered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkSubaccountCopyWith<$Res>
    implements $GdkSubaccountCopyWith<$Res> {
  factory _$$_GdkSubaccountCopyWith(
          _$_GdkSubaccount value, $Res Function(_$_GdkSubaccount) then) =
      __$$_GdkSubaccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? hidden,
      String? name,
      int? pointer,
      @JsonKey(name: 'receiving_id') String? receivingId,
      @JsonKey(name: 'recovery_chain_code') String? recoveryChainCode,
      @JsonKey(name: 'recovery_pub_key') String? recoveryPubKey,
      @JsonKey(name: 'recovery_xpub') String? recoveryXpub,
      @JsonKey(name: 'required_ca') int? requiredCa,
      GdkSubaccountTypeEnum? type,
      @JsonKey(name: 'bip44_discovered') bool? bip44Discovered});
}

/// @nodoc
class __$$_GdkSubaccountCopyWithImpl<$Res>
    extends _$GdkSubaccountCopyWithImpl<$Res>
    implements _$$_GdkSubaccountCopyWith<$Res> {
  __$$_GdkSubaccountCopyWithImpl(
      _$_GdkSubaccount _value, $Res Function(_$_GdkSubaccount) _then)
      : super(_value, (v) => _then(v as _$_GdkSubaccount));

  @override
  _$_GdkSubaccount get _value => super._value as _$_GdkSubaccount;

  @override
  $Res call({
    Object? hidden = freezed,
    Object? name = freezed,
    Object? pointer = freezed,
    Object? receivingId = freezed,
    Object? recoveryChainCode = freezed,
    Object? recoveryPubKey = freezed,
    Object? recoveryXpub = freezed,
    Object? requiredCa = freezed,
    Object? type = freezed,
    Object? bip44Discovered = freezed,
  }) {
    return _then(_$_GdkSubaccount(
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      receivingId: receivingId == freezed
          ? _value.receivingId
          : receivingId // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryChainCode: recoveryChainCode == freezed
          ? _value.recoveryChainCode
          : recoveryChainCode // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryPubKey: recoveryPubKey == freezed
          ? _value.recoveryPubKey
          : recoveryPubKey // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryXpub: recoveryXpub == freezed
          ? _value.recoveryXpub
          : recoveryXpub // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredCa: requiredCa == freezed
          ? _value.requiredCa
          : requiredCa // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkSubaccountTypeEnum?,
      bip44Discovered: bip44Discovered == freezed
          ? _value.bip44Discovered
          : bip44Discovered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkSubaccount extends _GdkSubaccount {
  const _$_GdkSubaccount(
      {this.hidden = false,
      this.name = 'Managed Assets',
      this.pointer,
      @JsonKey(name: 'receiving_id') this.receivingId,
      @JsonKey(name: 'recovery_chain_code') this.recoveryChainCode,
      @JsonKey(name: 'recovery_pub_key') this.recoveryPubKey,
      @JsonKey(name: 'recovery_xpub') this.recoveryXpub,
      @JsonKey(name: 'required_ca') this.requiredCa,
      this.type = GdkSubaccountTypeEnum.type_p2sh_p2wpkh,
      @JsonKey(name: 'bip44_discovered') this.bip44Discovered})
      : super._();

  factory _$_GdkSubaccount.fromJson(Map<String, dynamic> json) =>
      _$$_GdkSubaccountFromJson(json);

  @override
  @JsonKey()
  final bool? hidden;
  @override
  @JsonKey()
  final String? name;
  @override
  final int? pointer;
  @override
  @JsonKey(name: 'receiving_id')
  final String? receivingId;
  @override
  @JsonKey(name: 'recovery_chain_code')
  final String? recoveryChainCode;
  @override
  @JsonKey(name: 'recovery_pub_key')
  final String? recoveryPubKey;
  @override
  @JsonKey(name: 'recovery_xpub')
  final String? recoveryXpub;
  @override
  @JsonKey(name: 'required_ca')
  final int? requiredCa;
  @override
  @JsonKey()
  final GdkSubaccountTypeEnum? type;
  @override
  @JsonKey(name: 'bip44_discovered')
  final bool? bip44Discovered;

  @override
  String toString() {
    return 'GdkSubaccount(hidden: $hidden, name: $name, pointer: $pointer, receivingId: $receivingId, recoveryChainCode: $recoveryChainCode, recoveryPubKey: $recoveryPubKey, recoveryXpub: $recoveryXpub, requiredCa: $requiredCa, type: $type, bip44Discovered: $bip44Discovered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkSubaccount &&
            const DeepCollectionEquality().equals(other.hidden, hidden) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pointer, pointer) &&
            const DeepCollectionEquality()
                .equals(other.receivingId, receivingId) &&
            const DeepCollectionEquality()
                .equals(other.recoveryChainCode, recoveryChainCode) &&
            const DeepCollectionEquality()
                .equals(other.recoveryPubKey, recoveryPubKey) &&
            const DeepCollectionEquality()
                .equals(other.recoveryXpub, recoveryXpub) &&
            const DeepCollectionEquality()
                .equals(other.requiredCa, requiredCa) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.bip44Discovered, bip44Discovered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hidden),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pointer),
      const DeepCollectionEquality().hash(receivingId),
      const DeepCollectionEquality().hash(recoveryChainCode),
      const DeepCollectionEquality().hash(recoveryPubKey),
      const DeepCollectionEquality().hash(recoveryXpub),
      const DeepCollectionEquality().hash(requiredCa),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(bip44Discovered));

  @JsonKey(ignore: true)
  @override
  _$$_GdkSubaccountCopyWith<_$_GdkSubaccount> get copyWith =>
      __$$_GdkSubaccountCopyWithImpl<_$_GdkSubaccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkSubaccountToJson(
      this,
    );
  }
}

abstract class _GdkSubaccount extends GdkSubaccount {
  const factory _GdkSubaccount(
          {final bool? hidden,
          final String? name,
          final int? pointer,
          @JsonKey(name: 'receiving_id') final String? receivingId,
          @JsonKey(name: 'recovery_chain_code') final String? recoveryChainCode,
          @JsonKey(name: 'recovery_pub_key') final String? recoveryPubKey,
          @JsonKey(name: 'recovery_xpub') final String? recoveryXpub,
          @JsonKey(name: 'required_ca') final int? requiredCa,
          final GdkSubaccountTypeEnum? type,
          @JsonKey(name: 'bip44_discovered') final bool? bip44Discovered}) =
      _$_GdkSubaccount;
  const _GdkSubaccount._() : super._();

  factory _GdkSubaccount.fromJson(Map<String, dynamic> json) =
      _$_GdkSubaccount.fromJson;

  @override
  bool? get hidden;
  @override
  String? get name;
  @override
  int? get pointer;
  @override
  @JsonKey(name: 'receiving_id')
  String? get receivingId;
  @override
  @JsonKey(name: 'recovery_chain_code')
  String? get recoveryChainCode;
  @override
  @JsonKey(name: 'recovery_pub_key')
  String? get recoveryPubKey;
  @override
  @JsonKey(name: 'recovery_xpub')
  String? get recoveryXpub;
  @override
  @JsonKey(name: 'required_ca')
  int? get requiredCa;
  @override
  GdkSubaccountTypeEnum? get type;
  @override
  @JsonKey(name: 'bip44_discovered')
  bool? get bip44Discovered;
  @override
  @JsonKey(ignore: true)
  _$$_GdkSubaccountCopyWith<_$_GdkSubaccount> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkLoginUser _$GdkLoginUserFromJson(Map<String, dynamic> json) {
  return _GdkLoginUser.fromJson(json);
}

/// @nodoc
mixin _$GdkLoginUser {
  @JsonKey(name: 'wallet_hash_id')
  String? get walletHashId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkLoginUserCopyWith<GdkLoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkLoginUserCopyWith<$Res> {
  factory $GdkLoginUserCopyWith(
          GdkLoginUser value, $Res Function(GdkLoginUser) then) =
      _$GdkLoginUserCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'wallet_hash_id') String? walletHashId});
}

/// @nodoc
class _$GdkLoginUserCopyWithImpl<$Res> implements $GdkLoginUserCopyWith<$Res> {
  _$GdkLoginUserCopyWithImpl(this._value, this._then);

  final GdkLoginUser _value;
  // ignore: unused_field
  final $Res Function(GdkLoginUser) _then;

  @override
  $Res call({
    Object? walletHashId = freezed,
  }) {
    return _then(_value.copyWith(
      walletHashId: walletHashId == freezed
          ? _value.walletHashId
          : walletHashId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkLoginUserCopyWith<$Res>
    implements $GdkLoginUserCopyWith<$Res> {
  factory _$$_GdkLoginUserCopyWith(
          _$_GdkLoginUser value, $Res Function(_$_GdkLoginUser) then) =
      __$$_GdkLoginUserCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'wallet_hash_id') String? walletHashId});
}

/// @nodoc
class __$$_GdkLoginUserCopyWithImpl<$Res>
    extends _$GdkLoginUserCopyWithImpl<$Res>
    implements _$$_GdkLoginUserCopyWith<$Res> {
  __$$_GdkLoginUserCopyWithImpl(
      _$_GdkLoginUser _value, $Res Function(_$_GdkLoginUser) _then)
      : super(_value, (v) => _then(v as _$_GdkLoginUser));

  @override
  _$_GdkLoginUser get _value => super._value as _$_GdkLoginUser;

  @override
  $Res call({
    Object? walletHashId = freezed,
  }) {
    return _then(_$_GdkLoginUser(
      walletHashId: walletHashId == freezed
          ? _value.walletHashId
          : walletHashId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkLoginUser implements _GdkLoginUser {
  const _$_GdkLoginUser({@JsonKey(name: 'wallet_hash_id') this.walletHashId});

  factory _$_GdkLoginUser.fromJson(Map<String, dynamic> json) =>
      _$$_GdkLoginUserFromJson(json);

  @override
  @JsonKey(name: 'wallet_hash_id')
  final String? walletHashId;

  @override
  String toString() {
    return 'GdkLoginUser(walletHashId: $walletHashId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkLoginUser &&
            const DeepCollectionEquality()
                .equals(other.walletHashId, walletHashId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletHashId));

  @JsonKey(ignore: true)
  @override
  _$$_GdkLoginUserCopyWith<_$_GdkLoginUser> get copyWith =>
      __$$_GdkLoginUserCopyWithImpl<_$_GdkLoginUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkLoginUserToJson(
      this,
    );
  }
}

abstract class _GdkLoginUser implements GdkLoginUser {
  const factory _GdkLoginUser(
          {@JsonKey(name: 'wallet_hash_id') final String? walletHashId}) =
      _$_GdkLoginUser;

  factory _GdkLoginUser.fromJson(Map<String, dynamic> json) =
      _$_GdkLoginUser.fromJson;

  @override
  @JsonKey(name: 'wallet_hash_id')
  String? get walletHashId;
  @override
  @JsonKey(ignore: true)
  _$$_GdkLoginUserCopyWith<_$_GdkLoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkGetBalance _$GdkGetBalanceFromJson(Map<String, dynamic> json) {
  return _GdkGetBalance.fromJson(json);
}

/// @nodoc
mixin _$GdkGetBalance {
  int? get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_confs')
  int? get numConfs => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_coins', defaultValue: true)
  bool? get allCoins => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  int? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get confidential => throw _privateConstructorUsedError;
  @JsonKey(name: 'dust_limit')
  int? get dustLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkGetBalanceCopyWith<GdkGetBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkGetBalanceCopyWith<$Res> {
  factory $GdkGetBalanceCopyWith(
          GdkGetBalance value, $Res Function(GdkGetBalance) then) =
      _$GdkGetBalanceCopyWithImpl<$Res>;
  $Res call(
      {int? subaccount,
      @JsonKey(name: 'num_confs') int? numConfs,
      @JsonKey(name: 'all_coins', defaultValue: true) bool? allCoins,
      @JsonKey(name: 'expired_at') int? expiredAt,
      @JsonKey(defaultValue: false) bool? confidential,
      @JsonKey(name: 'dust_limit') int? dustLimit});
}

/// @nodoc
class _$GdkGetBalanceCopyWithImpl<$Res>
    implements $GdkGetBalanceCopyWith<$Res> {
  _$GdkGetBalanceCopyWithImpl(this._value, this._then);

  final GdkGetBalance _value;
  // ignore: unused_field
  final $Res Function(GdkGetBalance) _then;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? numConfs = freezed,
    Object? allCoins = freezed,
    Object? expiredAt = freezed,
    Object? confidential = freezed,
    Object? dustLimit = freezed,
  }) {
    return _then(_value.copyWith(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      numConfs: numConfs == freezed
          ? _value.numConfs
          : numConfs // ignore: cast_nullable_to_non_nullable
              as int?,
      allCoins: allCoins == freezed
          ? _value.allCoins
          : allCoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      confidential: confidential == freezed
          ? _value.confidential
          : confidential // ignore: cast_nullable_to_non_nullable
              as bool?,
      dustLimit: dustLimit == freezed
          ? _value.dustLimit
          : dustLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkGetBalanceCopyWith<$Res>
    implements $GdkGetBalanceCopyWith<$Res> {
  factory _$$_GdkGetBalanceCopyWith(
          _$_GdkGetBalance value, $Res Function(_$_GdkGetBalance) then) =
      __$$_GdkGetBalanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? subaccount,
      @JsonKey(name: 'num_confs') int? numConfs,
      @JsonKey(name: 'all_coins', defaultValue: true) bool? allCoins,
      @JsonKey(name: 'expired_at') int? expiredAt,
      @JsonKey(defaultValue: false) bool? confidential,
      @JsonKey(name: 'dust_limit') int? dustLimit});
}

/// @nodoc
class __$$_GdkGetBalanceCopyWithImpl<$Res>
    extends _$GdkGetBalanceCopyWithImpl<$Res>
    implements _$$_GdkGetBalanceCopyWith<$Res> {
  __$$_GdkGetBalanceCopyWithImpl(
      _$_GdkGetBalance _value, $Res Function(_$_GdkGetBalance) _then)
      : super(_value, (v) => _then(v as _$_GdkGetBalance));

  @override
  _$_GdkGetBalance get _value => super._value as _$_GdkGetBalance;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? numConfs = freezed,
    Object? allCoins = freezed,
    Object? expiredAt = freezed,
    Object? confidential = freezed,
    Object? dustLimit = freezed,
  }) {
    return _then(_$_GdkGetBalance(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      numConfs: numConfs == freezed
          ? _value.numConfs
          : numConfs // ignore: cast_nullable_to_non_nullable
              as int?,
      allCoins: allCoins == freezed
          ? _value.allCoins
          : allCoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      confidential: confidential == freezed
          ? _value.confidential
          : confidential // ignore: cast_nullable_to_non_nullable
              as bool?,
      dustLimit: dustLimit == freezed
          ? _value.dustLimit
          : dustLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkGetBalance extends _GdkGetBalance {
  const _$_GdkGetBalance(
      {this.subaccount = 0,
      @JsonKey(name: 'num_confs') this.numConfs = 0,
      @JsonKey(name: 'all_coins', defaultValue: true) this.allCoins,
      @JsonKey(name: 'expired_at') this.expiredAt,
      @JsonKey(defaultValue: false) this.confidential,
      @JsonKey(name: 'dust_limit') this.dustLimit})
      : super._();

  factory _$_GdkGetBalance.fromJson(Map<String, dynamic> json) =>
      _$$_GdkGetBalanceFromJson(json);

  @override
  @JsonKey()
  final int? subaccount;
  @override
  @JsonKey(name: 'num_confs')
  final int? numConfs;
  @override
  @JsonKey(name: 'all_coins', defaultValue: true)
  final bool? allCoins;
  @override
  @JsonKey(name: 'expired_at')
  final int? expiredAt;
  @override
  @JsonKey(defaultValue: false)
  final bool? confidential;
  @override
  @JsonKey(name: 'dust_limit')
  final int? dustLimit;

  @override
  String toString() {
    return 'GdkGetBalance(subaccount: $subaccount, numConfs: $numConfs, allCoins: $allCoins, expiredAt: $expiredAt, confidential: $confidential, dustLimit: $dustLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkGetBalance &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.numConfs, numConfs) &&
            const DeepCollectionEquality().equals(other.allCoins, allCoins) &&
            const DeepCollectionEquality().equals(other.expiredAt, expiredAt) &&
            const DeepCollectionEquality()
                .equals(other.confidential, confidential) &&
            const DeepCollectionEquality().equals(other.dustLimit, dustLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(numConfs),
      const DeepCollectionEquality().hash(allCoins),
      const DeepCollectionEquality().hash(expiredAt),
      const DeepCollectionEquality().hash(confidential),
      const DeepCollectionEquality().hash(dustLimit));

  @JsonKey(ignore: true)
  @override
  _$$_GdkGetBalanceCopyWith<_$_GdkGetBalance> get copyWith =>
      __$$_GdkGetBalanceCopyWithImpl<_$_GdkGetBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkGetBalanceToJson(
      this,
    );
  }
}

abstract class _GdkGetBalance extends GdkGetBalance {
  const factory _GdkGetBalance(
      {final int? subaccount,
      @JsonKey(name: 'num_confs') final int? numConfs,
      @JsonKey(name: 'all_coins', defaultValue: true) final bool? allCoins,
      @JsonKey(name: 'expired_at') final int? expiredAt,
      @JsonKey(defaultValue: false) final bool? confidential,
      @JsonKey(name: 'dust_limit') final int? dustLimit}) = _$_GdkGetBalance;
  const _GdkGetBalance._() : super._();

  factory _GdkGetBalance.fromJson(Map<String, dynamic> json) =
      _$_GdkGetBalance.fromJson;

  @override
  int? get subaccount;
  @override
  @JsonKey(name: 'num_confs')
  int? get numConfs;
  @override
  @JsonKey(name: 'all_coins', defaultValue: true)
  bool? get allCoins;
  @override
  @JsonKey(name: 'expired_at')
  int? get expiredAt;
  @override
  @JsonKey(defaultValue: false)
  bool? get confidential;
  @override
  @JsonKey(name: 'dust_limit')
  int? get dustLimit;
  @override
  @JsonKey(ignore: true)
  _$$_GdkGetBalanceCopyWith<_$_GdkGetBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkAssetsParameters _$GdkAssetsParametersFromJson(Map<String, dynamic> json) {
  return _GdkAssetsParameters.fromJson(json);
}

/// @nodoc
mixin _$GdkAssetsParameters {
  bool? get icons => throw _privateConstructorUsedError;
  bool? get assets => throw _privateConstructorUsedError;
  bool? get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkAssetsParametersCopyWith<GdkAssetsParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkAssetsParametersCopyWith<$Res> {
  factory $GdkAssetsParametersCopyWith(
          GdkAssetsParameters value, $Res Function(GdkAssetsParameters) then) =
      _$GdkAssetsParametersCopyWithImpl<$Res>;
  $Res call({bool? icons, bool? assets, bool? refresh});
}

/// @nodoc
class _$GdkAssetsParametersCopyWithImpl<$Res>
    implements $GdkAssetsParametersCopyWith<$Res> {
  _$GdkAssetsParametersCopyWithImpl(this._value, this._then);

  final GdkAssetsParameters _value;
  // ignore: unused_field
  final $Res Function(GdkAssetsParameters) _then;

  @override
  $Res call({
    Object? icons = freezed,
    Object? assets = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      icons: icons == freezed
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as bool?,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as bool?,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkAssetsParametersCopyWith<$Res>
    implements $GdkAssetsParametersCopyWith<$Res> {
  factory _$$_GdkAssetsParametersCopyWith(_$_GdkAssetsParameters value,
          $Res Function(_$_GdkAssetsParameters) then) =
      __$$_GdkAssetsParametersCopyWithImpl<$Res>;
  @override
  $Res call({bool? icons, bool? assets, bool? refresh});
}

/// @nodoc
class __$$_GdkAssetsParametersCopyWithImpl<$Res>
    extends _$GdkAssetsParametersCopyWithImpl<$Res>
    implements _$$_GdkAssetsParametersCopyWith<$Res> {
  __$$_GdkAssetsParametersCopyWithImpl(_$_GdkAssetsParameters _value,
      $Res Function(_$_GdkAssetsParameters) _then)
      : super(_value, (v) => _then(v as _$_GdkAssetsParameters));

  @override
  _$_GdkAssetsParameters get _value => super._value as _$_GdkAssetsParameters;

  @override
  $Res call({
    Object? icons = freezed,
    Object? assets = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_$_GdkAssetsParameters(
      icons: icons == freezed
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as bool?,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as bool?,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkAssetsParameters extends _GdkAssetsParameters {
  const _$_GdkAssetsParameters(
      {this.icons = true, this.assets = true, this.refresh = true})
      : super._();

  factory _$_GdkAssetsParameters.fromJson(Map<String, dynamic> json) =>
      _$$_GdkAssetsParametersFromJson(json);

  @override
  @JsonKey()
  final bool? icons;
  @override
  @JsonKey()
  final bool? assets;
  @override
  @JsonKey()
  final bool? refresh;

  @override
  String toString() {
    return 'GdkAssetsParameters(icons: $icons, assets: $assets, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkAssetsParameters &&
            const DeepCollectionEquality().equals(other.icons, icons) &&
            const DeepCollectionEquality().equals(other.assets, assets) &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icons),
      const DeepCollectionEquality().hash(assets),
      const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  _$$_GdkAssetsParametersCopyWith<_$_GdkAssetsParameters> get copyWith =>
      __$$_GdkAssetsParametersCopyWithImpl<_$_GdkAssetsParameters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkAssetsParametersToJson(
      this,
    );
  }
}

abstract class _GdkAssetsParameters extends GdkAssetsParameters {
  const factory _GdkAssetsParameters(
      {final bool? icons,
      final bool? assets,
      final bool? refresh}) = _$_GdkAssetsParameters;
  const _GdkAssetsParameters._() : super._();

  factory _GdkAssetsParameters.fromJson(Map<String, dynamic> json) =
      _$_GdkAssetsParameters.fromJson;

  @override
  bool? get icons;
  @override
  bool? get assets;
  @override
  bool? get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_GdkAssetsParametersCopyWith<_$_GdkAssetsParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkAuthHandlerStatusResult _$GdkAuthHandlerStatusResultFromJson(
    Map<String, dynamic> json) {
  return _GdkAuthHandlerStatusResult.fromJson(json);
}

/// @nodoc
mixin _$GdkAuthHandlerStatusResult {
  @JsonKey(name: 'login_user')
  GdkLoginUser? get loginUser => throw _privateConstructorUsedError;
  List<GdkTransaction>? get transactions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_subaccount')
  GdkWallet? get getSubaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_receive_address')
  GdkReceiveAddressDetails? get getReceiveAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'last_pointer')
  int? get lastPointer => throw _privateConstructorUsedError;
  List<GdkPreviousAddress>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_transaction')
  GdkNewTransactionReply? get createTransaction =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_tx')
  GdkNewTransactionReply? get signTx => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_raw_tx')
  GdkNewTransactionReply? get sendRawTx => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_pset')
  GdkCreatePsetDetailsReply? get createPset =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_pset')
  GdkSignPsetDetailsReply? get signPset => throw _privateConstructorUsedError;
  @JsonKey(name: 'unspent_outputs')
  GdkUnspentOutputsReply? get unspentOutputs =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkAuthHandlerStatusResultCopyWith<GdkAuthHandlerStatusResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkAuthHandlerStatusResultCopyWith<$Res> {
  factory $GdkAuthHandlerStatusResultCopyWith(GdkAuthHandlerStatusResult value,
          $Res Function(GdkAuthHandlerStatusResult) then) =
      _$GdkAuthHandlerStatusResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'login_user')
          GdkLoginUser? loginUser,
      List<GdkTransaction>? transactions,
      Map<String, dynamic>? balance,
      @JsonKey(name: 'get_subaccount')
          GdkWallet? getSubaccount,
      @JsonKey(name: 'get_receive_address')
          GdkReceiveAddressDetails? getReceiveAddress,
      @JsonKey(name: 'last_pointer')
          int? lastPointer,
      List<GdkPreviousAddress>? list,
      @JsonKey(name: 'create_transaction')
          GdkNewTransactionReply? createTransaction,
      @JsonKey(name: 'sign_tx')
          GdkNewTransactionReply? signTx,
      @JsonKey(name: 'send_raw_tx')
          GdkNewTransactionReply? sendRawTx,
      @JsonKey(name: 'create_pset')
          GdkCreatePsetDetailsReply? createPset,
      @JsonKey(name: 'sign_pset')
          GdkSignPsetDetailsReply? signPset,
      @JsonKey(name: 'unspent_outputs')
          GdkUnspentOutputsReply? unspentOutputs});

  $GdkLoginUserCopyWith<$Res>? get loginUser;
  $GdkWalletCopyWith<$Res>? get getSubaccount;
  $GdkReceiveAddressDetailsCopyWith<$Res>? get getReceiveAddress;
  $GdkNewTransactionReplyCopyWith<$Res>? get createTransaction;
  $GdkNewTransactionReplyCopyWith<$Res>? get signTx;
  $GdkNewTransactionReplyCopyWith<$Res>? get sendRawTx;
  $GdkCreatePsetDetailsReplyCopyWith<$Res>? get createPset;
  $GdkSignPsetDetailsReplyCopyWith<$Res>? get signPset;
  $GdkUnspentOutputsReplyCopyWith<$Res>? get unspentOutputs;
}

/// @nodoc
class _$GdkAuthHandlerStatusResultCopyWithImpl<$Res>
    implements $GdkAuthHandlerStatusResultCopyWith<$Res> {
  _$GdkAuthHandlerStatusResultCopyWithImpl(this._value, this._then);

  final GdkAuthHandlerStatusResult _value;
  // ignore: unused_field
  final $Res Function(GdkAuthHandlerStatusResult) _then;

  @override
  $Res call({
    Object? loginUser = freezed,
    Object? transactions = freezed,
    Object? balance = freezed,
    Object? getSubaccount = freezed,
    Object? getReceiveAddress = freezed,
    Object? lastPointer = freezed,
    Object? list = freezed,
    Object? createTransaction = freezed,
    Object? signTx = freezed,
    Object? sendRawTx = freezed,
    Object? createPset = freezed,
    Object? signPset = freezed,
    Object? unspentOutputs = freezed,
  }) {
    return _then(_value.copyWith(
      loginUser: loginUser == freezed
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as GdkLoginUser?,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<GdkTransaction>?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      getSubaccount: getSubaccount == freezed
          ? _value.getSubaccount
          : getSubaccount // ignore: cast_nullable_to_non_nullable
              as GdkWallet?,
      getReceiveAddress: getReceiveAddress == freezed
          ? _value.getReceiveAddress
          : getReceiveAddress // ignore: cast_nullable_to_non_nullable
              as GdkReceiveAddressDetails?,
      lastPointer: lastPointer == freezed
          ? _value.lastPointer
          : lastPointer // ignore: cast_nullable_to_non_nullable
              as int?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GdkPreviousAddress>?,
      createTransaction: createTransaction == freezed
          ? _value.createTransaction
          : createTransaction // ignore: cast_nullable_to_non_nullable
              as GdkNewTransactionReply?,
      signTx: signTx == freezed
          ? _value.signTx
          : signTx // ignore: cast_nullable_to_non_nullable
              as GdkNewTransactionReply?,
      sendRawTx: sendRawTx == freezed
          ? _value.sendRawTx
          : sendRawTx // ignore: cast_nullable_to_non_nullable
              as GdkNewTransactionReply?,
      createPset: createPset == freezed
          ? _value.createPset
          : createPset // ignore: cast_nullable_to_non_nullable
              as GdkCreatePsetDetailsReply?,
      signPset: signPset == freezed
          ? _value.signPset
          : signPset // ignore: cast_nullable_to_non_nullable
              as GdkSignPsetDetailsReply?,
      unspentOutputs: unspentOutputs == freezed
          ? _value.unspentOutputs
          : unspentOutputs // ignore: cast_nullable_to_non_nullable
              as GdkUnspentOutputsReply?,
    ));
  }

  @override
  $GdkLoginUserCopyWith<$Res>? get loginUser {
    if (_value.loginUser == null) {
      return null;
    }

    return $GdkLoginUserCopyWith<$Res>(_value.loginUser!, (value) {
      return _then(_value.copyWith(loginUser: value));
    });
  }

  @override
  $GdkWalletCopyWith<$Res>? get getSubaccount {
    if (_value.getSubaccount == null) {
      return null;
    }

    return $GdkWalletCopyWith<$Res>(_value.getSubaccount!, (value) {
      return _then(_value.copyWith(getSubaccount: value));
    });
  }

  @override
  $GdkReceiveAddressDetailsCopyWith<$Res>? get getReceiveAddress {
    if (_value.getReceiveAddress == null) {
      return null;
    }

    return $GdkReceiveAddressDetailsCopyWith<$Res>(_value.getReceiveAddress!,
        (value) {
      return _then(_value.copyWith(getReceiveAddress: value));
    });
  }

  @override
  $GdkNewTransactionReplyCopyWith<$Res>? get createTransaction {
    if (_value.createTransaction == null) {
      return null;
    }

    return $GdkNewTransactionReplyCopyWith<$Res>(_value.createTransaction!,
        (value) {
      return _then(_value.copyWith(createTransaction: value));
    });
  }

  @override
  $GdkNewTransactionReplyCopyWith<$Res>? get signTx {
    if (_value.signTx == null) {
      return null;
    }

    return $GdkNewTransactionReplyCopyWith<$Res>(_value.signTx!, (value) {
      return _then(_value.copyWith(signTx: value));
    });
  }

  @override
  $GdkNewTransactionReplyCopyWith<$Res>? get sendRawTx {
    if (_value.sendRawTx == null) {
      return null;
    }

    return $GdkNewTransactionReplyCopyWith<$Res>(_value.sendRawTx!, (value) {
      return _then(_value.copyWith(sendRawTx: value));
    });
  }

  @override
  $GdkCreatePsetDetailsReplyCopyWith<$Res>? get createPset {
    if (_value.createPset == null) {
      return null;
    }

    return $GdkCreatePsetDetailsReplyCopyWith<$Res>(_value.createPset!,
        (value) {
      return _then(_value.copyWith(createPset: value));
    });
  }

  @override
  $GdkSignPsetDetailsReplyCopyWith<$Res>? get signPset {
    if (_value.signPset == null) {
      return null;
    }

    return $GdkSignPsetDetailsReplyCopyWith<$Res>(_value.signPset!, (value) {
      return _then(_value.copyWith(signPset: value));
    });
  }

  @override
  $GdkUnspentOutputsReplyCopyWith<$Res>? get unspentOutputs {
    if (_value.unspentOutputs == null) {
      return null;
    }

    return $GdkUnspentOutputsReplyCopyWith<$Res>(_value.unspentOutputs!,
        (value) {
      return _then(_value.copyWith(unspentOutputs: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkAuthHandlerStatusResultCopyWith<$Res>
    implements $GdkAuthHandlerStatusResultCopyWith<$Res> {
  factory _$$_GdkAuthHandlerStatusResultCopyWith(
          _$_GdkAuthHandlerStatusResult value,
          $Res Function(_$_GdkAuthHandlerStatusResult) then) =
      __$$_GdkAuthHandlerStatusResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'login_user')
          GdkLoginUser? loginUser,
      List<GdkTransaction>? transactions,
      Map<String, dynamic>? balance,
      @JsonKey(name: 'get_subaccount')
          GdkWallet? getSubaccount,
      @JsonKey(name: 'get_receive_address')
          GdkReceiveAddressDetails? getReceiveAddress,
      @JsonKey(name: 'last_pointer')
          int? lastPointer,
      List<GdkPreviousAddress>? list,
      @JsonKey(name: 'create_transaction')
          GdkNewTransactionReply? createTransaction,
      @JsonKey(name: 'sign_tx')
          GdkNewTransactionReply? signTx,
      @JsonKey(name: 'send_raw_tx')
          GdkNewTransactionReply? sendRawTx,
      @JsonKey(name: 'create_pset')
          GdkCreatePsetDetailsReply? createPset,
      @JsonKey(name: 'sign_pset')
          GdkSignPsetDetailsReply? signPset,
      @JsonKey(name: 'unspent_outputs')
          GdkUnspentOutputsReply? unspentOutputs});

  @override
  $GdkLoginUserCopyWith<$Res>? get loginUser;
  @override
  $GdkWalletCopyWith<$Res>? get getSubaccount;
  @override
  $GdkReceiveAddressDetailsCopyWith<$Res>? get getReceiveAddress;
  @override
  $GdkNewTransactionReplyCopyWith<$Res>? get createTransaction;
  @override
  $GdkNewTransactionReplyCopyWith<$Res>? get signTx;
  @override
  $GdkNewTransactionReplyCopyWith<$Res>? get sendRawTx;
  @override
  $GdkCreatePsetDetailsReplyCopyWith<$Res>? get createPset;
  @override
  $GdkSignPsetDetailsReplyCopyWith<$Res>? get signPset;
  @override
  $GdkUnspentOutputsReplyCopyWith<$Res>? get unspentOutputs;
}

/// @nodoc
class __$$_GdkAuthHandlerStatusResultCopyWithImpl<$Res>
    extends _$GdkAuthHandlerStatusResultCopyWithImpl<$Res>
    implements _$$_GdkAuthHandlerStatusResultCopyWith<$Res> {
  __$$_GdkAuthHandlerStatusResultCopyWithImpl(
      _$_GdkAuthHandlerStatusResult _value,
      $Res Function(_$_GdkAuthHandlerStatusResult) _then)
      : super(_value, (v) => _then(v as _$_GdkAuthHandlerStatusResult));

  @override
  _$_GdkAuthHandlerStatusResult get _value =>
      super._value as _$_GdkAuthHandlerStatusResult;

  @override
  $Res call({
    Object? loginUser = freezed,
    Object? transactions = freezed,
    Object? balance = freezed,
    Object? getSubaccount = freezed,
    Object? getReceiveAddress = freezed,
    Object? lastPointer = freezed,
    Object? list = freezed,
    Object? createTransaction = freezed,
    Object? signTx = freezed,
    Object? sendRawTx = freezed,
    Object? createPset = freezed,
    Object? signPset = freezed,
    Object? unspentOutputs = freezed,
  }) {
    return _then(_$_GdkAuthHandlerStatusResult(
      loginUser: loginUser == freezed
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as GdkLoginUser?,
      transactions: transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<GdkTransaction>?,
      balance: balance == freezed
          ? _value._balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      getSubaccount: getSubaccount == freezed
          ? _value.getSubaccount
          : getSubaccount // ignore: cast_nullable_to_non_nullable
              as GdkWallet?,
      getReceiveAddress: getReceiveAddress == freezed
          ? _value.getReceiveAddress
          : getReceiveAddress // ignore: cast_nullable_to_non_nullable
              as GdkReceiveAddressDetails?,
      lastPointer: lastPointer == freezed
          ? _value.lastPointer
          : lastPointer // ignore: cast_nullable_to_non_nullable
              as int?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GdkPreviousAddress>?,
      createTransaction: createTransaction == freezed
          ? _value.createTransaction
          : createTransaction // ignore: cast_nullable_to_non_nullable
              as GdkNewTransactionReply?,
      signTx: signTx == freezed
          ? _value.signTx
          : signTx // ignore: cast_nullable_to_non_nullable
              as GdkNewTransactionReply?,
      sendRawTx: sendRawTx == freezed
          ? _value.sendRawTx
          : sendRawTx // ignore: cast_nullable_to_non_nullable
              as GdkNewTransactionReply?,
      createPset: createPset == freezed
          ? _value.createPset
          : createPset // ignore: cast_nullable_to_non_nullable
              as GdkCreatePsetDetailsReply?,
      signPset: signPset == freezed
          ? _value.signPset
          : signPset // ignore: cast_nullable_to_non_nullable
              as GdkSignPsetDetailsReply?,
      unspentOutputs: unspentOutputs == freezed
          ? _value.unspentOutputs
          : unspentOutputs // ignore: cast_nullable_to_non_nullable
              as GdkUnspentOutputsReply?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkAuthHandlerStatusResult implements _GdkAuthHandlerStatusResult {
  const _$_GdkAuthHandlerStatusResult(
      {@JsonKey(name: 'login_user') this.loginUser,
      final List<GdkTransaction>? transactions,
      final Map<String, dynamic>? balance,
      @JsonKey(name: 'get_subaccount') this.getSubaccount,
      @JsonKey(name: 'get_receive_address') this.getReceiveAddress,
      @JsonKey(name: 'last_pointer') this.lastPointer,
      final List<GdkPreviousAddress>? list,
      @JsonKey(name: 'create_transaction') this.createTransaction,
      @JsonKey(name: 'sign_tx') this.signTx,
      @JsonKey(name: 'send_raw_tx') this.sendRawTx,
      @JsonKey(name: 'create_pset') this.createPset,
      @JsonKey(name: 'sign_pset') this.signPset,
      @JsonKey(name: 'unspent_outputs') this.unspentOutputs})
      : _transactions = transactions,
        _balance = balance,
        _list = list;

  factory _$_GdkAuthHandlerStatusResult.fromJson(Map<String, dynamic> json) =>
      _$$_GdkAuthHandlerStatusResultFromJson(json);

  @override
  @JsonKey(name: 'login_user')
  final GdkLoginUser? loginUser;
  final List<GdkTransaction>? _transactions;
  @override
  List<GdkTransaction>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _balance;
  @override
  Map<String, dynamic>? get balance {
    final value = _balance;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'get_subaccount')
  final GdkWallet? getSubaccount;
  @override
  @JsonKey(name: 'get_receive_address')
  final GdkReceiveAddressDetails? getReceiveAddress;
  @override
  @JsonKey(name: 'last_pointer')
  final int? lastPointer;
  final List<GdkPreviousAddress>? _list;
  @override
  List<GdkPreviousAddress>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'create_transaction')
  final GdkNewTransactionReply? createTransaction;
  @override
  @JsonKey(name: 'sign_tx')
  final GdkNewTransactionReply? signTx;
  @override
  @JsonKey(name: 'send_raw_tx')
  final GdkNewTransactionReply? sendRawTx;
  @override
  @JsonKey(name: 'create_pset')
  final GdkCreatePsetDetailsReply? createPset;
  @override
  @JsonKey(name: 'sign_pset')
  final GdkSignPsetDetailsReply? signPset;
  @override
  @JsonKey(name: 'unspent_outputs')
  final GdkUnspentOutputsReply? unspentOutputs;

  @override
  String toString() {
    return 'GdkAuthHandlerStatusResult(loginUser: $loginUser, transactions: $transactions, balance: $balance, getSubaccount: $getSubaccount, getReceiveAddress: $getReceiveAddress, lastPointer: $lastPointer, list: $list, createTransaction: $createTransaction, signTx: $signTx, sendRawTx: $sendRawTx, createPset: $createPset, signPset: $signPset, unspentOutputs: $unspentOutputs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkAuthHandlerStatusResult &&
            const DeepCollectionEquality().equals(other.loginUser, loginUser) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._balance, _balance) &&
            const DeepCollectionEquality()
                .equals(other.getSubaccount, getSubaccount) &&
            const DeepCollectionEquality()
                .equals(other.getReceiveAddress, getReceiveAddress) &&
            const DeepCollectionEquality()
                .equals(other.lastPointer, lastPointer) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other.createTransaction, createTransaction) &&
            const DeepCollectionEquality().equals(other.signTx, signTx) &&
            const DeepCollectionEquality().equals(other.sendRawTx, sendRawTx) &&
            const DeepCollectionEquality()
                .equals(other.createPset, createPset) &&
            const DeepCollectionEquality().equals(other.signPset, signPset) &&
            const DeepCollectionEquality()
                .equals(other.unspentOutputs, unspentOutputs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loginUser),
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_balance),
      const DeepCollectionEquality().hash(getSubaccount),
      const DeepCollectionEquality().hash(getReceiveAddress),
      const DeepCollectionEquality().hash(lastPointer),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(createTransaction),
      const DeepCollectionEquality().hash(signTx),
      const DeepCollectionEquality().hash(sendRawTx),
      const DeepCollectionEquality().hash(createPset),
      const DeepCollectionEquality().hash(signPset),
      const DeepCollectionEquality().hash(unspentOutputs));

  @JsonKey(ignore: true)
  @override
  _$$_GdkAuthHandlerStatusResultCopyWith<_$_GdkAuthHandlerStatusResult>
      get copyWith => __$$_GdkAuthHandlerStatusResultCopyWithImpl<
          _$_GdkAuthHandlerStatusResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkAuthHandlerStatusResultToJson(
      this,
    );
  }
}

abstract class _GdkAuthHandlerStatusResult
    implements GdkAuthHandlerStatusResult {
  const factory _GdkAuthHandlerStatusResult(
          {@JsonKey(name: 'login_user')
              final GdkLoginUser? loginUser,
          final List<GdkTransaction>? transactions,
          final Map<String, dynamic>? balance,
          @JsonKey(name: 'get_subaccount')
              final GdkWallet? getSubaccount,
          @JsonKey(name: 'get_receive_address')
              final GdkReceiveAddressDetails? getReceiveAddress,
          @JsonKey(name: 'last_pointer')
              final int? lastPointer,
          final List<GdkPreviousAddress>? list,
          @JsonKey(name: 'create_transaction')
              final GdkNewTransactionReply? createTransaction,
          @JsonKey(name: 'sign_tx')
              final GdkNewTransactionReply? signTx,
          @JsonKey(name: 'send_raw_tx')
              final GdkNewTransactionReply? sendRawTx,
          @JsonKey(name: 'create_pset')
              final GdkCreatePsetDetailsReply? createPset,
          @JsonKey(name: 'sign_pset')
              final GdkSignPsetDetailsReply? signPset,
          @JsonKey(name: 'unspent_outputs')
              final GdkUnspentOutputsReply? unspentOutputs}) =
      _$_GdkAuthHandlerStatusResult;

  factory _GdkAuthHandlerStatusResult.fromJson(Map<String, dynamic> json) =
      _$_GdkAuthHandlerStatusResult.fromJson;

  @override
  @JsonKey(name: 'login_user')
  GdkLoginUser? get loginUser;
  @override
  List<GdkTransaction>? get transactions;
  @override
  Map<String, dynamic>? get balance;
  @override
  @JsonKey(name: 'get_subaccount')
  GdkWallet? get getSubaccount;
  @override
  @JsonKey(name: 'get_receive_address')
  GdkReceiveAddressDetails? get getReceiveAddress;
  @override
  @JsonKey(name: 'last_pointer')
  int? get lastPointer;
  @override
  List<GdkPreviousAddress>? get list;
  @override
  @JsonKey(name: 'create_transaction')
  GdkNewTransactionReply? get createTransaction;
  @override
  @JsonKey(name: 'sign_tx')
  GdkNewTransactionReply? get signTx;
  @override
  @JsonKey(name: 'send_raw_tx')
  GdkNewTransactionReply? get sendRawTx;
  @override
  @JsonKey(name: 'create_pset')
  GdkCreatePsetDetailsReply? get createPset;
  @override
  @JsonKey(name: 'sign_pset')
  GdkSignPsetDetailsReply? get signPset;
  @override
  @JsonKey(name: 'unspent_outputs')
  GdkUnspentOutputsReply? get unspentOutputs;
  @override
  @JsonKey(ignore: true)
  _$$_GdkAuthHandlerStatusResultCopyWith<_$_GdkAuthHandlerStatusResult>
      get copyWith => throw _privateConstructorUsedError;
}

GdkAuthHandlerStatus _$GdkAuthHandlerStatusFromJson(Map<String, dynamic> json) {
  return _GdkAuthHandlerStatus.fromJson(json);
}

/// @nodoc
mixin _$GdkAuthHandlerStatus {
  GdkAuthHandlerStatusEnum get status => throw _privateConstructorUsedError;
  GdkAuthHandlerStatusResult? get result => throw _privateConstructorUsedError;
  List<String>? get methods => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_data')
  Map<String, dynamic>? get authData => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempts_remaining')
  int? get attemptsRemaining => throw _privateConstructorUsedError;
  String? get device => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get authHandlerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_data')
  Map<String, dynamic>? get requiredData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkAuthHandlerStatusCopyWith<GdkAuthHandlerStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkAuthHandlerStatusCopyWith<$Res> {
  factory $GdkAuthHandlerStatusCopyWith(GdkAuthHandlerStatus value,
          $Res Function(GdkAuthHandlerStatus) then) =
      _$GdkAuthHandlerStatusCopyWithImpl<$Res>;
  $Res call(
      {GdkAuthHandlerStatusEnum status,
      GdkAuthHandlerStatusResult? result,
      List<String>? methods,
      String? error,
      String? action,
      @JsonKey(name: 'auth_data') Map<String, dynamic>? authData,
      @JsonKey(name: 'attempts_remaining') int? attemptsRemaining,
      String? device,
      String? message,
      String? authHandlerId,
      @JsonKey(name: 'required_data') Map<String, dynamic>? requiredData});

  $GdkAuthHandlerStatusResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$GdkAuthHandlerStatusCopyWithImpl<$Res>
    implements $GdkAuthHandlerStatusCopyWith<$Res> {
  _$GdkAuthHandlerStatusCopyWithImpl(this._value, this._then);

  final GdkAuthHandlerStatus _value;
  // ignore: unused_field
  final $Res Function(GdkAuthHandlerStatus) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? methods = freezed,
    Object? error = freezed,
    Object? action = freezed,
    Object? authData = freezed,
    Object? attemptsRemaining = freezed,
    Object? device = freezed,
    Object? message = freezed,
    Object? authHandlerId = freezed,
    Object? requiredData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GdkAuthHandlerStatusEnum,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GdkAuthHandlerStatusResult?,
      methods: methods == freezed
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      authData: authData == freezed
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attemptsRemaining: attemptsRemaining == freezed
          ? _value.attemptsRemaining
          : attemptsRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      authHandlerId: authHandlerId == freezed
          ? _value.authHandlerId
          : authHandlerId // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredData: requiredData == freezed
          ? _value.requiredData
          : requiredData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  @override
  $GdkAuthHandlerStatusResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $GdkAuthHandlerStatusResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkAuthHandlerStatusCopyWith<$Res>
    implements $GdkAuthHandlerStatusCopyWith<$Res> {
  factory _$$_GdkAuthHandlerStatusCopyWith(_$_GdkAuthHandlerStatus value,
          $Res Function(_$_GdkAuthHandlerStatus) then) =
      __$$_GdkAuthHandlerStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {GdkAuthHandlerStatusEnum status,
      GdkAuthHandlerStatusResult? result,
      List<String>? methods,
      String? error,
      String? action,
      @JsonKey(name: 'auth_data') Map<String, dynamic>? authData,
      @JsonKey(name: 'attempts_remaining') int? attemptsRemaining,
      String? device,
      String? message,
      String? authHandlerId,
      @JsonKey(name: 'required_data') Map<String, dynamic>? requiredData});

  @override
  $GdkAuthHandlerStatusResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_GdkAuthHandlerStatusCopyWithImpl<$Res>
    extends _$GdkAuthHandlerStatusCopyWithImpl<$Res>
    implements _$$_GdkAuthHandlerStatusCopyWith<$Res> {
  __$$_GdkAuthHandlerStatusCopyWithImpl(_$_GdkAuthHandlerStatus _value,
      $Res Function(_$_GdkAuthHandlerStatus) _then)
      : super(_value, (v) => _then(v as _$_GdkAuthHandlerStatus));

  @override
  _$_GdkAuthHandlerStatus get _value => super._value as _$_GdkAuthHandlerStatus;

  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? methods = freezed,
    Object? error = freezed,
    Object? action = freezed,
    Object? authData = freezed,
    Object? attemptsRemaining = freezed,
    Object? device = freezed,
    Object? message = freezed,
    Object? authHandlerId = freezed,
    Object? requiredData = freezed,
  }) {
    return _then(_$_GdkAuthHandlerStatus(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GdkAuthHandlerStatusEnum,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GdkAuthHandlerStatusResult?,
      methods: methods == freezed
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      authData: authData == freezed
          ? _value._authData
          : authData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attemptsRemaining: attemptsRemaining == freezed
          ? _value.attemptsRemaining
          : attemptsRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      authHandlerId: authHandlerId == freezed
          ? _value.authHandlerId
          : authHandlerId // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredData: requiredData == freezed
          ? _value._requiredData
          : requiredData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkAuthHandlerStatus extends _GdkAuthHandlerStatus {
  const _$_GdkAuthHandlerStatus(
      {required this.status,
      this.result,
      final List<String>? methods,
      this.error,
      this.action,
      @JsonKey(name: 'auth_data') final Map<String, dynamic>? authData,
      @JsonKey(name: 'attempts_remaining') this.attemptsRemaining,
      this.device,
      this.message,
      this.authHandlerId,
      @JsonKey(name: 'required_data') final Map<String, dynamic>? requiredData})
      : _methods = methods,
        _authData = authData,
        _requiredData = requiredData,
        super._();

  factory _$_GdkAuthHandlerStatus.fromJson(Map<String, dynamic> json) =>
      _$$_GdkAuthHandlerStatusFromJson(json);

  @override
  final GdkAuthHandlerStatusEnum status;
  @override
  final GdkAuthHandlerStatusResult? result;
  final List<String>? _methods;
  @override
  List<String>? get methods {
    final value = _methods;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final String? action;
  final Map<String, dynamic>? _authData;
  @override
  @JsonKey(name: 'auth_data')
  Map<String, dynamic>? get authData {
    final value = _authData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'attempts_remaining')
  final int? attemptsRemaining;
  @override
  final String? device;
  @override
  final String? message;
  @override
  final String? authHandlerId;
  final Map<String, dynamic>? _requiredData;
  @override
  @JsonKey(name: 'required_data')
  Map<String, dynamic>? get requiredData {
    final value = _requiredData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GdkAuthHandlerStatus(status: $status, result: $result, methods: $methods, error: $error, action: $action, authData: $authData, attemptsRemaining: $attemptsRemaining, device: $device, message: $message, authHandlerId: $authHandlerId, requiredData: $requiredData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkAuthHandlerStatus &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other._authData, _authData) &&
            const DeepCollectionEquality()
                .equals(other.attemptsRemaining, attemptsRemaining) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.authHandlerId, authHandlerId) &&
            const DeepCollectionEquality()
                .equals(other._requiredData, _requiredData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(_authData),
      const DeepCollectionEquality().hash(attemptsRemaining),
      const DeepCollectionEquality().hash(device),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(authHandlerId),
      const DeepCollectionEquality().hash(_requiredData));

  @JsonKey(ignore: true)
  @override
  _$$_GdkAuthHandlerStatusCopyWith<_$_GdkAuthHandlerStatus> get copyWith =>
      __$$_GdkAuthHandlerStatusCopyWithImpl<_$_GdkAuthHandlerStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkAuthHandlerStatusToJson(
      this,
    );
  }
}

abstract class _GdkAuthHandlerStatus extends GdkAuthHandlerStatus {
  const factory _GdkAuthHandlerStatus(
      {required final GdkAuthHandlerStatusEnum status,
      final GdkAuthHandlerStatusResult? result,
      final List<String>? methods,
      final String? error,
      final String? action,
      @JsonKey(name: 'auth_data')
          final Map<String, dynamic>? authData,
      @JsonKey(name: 'attempts_remaining')
          final int? attemptsRemaining,
      final String? device,
      final String? message,
      final String? authHandlerId,
      @JsonKey(name: 'required_data')
          final Map<String, dynamic>? requiredData}) = _$_GdkAuthHandlerStatus;
  const _GdkAuthHandlerStatus._() : super._();

  factory _GdkAuthHandlerStatus.fromJson(Map<String, dynamic> json) =
      _$_GdkAuthHandlerStatus.fromJson;

  @override
  GdkAuthHandlerStatusEnum get status;
  @override
  GdkAuthHandlerStatusResult? get result;
  @override
  List<String>? get methods;
  @override
  String? get error;
  @override
  String? get action;
  @override
  @JsonKey(name: 'auth_data')
  Map<String, dynamic>? get authData;
  @override
  @JsonKey(name: 'attempts_remaining')
  int? get attemptsRemaining;
  @override
  String? get device;
  @override
  String? get message;
  @override
  String? get authHandlerId;
  @override
  @JsonKey(name: 'required_data')
  Map<String, dynamic>? get requiredData;
  @override
  @JsonKey(ignore: true)
  _$$_GdkAuthHandlerStatusCopyWith<_$_GdkAuthHandlerStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkGetTransactionsDetails _$GdkGetTransactionsDetailsFromJson(
    Map<String, dynamic> json) {
  return _GdkGetTransactionsDetails.fromJson(json);
}

/// @nodoc
mixin _$GdkGetTransactionsDetails {
  int? get subaccount => throw _privateConstructorUsedError;
  int? get first => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkGetTransactionsDetailsCopyWith<GdkGetTransactionsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkGetTransactionsDetailsCopyWith<$Res> {
  factory $GdkGetTransactionsDetailsCopyWith(GdkGetTransactionsDetails value,
          $Res Function(GdkGetTransactionsDetails) then) =
      _$GdkGetTransactionsDetailsCopyWithImpl<$Res>;
  $Res call({int? subaccount, int? first, int? count});
}

/// @nodoc
class _$GdkGetTransactionsDetailsCopyWithImpl<$Res>
    implements $GdkGetTransactionsDetailsCopyWith<$Res> {
  _$GdkGetTransactionsDetailsCopyWithImpl(this._value, this._then);

  final GdkGetTransactionsDetails _value;
  // ignore: unused_field
  final $Res Function(GdkGetTransactionsDetails) _then;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? first = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkGetTransactionsDetailsCopyWith<$Res>
    implements $GdkGetTransactionsDetailsCopyWith<$Res> {
  factory _$$_GdkGetTransactionsDetailsCopyWith(
          _$_GdkGetTransactionsDetails value,
          $Res Function(_$_GdkGetTransactionsDetails) then) =
      __$$_GdkGetTransactionsDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int? subaccount, int? first, int? count});
}

/// @nodoc
class __$$_GdkGetTransactionsDetailsCopyWithImpl<$Res>
    extends _$GdkGetTransactionsDetailsCopyWithImpl<$Res>
    implements _$$_GdkGetTransactionsDetailsCopyWith<$Res> {
  __$$_GdkGetTransactionsDetailsCopyWithImpl(
      _$_GdkGetTransactionsDetails _value,
      $Res Function(_$_GdkGetTransactionsDetails) _then)
      : super(_value, (v) => _then(v as _$_GdkGetTransactionsDetails));

  @override
  _$_GdkGetTransactionsDetails get _value =>
      super._value as _$_GdkGetTransactionsDetails;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? first = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_GdkGetTransactionsDetails(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkGetTransactionsDetails extends _GdkGetTransactionsDetails {
  const _$_GdkGetTransactionsDetails(
      {this.subaccount = 0, this.first = 0, this.count = 100})
      : super._();

  factory _$_GdkGetTransactionsDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GdkGetTransactionsDetailsFromJson(json);

  @override
  @JsonKey()
  final int? subaccount;
  @override
  @JsonKey()
  final int? first;
  @override
  @JsonKey()
  final int? count;

  @override
  String toString() {
    return 'GdkGetTransactionsDetails(subaccount: $subaccount, first: $first, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkGetTransactionsDetails &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_GdkGetTransactionsDetailsCopyWith<_$_GdkGetTransactionsDetails>
      get copyWith => __$$_GdkGetTransactionsDetailsCopyWithImpl<
          _$_GdkGetTransactionsDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkGetTransactionsDetailsToJson(
      this,
    );
  }
}

abstract class _GdkGetTransactionsDetails extends GdkGetTransactionsDetails {
  const factory _GdkGetTransactionsDetails(
      {final int? subaccount,
      final int? first,
      final int? count}) = _$_GdkGetTransactionsDetails;
  const _GdkGetTransactionsDetails._() : super._();

  factory _GdkGetTransactionsDetails.fromJson(Map<String, dynamic> json) =
      _$_GdkGetTransactionsDetails.fromJson;

  @override
  int? get subaccount;
  @override
  int? get first;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_GdkGetTransactionsDetailsCopyWith<_$_GdkGetTransactionsDetails>
      get copyWith => throw _privateConstructorUsedError;
}

GdkTransactionInOut _$GdkTransactionInOutFromJson(Map<String, dynamic> json) {
  return _GdkTransactionInOut.fromJson(json);
}

/// @nodoc
mixin _$GdkTransactionInOut {
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_type')
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_output')
  bool? get isOutput => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_relevant')
  bool? get isRelevant => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_spent')
  bool? get isSpent => throw _privateConstructorUsedError;
  int? get pointer => throw _privateConstructorUsedError;
  @JsonKey(name: 'pt_idx')
  int? get ptIdx => throw _privateConstructorUsedError;
  int? get satoshi => throw _privateConstructorUsedError;
  @JsonKey(name: 'script_type')
  int? get scriptType => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  int? get subtype => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assetblinder')
  String? get assetBlinder => throw _privateConstructorUsedError;
  @JsonKey(name: 'amountblinder')
  String? get amountBlinder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkTransactionInOutCopyWith<GdkTransactionInOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkTransactionInOutCopyWith<$Res> {
  factory $GdkTransactionInOutCopyWith(
          GdkTransactionInOut value, $Res Function(GdkTransactionInOut) then) =
      _$GdkTransactionInOutCopyWithImpl<$Res>;
  $Res call(
      {String? address,
      @JsonKey(name: 'address_type') String? addressType,
      @JsonKey(name: 'is_output') bool? isOutput,
      @JsonKey(name: 'is_relevant') bool? isRelevant,
      @JsonKey(name: 'is_spent') bool? isSpent,
      int? pointer,
      @JsonKey(name: 'pt_idx') int? ptIdx,
      int? satoshi,
      @JsonKey(name: 'script_type') int? scriptType,
      int? subaccount,
      int? subtype,
      @JsonKey(name: 'asset_id') String? assetId,
      @JsonKey(name: 'assetblinder') String? assetBlinder,
      @JsonKey(name: 'amountblinder') String? amountBlinder});
}

/// @nodoc
class _$GdkTransactionInOutCopyWithImpl<$Res>
    implements $GdkTransactionInOutCopyWith<$Res> {
  _$GdkTransactionInOutCopyWithImpl(this._value, this._then);

  final GdkTransactionInOut _value;
  // ignore: unused_field
  final $Res Function(GdkTransactionInOut) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? addressType = freezed,
    Object? isOutput = freezed,
    Object? isRelevant = freezed,
    Object? isSpent = freezed,
    Object? pointer = freezed,
    Object? ptIdx = freezed,
    Object? satoshi = freezed,
    Object? scriptType = freezed,
    Object? subaccount = freezed,
    Object? subtype = freezed,
    Object? assetId = freezed,
    Object? assetBlinder = freezed,
    Object? amountBlinder = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      isOutput: isOutput == freezed
          ? _value.isOutput
          : isOutput // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRelevant: isRelevant == freezed
          ? _value.isRelevant
          : isRelevant // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSpent: isSpent == freezed
          ? _value.isSpent
          : isSpent // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      ptIdx: ptIdx == freezed
          ? _value.ptIdx
          : ptIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      scriptType: scriptType == freezed
          ? _value.scriptType
          : scriptType // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetBlinder: assetBlinder == freezed
          ? _value.assetBlinder
          : assetBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
      amountBlinder: amountBlinder == freezed
          ? _value.amountBlinder
          : amountBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkTransactionInOutCopyWith<$Res>
    implements $GdkTransactionInOutCopyWith<$Res> {
  factory _$$_GdkTransactionInOutCopyWith(_$_GdkTransactionInOut value,
          $Res Function(_$_GdkTransactionInOut) then) =
      __$$_GdkTransactionInOutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? address,
      @JsonKey(name: 'address_type') String? addressType,
      @JsonKey(name: 'is_output') bool? isOutput,
      @JsonKey(name: 'is_relevant') bool? isRelevant,
      @JsonKey(name: 'is_spent') bool? isSpent,
      int? pointer,
      @JsonKey(name: 'pt_idx') int? ptIdx,
      int? satoshi,
      @JsonKey(name: 'script_type') int? scriptType,
      int? subaccount,
      int? subtype,
      @JsonKey(name: 'asset_id') String? assetId,
      @JsonKey(name: 'assetblinder') String? assetBlinder,
      @JsonKey(name: 'amountblinder') String? amountBlinder});
}

/// @nodoc
class __$$_GdkTransactionInOutCopyWithImpl<$Res>
    extends _$GdkTransactionInOutCopyWithImpl<$Res>
    implements _$$_GdkTransactionInOutCopyWith<$Res> {
  __$$_GdkTransactionInOutCopyWithImpl(_$_GdkTransactionInOut _value,
      $Res Function(_$_GdkTransactionInOut) _then)
      : super(_value, (v) => _then(v as _$_GdkTransactionInOut));

  @override
  _$_GdkTransactionInOut get _value => super._value as _$_GdkTransactionInOut;

  @override
  $Res call({
    Object? address = freezed,
    Object? addressType = freezed,
    Object? isOutput = freezed,
    Object? isRelevant = freezed,
    Object? isSpent = freezed,
    Object? pointer = freezed,
    Object? ptIdx = freezed,
    Object? satoshi = freezed,
    Object? scriptType = freezed,
    Object? subaccount = freezed,
    Object? subtype = freezed,
    Object? assetId = freezed,
    Object? assetBlinder = freezed,
    Object? amountBlinder = freezed,
  }) {
    return _then(_$_GdkTransactionInOut(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      isOutput: isOutput == freezed
          ? _value.isOutput
          : isOutput // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRelevant: isRelevant == freezed
          ? _value.isRelevant
          : isRelevant // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSpent: isSpent == freezed
          ? _value.isSpent
          : isSpent // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      ptIdx: ptIdx == freezed
          ? _value.ptIdx
          : ptIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      scriptType: scriptType == freezed
          ? _value.scriptType
          : scriptType // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetBlinder: assetBlinder == freezed
          ? _value.assetBlinder
          : assetBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
      amountBlinder: amountBlinder == freezed
          ? _value.amountBlinder
          : amountBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkTransactionInOut implements _GdkTransactionInOut {
  const _$_GdkTransactionInOut(
      {this.address,
      @JsonKey(name: 'address_type') this.addressType,
      @JsonKey(name: 'is_output') this.isOutput,
      @JsonKey(name: 'is_relevant') this.isRelevant,
      @JsonKey(name: 'is_spent') this.isSpent,
      this.pointer,
      @JsonKey(name: 'pt_idx') this.ptIdx,
      this.satoshi,
      @JsonKey(name: 'script_type') this.scriptType,
      this.subaccount,
      this.subtype,
      @JsonKey(name: 'asset_id') this.assetId,
      @JsonKey(name: 'assetblinder') this.assetBlinder,
      @JsonKey(name: 'amountblinder') this.amountBlinder});

  factory _$_GdkTransactionInOut.fromJson(Map<String, dynamic> json) =>
      _$$_GdkTransactionInOutFromJson(json);

  @override
  final String? address;
  @override
  @JsonKey(name: 'address_type')
  final String? addressType;
  @override
  @JsonKey(name: 'is_output')
  final bool? isOutput;
  @override
  @JsonKey(name: 'is_relevant')
  final bool? isRelevant;
  @override
  @JsonKey(name: 'is_spent')
  final bool? isSpent;
  @override
  final int? pointer;
  @override
  @JsonKey(name: 'pt_idx')
  final int? ptIdx;
  @override
  final int? satoshi;
  @override
  @JsonKey(name: 'script_type')
  final int? scriptType;
  @override
  final int? subaccount;
  @override
  final int? subtype;
  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @override
  @JsonKey(name: 'assetblinder')
  final String? assetBlinder;
  @override
  @JsonKey(name: 'amountblinder')
  final String? amountBlinder;

  @override
  String toString() {
    return 'GdkTransactionInOut(address: $address, addressType: $addressType, isOutput: $isOutput, isRelevant: $isRelevant, isSpent: $isSpent, pointer: $pointer, ptIdx: $ptIdx, satoshi: $satoshi, scriptType: $scriptType, subaccount: $subaccount, subtype: $subtype, assetId: $assetId, assetBlinder: $assetBlinder, amountBlinder: $amountBlinder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkTransactionInOut &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.addressType, addressType) &&
            const DeepCollectionEquality().equals(other.isOutput, isOutput) &&
            const DeepCollectionEquality()
                .equals(other.isRelevant, isRelevant) &&
            const DeepCollectionEquality().equals(other.isSpent, isSpent) &&
            const DeepCollectionEquality().equals(other.pointer, pointer) &&
            const DeepCollectionEquality().equals(other.ptIdx, ptIdx) &&
            const DeepCollectionEquality().equals(other.satoshi, satoshi) &&
            const DeepCollectionEquality()
                .equals(other.scriptType, scriptType) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.subtype, subtype) &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality()
                .equals(other.assetBlinder, assetBlinder) &&
            const DeepCollectionEquality()
                .equals(other.amountBlinder, amountBlinder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(addressType),
      const DeepCollectionEquality().hash(isOutput),
      const DeepCollectionEquality().hash(isRelevant),
      const DeepCollectionEquality().hash(isSpent),
      const DeepCollectionEquality().hash(pointer),
      const DeepCollectionEquality().hash(ptIdx),
      const DeepCollectionEquality().hash(satoshi),
      const DeepCollectionEquality().hash(scriptType),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(subtype),
      const DeepCollectionEquality().hash(assetId),
      const DeepCollectionEquality().hash(assetBlinder),
      const DeepCollectionEquality().hash(amountBlinder));

  @JsonKey(ignore: true)
  @override
  _$$_GdkTransactionInOutCopyWith<_$_GdkTransactionInOut> get copyWith =>
      __$$_GdkTransactionInOutCopyWithImpl<_$_GdkTransactionInOut>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkTransactionInOutToJson(
      this,
    );
  }
}

abstract class _GdkTransactionInOut implements GdkTransactionInOut {
  const factory _GdkTransactionInOut(
          {final String? address,
          @JsonKey(name: 'address_type') final String? addressType,
          @JsonKey(name: 'is_output') final bool? isOutput,
          @JsonKey(name: 'is_relevant') final bool? isRelevant,
          @JsonKey(name: 'is_spent') final bool? isSpent,
          final int? pointer,
          @JsonKey(name: 'pt_idx') final int? ptIdx,
          final int? satoshi,
          @JsonKey(name: 'script_type') final int? scriptType,
          final int? subaccount,
          final int? subtype,
          @JsonKey(name: 'asset_id') final String? assetId,
          @JsonKey(name: 'assetblinder') final String? assetBlinder,
          @JsonKey(name: 'amountblinder') final String? amountBlinder}) =
      _$_GdkTransactionInOut;

  factory _GdkTransactionInOut.fromJson(Map<String, dynamic> json) =
      _$_GdkTransactionInOut.fromJson;

  @override
  String? get address;
  @override
  @JsonKey(name: 'address_type')
  String? get addressType;
  @override
  @JsonKey(name: 'is_output')
  bool? get isOutput;
  @override
  @JsonKey(name: 'is_relevant')
  bool? get isRelevant;
  @override
  @JsonKey(name: 'is_spent')
  bool? get isSpent;
  @override
  int? get pointer;
  @override
  @JsonKey(name: 'pt_idx')
  int? get ptIdx;
  @override
  int? get satoshi;
  @override
  @JsonKey(name: 'script_type')
  int? get scriptType;
  @override
  int? get subaccount;
  @override
  int? get subtype;
  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  @JsonKey(name: 'assetblinder')
  String? get assetBlinder;
  @override
  @JsonKey(name: 'amountblinder')
  String? get amountBlinder;
  @override
  @JsonKey(ignore: true)
  _$$_GdkTransactionInOutCopyWith<_$_GdkTransactionInOut> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkTransaction _$GdkTransactionFromJson(Map<String, dynamic> json) {
  return _GdkTransaction.fromJson(json);
}

/// @nodoc
mixin _$GdkTransaction {
  List<String>? get addressees => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_height')
  int? get blockHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculated_fee_rate')
  int? get calculatedFeeRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_cpfp')
  bool? get canCpfp => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_rbf')
  bool? get canRbf => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_ts')
  int? get createdAtTs => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee_rate')
  int? get feeRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_payment_request')
  bool? get hasPaymentRequest => throw _privateConstructorUsedError;
  List<GdkTransactionInOut>? get inputs => throw _privateConstructorUsedError;
  bool? get instant => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  List<GdkTransactionInOut>? get outputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'rbf_optin')
  bool? get rbfOptin => throw _privateConstructorUsedError;
  Map<String, int>? get satoshi => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_signed')
  bool? get serverSigned => throw _privateConstructorUsedError;
  @JsonKey(name: 'spv_verified')
  String? get spvVerified => throw _privateConstructorUsedError;
  String? get transaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_locktime')
  int? get transactionLocktime => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_outputs')
  List<String>? get transactionOutputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_size')
  int? get transactionSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_version')
  int? get transactionVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_vsize')
  int? get transactionVsize => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_weight')
  int? get transactionWeight => throw _privateConstructorUsedError;
  String? get txhash => throw _privateConstructorUsedError;
  GdkTransactionTypeEnum? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_signed')
  bool? get userSigned => throw _privateConstructorUsedError;
  int? get vsize => throw _privateConstructorUsedError;
  String? get swapOutgoingAssetId => throw _privateConstructorUsedError;
  int? get swapOutgoingSatoshi => throw _privateConstructorUsedError;
  String? get swapIncomingAssetId => throw _privateConstructorUsedError;
  int? get swapIncomingSatoshi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkTransactionCopyWith<GdkTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkTransactionCopyWith<$Res> {
  factory $GdkTransactionCopyWith(
          GdkTransaction value, $Res Function(GdkTransaction) then) =
      _$GdkTransactionCopyWithImpl<$Res>;
  $Res call(
      {List<String>? addressees,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'calculated_fee_rate') int? calculatedFeeRate,
      @JsonKey(name: 'can_cpfp') bool? canCpfp,
      @JsonKey(name: 'can_rbf') bool? canRbf,
      @JsonKey(name: 'created_at_ts') int? createdAtTs,
      int? fee,
      @JsonKey(name: 'fee_rate') int? feeRate,
      @JsonKey(name: 'has_payment_request') bool? hasPaymentRequest,
      List<GdkTransactionInOut>? inputs,
      bool? instant,
      String? memo,
      List<GdkTransactionInOut>? outputs,
      @JsonKey(name: 'rbf_optin') bool? rbfOptin,
      Map<String, int>? satoshi,
      @JsonKey(name: 'server_signed') bool? serverSigned,
      @JsonKey(name: 'spv_verified') String? spvVerified,
      String? transaction,
      @JsonKey(name: 'transaction_locktime') int? transactionLocktime,
      @JsonKey(name: 'transaction_outputs') List<String>? transactionOutputs,
      @JsonKey(name: 'transaction_size') int? transactionSize,
      @JsonKey(name: 'transaction_version') int? transactionVersion,
      @JsonKey(name: 'transaction_vsize') int? transactionVsize,
      @JsonKey(name: 'transaction_weight') int? transactionWeight,
      String? txhash,
      GdkTransactionTypeEnum? type,
      @JsonKey(name: 'user_signed') bool? userSigned,
      int? vsize,
      String? swapOutgoingAssetId,
      int? swapOutgoingSatoshi,
      String? swapIncomingAssetId,
      int? swapIncomingSatoshi});
}

/// @nodoc
class _$GdkTransactionCopyWithImpl<$Res>
    implements $GdkTransactionCopyWith<$Res> {
  _$GdkTransactionCopyWithImpl(this._value, this._then);

  final GdkTransaction _value;
  // ignore: unused_field
  final $Res Function(GdkTransaction) _then;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? blockHeight = freezed,
    Object? calculatedFeeRate = freezed,
    Object? canCpfp = freezed,
    Object? canRbf = freezed,
    Object? createdAtTs = freezed,
    Object? fee = freezed,
    Object? feeRate = freezed,
    Object? hasPaymentRequest = freezed,
    Object? inputs = freezed,
    Object? instant = freezed,
    Object? memo = freezed,
    Object? outputs = freezed,
    Object? rbfOptin = freezed,
    Object? satoshi = freezed,
    Object? serverSigned = freezed,
    Object? spvVerified = freezed,
    Object? transaction = freezed,
    Object? transactionLocktime = freezed,
    Object? transactionOutputs = freezed,
    Object? transactionSize = freezed,
    Object? transactionVersion = freezed,
    Object? transactionVsize = freezed,
    Object? transactionWeight = freezed,
    Object? txhash = freezed,
    Object? type = freezed,
    Object? userSigned = freezed,
    Object? vsize = freezed,
    Object? swapOutgoingAssetId = freezed,
    Object? swapOutgoingSatoshi = freezed,
    Object? swapIncomingAssetId = freezed,
    Object? swapIncomingSatoshi = freezed,
  }) {
    return _then(_value.copyWith(
      addressees: addressees == freezed
          ? _value.addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      calculatedFeeRate: calculatedFeeRate == freezed
          ? _value.calculatedFeeRate
          : calculatedFeeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      canCpfp: canCpfp == freezed
          ? _value.canCpfp
          : canCpfp // ignore: cast_nullable_to_non_nullable
              as bool?,
      canRbf: canRbf == freezed
          ? _value.canRbf
          : canRbf // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAtTs: createdAtTs == freezed
          ? _value.createdAtTs
          : createdAtTs // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      feeRate: feeRate == freezed
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      hasPaymentRequest: hasPaymentRequest == freezed
          ? _value.hasPaymentRequest
          : hasPaymentRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<GdkTransactionInOut>?,
      instant: instant == freezed
          ? _value.instant
          : instant // ignore: cast_nullable_to_non_nullable
              as bool?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      outputs: outputs == freezed
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<GdkTransactionInOut>?,
      rbfOptin: rbfOptin == freezed
          ? _value.rbfOptin
          : rbfOptin // ignore: cast_nullable_to_non_nullable
              as bool?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      serverSigned: serverSigned == freezed
          ? _value.serverSigned
          : serverSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvVerified: spvVerified == freezed
          ? _value.spvVerified
          : spvVerified // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionLocktime: transactionLocktime == freezed
          ? _value.transactionLocktime
          : transactionLocktime // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionOutputs: transactionOutputs == freezed
          ? _value.transactionOutputs
          : transactionOutputs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      transactionSize: transactionSize == freezed
          ? _value.transactionSize
          : transactionSize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVersion: transactionVersion == freezed
          ? _value.transactionVersion
          : transactionVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVsize: transactionVsize == freezed
          ? _value.transactionVsize
          : transactionVsize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionWeight: transactionWeight == freezed
          ? _value.transactionWeight
          : transactionWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkTransactionTypeEnum?,
      userSigned: userSigned == freezed
          ? _value.userSigned
          : userSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      vsize: vsize == freezed
          ? _value.vsize
          : vsize // ignore: cast_nullable_to_non_nullable
              as int?,
      swapOutgoingAssetId: swapOutgoingAssetId == freezed
          ? _value.swapOutgoingAssetId
          : swapOutgoingAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      swapOutgoingSatoshi: swapOutgoingSatoshi == freezed
          ? _value.swapOutgoingSatoshi
          : swapOutgoingSatoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      swapIncomingAssetId: swapIncomingAssetId == freezed
          ? _value.swapIncomingAssetId
          : swapIncomingAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      swapIncomingSatoshi: swapIncomingSatoshi == freezed
          ? _value.swapIncomingSatoshi
          : swapIncomingSatoshi // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkTransactionCopyWith<$Res>
    implements $GdkTransactionCopyWith<$Res> {
  factory _$$_GdkTransactionCopyWith(
          _$_GdkTransaction value, $Res Function(_$_GdkTransaction) then) =
      __$$_GdkTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? addressees,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'calculated_fee_rate') int? calculatedFeeRate,
      @JsonKey(name: 'can_cpfp') bool? canCpfp,
      @JsonKey(name: 'can_rbf') bool? canRbf,
      @JsonKey(name: 'created_at_ts') int? createdAtTs,
      int? fee,
      @JsonKey(name: 'fee_rate') int? feeRate,
      @JsonKey(name: 'has_payment_request') bool? hasPaymentRequest,
      List<GdkTransactionInOut>? inputs,
      bool? instant,
      String? memo,
      List<GdkTransactionInOut>? outputs,
      @JsonKey(name: 'rbf_optin') bool? rbfOptin,
      Map<String, int>? satoshi,
      @JsonKey(name: 'server_signed') bool? serverSigned,
      @JsonKey(name: 'spv_verified') String? spvVerified,
      String? transaction,
      @JsonKey(name: 'transaction_locktime') int? transactionLocktime,
      @JsonKey(name: 'transaction_outputs') List<String>? transactionOutputs,
      @JsonKey(name: 'transaction_size') int? transactionSize,
      @JsonKey(name: 'transaction_version') int? transactionVersion,
      @JsonKey(name: 'transaction_vsize') int? transactionVsize,
      @JsonKey(name: 'transaction_weight') int? transactionWeight,
      String? txhash,
      GdkTransactionTypeEnum? type,
      @JsonKey(name: 'user_signed') bool? userSigned,
      int? vsize,
      String? swapOutgoingAssetId,
      int? swapOutgoingSatoshi,
      String? swapIncomingAssetId,
      int? swapIncomingSatoshi});
}

/// @nodoc
class __$$_GdkTransactionCopyWithImpl<$Res>
    extends _$GdkTransactionCopyWithImpl<$Res>
    implements _$$_GdkTransactionCopyWith<$Res> {
  __$$_GdkTransactionCopyWithImpl(
      _$_GdkTransaction _value, $Res Function(_$_GdkTransaction) _then)
      : super(_value, (v) => _then(v as _$_GdkTransaction));

  @override
  _$_GdkTransaction get _value => super._value as _$_GdkTransaction;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? blockHeight = freezed,
    Object? calculatedFeeRate = freezed,
    Object? canCpfp = freezed,
    Object? canRbf = freezed,
    Object? createdAtTs = freezed,
    Object? fee = freezed,
    Object? feeRate = freezed,
    Object? hasPaymentRequest = freezed,
    Object? inputs = freezed,
    Object? instant = freezed,
    Object? memo = freezed,
    Object? outputs = freezed,
    Object? rbfOptin = freezed,
    Object? satoshi = freezed,
    Object? serverSigned = freezed,
    Object? spvVerified = freezed,
    Object? transaction = freezed,
    Object? transactionLocktime = freezed,
    Object? transactionOutputs = freezed,
    Object? transactionSize = freezed,
    Object? transactionVersion = freezed,
    Object? transactionVsize = freezed,
    Object? transactionWeight = freezed,
    Object? txhash = freezed,
    Object? type = freezed,
    Object? userSigned = freezed,
    Object? vsize = freezed,
    Object? swapOutgoingAssetId = freezed,
    Object? swapOutgoingSatoshi = freezed,
    Object? swapIncomingAssetId = freezed,
    Object? swapIncomingSatoshi = freezed,
  }) {
    return _then(_$_GdkTransaction(
      addressees: addressees == freezed
          ? _value._addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      calculatedFeeRate: calculatedFeeRate == freezed
          ? _value.calculatedFeeRate
          : calculatedFeeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      canCpfp: canCpfp == freezed
          ? _value.canCpfp
          : canCpfp // ignore: cast_nullable_to_non_nullable
              as bool?,
      canRbf: canRbf == freezed
          ? _value.canRbf
          : canRbf // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAtTs: createdAtTs == freezed
          ? _value.createdAtTs
          : createdAtTs // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      feeRate: feeRate == freezed
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      hasPaymentRequest: hasPaymentRequest == freezed
          ? _value.hasPaymentRequest
          : hasPaymentRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputs: inputs == freezed
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<GdkTransactionInOut>?,
      instant: instant == freezed
          ? _value.instant
          : instant // ignore: cast_nullable_to_non_nullable
              as bool?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      outputs: outputs == freezed
          ? _value._outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<GdkTransactionInOut>?,
      rbfOptin: rbfOptin == freezed
          ? _value.rbfOptin
          : rbfOptin // ignore: cast_nullable_to_non_nullable
              as bool?,
      satoshi: satoshi == freezed
          ? _value._satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      serverSigned: serverSigned == freezed
          ? _value.serverSigned
          : serverSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvVerified: spvVerified == freezed
          ? _value.spvVerified
          : spvVerified // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionLocktime: transactionLocktime == freezed
          ? _value.transactionLocktime
          : transactionLocktime // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionOutputs: transactionOutputs == freezed
          ? _value._transactionOutputs
          : transactionOutputs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      transactionSize: transactionSize == freezed
          ? _value.transactionSize
          : transactionSize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVersion: transactionVersion == freezed
          ? _value.transactionVersion
          : transactionVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVsize: transactionVsize == freezed
          ? _value.transactionVsize
          : transactionVsize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionWeight: transactionWeight == freezed
          ? _value.transactionWeight
          : transactionWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkTransactionTypeEnum?,
      userSigned: userSigned == freezed
          ? _value.userSigned
          : userSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      vsize: vsize == freezed
          ? _value.vsize
          : vsize // ignore: cast_nullable_to_non_nullable
              as int?,
      swapOutgoingAssetId: swapOutgoingAssetId == freezed
          ? _value.swapOutgoingAssetId
          : swapOutgoingAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      swapOutgoingSatoshi: swapOutgoingSatoshi == freezed
          ? _value.swapOutgoingSatoshi
          : swapOutgoingSatoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      swapIncomingAssetId: swapIncomingAssetId == freezed
          ? _value.swapIncomingAssetId
          : swapIncomingAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      swapIncomingSatoshi: swapIncomingSatoshi == freezed
          ? _value.swapIncomingSatoshi
          : swapIncomingSatoshi // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkTransaction extends _GdkTransaction {
  const _$_GdkTransaction(
      {final List<String>? addressees,
      @JsonKey(name: 'block_height')
          this.blockHeight,
      @JsonKey(name: 'calculated_fee_rate')
          this.calculatedFeeRate,
      @JsonKey(name: 'can_cpfp')
          this.canCpfp,
      @JsonKey(name: 'can_rbf')
          this.canRbf,
      @JsonKey(name: 'created_at_ts')
          this.createdAtTs,
      this.fee,
      @JsonKey(name: 'fee_rate')
          this.feeRate,
      @JsonKey(name: 'has_payment_request')
          this.hasPaymentRequest,
      final List<GdkTransactionInOut>? inputs,
      this.instant,
      this.memo,
      final List<GdkTransactionInOut>? outputs,
      @JsonKey(name: 'rbf_optin')
          this.rbfOptin,
      final Map<String, int>? satoshi,
      @JsonKey(name: 'server_signed')
          this.serverSigned,
      @JsonKey(name: 'spv_verified')
          this.spvVerified,
      this.transaction,
      @JsonKey(name: 'transaction_locktime')
          this.transactionLocktime,
      @JsonKey(name: 'transaction_outputs')
          final List<String>? transactionOutputs,
      @JsonKey(name: 'transaction_size')
          this.transactionSize,
      @JsonKey(name: 'transaction_version')
          this.transactionVersion,
      @JsonKey(name: 'transaction_vsize')
          this.transactionVsize,
      @JsonKey(name: 'transaction_weight')
          this.transactionWeight,
      this.txhash,
      this.type,
      @JsonKey(name: 'user_signed')
          this.userSigned,
      this.vsize,
      this.swapOutgoingAssetId,
      this.swapOutgoingSatoshi,
      this.swapIncomingAssetId,
      this.swapIncomingSatoshi})
      : _addressees = addressees,
        _inputs = inputs,
        _outputs = outputs,
        _satoshi = satoshi,
        _transactionOutputs = transactionOutputs,
        super._();

  factory _$_GdkTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_GdkTransactionFromJson(json);

  final List<String>? _addressees;
  @override
  List<String>? get addressees {
    final value = _addressees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'block_height')
  final int? blockHeight;
  @override
  @JsonKey(name: 'calculated_fee_rate')
  final int? calculatedFeeRate;
  @override
  @JsonKey(name: 'can_cpfp')
  final bool? canCpfp;
  @override
  @JsonKey(name: 'can_rbf')
  final bool? canRbf;
  @override
  @JsonKey(name: 'created_at_ts')
  final int? createdAtTs;
  @override
  final int? fee;
  @override
  @JsonKey(name: 'fee_rate')
  final int? feeRate;
  @override
  @JsonKey(name: 'has_payment_request')
  final bool? hasPaymentRequest;
  final List<GdkTransactionInOut>? _inputs;
  @override
  List<GdkTransactionInOut>? get inputs {
    final value = _inputs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? instant;
  @override
  final String? memo;
  final List<GdkTransactionInOut>? _outputs;
  @override
  List<GdkTransactionInOut>? get outputs {
    final value = _outputs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'rbf_optin')
  final bool? rbfOptin;
  final Map<String, int>? _satoshi;
  @override
  Map<String, int>? get satoshi {
    final value = _satoshi;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'server_signed')
  final bool? serverSigned;
  @override
  @JsonKey(name: 'spv_verified')
  final String? spvVerified;
  @override
  final String? transaction;
  @override
  @JsonKey(name: 'transaction_locktime')
  final int? transactionLocktime;
  final List<String>? _transactionOutputs;
  @override
  @JsonKey(name: 'transaction_outputs')
  List<String>? get transactionOutputs {
    final value = _transactionOutputs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'transaction_size')
  final int? transactionSize;
  @override
  @JsonKey(name: 'transaction_version')
  final int? transactionVersion;
  @override
  @JsonKey(name: 'transaction_vsize')
  final int? transactionVsize;
  @override
  @JsonKey(name: 'transaction_weight')
  final int? transactionWeight;
  @override
  final String? txhash;
  @override
  final GdkTransactionTypeEnum? type;
  @override
  @JsonKey(name: 'user_signed')
  final bool? userSigned;
  @override
  final int? vsize;
  @override
  final String? swapOutgoingAssetId;
  @override
  final int? swapOutgoingSatoshi;
  @override
  final String? swapIncomingAssetId;
  @override
  final int? swapIncomingSatoshi;

  @override
  String toString() {
    return 'GdkTransaction(addressees: $addressees, blockHeight: $blockHeight, calculatedFeeRate: $calculatedFeeRate, canCpfp: $canCpfp, canRbf: $canRbf, createdAtTs: $createdAtTs, fee: $fee, feeRate: $feeRate, hasPaymentRequest: $hasPaymentRequest, inputs: $inputs, instant: $instant, memo: $memo, outputs: $outputs, rbfOptin: $rbfOptin, satoshi: $satoshi, serverSigned: $serverSigned, spvVerified: $spvVerified, transaction: $transaction, transactionLocktime: $transactionLocktime, transactionOutputs: $transactionOutputs, transactionSize: $transactionSize, transactionVersion: $transactionVersion, transactionVsize: $transactionVsize, transactionWeight: $transactionWeight, txhash: $txhash, type: $type, userSigned: $userSigned, vsize: $vsize, swapOutgoingAssetId: $swapOutgoingAssetId, swapOutgoingSatoshi: $swapOutgoingSatoshi, swapIncomingAssetId: $swapIncomingAssetId, swapIncomingSatoshi: $swapIncomingSatoshi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkTransaction &&
            const DeepCollectionEquality()
                .equals(other._addressees, _addressees) &&
            const DeepCollectionEquality()
                .equals(other.blockHeight, blockHeight) &&
            const DeepCollectionEquality()
                .equals(other.calculatedFeeRate, calculatedFeeRate) &&
            const DeepCollectionEquality().equals(other.canCpfp, canCpfp) &&
            const DeepCollectionEquality().equals(other.canRbf, canRbf) &&
            const DeepCollectionEquality()
                .equals(other.createdAtTs, createdAtTs) &&
            const DeepCollectionEquality().equals(other.fee, fee) &&
            const DeepCollectionEquality().equals(other.feeRate, feeRate) &&
            const DeepCollectionEquality()
                .equals(other.hasPaymentRequest, hasPaymentRequest) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(other.instant, instant) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other._outputs, _outputs) &&
            const DeepCollectionEquality().equals(other.rbfOptin, rbfOptin) &&
            const DeepCollectionEquality().equals(other._satoshi, _satoshi) &&
            const DeepCollectionEquality()
                .equals(other.serverSigned, serverSigned) &&
            const DeepCollectionEquality()
                .equals(other.spvVerified, spvVerified) &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality()
                .equals(other.transactionLocktime, transactionLocktime) &&
            const DeepCollectionEquality()
                .equals(other._transactionOutputs, _transactionOutputs) &&
            const DeepCollectionEquality()
                .equals(other.transactionSize, transactionSize) &&
            const DeepCollectionEquality()
                .equals(other.transactionVersion, transactionVersion) &&
            const DeepCollectionEquality()
                .equals(other.transactionVsize, transactionVsize) &&
            const DeepCollectionEquality()
                .equals(other.transactionWeight, transactionWeight) &&
            const DeepCollectionEquality().equals(other.txhash, txhash) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.userSigned, userSigned) &&
            const DeepCollectionEquality().equals(other.vsize, vsize) &&
            const DeepCollectionEquality()
                .equals(other.swapOutgoingAssetId, swapOutgoingAssetId) &&
            const DeepCollectionEquality()
                .equals(other.swapOutgoingSatoshi, swapOutgoingSatoshi) &&
            const DeepCollectionEquality()
                .equals(other.swapIncomingAssetId, swapIncomingAssetId) &&
            const DeepCollectionEquality()
                .equals(other.swapIncomingSatoshi, swapIncomingSatoshi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_addressees),
        const DeepCollectionEquality().hash(blockHeight),
        const DeepCollectionEquality().hash(calculatedFeeRate),
        const DeepCollectionEquality().hash(canCpfp),
        const DeepCollectionEquality().hash(canRbf),
        const DeepCollectionEquality().hash(createdAtTs),
        const DeepCollectionEquality().hash(fee),
        const DeepCollectionEquality().hash(feeRate),
        const DeepCollectionEquality().hash(hasPaymentRequest),
        const DeepCollectionEquality().hash(_inputs),
        const DeepCollectionEquality().hash(instant),
        const DeepCollectionEquality().hash(memo),
        const DeepCollectionEquality().hash(_outputs),
        const DeepCollectionEquality().hash(rbfOptin),
        const DeepCollectionEquality().hash(_satoshi),
        const DeepCollectionEquality().hash(serverSigned),
        const DeepCollectionEquality().hash(spvVerified),
        const DeepCollectionEquality().hash(transaction),
        const DeepCollectionEquality().hash(transactionLocktime),
        const DeepCollectionEquality().hash(_transactionOutputs),
        const DeepCollectionEquality().hash(transactionSize),
        const DeepCollectionEquality().hash(transactionVersion),
        const DeepCollectionEquality().hash(transactionVsize),
        const DeepCollectionEquality().hash(transactionWeight),
        const DeepCollectionEquality().hash(txhash),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(userSigned),
        const DeepCollectionEquality().hash(vsize),
        const DeepCollectionEquality().hash(swapOutgoingAssetId),
        const DeepCollectionEquality().hash(swapOutgoingSatoshi),
        const DeepCollectionEquality().hash(swapIncomingAssetId),
        const DeepCollectionEquality().hash(swapIncomingSatoshi)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_GdkTransactionCopyWith<_$_GdkTransaction> get copyWith =>
      __$$_GdkTransactionCopyWithImpl<_$_GdkTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkTransactionToJson(
      this,
    );
  }
}

abstract class _GdkTransaction extends GdkTransaction {
  const factory _GdkTransaction(
      {final List<String>? addressees,
      @JsonKey(name: 'block_height')
          final int? blockHeight,
      @JsonKey(name: 'calculated_fee_rate')
          final int? calculatedFeeRate,
      @JsonKey(name: 'can_cpfp')
          final bool? canCpfp,
      @JsonKey(name: 'can_rbf')
          final bool? canRbf,
      @JsonKey(name: 'created_at_ts')
          final int? createdAtTs,
      final int? fee,
      @JsonKey(name: 'fee_rate')
          final int? feeRate,
      @JsonKey(name: 'has_payment_request')
          final bool? hasPaymentRequest,
      final List<GdkTransactionInOut>? inputs,
      final bool? instant,
      final String? memo,
      final List<GdkTransactionInOut>? outputs,
      @JsonKey(name: 'rbf_optin')
          final bool? rbfOptin,
      final Map<String, int>? satoshi,
      @JsonKey(name: 'server_signed')
          final bool? serverSigned,
      @JsonKey(name: 'spv_verified')
          final String? spvVerified,
      final String? transaction,
      @JsonKey(name: 'transaction_locktime')
          final int? transactionLocktime,
      @JsonKey(name: 'transaction_outputs')
          final List<String>? transactionOutputs,
      @JsonKey(name: 'transaction_size')
          final int? transactionSize,
      @JsonKey(name: 'transaction_version')
          final int? transactionVersion,
      @JsonKey(name: 'transaction_vsize')
          final int? transactionVsize,
      @JsonKey(name: 'transaction_weight')
          final int? transactionWeight,
      final String? txhash,
      final GdkTransactionTypeEnum? type,
      @JsonKey(name: 'user_signed')
          final bool? userSigned,
      final int? vsize,
      final String? swapOutgoingAssetId,
      final int? swapOutgoingSatoshi,
      final String? swapIncomingAssetId,
      final int? swapIncomingSatoshi}) = _$_GdkTransaction;
  const _GdkTransaction._() : super._();

  factory _GdkTransaction.fromJson(Map<String, dynamic> json) =
      _$_GdkTransaction.fromJson;

  @override
  List<String>? get addressees;
  @override
  @JsonKey(name: 'block_height')
  int? get blockHeight;
  @override
  @JsonKey(name: 'calculated_fee_rate')
  int? get calculatedFeeRate;
  @override
  @JsonKey(name: 'can_cpfp')
  bool? get canCpfp;
  @override
  @JsonKey(name: 'can_rbf')
  bool? get canRbf;
  @override
  @JsonKey(name: 'created_at_ts')
  int? get createdAtTs;
  @override
  int? get fee;
  @override
  @JsonKey(name: 'fee_rate')
  int? get feeRate;
  @override
  @JsonKey(name: 'has_payment_request')
  bool? get hasPaymentRequest;
  @override
  List<GdkTransactionInOut>? get inputs;
  @override
  bool? get instant;
  @override
  String? get memo;
  @override
  List<GdkTransactionInOut>? get outputs;
  @override
  @JsonKey(name: 'rbf_optin')
  bool? get rbfOptin;
  @override
  Map<String, int>? get satoshi;
  @override
  @JsonKey(name: 'server_signed')
  bool? get serverSigned;
  @override
  @JsonKey(name: 'spv_verified')
  String? get spvVerified;
  @override
  String? get transaction;
  @override
  @JsonKey(name: 'transaction_locktime')
  int? get transactionLocktime;
  @override
  @JsonKey(name: 'transaction_outputs')
  List<String>? get transactionOutputs;
  @override
  @JsonKey(name: 'transaction_size')
  int? get transactionSize;
  @override
  @JsonKey(name: 'transaction_version')
  int? get transactionVersion;
  @override
  @JsonKey(name: 'transaction_vsize')
  int? get transactionVsize;
  @override
  @JsonKey(name: 'transaction_weight')
  int? get transactionWeight;
  @override
  String? get txhash;
  @override
  GdkTransactionTypeEnum? get type;
  @override
  @JsonKey(name: 'user_signed')
  bool? get userSigned;
  @override
  int? get vsize;
  @override
  String? get swapOutgoingAssetId;
  @override
  int? get swapOutgoingSatoshi;
  @override
  String? get swapIncomingAssetId;
  @override
  int? get swapIncomingSatoshi;
  @override
  @JsonKey(ignore: true)
  _$$_GdkTransactionCopyWith<_$_GdkTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkEntity _$GdkEntityFromJson(Map<String, dynamic> json) {
  return _GdkEntity.fromJson(json);
}

/// @nodoc
mixin _$GdkEntity {
  String? get domain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkEntityCopyWith<GdkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkEntityCopyWith<$Res> {
  factory $GdkEntityCopyWith(GdkEntity value, $Res Function(GdkEntity) then) =
      _$GdkEntityCopyWithImpl<$Res>;
  $Res call({String? domain});
}

/// @nodoc
class _$GdkEntityCopyWithImpl<$Res> implements $GdkEntityCopyWith<$Res> {
  _$GdkEntityCopyWithImpl(this._value, this._then);

  final GdkEntity _value;
  // ignore: unused_field
  final $Res Function(GdkEntity) _then;

  @override
  $Res call({
    Object? domain = freezed,
  }) {
    return _then(_value.copyWith(
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkEntityCopyWith<$Res> implements $GdkEntityCopyWith<$Res> {
  factory _$$_GdkEntityCopyWith(
          _$_GdkEntity value, $Res Function(_$_GdkEntity) then) =
      __$$_GdkEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? domain});
}

/// @nodoc
class __$$_GdkEntityCopyWithImpl<$Res> extends _$GdkEntityCopyWithImpl<$Res>
    implements _$$_GdkEntityCopyWith<$Res> {
  __$$_GdkEntityCopyWithImpl(
      _$_GdkEntity _value, $Res Function(_$_GdkEntity) _then)
      : super(_value, (v) => _then(v as _$_GdkEntity));

  @override
  _$_GdkEntity get _value => super._value as _$_GdkEntity;

  @override
  $Res call({
    Object? domain = freezed,
  }) {
    return _then(_$_GdkEntity(
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkEntity implements _GdkEntity {
  const _$_GdkEntity({this.domain});

  factory _$_GdkEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GdkEntityFromJson(json);

  @override
  final String? domain;

  @override
  String toString() {
    return 'GdkEntity(domain: $domain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkEntity &&
            const DeepCollectionEquality().equals(other.domain, domain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(domain));

  @JsonKey(ignore: true)
  @override
  _$$_GdkEntityCopyWith<_$_GdkEntity> get copyWith =>
      __$$_GdkEntityCopyWithImpl<_$_GdkEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkEntityToJson(
      this,
    );
  }
}

abstract class _GdkEntity implements GdkEntity {
  const factory _GdkEntity({final String? domain}) = _$_GdkEntity;

  factory _GdkEntity.fromJson(Map<String, dynamic> json) =
      _$_GdkEntity.fromJson;

  @override
  String? get domain;
  @override
  @JsonKey(ignore: true)
  _$$_GdkEntityCopyWith<_$_GdkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkContract _$GdkContractFromJson(Map<String, dynamic> json) {
  return _GdkContract.fromJson(json);
}

/// @nodoc
mixin _$GdkContract {
  GdkEntity? get entity => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_pubkey')
  String? get issuerPubkey => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nonce => throw _privateConstructorUsedError;
  int? get precision => throw _privateConstructorUsedError;
  String? get ticker => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkContractCopyWith<GdkContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkContractCopyWith<$Res> {
  factory $GdkContractCopyWith(
          GdkContract value, $Res Function(GdkContract) then) =
      _$GdkContractCopyWithImpl<$Res>;
  $Res call(
      {GdkEntity? entity,
      @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
      String? name,
      String? nonce,
      int? precision,
      String? ticker,
      int? version});

  $GdkEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class _$GdkContractCopyWithImpl<$Res> implements $GdkContractCopyWith<$Res> {
  _$GdkContractCopyWithImpl(this._value, this._then);

  final GdkContract _value;
  // ignore: unused_field
  final $Res Function(GdkContract) _then;

  @override
  $Res call({
    Object? entity = freezed,
    Object? issuerPubkey = freezed,
    Object? name = freezed,
    Object? nonce = freezed,
    Object? precision = freezed,
    Object? ticker = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GdkEntity?,
      issuerPubkey: issuerPubkey == freezed
          ? _value.issuerPubkey
          : issuerPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $GdkEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $GdkEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkContractCopyWith<$Res>
    implements $GdkContractCopyWith<$Res> {
  factory _$$_GdkContractCopyWith(
          _$_GdkContract value, $Res Function(_$_GdkContract) then) =
      __$$_GdkContractCopyWithImpl<$Res>;
  @override
  $Res call(
      {GdkEntity? entity,
      @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
      String? name,
      String? nonce,
      int? precision,
      String? ticker,
      int? version});

  @override
  $GdkEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$_GdkContractCopyWithImpl<$Res> extends _$GdkContractCopyWithImpl<$Res>
    implements _$$_GdkContractCopyWith<$Res> {
  __$$_GdkContractCopyWithImpl(
      _$_GdkContract _value, $Res Function(_$_GdkContract) _then)
      : super(_value, (v) => _then(v as _$_GdkContract));

  @override
  _$_GdkContract get _value => super._value as _$_GdkContract;

  @override
  $Res call({
    Object? entity = freezed,
    Object? issuerPubkey = freezed,
    Object? name = freezed,
    Object? nonce = freezed,
    Object? precision = freezed,
    Object? ticker = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_GdkContract(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GdkEntity?,
      issuerPubkey: issuerPubkey == freezed
          ? _value.issuerPubkey
          : issuerPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkContract implements _GdkContract {
  const _$_GdkContract(
      {this.entity,
      @JsonKey(name: 'issuer_pubkey') this.issuerPubkey,
      this.name,
      this.nonce,
      this.precision,
      this.ticker,
      this.version});

  factory _$_GdkContract.fromJson(Map<String, dynamic> json) =>
      _$$_GdkContractFromJson(json);

  @override
  final GdkEntity? entity;
  @override
  @JsonKey(name: 'issuer_pubkey')
  final String? issuerPubkey;
  @override
  final String? name;
  @override
  final String? nonce;
  @override
  final int? precision;
  @override
  final String? ticker;
  @override
  final int? version;

  @override
  String toString() {
    return 'GdkContract(entity: $entity, issuerPubkey: $issuerPubkey, name: $name, nonce: $nonce, precision: $precision, ticker: $ticker, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkContract &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality()
                .equals(other.issuerPubkey, issuerPubkey) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nonce, nonce) &&
            const DeepCollectionEquality().equals(other.precision, precision) &&
            const DeepCollectionEquality().equals(other.ticker, ticker) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(issuerPubkey),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nonce),
      const DeepCollectionEquality().hash(precision),
      const DeepCollectionEquality().hash(ticker),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_GdkContractCopyWith<_$_GdkContract> get copyWith =>
      __$$_GdkContractCopyWithImpl<_$_GdkContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkContractToJson(
      this,
    );
  }
}

abstract class _GdkContract implements GdkContract {
  const factory _GdkContract(
      {final GdkEntity? entity,
      @JsonKey(name: 'issuer_pubkey') final String? issuerPubkey,
      final String? name,
      final String? nonce,
      final int? precision,
      final String? ticker,
      final int? version}) = _$_GdkContract;

  factory _GdkContract.fromJson(Map<String, dynamic> json) =
      _$_GdkContract.fromJson;

  @override
  GdkEntity? get entity;
  @override
  @JsonKey(name: 'issuer_pubkey')
  String? get issuerPubkey;
  @override
  String? get name;
  @override
  String? get nonce;
  @override
  int? get precision;
  @override
  String? get ticker;
  @override
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_GdkContractCopyWith<_$_GdkContract> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkIssuance _$GdkIssuanceFromJson(Map<String, dynamic> json) {
  return _GdkIssuance.fromJson(json);
}

/// @nodoc
mixin _$GdkIssuance {
  String? get txid => throw _privateConstructorUsedError;
  int? get vout => throw _privateConstructorUsedError;
  int? get vin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkIssuanceCopyWith<GdkIssuance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkIssuanceCopyWith<$Res> {
  factory $GdkIssuanceCopyWith(
          GdkIssuance value, $Res Function(GdkIssuance) then) =
      _$GdkIssuanceCopyWithImpl<$Res>;
  $Res call({String? txid, int? vout, int? vin});
}

/// @nodoc
class _$GdkIssuanceCopyWithImpl<$Res> implements $GdkIssuanceCopyWith<$Res> {
  _$GdkIssuanceCopyWithImpl(this._value, this._then);

  final GdkIssuance _value;
  // ignore: unused_field
  final $Res Function(GdkIssuance) _then;

  @override
  $Res call({
    Object? txid = freezed,
    Object? vout = freezed,
    Object? vin = freezed,
  }) {
    return _then(_value.copyWith(
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: vout == freezed
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
      vin: vin == freezed
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkIssuanceCopyWith<$Res>
    implements $GdkIssuanceCopyWith<$Res> {
  factory _$$_GdkIssuanceCopyWith(
          _$_GdkIssuance value, $Res Function(_$_GdkIssuance) then) =
      __$$_GdkIssuanceCopyWithImpl<$Res>;
  @override
  $Res call({String? txid, int? vout, int? vin});
}

/// @nodoc
class __$$_GdkIssuanceCopyWithImpl<$Res> extends _$GdkIssuanceCopyWithImpl<$Res>
    implements _$$_GdkIssuanceCopyWith<$Res> {
  __$$_GdkIssuanceCopyWithImpl(
      _$_GdkIssuance _value, $Res Function(_$_GdkIssuance) _then)
      : super(_value, (v) => _then(v as _$_GdkIssuance));

  @override
  _$_GdkIssuance get _value => super._value as _$_GdkIssuance;

  @override
  $Res call({
    Object? txid = freezed,
    Object? vout = freezed,
    Object? vin = freezed,
  }) {
    return _then(_$_GdkIssuance(
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: vout == freezed
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
      vin: vin == freezed
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkIssuance implements _GdkIssuance {
  const _$_GdkIssuance({this.txid, this.vout, this.vin});

  factory _$_GdkIssuance.fromJson(Map<String, dynamic> json) =>
      _$$_GdkIssuanceFromJson(json);

  @override
  final String? txid;
  @override
  final int? vout;
  @override
  final int? vin;

  @override
  String toString() {
    return 'GdkIssuance(txid: $txid, vout: $vout, vin: $vin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkIssuance &&
            const DeepCollectionEquality().equals(other.txid, txid) &&
            const DeepCollectionEquality().equals(other.vout, vout) &&
            const DeepCollectionEquality().equals(other.vin, vin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(txid),
      const DeepCollectionEquality().hash(vout),
      const DeepCollectionEquality().hash(vin));

  @JsonKey(ignore: true)
  @override
  _$$_GdkIssuanceCopyWith<_$_GdkIssuance> get copyWith =>
      __$$_GdkIssuanceCopyWithImpl<_$_GdkIssuance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkIssuanceToJson(
      this,
    );
  }
}

abstract class _GdkIssuance implements GdkIssuance {
  const factory _GdkIssuance(
      {final String? txid, final int? vout, final int? vin}) = _$_GdkIssuance;

  factory _GdkIssuance.fromJson(Map<String, dynamic> json) =
      _$_GdkIssuance.fromJson;

  @override
  String? get txid;
  @override
  int? get vout;
  @override
  int? get vin;
  @override
  @JsonKey(ignore: true)
  _$$_GdkIssuanceCopyWith<_$_GdkIssuance> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkAssetInformation _$GdkAssetInformationFromJson(Map<String, dynamic> json) {
  return _GdkAssetInformation.fromJson(json);
}

/// @nodoc
mixin _$GdkAssetInformation {
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;
  GdkContract? get contract => throw _privateConstructorUsedError;
  GdkEntity? get entity => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuance_prevout')
  GdkIssuance? get issuancePrevout => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuance_txin')
  GdkIssuance? get issuanceTxin => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_pubkey')
  String? get issuerPubkey => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get precision => throw _privateConstructorUsedError;
  String? get ticker => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkAssetInformationCopyWith<GdkAssetInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkAssetInformationCopyWith<$Res> {
  factory $GdkAssetInformationCopyWith(
          GdkAssetInformation value, $Res Function(GdkAssetInformation) then) =
      _$GdkAssetInformationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
      GdkContract? contract,
      GdkEntity? entity,
      @JsonKey(name: 'issuance_prevout') GdkIssuance? issuancePrevout,
      @JsonKey(name: 'issuance_txin') GdkIssuance? issuanceTxin,
      @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
      String? name,
      int? precision,
      String? ticker,
      int? version,
      String? icon});

  $GdkContractCopyWith<$Res>? get contract;
  $GdkEntityCopyWith<$Res>? get entity;
  $GdkIssuanceCopyWith<$Res>? get issuancePrevout;
  $GdkIssuanceCopyWith<$Res>? get issuanceTxin;
}

/// @nodoc
class _$GdkAssetInformationCopyWithImpl<$Res>
    implements $GdkAssetInformationCopyWith<$Res> {
  _$GdkAssetInformationCopyWithImpl(this._value, this._then);

  final GdkAssetInformation _value;
  // ignore: unused_field
  final $Res Function(GdkAssetInformation) _then;

  @override
  $Res call({
    Object? assetId = freezed,
    Object? contract = freezed,
    Object? entity = freezed,
    Object? issuancePrevout = freezed,
    Object? issuanceTxin = freezed,
    Object? issuerPubkey = freezed,
    Object? name = freezed,
    Object? precision = freezed,
    Object? ticker = freezed,
    Object? version = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      contract: contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as GdkContract?,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GdkEntity?,
      issuancePrevout: issuancePrevout == freezed
          ? _value.issuancePrevout
          : issuancePrevout // ignore: cast_nullable_to_non_nullable
              as GdkIssuance?,
      issuanceTxin: issuanceTxin == freezed
          ? _value.issuanceTxin
          : issuanceTxin // ignore: cast_nullable_to_non_nullable
              as GdkIssuance?,
      issuerPubkey: issuerPubkey == freezed
          ? _value.issuerPubkey
          : issuerPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $GdkContractCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $GdkContractCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value));
    });
  }

  @override
  $GdkEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $GdkEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }

  @override
  $GdkIssuanceCopyWith<$Res>? get issuancePrevout {
    if (_value.issuancePrevout == null) {
      return null;
    }

    return $GdkIssuanceCopyWith<$Res>(_value.issuancePrevout!, (value) {
      return _then(_value.copyWith(issuancePrevout: value));
    });
  }

  @override
  $GdkIssuanceCopyWith<$Res>? get issuanceTxin {
    if (_value.issuanceTxin == null) {
      return null;
    }

    return $GdkIssuanceCopyWith<$Res>(_value.issuanceTxin!, (value) {
      return _then(_value.copyWith(issuanceTxin: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkAssetInformationCopyWith<$Res>
    implements $GdkAssetInformationCopyWith<$Res> {
  factory _$$_GdkAssetInformationCopyWith(_$_GdkAssetInformation value,
          $Res Function(_$_GdkAssetInformation) then) =
      __$$_GdkAssetInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
      GdkContract? contract,
      GdkEntity? entity,
      @JsonKey(name: 'issuance_prevout') GdkIssuance? issuancePrevout,
      @JsonKey(name: 'issuance_txin') GdkIssuance? issuanceTxin,
      @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
      String? name,
      int? precision,
      String? ticker,
      int? version,
      String? icon});

  @override
  $GdkContractCopyWith<$Res>? get contract;
  @override
  $GdkEntityCopyWith<$Res>? get entity;
  @override
  $GdkIssuanceCopyWith<$Res>? get issuancePrevout;
  @override
  $GdkIssuanceCopyWith<$Res>? get issuanceTxin;
}

/// @nodoc
class __$$_GdkAssetInformationCopyWithImpl<$Res>
    extends _$GdkAssetInformationCopyWithImpl<$Res>
    implements _$$_GdkAssetInformationCopyWith<$Res> {
  __$$_GdkAssetInformationCopyWithImpl(_$_GdkAssetInformation _value,
      $Res Function(_$_GdkAssetInformation) _then)
      : super(_value, (v) => _then(v as _$_GdkAssetInformation));

  @override
  _$_GdkAssetInformation get _value => super._value as _$_GdkAssetInformation;

  @override
  $Res call({
    Object? assetId = freezed,
    Object? contract = freezed,
    Object? entity = freezed,
    Object? issuancePrevout = freezed,
    Object? issuanceTxin = freezed,
    Object? issuerPubkey = freezed,
    Object? name = freezed,
    Object? precision = freezed,
    Object? ticker = freezed,
    Object? version = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_GdkAssetInformation(
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      contract: contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as GdkContract?,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GdkEntity?,
      issuancePrevout: issuancePrevout == freezed
          ? _value.issuancePrevout
          : issuancePrevout // ignore: cast_nullable_to_non_nullable
              as GdkIssuance?,
      issuanceTxin: issuanceTxin == freezed
          ? _value.issuanceTxin
          : issuanceTxin // ignore: cast_nullable_to_non_nullable
              as GdkIssuance?,
      issuerPubkey: issuerPubkey == freezed
          ? _value.issuerPubkey
          : issuerPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: precision == freezed
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      ticker: ticker == freezed
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkAssetInformation implements _GdkAssetInformation {
  const _$_GdkAssetInformation(
      {@JsonKey(name: 'asset_id') this.assetId,
      this.contract,
      this.entity,
      @JsonKey(name: 'issuance_prevout') this.issuancePrevout,
      @JsonKey(name: 'issuance_txin') this.issuanceTxin,
      @JsonKey(name: 'issuer_pubkey') this.issuerPubkey,
      this.name,
      this.precision,
      this.ticker,
      this.version,
      this.icon});

  factory _$_GdkAssetInformation.fromJson(Map<String, dynamic> json) =>
      _$$_GdkAssetInformationFromJson(json);

  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @override
  final GdkContract? contract;
  @override
  final GdkEntity? entity;
  @override
  @JsonKey(name: 'issuance_prevout')
  final GdkIssuance? issuancePrevout;
  @override
  @JsonKey(name: 'issuance_txin')
  final GdkIssuance? issuanceTxin;
  @override
  @JsonKey(name: 'issuer_pubkey')
  final String? issuerPubkey;
  @override
  final String? name;
  @override
  final int? precision;
  @override
  final String? ticker;
  @override
  final int? version;
  @override
  final String? icon;

  @override
  String toString() {
    return 'GdkAssetInformation(assetId: $assetId, contract: $contract, entity: $entity, issuancePrevout: $issuancePrevout, issuanceTxin: $issuanceTxin, issuerPubkey: $issuerPubkey, name: $name, precision: $precision, ticker: $ticker, version: $version, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkAssetInformation &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality().equals(other.contract, contract) &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality()
                .equals(other.issuancePrevout, issuancePrevout) &&
            const DeepCollectionEquality()
                .equals(other.issuanceTxin, issuanceTxin) &&
            const DeepCollectionEquality()
                .equals(other.issuerPubkey, issuerPubkey) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.precision, precision) &&
            const DeepCollectionEquality().equals(other.ticker, ticker) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(assetId),
      const DeepCollectionEquality().hash(contract),
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(issuancePrevout),
      const DeepCollectionEquality().hash(issuanceTxin),
      const DeepCollectionEquality().hash(issuerPubkey),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(precision),
      const DeepCollectionEquality().hash(ticker),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_GdkAssetInformationCopyWith<_$_GdkAssetInformation> get copyWith =>
      __$$_GdkAssetInformationCopyWithImpl<_$_GdkAssetInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkAssetInformationToJson(
      this,
    );
  }
}

abstract class _GdkAssetInformation implements GdkAssetInformation {
  const factory _GdkAssetInformation(
      {@JsonKey(name: 'asset_id') final String? assetId,
      final GdkContract? contract,
      final GdkEntity? entity,
      @JsonKey(name: 'issuance_prevout') final GdkIssuance? issuancePrevout,
      @JsonKey(name: 'issuance_txin') final GdkIssuance? issuanceTxin,
      @JsonKey(name: 'issuer_pubkey') final String? issuerPubkey,
      final String? name,
      final int? precision,
      final String? ticker,
      final int? version,
      final String? icon}) = _$_GdkAssetInformation;

  factory _GdkAssetInformation.fromJson(Map<String, dynamic> json) =
      _$_GdkAssetInformation.fromJson;

  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  GdkContract? get contract;
  @override
  GdkEntity? get entity;
  @override
  @JsonKey(name: 'issuance_prevout')
  GdkIssuance? get issuancePrevout;
  @override
  @JsonKey(name: 'issuance_txin')
  GdkIssuance? get issuanceTxin;
  @override
  @JsonKey(name: 'issuer_pubkey')
  String? get issuerPubkey;
  @override
  String? get name;
  @override
  int? get precision;
  @override
  String? get ticker;
  @override
  int? get version;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_GdkAssetInformationCopyWith<_$_GdkAssetInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkNetworks _$GdkNetworksFromJson(Map<String, dynamic> json) {
  return _GdkNetworks.fromJson(json);
}

/// @nodoc
mixin _$GdkNetworks {
  List<String>? get allNetworks => throw _privateConstructorUsedError;
  Map<String, GdkNetwork>? get networks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkNetworksCopyWith<GdkNetworks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkNetworksCopyWith<$Res> {
  factory $GdkNetworksCopyWith(
          GdkNetworks value, $Res Function(GdkNetworks) then) =
      _$GdkNetworksCopyWithImpl<$Res>;
  $Res call({List<String>? allNetworks, Map<String, GdkNetwork>? networks});
}

/// @nodoc
class _$GdkNetworksCopyWithImpl<$Res> implements $GdkNetworksCopyWith<$Res> {
  _$GdkNetworksCopyWithImpl(this._value, this._then);

  final GdkNetworks _value;
  // ignore: unused_field
  final $Res Function(GdkNetworks) _then;

  @override
  $Res call({
    Object? allNetworks = freezed,
    Object? networks = freezed,
  }) {
    return _then(_value.copyWith(
      allNetworks: allNetworks == freezed
          ? _value.allNetworks
          : allNetworks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      networks: networks == freezed
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Map<String, GdkNetwork>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkNetworksCopyWith<$Res>
    implements $GdkNetworksCopyWith<$Res> {
  factory _$$_GdkNetworksCopyWith(
          _$_GdkNetworks value, $Res Function(_$_GdkNetworks) then) =
      __$$_GdkNetworksCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? allNetworks, Map<String, GdkNetwork>? networks});
}

/// @nodoc
class __$$_GdkNetworksCopyWithImpl<$Res> extends _$GdkNetworksCopyWithImpl<$Res>
    implements _$$_GdkNetworksCopyWith<$Res> {
  __$$_GdkNetworksCopyWithImpl(
      _$_GdkNetworks _value, $Res Function(_$_GdkNetworks) _then)
      : super(_value, (v) => _then(v as _$_GdkNetworks));

  @override
  _$_GdkNetworks get _value => super._value as _$_GdkNetworks;

  @override
  $Res call({
    Object? allNetworks = freezed,
    Object? networks = freezed,
  }) {
    return _then(_$_GdkNetworks(
      allNetworks: allNetworks == freezed
          ? _value._allNetworks
          : allNetworks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      networks: networks == freezed
          ? _value._networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Map<String, GdkNetwork>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkNetworks extends _GdkNetworks {
  const _$_GdkNetworks(
      {final List<String>? allNetworks,
      final Map<String, GdkNetwork>? networks})
      : _allNetworks = allNetworks,
        _networks = networks,
        super._();

  factory _$_GdkNetworks.fromJson(Map<String, dynamic> json) =>
      _$$_GdkNetworksFromJson(json);

  final List<String>? _allNetworks;
  @override
  List<String>? get allNetworks {
    final value = _allNetworks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, GdkNetwork>? _networks;
  @override
  Map<String, GdkNetwork>? get networks {
    final value = _networks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GdkNetworks(allNetworks: $allNetworks, networks: $networks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkNetworks &&
            const DeepCollectionEquality()
                .equals(other._allNetworks, _allNetworks) &&
            const DeepCollectionEquality().equals(other._networks, _networks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allNetworks),
      const DeepCollectionEquality().hash(_networks));

  @JsonKey(ignore: true)
  @override
  _$$_GdkNetworksCopyWith<_$_GdkNetworks> get copyWith =>
      __$$_GdkNetworksCopyWithImpl<_$_GdkNetworks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkNetworksToJson(
      this,
    );
  }
}

abstract class _GdkNetworks extends GdkNetworks {
  const factory _GdkNetworks(
      {final List<String>? allNetworks,
      final Map<String, GdkNetwork>? networks}) = _$_GdkNetworks;
  const _GdkNetworks._() : super._();

  factory _GdkNetworks.fromJson(Map<String, dynamic> json) =
      _$_GdkNetworks.fromJson;

  @override
  List<String>? get allNetworks;
  @override
  Map<String, GdkNetwork>? get networks;
  @override
  @JsonKey(ignore: true)
  _$$_GdkNetworksCopyWith<_$_GdkNetworks> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkNetwork _$GdkNetworkFromJson(Map<String, dynamic> json) {
  return _GdkNetwork.fromJson(json);
}

/// @nodoc
mixin _$GdkNetwork {
  @JsonKey(name: 'address_explorer_url')
  String? get addressExplorerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_registry_onion_url')
  String? get assetRegistryOnionUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_registry_url')
  String? get assetRegistryUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'bech32_prefix')
  String? get bech32Prefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'bip21_prefix')
  String? get bip21Prefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'blech32_prefix')
  String? get blech32Prefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'blinded_prefix')
  int? get blindedPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'csv_buckets')
  List<int>? get csvBuckets => throw _privateConstructorUsedError;
  @JsonKey(name: 'ct_bits')
  int? get ctBits => throw _privateConstructorUsedError;
  @JsonKey(name: 'ct_exponent')
  int? get ctExponent => throw _privateConstructorUsedError;
  bool? get development => throw _privateConstructorUsedError;
  @JsonKey(name: 'electrum_tls')
  bool? get electrumTls => throw _privateConstructorUsedError;
  @JsonKey(name: 'electrum_url')
  String? get electrumUrl => throw _privateConstructorUsedError;
  bool? get liquid => throw _privateConstructorUsedError;
  bool? get mainnet => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;
  @JsonKey(name: 'p2pkh_version')
  int? get p2PkhVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'p2sh_version')
  int? get p2ShVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'policy_asset')
  String? get policyAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_type')
  ServerTypeEnum? get serverType => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_chain_code')
  String? get serviceChainCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_pubkey')
  String? get servicePubkey => throw _privateConstructorUsedError;
  @JsonKey(name: 'spv_enabled')
  bool? get spvEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'spv_multi')
  bool? get spvMulti => throw _privateConstructorUsedError;
  @JsonKey(name: 'spv_servers')
  List<dynamic>? get spvServers => throw _privateConstructorUsedError;
  @JsonKey(name: 'tx_explorer_url')
  String? get txExplorerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'wamp_cert_pins')
  List<String>? get wampCertPins => throw _privateConstructorUsedError;
  @JsonKey(name: 'wamp_cert_roots')
  List<String>? get wampCertRoots => throw _privateConstructorUsedError;
  @JsonKey(name: 'wamp_onion_url')
  String? get wampOnionUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'wamp_url')
  String? get wampUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkNetworkCopyWith<GdkNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkNetworkCopyWith<$Res> {
  factory $GdkNetworkCopyWith(
          GdkNetwork value, $Res Function(GdkNetwork) then) =
      _$GdkNetworkCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address_explorer_url')
          String? addressExplorerUrl,
      @JsonKey(name: 'address_registry_onion_url')
          String? assetRegistryOnionUrl,
      @JsonKey(name: 'asset_registry_url')
          String? assetRegistryUrl,
      @JsonKey(name: 'bech32_prefix')
          String? bech32Prefix,
      @JsonKey(name: 'bip21_prefix')
          String? bip21Prefix,
      @JsonKey(name: 'blech32_prefix')
          String? blech32Prefix,
      @JsonKey(name: 'blinded_prefix')
          int? blindedPrefix,
      @JsonKey(name: 'csv_buckets')
          List<int>? csvBuckets,
      @JsonKey(name: 'ct_bits')
          int? ctBits,
      @JsonKey(name: 'ct_exponent')
          int? ctExponent,
      bool? development,
      @JsonKey(name: 'electrum_tls')
          bool? electrumTls,
      @JsonKey(name: 'electrum_url')
          String? electrumUrl,
      bool? liquid,
      bool? mainnet,
      String? name,
      String? network,
      @JsonKey(name: 'p2pkh_version')
          int? p2PkhVersion,
      @JsonKey(name: 'p2sh_version')
          int? p2ShVersion,
      @JsonKey(name: 'policy_asset')
          String? policyAsset,
      @JsonKey(name: 'server_type')
          ServerTypeEnum? serverType,
      @JsonKey(name: 'service_chain_code')
          String? serviceChainCode,
      @JsonKey(name: 'service_pubkey')
          String? servicePubkey,
      @JsonKey(name: 'spv_enabled')
          bool? spvEnabled,
      @JsonKey(name: 'spv_multi')
          bool? spvMulti,
      @JsonKey(name: 'spv_servers')
          List<dynamic>? spvServers,
      @JsonKey(name: 'tx_explorer_url')
          String? txExplorerUrl,
      @JsonKey(name: 'wamp_cert_pins')
          List<String>? wampCertPins,
      @JsonKey(name: 'wamp_cert_roots')
          List<String>? wampCertRoots,
      @JsonKey(name: 'wamp_onion_url')
          String? wampOnionUrl,
      @JsonKey(name: 'wamp_url')
          String? wampUrl});
}

/// @nodoc
class _$GdkNetworkCopyWithImpl<$Res> implements $GdkNetworkCopyWith<$Res> {
  _$GdkNetworkCopyWithImpl(this._value, this._then);

  final GdkNetwork _value;
  // ignore: unused_field
  final $Res Function(GdkNetwork) _then;

  @override
  $Res call({
    Object? addressExplorerUrl = freezed,
    Object? assetRegistryOnionUrl = freezed,
    Object? assetRegistryUrl = freezed,
    Object? bech32Prefix = freezed,
    Object? bip21Prefix = freezed,
    Object? blech32Prefix = freezed,
    Object? blindedPrefix = freezed,
    Object? csvBuckets = freezed,
    Object? ctBits = freezed,
    Object? ctExponent = freezed,
    Object? development = freezed,
    Object? electrumTls = freezed,
    Object? electrumUrl = freezed,
    Object? liquid = freezed,
    Object? mainnet = freezed,
    Object? name = freezed,
    Object? network = freezed,
    Object? p2PkhVersion = freezed,
    Object? p2ShVersion = freezed,
    Object? policyAsset = freezed,
    Object? serverType = freezed,
    Object? serviceChainCode = freezed,
    Object? servicePubkey = freezed,
    Object? spvEnabled = freezed,
    Object? spvMulti = freezed,
    Object? spvServers = freezed,
    Object? txExplorerUrl = freezed,
    Object? wampCertPins = freezed,
    Object? wampCertRoots = freezed,
    Object? wampOnionUrl = freezed,
    Object? wampUrl = freezed,
  }) {
    return _then(_value.copyWith(
      addressExplorerUrl: addressExplorerUrl == freezed
          ? _value.addressExplorerUrl
          : addressExplorerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      assetRegistryOnionUrl: assetRegistryOnionUrl == freezed
          ? _value.assetRegistryOnionUrl
          : assetRegistryOnionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      assetRegistryUrl: assetRegistryUrl == freezed
          ? _value.assetRegistryUrl
          : assetRegistryUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bech32Prefix: bech32Prefix == freezed
          ? _value.bech32Prefix
          : bech32Prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      bip21Prefix: bip21Prefix == freezed
          ? _value.bip21Prefix
          : bip21Prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      blech32Prefix: blech32Prefix == freezed
          ? _value.blech32Prefix
          : blech32Prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      blindedPrefix: blindedPrefix == freezed
          ? _value.blindedPrefix
          : blindedPrefix // ignore: cast_nullable_to_non_nullable
              as int?,
      csvBuckets: csvBuckets == freezed
          ? _value.csvBuckets
          : csvBuckets // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ctBits: ctBits == freezed
          ? _value.ctBits
          : ctBits // ignore: cast_nullable_to_non_nullable
              as int?,
      ctExponent: ctExponent == freezed
          ? _value.ctExponent
          : ctExponent // ignore: cast_nullable_to_non_nullable
              as int?,
      development: development == freezed
          ? _value.development
          : development // ignore: cast_nullable_to_non_nullable
              as bool?,
      electrumTls: electrumTls == freezed
          ? _value.electrumTls
          : electrumTls // ignore: cast_nullable_to_non_nullable
              as bool?,
      electrumUrl: electrumUrl == freezed
          ? _value.electrumUrl
          : electrumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      liquid: liquid == freezed
          ? _value.liquid
          : liquid // ignore: cast_nullable_to_non_nullable
              as bool?,
      mainnet: mainnet == freezed
          ? _value.mainnet
          : mainnet // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      p2PkhVersion: p2PkhVersion == freezed
          ? _value.p2PkhVersion
          : p2PkhVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      p2ShVersion: p2ShVersion == freezed
          ? _value.p2ShVersion
          : p2ShVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      policyAsset: policyAsset == freezed
          ? _value.policyAsset
          : policyAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      serverType: serverType == freezed
          ? _value.serverType
          : serverType // ignore: cast_nullable_to_non_nullable
              as ServerTypeEnum?,
      serviceChainCode: serviceChainCode == freezed
          ? _value.serviceChainCode
          : serviceChainCode // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePubkey: servicePubkey == freezed
          ? _value.servicePubkey
          : servicePubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      spvEnabled: spvEnabled == freezed
          ? _value.spvEnabled
          : spvEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvMulti: spvMulti == freezed
          ? _value.spvMulti
          : spvMulti // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvServers: spvServers == freezed
          ? _value.spvServers
          : spvServers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      txExplorerUrl: txExplorerUrl == freezed
          ? _value.txExplorerUrl
          : txExplorerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wampCertPins: wampCertPins == freezed
          ? _value.wampCertPins
          : wampCertPins // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wampCertRoots: wampCertRoots == freezed
          ? _value.wampCertRoots
          : wampCertRoots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wampOnionUrl: wampOnionUrl == freezed
          ? _value.wampOnionUrl
          : wampOnionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wampUrl: wampUrl == freezed
          ? _value.wampUrl
          : wampUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkNetworkCopyWith<$Res>
    implements $GdkNetworkCopyWith<$Res> {
  factory _$$_GdkNetworkCopyWith(
          _$_GdkNetwork value, $Res Function(_$_GdkNetwork) then) =
      __$$_GdkNetworkCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address_explorer_url')
          String? addressExplorerUrl,
      @JsonKey(name: 'address_registry_onion_url')
          String? assetRegistryOnionUrl,
      @JsonKey(name: 'asset_registry_url')
          String? assetRegistryUrl,
      @JsonKey(name: 'bech32_prefix')
          String? bech32Prefix,
      @JsonKey(name: 'bip21_prefix')
          String? bip21Prefix,
      @JsonKey(name: 'blech32_prefix')
          String? blech32Prefix,
      @JsonKey(name: 'blinded_prefix')
          int? blindedPrefix,
      @JsonKey(name: 'csv_buckets')
          List<int>? csvBuckets,
      @JsonKey(name: 'ct_bits')
          int? ctBits,
      @JsonKey(name: 'ct_exponent')
          int? ctExponent,
      bool? development,
      @JsonKey(name: 'electrum_tls')
          bool? electrumTls,
      @JsonKey(name: 'electrum_url')
          String? electrumUrl,
      bool? liquid,
      bool? mainnet,
      String? name,
      String? network,
      @JsonKey(name: 'p2pkh_version')
          int? p2PkhVersion,
      @JsonKey(name: 'p2sh_version')
          int? p2ShVersion,
      @JsonKey(name: 'policy_asset')
          String? policyAsset,
      @JsonKey(name: 'server_type')
          ServerTypeEnum? serverType,
      @JsonKey(name: 'service_chain_code')
          String? serviceChainCode,
      @JsonKey(name: 'service_pubkey')
          String? servicePubkey,
      @JsonKey(name: 'spv_enabled')
          bool? spvEnabled,
      @JsonKey(name: 'spv_multi')
          bool? spvMulti,
      @JsonKey(name: 'spv_servers')
          List<dynamic>? spvServers,
      @JsonKey(name: 'tx_explorer_url')
          String? txExplorerUrl,
      @JsonKey(name: 'wamp_cert_pins')
          List<String>? wampCertPins,
      @JsonKey(name: 'wamp_cert_roots')
          List<String>? wampCertRoots,
      @JsonKey(name: 'wamp_onion_url')
          String? wampOnionUrl,
      @JsonKey(name: 'wamp_url')
          String? wampUrl});
}

/// @nodoc
class __$$_GdkNetworkCopyWithImpl<$Res> extends _$GdkNetworkCopyWithImpl<$Res>
    implements _$$_GdkNetworkCopyWith<$Res> {
  __$$_GdkNetworkCopyWithImpl(
      _$_GdkNetwork _value, $Res Function(_$_GdkNetwork) _then)
      : super(_value, (v) => _then(v as _$_GdkNetwork));

  @override
  _$_GdkNetwork get _value => super._value as _$_GdkNetwork;

  @override
  $Res call({
    Object? addressExplorerUrl = freezed,
    Object? assetRegistryOnionUrl = freezed,
    Object? assetRegistryUrl = freezed,
    Object? bech32Prefix = freezed,
    Object? bip21Prefix = freezed,
    Object? blech32Prefix = freezed,
    Object? blindedPrefix = freezed,
    Object? csvBuckets = freezed,
    Object? ctBits = freezed,
    Object? ctExponent = freezed,
    Object? development = freezed,
    Object? electrumTls = freezed,
    Object? electrumUrl = freezed,
    Object? liquid = freezed,
    Object? mainnet = freezed,
    Object? name = freezed,
    Object? network = freezed,
    Object? p2PkhVersion = freezed,
    Object? p2ShVersion = freezed,
    Object? policyAsset = freezed,
    Object? serverType = freezed,
    Object? serviceChainCode = freezed,
    Object? servicePubkey = freezed,
    Object? spvEnabled = freezed,
    Object? spvMulti = freezed,
    Object? spvServers = freezed,
    Object? txExplorerUrl = freezed,
    Object? wampCertPins = freezed,
    Object? wampCertRoots = freezed,
    Object? wampOnionUrl = freezed,
    Object? wampUrl = freezed,
  }) {
    return _then(_$_GdkNetwork(
      addressExplorerUrl: addressExplorerUrl == freezed
          ? _value.addressExplorerUrl
          : addressExplorerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      assetRegistryOnionUrl: assetRegistryOnionUrl == freezed
          ? _value.assetRegistryOnionUrl
          : assetRegistryOnionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      assetRegistryUrl: assetRegistryUrl == freezed
          ? _value.assetRegistryUrl
          : assetRegistryUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bech32Prefix: bech32Prefix == freezed
          ? _value.bech32Prefix
          : bech32Prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      bip21Prefix: bip21Prefix == freezed
          ? _value.bip21Prefix
          : bip21Prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      blech32Prefix: blech32Prefix == freezed
          ? _value.blech32Prefix
          : blech32Prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      blindedPrefix: blindedPrefix == freezed
          ? _value.blindedPrefix
          : blindedPrefix // ignore: cast_nullable_to_non_nullable
              as int?,
      csvBuckets: csvBuckets == freezed
          ? _value._csvBuckets
          : csvBuckets // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      ctBits: ctBits == freezed
          ? _value.ctBits
          : ctBits // ignore: cast_nullable_to_non_nullable
              as int?,
      ctExponent: ctExponent == freezed
          ? _value.ctExponent
          : ctExponent // ignore: cast_nullable_to_non_nullable
              as int?,
      development: development == freezed
          ? _value.development
          : development // ignore: cast_nullable_to_non_nullable
              as bool?,
      electrumTls: electrumTls == freezed
          ? _value.electrumTls
          : electrumTls // ignore: cast_nullable_to_non_nullable
              as bool?,
      electrumUrl: electrumUrl == freezed
          ? _value.electrumUrl
          : electrumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      liquid: liquid == freezed
          ? _value.liquid
          : liquid // ignore: cast_nullable_to_non_nullable
              as bool?,
      mainnet: mainnet == freezed
          ? _value.mainnet
          : mainnet // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      p2PkhVersion: p2PkhVersion == freezed
          ? _value.p2PkhVersion
          : p2PkhVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      p2ShVersion: p2ShVersion == freezed
          ? _value.p2ShVersion
          : p2ShVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      policyAsset: policyAsset == freezed
          ? _value.policyAsset
          : policyAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      serverType: serverType == freezed
          ? _value.serverType
          : serverType // ignore: cast_nullable_to_non_nullable
              as ServerTypeEnum?,
      serviceChainCode: serviceChainCode == freezed
          ? _value.serviceChainCode
          : serviceChainCode // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePubkey: servicePubkey == freezed
          ? _value.servicePubkey
          : servicePubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      spvEnabled: spvEnabled == freezed
          ? _value.spvEnabled
          : spvEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvMulti: spvMulti == freezed
          ? _value.spvMulti
          : spvMulti // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvServers: spvServers == freezed
          ? _value._spvServers
          : spvServers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      txExplorerUrl: txExplorerUrl == freezed
          ? _value.txExplorerUrl
          : txExplorerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wampCertPins: wampCertPins == freezed
          ? _value._wampCertPins
          : wampCertPins // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wampCertRoots: wampCertRoots == freezed
          ? _value._wampCertRoots
          : wampCertRoots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wampOnionUrl: wampOnionUrl == freezed
          ? _value.wampOnionUrl
          : wampOnionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wampUrl: wampUrl == freezed
          ? _value.wampUrl
          : wampUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkNetwork extends _GdkNetwork {
  const _$_GdkNetwork(
      {@JsonKey(name: 'address_explorer_url') this.addressExplorerUrl,
      @JsonKey(name: 'address_registry_onion_url') this.assetRegistryOnionUrl,
      @JsonKey(name: 'asset_registry_url') this.assetRegistryUrl,
      @JsonKey(name: 'bech32_prefix') this.bech32Prefix,
      @JsonKey(name: 'bip21_prefix') this.bip21Prefix,
      @JsonKey(name: 'blech32_prefix') this.blech32Prefix,
      @JsonKey(name: 'blinded_prefix') this.blindedPrefix,
      @JsonKey(name: 'csv_buckets') final List<int>? csvBuckets,
      @JsonKey(name: 'ct_bits') this.ctBits,
      @JsonKey(name: 'ct_exponent') this.ctExponent,
      this.development,
      @JsonKey(name: 'electrum_tls') this.electrumTls,
      @JsonKey(name: 'electrum_url') this.electrumUrl,
      this.liquid,
      this.mainnet,
      this.name,
      this.network,
      @JsonKey(name: 'p2pkh_version') this.p2PkhVersion,
      @JsonKey(name: 'p2sh_version') this.p2ShVersion,
      @JsonKey(name: 'policy_asset') this.policyAsset,
      @JsonKey(name: 'server_type') this.serverType,
      @JsonKey(name: 'service_chain_code') this.serviceChainCode,
      @JsonKey(name: 'service_pubkey') this.servicePubkey,
      @JsonKey(name: 'spv_enabled') this.spvEnabled,
      @JsonKey(name: 'spv_multi') this.spvMulti,
      @JsonKey(name: 'spv_servers') final List<dynamic>? spvServers,
      @JsonKey(name: 'tx_explorer_url') this.txExplorerUrl,
      @JsonKey(name: 'wamp_cert_pins') final List<String>? wampCertPins,
      @JsonKey(name: 'wamp_cert_roots') final List<String>? wampCertRoots,
      @JsonKey(name: 'wamp_onion_url') this.wampOnionUrl,
      @JsonKey(name: 'wamp_url') this.wampUrl})
      : _csvBuckets = csvBuckets,
        _spvServers = spvServers,
        _wampCertPins = wampCertPins,
        _wampCertRoots = wampCertRoots,
        super._();

  factory _$_GdkNetwork.fromJson(Map<String, dynamic> json) =>
      _$$_GdkNetworkFromJson(json);

  @override
  @JsonKey(name: 'address_explorer_url')
  final String? addressExplorerUrl;
  @override
  @JsonKey(name: 'address_registry_onion_url')
  final String? assetRegistryOnionUrl;
  @override
  @JsonKey(name: 'asset_registry_url')
  final String? assetRegistryUrl;
  @override
  @JsonKey(name: 'bech32_prefix')
  final String? bech32Prefix;
  @override
  @JsonKey(name: 'bip21_prefix')
  final String? bip21Prefix;
  @override
  @JsonKey(name: 'blech32_prefix')
  final String? blech32Prefix;
  @override
  @JsonKey(name: 'blinded_prefix')
  final int? blindedPrefix;
  final List<int>? _csvBuckets;
  @override
  @JsonKey(name: 'csv_buckets')
  List<int>? get csvBuckets {
    final value = _csvBuckets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'ct_bits')
  final int? ctBits;
  @override
  @JsonKey(name: 'ct_exponent')
  final int? ctExponent;
  @override
  final bool? development;
  @override
  @JsonKey(name: 'electrum_tls')
  final bool? electrumTls;
  @override
  @JsonKey(name: 'electrum_url')
  final String? electrumUrl;
  @override
  final bool? liquid;
  @override
  final bool? mainnet;
  @override
  final String? name;
  @override
  final String? network;
  @override
  @JsonKey(name: 'p2pkh_version')
  final int? p2PkhVersion;
  @override
  @JsonKey(name: 'p2sh_version')
  final int? p2ShVersion;
  @override
  @JsonKey(name: 'policy_asset')
  final String? policyAsset;
  @override
  @JsonKey(name: 'server_type')
  final ServerTypeEnum? serverType;
  @override
  @JsonKey(name: 'service_chain_code')
  final String? serviceChainCode;
  @override
  @JsonKey(name: 'service_pubkey')
  final String? servicePubkey;
  @override
  @JsonKey(name: 'spv_enabled')
  final bool? spvEnabled;
  @override
  @JsonKey(name: 'spv_multi')
  final bool? spvMulti;
  final List<dynamic>? _spvServers;
  @override
  @JsonKey(name: 'spv_servers')
  List<dynamic>? get spvServers {
    final value = _spvServers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'tx_explorer_url')
  final String? txExplorerUrl;
  final List<String>? _wampCertPins;
  @override
  @JsonKey(name: 'wamp_cert_pins')
  List<String>? get wampCertPins {
    final value = _wampCertPins;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _wampCertRoots;
  @override
  @JsonKey(name: 'wamp_cert_roots')
  List<String>? get wampCertRoots {
    final value = _wampCertRoots;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'wamp_onion_url')
  final String? wampOnionUrl;
  @override
  @JsonKey(name: 'wamp_url')
  final String? wampUrl;

  @override
  String toString() {
    return 'GdkNetwork(addressExplorerUrl: $addressExplorerUrl, assetRegistryOnionUrl: $assetRegistryOnionUrl, assetRegistryUrl: $assetRegistryUrl, bech32Prefix: $bech32Prefix, bip21Prefix: $bip21Prefix, blech32Prefix: $blech32Prefix, blindedPrefix: $blindedPrefix, csvBuckets: $csvBuckets, ctBits: $ctBits, ctExponent: $ctExponent, development: $development, electrumTls: $electrumTls, electrumUrl: $electrumUrl, liquid: $liquid, mainnet: $mainnet, name: $name, network: $network, p2PkhVersion: $p2PkhVersion, p2ShVersion: $p2ShVersion, policyAsset: $policyAsset, serverType: $serverType, serviceChainCode: $serviceChainCode, servicePubkey: $servicePubkey, spvEnabled: $spvEnabled, spvMulti: $spvMulti, spvServers: $spvServers, txExplorerUrl: $txExplorerUrl, wampCertPins: $wampCertPins, wampCertRoots: $wampCertRoots, wampOnionUrl: $wampOnionUrl, wampUrl: $wampUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkNetwork &&
            const DeepCollectionEquality()
                .equals(other.addressExplorerUrl, addressExplorerUrl) &&
            const DeepCollectionEquality()
                .equals(other.assetRegistryOnionUrl, assetRegistryOnionUrl) &&
            const DeepCollectionEquality()
                .equals(other.assetRegistryUrl, assetRegistryUrl) &&
            const DeepCollectionEquality()
                .equals(other.bech32Prefix, bech32Prefix) &&
            const DeepCollectionEquality()
                .equals(other.bip21Prefix, bip21Prefix) &&
            const DeepCollectionEquality()
                .equals(other.blech32Prefix, blech32Prefix) &&
            const DeepCollectionEquality()
                .equals(other.blindedPrefix, blindedPrefix) &&
            const DeepCollectionEquality()
                .equals(other._csvBuckets, _csvBuckets) &&
            const DeepCollectionEquality().equals(other.ctBits, ctBits) &&
            const DeepCollectionEquality()
                .equals(other.ctExponent, ctExponent) &&
            const DeepCollectionEquality()
                .equals(other.development, development) &&
            const DeepCollectionEquality()
                .equals(other.electrumTls, electrumTls) &&
            const DeepCollectionEquality()
                .equals(other.electrumUrl, electrumUrl) &&
            const DeepCollectionEquality().equals(other.liquid, liquid) &&
            const DeepCollectionEquality().equals(other.mainnet, mainnet) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.network, network) &&
            const DeepCollectionEquality()
                .equals(other.p2PkhVersion, p2PkhVersion) &&
            const DeepCollectionEquality()
                .equals(other.p2ShVersion, p2ShVersion) &&
            const DeepCollectionEquality()
                .equals(other.policyAsset, policyAsset) &&
            const DeepCollectionEquality()
                .equals(other.serverType, serverType) &&
            const DeepCollectionEquality()
                .equals(other.serviceChainCode, serviceChainCode) &&
            const DeepCollectionEquality()
                .equals(other.servicePubkey, servicePubkey) &&
            const DeepCollectionEquality()
                .equals(other.spvEnabled, spvEnabled) &&
            const DeepCollectionEquality().equals(other.spvMulti, spvMulti) &&
            const DeepCollectionEquality()
                .equals(other._spvServers, _spvServers) &&
            const DeepCollectionEquality()
                .equals(other.txExplorerUrl, txExplorerUrl) &&
            const DeepCollectionEquality()
                .equals(other._wampCertPins, _wampCertPins) &&
            const DeepCollectionEquality()
                .equals(other._wampCertRoots, _wampCertRoots) &&
            const DeepCollectionEquality()
                .equals(other.wampOnionUrl, wampOnionUrl) &&
            const DeepCollectionEquality().equals(other.wampUrl, wampUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(addressExplorerUrl),
        const DeepCollectionEquality().hash(assetRegistryOnionUrl),
        const DeepCollectionEquality().hash(assetRegistryUrl),
        const DeepCollectionEquality().hash(bech32Prefix),
        const DeepCollectionEquality().hash(bip21Prefix),
        const DeepCollectionEquality().hash(blech32Prefix),
        const DeepCollectionEquality().hash(blindedPrefix),
        const DeepCollectionEquality().hash(_csvBuckets),
        const DeepCollectionEquality().hash(ctBits),
        const DeepCollectionEquality().hash(ctExponent),
        const DeepCollectionEquality().hash(development),
        const DeepCollectionEquality().hash(electrumTls),
        const DeepCollectionEquality().hash(electrumUrl),
        const DeepCollectionEquality().hash(liquid),
        const DeepCollectionEquality().hash(mainnet),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(network),
        const DeepCollectionEquality().hash(p2PkhVersion),
        const DeepCollectionEquality().hash(p2ShVersion),
        const DeepCollectionEquality().hash(policyAsset),
        const DeepCollectionEquality().hash(serverType),
        const DeepCollectionEquality().hash(serviceChainCode),
        const DeepCollectionEquality().hash(servicePubkey),
        const DeepCollectionEquality().hash(spvEnabled),
        const DeepCollectionEquality().hash(spvMulti),
        const DeepCollectionEquality().hash(_spvServers),
        const DeepCollectionEquality().hash(txExplorerUrl),
        const DeepCollectionEquality().hash(_wampCertPins),
        const DeepCollectionEquality().hash(_wampCertRoots),
        const DeepCollectionEquality().hash(wampOnionUrl),
        const DeepCollectionEquality().hash(wampUrl)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_GdkNetworkCopyWith<_$_GdkNetwork> get copyWith =>
      __$$_GdkNetworkCopyWithImpl<_$_GdkNetwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkNetworkToJson(
      this,
    );
  }
}

abstract class _GdkNetwork extends GdkNetwork {
  const factory _GdkNetwork(
      {@JsonKey(name: 'address_explorer_url')
          final String? addressExplorerUrl,
      @JsonKey(name: 'address_registry_onion_url')
          final String? assetRegistryOnionUrl,
      @JsonKey(name: 'asset_registry_url')
          final String? assetRegistryUrl,
      @JsonKey(name: 'bech32_prefix')
          final String? bech32Prefix,
      @JsonKey(name: 'bip21_prefix')
          final String? bip21Prefix,
      @JsonKey(name: 'blech32_prefix')
          final String? blech32Prefix,
      @JsonKey(name: 'blinded_prefix')
          final int? blindedPrefix,
      @JsonKey(name: 'csv_buckets')
          final List<int>? csvBuckets,
      @JsonKey(name: 'ct_bits')
          final int? ctBits,
      @JsonKey(name: 'ct_exponent')
          final int? ctExponent,
      final bool? development,
      @JsonKey(name: 'electrum_tls')
          final bool? electrumTls,
      @JsonKey(name: 'electrum_url')
          final String? electrumUrl,
      final bool? liquid,
      final bool? mainnet,
      final String? name,
      final String? network,
      @JsonKey(name: 'p2pkh_version')
          final int? p2PkhVersion,
      @JsonKey(name: 'p2sh_version')
          final int? p2ShVersion,
      @JsonKey(name: 'policy_asset')
          final String? policyAsset,
      @JsonKey(name: 'server_type')
          final ServerTypeEnum? serverType,
      @JsonKey(name: 'service_chain_code')
          final String? serviceChainCode,
      @JsonKey(name: 'service_pubkey')
          final String? servicePubkey,
      @JsonKey(name: 'spv_enabled')
          final bool? spvEnabled,
      @JsonKey(name: 'spv_multi')
          final bool? spvMulti,
      @JsonKey(name: 'spv_servers')
          final List<dynamic>? spvServers,
      @JsonKey(name: 'tx_explorer_url')
          final String? txExplorerUrl,
      @JsonKey(name: 'wamp_cert_pins')
          final List<String>? wampCertPins,
      @JsonKey(name: 'wamp_cert_roots')
          final List<String>? wampCertRoots,
      @JsonKey(name: 'wamp_onion_url')
          final String? wampOnionUrl,
      @JsonKey(name: 'wamp_url')
          final String? wampUrl}) = _$_GdkNetwork;
  const _GdkNetwork._() : super._();

  factory _GdkNetwork.fromJson(Map<String, dynamic> json) =
      _$_GdkNetwork.fromJson;

  @override
  @JsonKey(name: 'address_explorer_url')
  String? get addressExplorerUrl;
  @override
  @JsonKey(name: 'address_registry_onion_url')
  String? get assetRegistryOnionUrl;
  @override
  @JsonKey(name: 'asset_registry_url')
  String? get assetRegistryUrl;
  @override
  @JsonKey(name: 'bech32_prefix')
  String? get bech32Prefix;
  @override
  @JsonKey(name: 'bip21_prefix')
  String? get bip21Prefix;
  @override
  @JsonKey(name: 'blech32_prefix')
  String? get blech32Prefix;
  @override
  @JsonKey(name: 'blinded_prefix')
  int? get blindedPrefix;
  @override
  @JsonKey(name: 'csv_buckets')
  List<int>? get csvBuckets;
  @override
  @JsonKey(name: 'ct_bits')
  int? get ctBits;
  @override
  @JsonKey(name: 'ct_exponent')
  int? get ctExponent;
  @override
  bool? get development;
  @override
  @JsonKey(name: 'electrum_tls')
  bool? get electrumTls;
  @override
  @JsonKey(name: 'electrum_url')
  String? get electrumUrl;
  @override
  bool? get liquid;
  @override
  bool? get mainnet;
  @override
  String? get name;
  @override
  String? get network;
  @override
  @JsonKey(name: 'p2pkh_version')
  int? get p2PkhVersion;
  @override
  @JsonKey(name: 'p2sh_version')
  int? get p2ShVersion;
  @override
  @JsonKey(name: 'policy_asset')
  String? get policyAsset;
  @override
  @JsonKey(name: 'server_type')
  ServerTypeEnum? get serverType;
  @override
  @JsonKey(name: 'service_chain_code')
  String? get serviceChainCode;
  @override
  @JsonKey(name: 'service_pubkey')
  String? get servicePubkey;
  @override
  @JsonKey(name: 'spv_enabled')
  bool? get spvEnabled;
  @override
  @JsonKey(name: 'spv_multi')
  bool? get spvMulti;
  @override
  @JsonKey(name: 'spv_servers')
  List<dynamic>? get spvServers;
  @override
  @JsonKey(name: 'tx_explorer_url')
  String? get txExplorerUrl;
  @override
  @JsonKey(name: 'wamp_cert_pins')
  List<String>? get wampCertPins;
  @override
  @JsonKey(name: 'wamp_cert_roots')
  List<String>? get wampCertRoots;
  @override
  @JsonKey(name: 'wamp_onion_url')
  String? get wampOnionUrl;
  @override
  @JsonKey(name: 'wamp_url')
  String? get wampUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GdkNetworkCopyWith<_$_GdkNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkWallet _$GdkWalletFromJson(Map<String, dynamic> json) {
  return _GdkWallet.fromJson(json);
}

/// @nodoc
mixin _$GdkWallet {
  @JsonKey(name: 'has_transactions')
  bool? get hasTransactions => throw _privateConstructorUsedError;
  bool? get hidden => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get pointer => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiving_id')
  String? get receivingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_ca')
  int? get requiredCa => throw _privateConstructorUsedError;
  Map<String, int>? get satoshi => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkWalletCopyWith<GdkWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkWalletCopyWith<$Res> {
  factory $GdkWalletCopyWith(GdkWallet value, $Res Function(GdkWallet) then) =
      _$GdkWalletCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'has_transactions') bool? hasTransactions,
      bool? hidden,
      String? name,
      int? pointer,
      @JsonKey(name: 'receiving_id') String? receivingId,
      @JsonKey(name: 'required_ca') int? requiredCa,
      Map<String, int>? satoshi,
      String? type});
}

/// @nodoc
class _$GdkWalletCopyWithImpl<$Res> implements $GdkWalletCopyWith<$Res> {
  _$GdkWalletCopyWithImpl(this._value, this._then);

  final GdkWallet _value;
  // ignore: unused_field
  final $Res Function(GdkWallet) _then;

  @override
  $Res call({
    Object? hasTransactions = freezed,
    Object? hidden = freezed,
    Object? name = freezed,
    Object? pointer = freezed,
    Object? receivingId = freezed,
    Object? requiredCa = freezed,
    Object? satoshi = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      hasTransactions: hasTransactions == freezed
          ? _value.hasTransactions
          : hasTransactions // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      receivingId: receivingId == freezed
          ? _value.receivingId
          : receivingId // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredCa: requiredCa == freezed
          ? _value.requiredCa
          : requiredCa // ignore: cast_nullable_to_non_nullable
              as int?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkWalletCopyWith<$Res> implements $GdkWalletCopyWith<$Res> {
  factory _$$_GdkWalletCopyWith(
          _$_GdkWallet value, $Res Function(_$_GdkWallet) then) =
      __$$_GdkWalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'has_transactions') bool? hasTransactions,
      bool? hidden,
      String? name,
      int? pointer,
      @JsonKey(name: 'receiving_id') String? receivingId,
      @JsonKey(name: 'required_ca') int? requiredCa,
      Map<String, int>? satoshi,
      String? type});
}

/// @nodoc
class __$$_GdkWalletCopyWithImpl<$Res> extends _$GdkWalletCopyWithImpl<$Res>
    implements _$$_GdkWalletCopyWith<$Res> {
  __$$_GdkWalletCopyWithImpl(
      _$_GdkWallet _value, $Res Function(_$_GdkWallet) _then)
      : super(_value, (v) => _then(v as _$_GdkWallet));

  @override
  _$_GdkWallet get _value => super._value as _$_GdkWallet;

  @override
  $Res call({
    Object? hasTransactions = freezed,
    Object? hidden = freezed,
    Object? name = freezed,
    Object? pointer = freezed,
    Object? receivingId = freezed,
    Object? requiredCa = freezed,
    Object? satoshi = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_GdkWallet(
      hasTransactions: hasTransactions == freezed
          ? _value.hasTransactions
          : hasTransactions // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      receivingId: receivingId == freezed
          ? _value.receivingId
          : receivingId // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredCa: requiredCa == freezed
          ? _value.requiredCa
          : requiredCa // ignore: cast_nullable_to_non_nullable
              as int?,
      satoshi: satoshi == freezed
          ? _value._satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkWallet implements _GdkWallet {
  const _$_GdkWallet(
      {@JsonKey(name: 'has_transactions') this.hasTransactions,
      this.hidden,
      this.name,
      this.pointer,
      @JsonKey(name: 'receiving_id') this.receivingId,
      @JsonKey(name: 'required_ca') this.requiredCa,
      final Map<String, int>? satoshi,
      this.type})
      : _satoshi = satoshi;

  factory _$_GdkWallet.fromJson(Map<String, dynamic> json) =>
      _$$_GdkWalletFromJson(json);

  @override
  @JsonKey(name: 'has_transactions')
  final bool? hasTransactions;
  @override
  final bool? hidden;
  @override
  final String? name;
  @override
  final int? pointer;
  @override
  @JsonKey(name: 'receiving_id')
  final String? receivingId;
  @override
  @JsonKey(name: 'required_ca')
  final int? requiredCa;
  final Map<String, int>? _satoshi;
  @override
  Map<String, int>? get satoshi {
    final value = _satoshi;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? type;

  @override
  String toString() {
    return 'GdkWallet(hasTransactions: $hasTransactions, hidden: $hidden, name: $name, pointer: $pointer, receivingId: $receivingId, requiredCa: $requiredCa, satoshi: $satoshi, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkWallet &&
            const DeepCollectionEquality()
                .equals(other.hasTransactions, hasTransactions) &&
            const DeepCollectionEquality().equals(other.hidden, hidden) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pointer, pointer) &&
            const DeepCollectionEquality()
                .equals(other.receivingId, receivingId) &&
            const DeepCollectionEquality()
                .equals(other.requiredCa, requiredCa) &&
            const DeepCollectionEquality().equals(other._satoshi, _satoshi) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasTransactions),
      const DeepCollectionEquality().hash(hidden),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pointer),
      const DeepCollectionEquality().hash(receivingId),
      const DeepCollectionEquality().hash(requiredCa),
      const DeepCollectionEquality().hash(_satoshi),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_GdkWalletCopyWith<_$_GdkWallet> get copyWith =>
      __$$_GdkWalletCopyWithImpl<_$_GdkWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkWalletToJson(
      this,
    );
  }
}

abstract class _GdkWallet implements GdkWallet {
  const factory _GdkWallet(
      {@JsonKey(name: 'has_transactions') final bool? hasTransactions,
      final bool? hidden,
      final String? name,
      final int? pointer,
      @JsonKey(name: 'receiving_id') final String? receivingId,
      @JsonKey(name: 'required_ca') final int? requiredCa,
      final Map<String, int>? satoshi,
      final String? type}) = _$_GdkWallet;

  factory _GdkWallet.fromJson(Map<String, dynamic> json) =
      _$_GdkWallet.fromJson;

  @override
  @JsonKey(name: 'has_transactions')
  bool? get hasTransactions;
  @override
  bool? get hidden;
  @override
  String? get name;
  @override
  int? get pointer;
  @override
  @JsonKey(name: 'receiving_id')
  String? get receivingId;
  @override
  @JsonKey(name: 'required_ca')
  int? get requiredCa;
  @override
  Map<String, int>? get satoshi;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_GdkWalletCopyWith<_$_GdkWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkReceiveAddressDetails _$GdkReceiveAddressDetailsFromJson(
    Map<String, dynamic> json) {
  return _GdkReceiveAddressDetails.fromJson(json);
}

/// @nodoc
mixin _$GdkReceiveAddressDetails {
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
  GdkAddressTypeEnum? get addressType => throw _privateConstructorUsedError;
  int? get branch => throw _privateConstructorUsedError;
  int? get pointer => throw _privateConstructorUsedError;
  String? get script => throw _privateConstructorUsedError;
  @JsonKey(name: 'script_type')
  int? get scriptType => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  int? get subtype => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_path')
  List<int>? get userPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkReceiveAddressDetailsCopyWith<GdkReceiveAddressDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkReceiveAddressDetailsCopyWith<$Res> {
  factory $GdkReceiveAddressDetailsCopyWith(GdkReceiveAddressDetails value,
          $Res Function(GdkReceiveAddressDetails) then) =
      _$GdkReceiveAddressDetailsCopyWithImpl<$Res>;
  $Res call(
      {String? address,
      @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
          GdkAddressTypeEnum? addressType,
      int? branch,
      int? pointer,
      String? script,
      @JsonKey(name: 'script_type')
          int? scriptType,
      int? subaccount,
      int? subtype,
      @JsonKey(name: 'user_path')
          List<int>? userPath});
}

/// @nodoc
class _$GdkReceiveAddressDetailsCopyWithImpl<$Res>
    implements $GdkReceiveAddressDetailsCopyWith<$Res> {
  _$GdkReceiveAddressDetailsCopyWithImpl(this._value, this._then);

  final GdkReceiveAddressDetails _value;
  // ignore: unused_field
  final $Res Function(GdkReceiveAddressDetails) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? addressType = freezed,
    Object? branch = freezed,
    Object? pointer = freezed,
    Object? script = freezed,
    Object? scriptType = freezed,
    Object? subaccount = freezed,
    Object? subtype = freezed,
    Object? userPath = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as GdkAddressTypeEnum?,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as int?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      script: script == freezed
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptType: scriptType == freezed
          ? _value.scriptType
          : scriptType // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as int?,
      userPath: userPath == freezed
          ? _value.userPath
          : userPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkReceiveAddressDetailsCopyWith<$Res>
    implements $GdkReceiveAddressDetailsCopyWith<$Res> {
  factory _$$_GdkReceiveAddressDetailsCopyWith(
          _$_GdkReceiveAddressDetails value,
          $Res Function(_$_GdkReceiveAddressDetails) then) =
      __$$_GdkReceiveAddressDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? address,
      @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
          GdkAddressTypeEnum? addressType,
      int? branch,
      int? pointer,
      String? script,
      @JsonKey(name: 'script_type')
          int? scriptType,
      int? subaccount,
      int? subtype,
      @JsonKey(name: 'user_path')
          List<int>? userPath});
}

/// @nodoc
class __$$_GdkReceiveAddressDetailsCopyWithImpl<$Res>
    extends _$GdkReceiveAddressDetailsCopyWithImpl<$Res>
    implements _$$_GdkReceiveAddressDetailsCopyWith<$Res> {
  __$$_GdkReceiveAddressDetailsCopyWithImpl(_$_GdkReceiveAddressDetails _value,
      $Res Function(_$_GdkReceiveAddressDetails) _then)
      : super(_value, (v) => _then(v as _$_GdkReceiveAddressDetails));

  @override
  _$_GdkReceiveAddressDetails get _value =>
      super._value as _$_GdkReceiveAddressDetails;

  @override
  $Res call({
    Object? address = freezed,
    Object? addressType = freezed,
    Object? branch = freezed,
    Object? pointer = freezed,
    Object? script = freezed,
    Object? scriptType = freezed,
    Object? subaccount = freezed,
    Object? subtype = freezed,
    Object? userPath = freezed,
  }) {
    return _then(_$_GdkReceiveAddressDetails(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as GdkAddressTypeEnum?,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as int?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      script: script == freezed
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptType: scriptType == freezed
          ? _value.scriptType
          : scriptType // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as int?,
      userPath: userPath == freezed
          ? _value._userPath
          : userPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkReceiveAddressDetails extends _GdkReceiveAddressDetails {
  const _$_GdkReceiveAddressDetails(
      {this.address,
      @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
          this.addressType,
      this.branch,
      this.pointer,
      this.script,
      @JsonKey(name: 'script_type')
          this.scriptType,
      this.subaccount = 0,
      this.subtype,
      @JsonKey(name: 'user_path')
          final List<int>? userPath})
      : _userPath = userPath,
        super._();

  factory _$_GdkReceiveAddressDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GdkReceiveAddressDetailsFromJson(json);

  @override
  final String? address;
  @override
  @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
  final GdkAddressTypeEnum? addressType;
  @override
  final int? branch;
  @override
  final int? pointer;
  @override
  final String? script;
  @override
  @JsonKey(name: 'script_type')
  final int? scriptType;
  @override
  @JsonKey()
  final int? subaccount;
  @override
  final int? subtype;
  final List<int>? _userPath;
  @override
  @JsonKey(name: 'user_path')
  List<int>? get userPath {
    final value = _userPath;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GdkReceiveAddressDetails(address: $address, addressType: $addressType, branch: $branch, pointer: $pointer, script: $script, scriptType: $scriptType, subaccount: $subaccount, subtype: $subtype, userPath: $userPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkReceiveAddressDetails &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.addressType, addressType) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            const DeepCollectionEquality().equals(other.pointer, pointer) &&
            const DeepCollectionEquality().equals(other.script, script) &&
            const DeepCollectionEquality()
                .equals(other.scriptType, scriptType) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.subtype, subtype) &&
            const DeepCollectionEquality().equals(other._userPath, _userPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(addressType),
      const DeepCollectionEquality().hash(branch),
      const DeepCollectionEquality().hash(pointer),
      const DeepCollectionEquality().hash(script),
      const DeepCollectionEquality().hash(scriptType),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(subtype),
      const DeepCollectionEquality().hash(_userPath));

  @JsonKey(ignore: true)
  @override
  _$$_GdkReceiveAddressDetailsCopyWith<_$_GdkReceiveAddressDetails>
      get copyWith => __$$_GdkReceiveAddressDetailsCopyWithImpl<
          _$_GdkReceiveAddressDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkReceiveAddressDetailsToJson(
      this,
    );
  }
}

abstract class _GdkReceiveAddressDetails extends GdkReceiveAddressDetails {
  const factory _GdkReceiveAddressDetails(
      {final String? address,
      @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
          final GdkAddressTypeEnum? addressType,
      final int? branch,
      final int? pointer,
      final String? script,
      @JsonKey(name: 'script_type')
          final int? scriptType,
      final int? subaccount,
      final int? subtype,
      @JsonKey(name: 'user_path')
          final List<int>? userPath}) = _$_GdkReceiveAddressDetails;
  const _GdkReceiveAddressDetails._() : super._();

  factory _GdkReceiveAddressDetails.fromJson(Map<String, dynamic> json) =
      _$_GdkReceiveAddressDetails.fromJson;

  @override
  String? get address;
  @override
  @JsonKey(name: 'address_type', defaultValue: GdkAddressTypeEnum.csv)
  GdkAddressTypeEnum? get addressType;
  @override
  int? get branch;
  @override
  int? get pointer;
  @override
  String? get script;
  @override
  @JsonKey(name: 'script_type')
  int? get scriptType;
  @override
  int? get subaccount;
  @override
  int? get subtype;
  @override
  @JsonKey(name: 'user_path')
  List<int>? get userPath;
  @override
  @JsonKey(ignore: true)
  _$$_GdkReceiveAddressDetailsCopyWith<_$_GdkReceiveAddressDetails>
      get copyWith => throw _privateConstructorUsedError;
}

GdkPreviousAddressesDetails _$GdkPreviousAddressesDetailsFromJson(
    Map<String, dynamic> json) {
  return _GdkPreviousAddressesDetails.fromJson(json);
}

/// @nodoc
mixin _$GdkPreviousAddressesDetails {
  int get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_pointer')
  int? get lastPointer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  bool? get isInternal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkPreviousAddressesDetailsCopyWith<GdkPreviousAddressesDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkPreviousAddressesDetailsCopyWith<$Res> {
  factory $GdkPreviousAddressesDetailsCopyWith(
          GdkPreviousAddressesDetails value,
          $Res Function(GdkPreviousAddressesDetails) then) =
      _$GdkPreviousAddressesDetailsCopyWithImpl<$Res>;
  $Res call(
      {int subaccount,
      @JsonKey(name: 'last_pointer') int? lastPointer,
      @JsonKey(name: 'is_internal') bool? isInternal});
}

/// @nodoc
class _$GdkPreviousAddressesDetailsCopyWithImpl<$Res>
    implements $GdkPreviousAddressesDetailsCopyWith<$Res> {
  _$GdkPreviousAddressesDetailsCopyWithImpl(this._value, this._then);

  final GdkPreviousAddressesDetails _value;
  // ignore: unused_field
  final $Res Function(GdkPreviousAddressesDetails) _then;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? lastPointer = freezed,
    Object? isInternal = freezed,
  }) {
    return _then(_value.copyWith(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPointer: lastPointer == freezed
          ? _value.lastPointer
          : lastPointer // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: isInternal == freezed
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkPreviousAddressesDetailsCopyWith<$Res>
    implements $GdkPreviousAddressesDetailsCopyWith<$Res> {
  factory _$$_GdkPreviousAddressesDetailsCopyWith(
          _$_GdkPreviousAddressesDetails value,
          $Res Function(_$_GdkPreviousAddressesDetails) then) =
      __$$_GdkPreviousAddressesDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int subaccount,
      @JsonKey(name: 'last_pointer') int? lastPointer,
      @JsonKey(name: 'is_internal') bool? isInternal});
}

/// @nodoc
class __$$_GdkPreviousAddressesDetailsCopyWithImpl<$Res>
    extends _$GdkPreviousAddressesDetailsCopyWithImpl<$Res>
    implements _$$_GdkPreviousAddressesDetailsCopyWith<$Res> {
  __$$_GdkPreviousAddressesDetailsCopyWithImpl(
      _$_GdkPreviousAddressesDetails _value,
      $Res Function(_$_GdkPreviousAddressesDetails) _then)
      : super(_value, (v) => _then(v as _$_GdkPreviousAddressesDetails));

  @override
  _$_GdkPreviousAddressesDetails get _value =>
      super._value as _$_GdkPreviousAddressesDetails;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? lastPointer = freezed,
    Object? isInternal = freezed,
  }) {
    return _then(_$_GdkPreviousAddressesDetails(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPointer: lastPointer == freezed
          ? _value.lastPointer
          : lastPointer // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: isInternal == freezed
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkPreviousAddressesDetails extends _GdkPreviousAddressesDetails {
  const _$_GdkPreviousAddressesDetails(
      {this.subaccount = 0,
      @JsonKey(name: 'last_pointer') this.lastPointer,
      @JsonKey(name: 'is_internal') this.isInternal})
      : super._();

  factory _$_GdkPreviousAddressesDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GdkPreviousAddressesDetailsFromJson(json);

  @override
  @JsonKey()
  final int subaccount;
  @override
  @JsonKey(name: 'last_pointer')
  final int? lastPointer;
  @override
  @JsonKey(name: 'is_internal')
  final bool? isInternal;

  @override
  String toString() {
    return 'GdkPreviousAddressesDetails(subaccount: $subaccount, lastPointer: $lastPointer, isInternal: $isInternal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkPreviousAddressesDetails &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality()
                .equals(other.lastPointer, lastPointer) &&
            const DeepCollectionEquality()
                .equals(other.isInternal, isInternal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(lastPointer),
      const DeepCollectionEquality().hash(isInternal));

  @JsonKey(ignore: true)
  @override
  _$$_GdkPreviousAddressesDetailsCopyWith<_$_GdkPreviousAddressesDetails>
      get copyWith => __$$_GdkPreviousAddressesDetailsCopyWithImpl<
          _$_GdkPreviousAddressesDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkPreviousAddressesDetailsToJson(
      this,
    );
  }
}

abstract class _GdkPreviousAddressesDetails
    extends GdkPreviousAddressesDetails {
  const factory _GdkPreviousAddressesDetails(
          {final int subaccount,
          @JsonKey(name: 'last_pointer') final int? lastPointer,
          @JsonKey(name: 'is_internal') final bool? isInternal}) =
      _$_GdkPreviousAddressesDetails;
  const _GdkPreviousAddressesDetails._() : super._();

  factory _GdkPreviousAddressesDetails.fromJson(Map<String, dynamic> json) =
      _$_GdkPreviousAddressesDetails.fromJson;

  @override
  int get subaccount;
  @override
  @JsonKey(name: 'last_pointer')
  int? get lastPointer;
  @override
  @JsonKey(name: 'is_internal')
  bool? get isInternal;
  @override
  @JsonKey(ignore: true)
  _$$_GdkPreviousAddressesDetailsCopyWith<_$_GdkPreviousAddressesDetails>
      get copyWith => throw _privateConstructorUsedError;
}

GdkPreviousAddress _$GdkPreviousAddressFromJson(Map<String, dynamic> json) {
  return _GdkPreviousAddress.fromJson(json);
}

/// @nodoc
mixin _$GdkPreviousAddress {
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_type')
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: 'subaccount')
  int? get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  bool? get isInternal => throw _privateConstructorUsedError;
  @JsonKey(name: 'pointer')
  int? get pointer => throw _privateConstructorUsedError;
  @JsonKey(name: 'script_pubkey')
  String? get scriptPubkey => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_path')
  List<int>? get userPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'tx_count')
  int? get txCount => throw _privateConstructorUsedError; // For liquid only
  @JsonKey(name: 'is_blinded')
  bool? get isBlinded => throw _privateConstructorUsedError;
  @JsonKey(name: 'unblinded_address')
  String? get unblindedAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'blinding_script')
  String? get blindingScript => throw _privateConstructorUsedError;
  @JsonKey(name: 'blinding_key')
  String? get blindingKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkPreviousAddressCopyWith<GdkPreviousAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkPreviousAddressCopyWith<$Res> {
  factory $GdkPreviousAddressCopyWith(
          GdkPreviousAddress value, $Res Function(GdkPreviousAddress) then) =
      _$GdkPreviousAddressCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address') String? address,
      @JsonKey(name: 'address_type') String? addressType,
      @JsonKey(name: 'subaccount') int? subaccount,
      @JsonKey(name: 'is_internal') bool? isInternal,
      @JsonKey(name: 'pointer') int? pointer,
      @JsonKey(name: 'script_pubkey') String? scriptPubkey,
      @JsonKey(name: 'user_path') List<int>? userPath,
      @JsonKey(name: 'tx_count') int? txCount,
      @JsonKey(name: 'is_blinded') bool? isBlinded,
      @JsonKey(name: 'unblinded_address') String? unblindedAddress,
      @JsonKey(name: 'blinding_script') String? blindingScript,
      @JsonKey(name: 'blinding_key') String? blindingKey});
}

/// @nodoc
class _$GdkPreviousAddressCopyWithImpl<$Res>
    implements $GdkPreviousAddressCopyWith<$Res> {
  _$GdkPreviousAddressCopyWithImpl(this._value, this._then);

  final GdkPreviousAddress _value;
  // ignore: unused_field
  final $Res Function(GdkPreviousAddress) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? addressType = freezed,
    Object? subaccount = freezed,
    Object? isInternal = freezed,
    Object? pointer = freezed,
    Object? scriptPubkey = freezed,
    Object? userPath = freezed,
    Object? txCount = freezed,
    Object? isBlinded = freezed,
    Object? unblindedAddress = freezed,
    Object? blindingScript = freezed,
    Object? blindingKey = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: isInternal == freezed
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      scriptPubkey: scriptPubkey == freezed
          ? _value.scriptPubkey
          : scriptPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      userPath: userPath == freezed
          ? _value.userPath
          : userPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      txCount: txCount == freezed
          ? _value.txCount
          : txCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isBlinded: isBlinded == freezed
          ? _value.isBlinded
          : isBlinded // ignore: cast_nullable_to_non_nullable
              as bool?,
      unblindedAddress: unblindedAddress == freezed
          ? _value.unblindedAddress
          : unblindedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      blindingScript: blindingScript == freezed
          ? _value.blindingScript
          : blindingScript // ignore: cast_nullable_to_non_nullable
              as String?,
      blindingKey: blindingKey == freezed
          ? _value.blindingKey
          : blindingKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkPreviousAddressCopyWith<$Res>
    implements $GdkPreviousAddressCopyWith<$Res> {
  factory _$$_GdkPreviousAddressCopyWith(_$_GdkPreviousAddress value,
          $Res Function(_$_GdkPreviousAddress) then) =
      __$$_GdkPreviousAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address') String? address,
      @JsonKey(name: 'address_type') String? addressType,
      @JsonKey(name: 'subaccount') int? subaccount,
      @JsonKey(name: 'is_internal') bool? isInternal,
      @JsonKey(name: 'pointer') int? pointer,
      @JsonKey(name: 'script_pubkey') String? scriptPubkey,
      @JsonKey(name: 'user_path') List<int>? userPath,
      @JsonKey(name: 'tx_count') int? txCount,
      @JsonKey(name: 'is_blinded') bool? isBlinded,
      @JsonKey(name: 'unblinded_address') String? unblindedAddress,
      @JsonKey(name: 'blinding_script') String? blindingScript,
      @JsonKey(name: 'blinding_key') String? blindingKey});
}

/// @nodoc
class __$$_GdkPreviousAddressCopyWithImpl<$Res>
    extends _$GdkPreviousAddressCopyWithImpl<$Res>
    implements _$$_GdkPreviousAddressCopyWith<$Res> {
  __$$_GdkPreviousAddressCopyWithImpl(
      _$_GdkPreviousAddress _value, $Res Function(_$_GdkPreviousAddress) _then)
      : super(_value, (v) => _then(v as _$_GdkPreviousAddress));

  @override
  _$_GdkPreviousAddress get _value => super._value as _$_GdkPreviousAddress;

  @override
  $Res call({
    Object? address = freezed,
    Object? addressType = freezed,
    Object? subaccount = freezed,
    Object? isInternal = freezed,
    Object? pointer = freezed,
    Object? scriptPubkey = freezed,
    Object? userPath = freezed,
    Object? txCount = freezed,
    Object? isBlinded = freezed,
    Object? unblindedAddress = freezed,
    Object? blindingScript = freezed,
    Object? blindingKey = freezed,
  }) {
    return _then(_$_GdkPreviousAddress(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: isInternal == freezed
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      scriptPubkey: scriptPubkey == freezed
          ? _value.scriptPubkey
          : scriptPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      userPath: userPath == freezed
          ? _value._userPath
          : userPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      txCount: txCount == freezed
          ? _value.txCount
          : txCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isBlinded: isBlinded == freezed
          ? _value.isBlinded
          : isBlinded // ignore: cast_nullable_to_non_nullable
              as bool?,
      unblindedAddress: unblindedAddress == freezed
          ? _value.unblindedAddress
          : unblindedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      blindingScript: blindingScript == freezed
          ? _value.blindingScript
          : blindingScript // ignore: cast_nullable_to_non_nullable
              as String?,
      blindingKey: blindingKey == freezed
          ? _value.blindingKey
          : blindingKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkPreviousAddress extends _GdkPreviousAddress {
  const _$_GdkPreviousAddress(
      {@JsonKey(name: 'address') this.address,
      @JsonKey(name: 'address_type') this.addressType,
      @JsonKey(name: 'subaccount') this.subaccount,
      @JsonKey(name: 'is_internal') this.isInternal,
      @JsonKey(name: 'pointer') this.pointer,
      @JsonKey(name: 'script_pubkey') this.scriptPubkey,
      @JsonKey(name: 'user_path') final List<int>? userPath,
      @JsonKey(name: 'tx_count') this.txCount,
      @JsonKey(name: 'is_blinded') this.isBlinded,
      @JsonKey(name: 'unblinded_address') this.unblindedAddress,
      @JsonKey(name: 'blinding_script') this.blindingScript,
      @JsonKey(name: 'blinding_key') this.blindingKey})
      : _userPath = userPath,
        super._();

  factory _$_GdkPreviousAddress.fromJson(Map<String, dynamic> json) =>
      _$$_GdkPreviousAddressFromJson(json);

  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'address_type')
  final String? addressType;
  @override
  @JsonKey(name: 'subaccount')
  final int? subaccount;
  @override
  @JsonKey(name: 'is_internal')
  final bool? isInternal;
  @override
  @JsonKey(name: 'pointer')
  final int? pointer;
  @override
  @JsonKey(name: 'script_pubkey')
  final String? scriptPubkey;
  final List<int>? _userPath;
  @override
  @JsonKey(name: 'user_path')
  List<int>? get userPath {
    final value = _userPath;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'tx_count')
  final int? txCount;
// For liquid only
  @override
  @JsonKey(name: 'is_blinded')
  final bool? isBlinded;
  @override
  @JsonKey(name: 'unblinded_address')
  final String? unblindedAddress;
  @override
  @JsonKey(name: 'blinding_script')
  final String? blindingScript;
  @override
  @JsonKey(name: 'blinding_key')
  final String? blindingKey;

  @override
  String toString() {
    return 'GdkPreviousAddress(address: $address, addressType: $addressType, subaccount: $subaccount, isInternal: $isInternal, pointer: $pointer, scriptPubkey: $scriptPubkey, userPath: $userPath, txCount: $txCount, isBlinded: $isBlinded, unblindedAddress: $unblindedAddress, blindingScript: $blindingScript, blindingKey: $blindingKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkPreviousAddress &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.addressType, addressType) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality()
                .equals(other.isInternal, isInternal) &&
            const DeepCollectionEquality().equals(other.pointer, pointer) &&
            const DeepCollectionEquality()
                .equals(other.scriptPubkey, scriptPubkey) &&
            const DeepCollectionEquality().equals(other._userPath, _userPath) &&
            const DeepCollectionEquality().equals(other.txCount, txCount) &&
            const DeepCollectionEquality().equals(other.isBlinded, isBlinded) &&
            const DeepCollectionEquality()
                .equals(other.unblindedAddress, unblindedAddress) &&
            const DeepCollectionEquality()
                .equals(other.blindingScript, blindingScript) &&
            const DeepCollectionEquality()
                .equals(other.blindingKey, blindingKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(addressType),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(isInternal),
      const DeepCollectionEquality().hash(pointer),
      const DeepCollectionEquality().hash(scriptPubkey),
      const DeepCollectionEquality().hash(_userPath),
      const DeepCollectionEquality().hash(txCount),
      const DeepCollectionEquality().hash(isBlinded),
      const DeepCollectionEquality().hash(unblindedAddress),
      const DeepCollectionEquality().hash(blindingScript),
      const DeepCollectionEquality().hash(blindingKey));

  @JsonKey(ignore: true)
  @override
  _$$_GdkPreviousAddressCopyWith<_$_GdkPreviousAddress> get copyWith =>
      __$$_GdkPreviousAddressCopyWithImpl<_$_GdkPreviousAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkPreviousAddressToJson(
      this,
    );
  }
}

abstract class _GdkPreviousAddress extends GdkPreviousAddress {
  const factory _GdkPreviousAddress(
          {@JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'address_type') final String? addressType,
          @JsonKey(name: 'subaccount') final int? subaccount,
          @JsonKey(name: 'is_internal') final bool? isInternal,
          @JsonKey(name: 'pointer') final int? pointer,
          @JsonKey(name: 'script_pubkey') final String? scriptPubkey,
          @JsonKey(name: 'user_path') final List<int>? userPath,
          @JsonKey(name: 'tx_count') final int? txCount,
          @JsonKey(name: 'is_blinded') final bool? isBlinded,
          @JsonKey(name: 'unblinded_address') final String? unblindedAddress,
          @JsonKey(name: 'blinding_script') final String? blindingScript,
          @JsonKey(name: 'blinding_key') final String? blindingKey}) =
      _$_GdkPreviousAddress;
  const _GdkPreviousAddress._() : super._();

  factory _GdkPreviousAddress.fromJson(Map<String, dynamic> json) =
      _$_GdkPreviousAddress.fromJson;

  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'address_type')
  String? get addressType;
  @override
  @JsonKey(name: 'subaccount')
  int? get subaccount;
  @override
  @JsonKey(name: 'is_internal')
  bool? get isInternal;
  @override
  @JsonKey(name: 'pointer')
  int? get pointer;
  @override
  @JsonKey(name: 'script_pubkey')
  String? get scriptPubkey;
  @override
  @JsonKey(name: 'user_path')
  List<int>? get userPath;
  @override
  @JsonKey(name: 'tx_count')
  int? get txCount;
  @override // For liquid only
  @JsonKey(name: 'is_blinded')
  bool? get isBlinded;
  @override
  @JsonKey(name: 'unblinded_address')
  String? get unblindedAddress;
  @override
  @JsonKey(name: 'blinding_script')
  String? get blindingScript;
  @override
  @JsonKey(name: 'blinding_key')
  String? get blindingKey;
  @override
  @JsonKey(ignore: true)
  _$$_GdkPreviousAddressCopyWith<_$_GdkPreviousAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkCreatePsetDetails _$GdkCreatePsetDetailsFromJson(Map<String, dynamic> json) {
  return _GdkCreatePsetDetails.fromJson(json);
}

/// @nodoc
mixin _$GdkCreatePsetDetails {
  List<GdkAddressee>? get addressees => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_asset')
  String? get sendAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_asset')
  String? get recvAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkCreatePsetDetailsCopyWith<GdkCreatePsetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkCreatePsetDetailsCopyWith<$Res> {
  factory $GdkCreatePsetDetailsCopyWith(GdkCreatePsetDetails value,
          $Res Function(GdkCreatePsetDetails) then) =
      _$GdkCreatePsetDetailsCopyWithImpl<$Res>;
  $Res call(
      {List<GdkAddressee>? addressees,
      int? subaccount,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class _$GdkCreatePsetDetailsCopyWithImpl<$Res>
    implements $GdkCreatePsetDetailsCopyWith<$Res> {
  _$GdkCreatePsetDetailsCopyWithImpl(this._value, this._then);

  final GdkCreatePsetDetails _value;
  // ignore: unused_field
  final $Res Function(GdkCreatePsetDetails) _then;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? subaccount = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_value.copyWith(
      addressees: addressees == freezed
          ? _value.addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkCreatePsetDetailsCopyWith<$Res>
    implements $GdkCreatePsetDetailsCopyWith<$Res> {
  factory _$$_GdkCreatePsetDetailsCopyWith(_$_GdkCreatePsetDetails value,
          $Res Function(_$_GdkCreatePsetDetails) then) =
      __$$_GdkCreatePsetDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GdkAddressee>? addressees,
      int? subaccount,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class __$$_GdkCreatePsetDetailsCopyWithImpl<$Res>
    extends _$GdkCreatePsetDetailsCopyWithImpl<$Res>
    implements _$$_GdkCreatePsetDetailsCopyWith<$Res> {
  __$$_GdkCreatePsetDetailsCopyWithImpl(_$_GdkCreatePsetDetails _value,
      $Res Function(_$_GdkCreatePsetDetails) _then)
      : super(_value, (v) => _then(v as _$_GdkCreatePsetDetails));

  @override
  _$_GdkCreatePsetDetails get _value => super._value as _$_GdkCreatePsetDetails;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? subaccount = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_$_GdkCreatePsetDetails(
      addressees: addressees == freezed
          ? _value._addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkCreatePsetDetails extends _GdkCreatePsetDetails {
  const _$_GdkCreatePsetDetails(
      {final List<GdkAddressee>? addressees,
      this.subaccount = 0,
      @JsonKey(name: 'send_asset') this.sendAsset,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'recv_asset') this.recvAsset,
      @JsonKey(name: 'recv_amount') this.recvAmount})
      : _addressees = addressees,
        super._();

  factory _$_GdkCreatePsetDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GdkCreatePsetDetailsFromJson(json);

  final List<GdkAddressee>? _addressees;
  @override
  List<GdkAddressee>? get addressees {
    final value = _addressees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? subaccount;
  @override
  @JsonKey(name: 'send_asset')
  final String? sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  final String? recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;

  @override
  String toString() {
    return 'GdkCreatePsetDetails(addressees: $addressees, subaccount: $subaccount, sendAsset: $sendAsset, sendAmount: $sendAmount, recvAsset: $recvAsset, recvAmount: $recvAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkCreatePsetDetails &&
            const DeepCollectionEquality()
                .equals(other._addressees, _addressees) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressees),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(sendAsset),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAsset),
      const DeepCollectionEquality().hash(recvAmount));

  @JsonKey(ignore: true)
  @override
  _$$_GdkCreatePsetDetailsCopyWith<_$_GdkCreatePsetDetails> get copyWith =>
      __$$_GdkCreatePsetDetailsCopyWithImpl<_$_GdkCreatePsetDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkCreatePsetDetailsToJson(
      this,
    );
  }
}

abstract class _GdkCreatePsetDetails extends GdkCreatePsetDetails {
  const factory _GdkCreatePsetDetails(
          {final List<GdkAddressee>? addressees,
          final int? subaccount,
          @JsonKey(name: 'send_asset') final String? sendAsset,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'recv_asset') final String? recvAsset,
          @JsonKey(name: 'recv_amount') final int? recvAmount}) =
      _$_GdkCreatePsetDetails;
  const _GdkCreatePsetDetails._() : super._();

  factory _GdkCreatePsetDetails.fromJson(Map<String, dynamic> json) =
      _$_GdkCreatePsetDetails.fromJson;

  @override
  List<GdkAddressee>? get addressees;
  @override
  int? get subaccount;
  @override
  @JsonKey(name: 'send_asset')
  String? get sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  String? get recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(ignore: true)
  _$$_GdkCreatePsetDetailsCopyWith<_$_GdkCreatePsetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkCreatePsetInputs _$GdkCreatePsetInputsFromJson(Map<String, dynamic> json) {
  return _GdkCreatePsetInputs.fromJson(json);
}

/// @nodoc
mixin _$GdkCreatePsetInputs {
  String? get asset => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_bf')
  String? get assetBf => throw _privateConstructorUsedError;
  String? get txid => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_bf')
  String? get valueBf => throw _privateConstructorUsedError;
  int? get vout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkCreatePsetInputsCopyWith<GdkCreatePsetInputs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkCreatePsetInputsCopyWith<$Res> {
  factory $GdkCreatePsetInputsCopyWith(
          GdkCreatePsetInputs value, $Res Function(GdkCreatePsetInputs) then) =
      _$GdkCreatePsetInputsCopyWithImpl<$Res>;
  $Res call(
      {String? asset,
      @JsonKey(name: 'asset_bf') String? assetBf,
      String? txid,
      int? value,
      @JsonKey(name: 'value_bf') String? valueBf,
      int? vout});
}

/// @nodoc
class _$GdkCreatePsetInputsCopyWithImpl<$Res>
    implements $GdkCreatePsetInputsCopyWith<$Res> {
  _$GdkCreatePsetInputsCopyWithImpl(this._value, this._then);

  final GdkCreatePsetInputs _value;
  // ignore: unused_field
  final $Res Function(GdkCreatePsetInputs) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? assetBf = freezed,
    Object? txid = freezed,
    Object? value = freezed,
    Object? valueBf = freezed,
    Object? vout = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      assetBf: assetBf == freezed
          ? _value.assetBf
          : assetBf // ignore: cast_nullable_to_non_nullable
              as String?,
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      valueBf: valueBf == freezed
          ? _value.valueBf
          : valueBf // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: vout == freezed
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkCreatePsetInputsCopyWith<$Res>
    implements $GdkCreatePsetInputsCopyWith<$Res> {
  factory _$$_GdkCreatePsetInputsCopyWith(_$_GdkCreatePsetInputs value,
          $Res Function(_$_GdkCreatePsetInputs) then) =
      __$$_GdkCreatePsetInputsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? asset,
      @JsonKey(name: 'asset_bf') String? assetBf,
      String? txid,
      int? value,
      @JsonKey(name: 'value_bf') String? valueBf,
      int? vout});
}

/// @nodoc
class __$$_GdkCreatePsetInputsCopyWithImpl<$Res>
    extends _$GdkCreatePsetInputsCopyWithImpl<$Res>
    implements _$$_GdkCreatePsetInputsCopyWith<$Res> {
  __$$_GdkCreatePsetInputsCopyWithImpl(_$_GdkCreatePsetInputs _value,
      $Res Function(_$_GdkCreatePsetInputs) _then)
      : super(_value, (v) => _then(v as _$_GdkCreatePsetInputs));

  @override
  _$_GdkCreatePsetInputs get _value => super._value as _$_GdkCreatePsetInputs;

  @override
  $Res call({
    Object? asset = freezed,
    Object? assetBf = freezed,
    Object? txid = freezed,
    Object? value = freezed,
    Object? valueBf = freezed,
    Object? vout = freezed,
  }) {
    return _then(_$_GdkCreatePsetInputs(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      assetBf: assetBf == freezed
          ? _value.assetBf
          : assetBf // ignore: cast_nullable_to_non_nullable
              as String?,
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      valueBf: valueBf == freezed
          ? _value.valueBf
          : valueBf // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: vout == freezed
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkCreatePsetInputs implements _GdkCreatePsetInputs {
  const _$_GdkCreatePsetInputs(
      {this.asset,
      @JsonKey(name: 'asset_bf') this.assetBf,
      this.txid,
      this.value,
      @JsonKey(name: 'value_bf') this.valueBf,
      this.vout});

  factory _$_GdkCreatePsetInputs.fromJson(Map<String, dynamic> json) =>
      _$$_GdkCreatePsetInputsFromJson(json);

  @override
  final String? asset;
  @override
  @JsonKey(name: 'asset_bf')
  final String? assetBf;
  @override
  final String? txid;
  @override
  final int? value;
  @override
  @JsonKey(name: 'value_bf')
  final String? valueBf;
  @override
  final int? vout;

  @override
  String toString() {
    return 'GdkCreatePsetInputs(asset: $asset, assetBf: $assetBf, txid: $txid, value: $value, valueBf: $valueBf, vout: $vout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkCreatePsetInputs &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.assetBf, assetBf) &&
            const DeepCollectionEquality().equals(other.txid, txid) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.valueBf, valueBf) &&
            const DeepCollectionEquality().equals(other.vout, vout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(assetBf),
      const DeepCollectionEquality().hash(txid),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(valueBf),
      const DeepCollectionEquality().hash(vout));

  @JsonKey(ignore: true)
  @override
  _$$_GdkCreatePsetInputsCopyWith<_$_GdkCreatePsetInputs> get copyWith =>
      __$$_GdkCreatePsetInputsCopyWithImpl<_$_GdkCreatePsetInputs>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkCreatePsetInputsToJson(
      this,
    );
  }
}

abstract class _GdkCreatePsetInputs implements GdkCreatePsetInputs {
  const factory _GdkCreatePsetInputs(
      {final String? asset,
      @JsonKey(name: 'asset_bf') final String? assetBf,
      final String? txid,
      final int? value,
      @JsonKey(name: 'value_bf') final String? valueBf,
      final int? vout}) = _$_GdkCreatePsetInputs;

  factory _GdkCreatePsetInputs.fromJson(Map<String, dynamic> json) =
      _$_GdkCreatePsetInputs.fromJson;

  @override
  String? get asset;
  @override
  @JsonKey(name: 'asset_bf')
  String? get assetBf;
  @override
  String? get txid;
  @override
  int? get value;
  @override
  @JsonKey(name: 'value_bf')
  String? get valueBf;
  @override
  int? get vout;
  @override
  @JsonKey(ignore: true)
  _$$_GdkCreatePsetInputsCopyWith<_$_GdkCreatePsetInputs> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkCreatePsetDetailsReply _$GdkCreatePsetDetailsReplyFromJson(
    Map<String, dynamic> json) {
  return _GdkCreatePsetDetailsReply.fromJson(json);
}

/// @nodoc
mixin _$GdkCreatePsetDetailsReply {
  @JsonKey(name: 'change_addr')
  String? get changeAddr => throw _privateConstructorUsedError;
  List<GdkCreatePsetInputs>? get inputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_addr')
  String? get recvAddr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkCreatePsetDetailsReplyCopyWith<GdkCreatePsetDetailsReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkCreatePsetDetailsReplyCopyWith<$Res> {
  factory $GdkCreatePsetDetailsReplyCopyWith(GdkCreatePsetDetailsReply value,
          $Res Function(GdkCreatePsetDetailsReply) then) =
      _$GdkCreatePsetDetailsReplyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'change_addr') String? changeAddr,
      List<GdkCreatePsetInputs>? inputs,
      @JsonKey(name: 'recv_addr') String? recvAddr});
}

/// @nodoc
class _$GdkCreatePsetDetailsReplyCopyWithImpl<$Res>
    implements $GdkCreatePsetDetailsReplyCopyWith<$Res> {
  _$GdkCreatePsetDetailsReplyCopyWithImpl(this._value, this._then);

  final GdkCreatePsetDetailsReply _value;
  // ignore: unused_field
  final $Res Function(GdkCreatePsetDetailsReply) _then;

  @override
  $Res call({
    Object? changeAddr = freezed,
    Object? inputs = freezed,
    Object? recvAddr = freezed,
  }) {
    return _then(_value.copyWith(
      changeAddr: changeAddr == freezed
          ? _value.changeAddr
          : changeAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<GdkCreatePsetInputs>?,
      recvAddr: recvAddr == freezed
          ? _value.recvAddr
          : recvAddr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkCreatePsetDetailsReplyCopyWith<$Res>
    implements $GdkCreatePsetDetailsReplyCopyWith<$Res> {
  factory _$$_GdkCreatePsetDetailsReplyCopyWith(
          _$_GdkCreatePsetDetailsReply value,
          $Res Function(_$_GdkCreatePsetDetailsReply) then) =
      __$$_GdkCreatePsetDetailsReplyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'change_addr') String? changeAddr,
      List<GdkCreatePsetInputs>? inputs,
      @JsonKey(name: 'recv_addr') String? recvAddr});
}

/// @nodoc
class __$$_GdkCreatePsetDetailsReplyCopyWithImpl<$Res>
    extends _$GdkCreatePsetDetailsReplyCopyWithImpl<$Res>
    implements _$$_GdkCreatePsetDetailsReplyCopyWith<$Res> {
  __$$_GdkCreatePsetDetailsReplyCopyWithImpl(
      _$_GdkCreatePsetDetailsReply _value,
      $Res Function(_$_GdkCreatePsetDetailsReply) _then)
      : super(_value, (v) => _then(v as _$_GdkCreatePsetDetailsReply));

  @override
  _$_GdkCreatePsetDetailsReply get _value =>
      super._value as _$_GdkCreatePsetDetailsReply;

  @override
  $Res call({
    Object? changeAddr = freezed,
    Object? inputs = freezed,
    Object? recvAddr = freezed,
  }) {
    return _then(_$_GdkCreatePsetDetailsReply(
      changeAddr: changeAddr == freezed
          ? _value.changeAddr
          : changeAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      inputs: inputs == freezed
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<GdkCreatePsetInputs>?,
      recvAddr: recvAddr == freezed
          ? _value.recvAddr
          : recvAddr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkCreatePsetDetailsReply extends _GdkCreatePsetDetailsReply {
  const _$_GdkCreatePsetDetailsReply(
      {@JsonKey(name: 'change_addr') this.changeAddr,
      final List<GdkCreatePsetInputs>? inputs,
      @JsonKey(name: 'recv_addr') this.recvAddr})
      : _inputs = inputs,
        super._();

  factory _$_GdkCreatePsetDetailsReply.fromJson(Map<String, dynamic> json) =>
      _$$_GdkCreatePsetDetailsReplyFromJson(json);

  @override
  @JsonKey(name: 'change_addr')
  final String? changeAddr;
  final List<GdkCreatePsetInputs>? _inputs;
  @override
  List<GdkCreatePsetInputs>? get inputs {
    final value = _inputs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'recv_addr')
  final String? recvAddr;

  @override
  String toString() {
    return 'GdkCreatePsetDetailsReply(changeAddr: $changeAddr, inputs: $inputs, recvAddr: $recvAddr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkCreatePsetDetailsReply &&
            const DeepCollectionEquality()
                .equals(other.changeAddr, changeAddr) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(other.recvAddr, recvAddr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(changeAddr),
      const DeepCollectionEquality().hash(_inputs),
      const DeepCollectionEquality().hash(recvAddr));

  @JsonKey(ignore: true)
  @override
  _$$_GdkCreatePsetDetailsReplyCopyWith<_$_GdkCreatePsetDetailsReply>
      get copyWith => __$$_GdkCreatePsetDetailsReplyCopyWithImpl<
          _$_GdkCreatePsetDetailsReply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkCreatePsetDetailsReplyToJson(
      this,
    );
  }
}

abstract class _GdkCreatePsetDetailsReply extends GdkCreatePsetDetailsReply {
  const factory _GdkCreatePsetDetailsReply(
          {@JsonKey(name: 'change_addr') final String? changeAddr,
          final List<GdkCreatePsetInputs>? inputs,
          @JsonKey(name: 'recv_addr') final String? recvAddr}) =
      _$_GdkCreatePsetDetailsReply;
  const _GdkCreatePsetDetailsReply._() : super._();

  factory _GdkCreatePsetDetailsReply.fromJson(Map<String, dynamic> json) =
      _$_GdkCreatePsetDetailsReply.fromJson;

  @override
  @JsonKey(name: 'change_addr')
  String? get changeAddr;
  @override
  List<GdkCreatePsetInputs>? get inputs;
  @override
  @JsonKey(name: 'recv_addr')
  String? get recvAddr;
  @override
  @JsonKey(ignore: true)
  _$$_GdkCreatePsetDetailsReplyCopyWith<_$_GdkCreatePsetDetailsReply>
      get copyWith => throw _privateConstructorUsedError;
}

GdkSignPsetDetails _$GdkSignPsetDetailsFromJson(Map<String, dynamic> json) {
  return _GdkSignPsetDetails.fromJson(json);
}

/// @nodoc
mixin _$GdkSignPsetDetails {
  List<GdkAddressee>? get addressees => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pset')
  String? get pset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_asset')
  String? get sendAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_amount')
  int? get sendAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_asset')
  String? get recvAsset => throw _privateConstructorUsedError;
  @JsonKey(name: 'recv_amount')
  int? get recvAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkSignPsetDetailsCopyWith<GdkSignPsetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkSignPsetDetailsCopyWith<$Res> {
  factory $GdkSignPsetDetailsCopyWith(
          GdkSignPsetDetails value, $Res Function(GdkSignPsetDetails) then) =
      _$GdkSignPsetDetailsCopyWithImpl<$Res>;
  $Res call(
      {List<GdkAddressee>? addressees,
      int? subaccount,
      @JsonKey(name: 'pset') String? pset,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class _$GdkSignPsetDetailsCopyWithImpl<$Res>
    implements $GdkSignPsetDetailsCopyWith<$Res> {
  _$GdkSignPsetDetailsCopyWithImpl(this._value, this._then);

  final GdkSignPsetDetails _value;
  // ignore: unused_field
  final $Res Function(GdkSignPsetDetails) _then;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? subaccount = freezed,
    Object? pset = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_value.copyWith(
      addressees: addressees == freezed
          ? _value.addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      pset: pset == freezed
          ? _value.pset
          : pset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkSignPsetDetailsCopyWith<$Res>
    implements $GdkSignPsetDetailsCopyWith<$Res> {
  factory _$$_GdkSignPsetDetailsCopyWith(_$_GdkSignPsetDetails value,
          $Res Function(_$_GdkSignPsetDetails) then) =
      __$$_GdkSignPsetDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GdkAddressee>? addressees,
      int? subaccount,
      @JsonKey(name: 'pset') String? pset,
      @JsonKey(name: 'send_asset') String? sendAsset,
      @JsonKey(name: 'send_amount') int? sendAmount,
      @JsonKey(name: 'recv_asset') String? recvAsset,
      @JsonKey(name: 'recv_amount') int? recvAmount});
}

/// @nodoc
class __$$_GdkSignPsetDetailsCopyWithImpl<$Res>
    extends _$GdkSignPsetDetailsCopyWithImpl<$Res>
    implements _$$_GdkSignPsetDetailsCopyWith<$Res> {
  __$$_GdkSignPsetDetailsCopyWithImpl(
      _$_GdkSignPsetDetails _value, $Res Function(_$_GdkSignPsetDetails) _then)
      : super(_value, (v) => _then(v as _$_GdkSignPsetDetails));

  @override
  _$_GdkSignPsetDetails get _value => super._value as _$_GdkSignPsetDetails;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? subaccount = freezed,
    Object? pset = freezed,
    Object? sendAsset = freezed,
    Object? sendAmount = freezed,
    Object? recvAsset = freezed,
    Object? recvAmount = freezed,
  }) {
    return _then(_$_GdkSignPsetDetails(
      addressees: addressees == freezed
          ? _value._addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      pset: pset == freezed
          ? _value.pset
          : pset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAsset: sendAsset == freezed
          ? _value.sendAsset
          : sendAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAmount: sendAmount == freezed
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      recvAsset: recvAsset == freezed
          ? _value.recvAsset
          : recvAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      recvAmount: recvAmount == freezed
          ? _value.recvAmount
          : recvAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkSignPsetDetails extends _GdkSignPsetDetails {
  const _$_GdkSignPsetDetails(
      {final List<GdkAddressee>? addressees,
      this.subaccount = 0,
      @JsonKey(name: 'pset') this.pset,
      @JsonKey(name: 'send_asset') this.sendAsset,
      @JsonKey(name: 'send_amount') this.sendAmount,
      @JsonKey(name: 'recv_asset') this.recvAsset,
      @JsonKey(name: 'recv_amount') this.recvAmount})
      : _addressees = addressees,
        super._();

  factory _$_GdkSignPsetDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GdkSignPsetDetailsFromJson(json);

  final List<GdkAddressee>? _addressees;
  @override
  List<GdkAddressee>? get addressees {
    final value = _addressees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? subaccount;
  @override
  @JsonKey(name: 'pset')
  final String? pset;
  @override
  @JsonKey(name: 'send_asset')
  final String? sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  final int? sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  final String? recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  final int? recvAmount;

  @override
  String toString() {
    return 'GdkSignPsetDetails(addressees: $addressees, subaccount: $subaccount, pset: $pset, sendAsset: $sendAsset, sendAmount: $sendAmount, recvAsset: $recvAsset, recvAmount: $recvAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkSignPsetDetails &&
            const DeepCollectionEquality()
                .equals(other._addressees, _addressees) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.pset, pset) &&
            const DeepCollectionEquality().equals(other.sendAsset, sendAsset) &&
            const DeepCollectionEquality()
                .equals(other.sendAmount, sendAmount) &&
            const DeepCollectionEquality().equals(other.recvAsset, recvAsset) &&
            const DeepCollectionEquality()
                .equals(other.recvAmount, recvAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressees),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(pset),
      const DeepCollectionEquality().hash(sendAsset),
      const DeepCollectionEquality().hash(sendAmount),
      const DeepCollectionEquality().hash(recvAsset),
      const DeepCollectionEquality().hash(recvAmount));

  @JsonKey(ignore: true)
  @override
  _$$_GdkSignPsetDetailsCopyWith<_$_GdkSignPsetDetails> get copyWith =>
      __$$_GdkSignPsetDetailsCopyWithImpl<_$_GdkSignPsetDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkSignPsetDetailsToJson(
      this,
    );
  }
}

abstract class _GdkSignPsetDetails extends GdkSignPsetDetails {
  const factory _GdkSignPsetDetails(
          {final List<GdkAddressee>? addressees,
          final int? subaccount,
          @JsonKey(name: 'pset') final String? pset,
          @JsonKey(name: 'send_asset') final String? sendAsset,
          @JsonKey(name: 'send_amount') final int? sendAmount,
          @JsonKey(name: 'recv_asset') final String? recvAsset,
          @JsonKey(name: 'recv_amount') final int? recvAmount}) =
      _$_GdkSignPsetDetails;
  const _GdkSignPsetDetails._() : super._();

  factory _GdkSignPsetDetails.fromJson(Map<String, dynamic> json) =
      _$_GdkSignPsetDetails.fromJson;

  @override
  List<GdkAddressee>? get addressees;
  @override
  int? get subaccount;
  @override
  @JsonKey(name: 'pset')
  String? get pset;
  @override
  @JsonKey(name: 'send_asset')
  String? get sendAsset;
  @override
  @JsonKey(name: 'send_amount')
  int? get sendAmount;
  @override
  @JsonKey(name: 'recv_asset')
  String? get recvAsset;
  @override
  @JsonKey(name: 'recv_amount')
  int? get recvAmount;
  @override
  @JsonKey(ignore: true)
  _$$_GdkSignPsetDetailsCopyWith<_$_GdkSignPsetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkSignPsetDetailsReply _$GdkSignPsetDetailsReplyFromJson(
    Map<String, dynamic> json) {
  return _GdkSignPsetDetailsReply.fromJson(json);
}

/// @nodoc
mixin _$GdkSignPsetDetailsReply {
  List<GdkAddressee>? get addressees => throw _privateConstructorUsedError;
  @JsonKey(name: 'pset')
  String? get pset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkSignPsetDetailsReplyCopyWith<GdkSignPsetDetailsReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkSignPsetDetailsReplyCopyWith<$Res> {
  factory $GdkSignPsetDetailsReplyCopyWith(GdkSignPsetDetailsReply value,
          $Res Function(GdkSignPsetDetailsReply) then) =
      _$GdkSignPsetDetailsReplyCopyWithImpl<$Res>;
  $Res call(
      {List<GdkAddressee>? addressees, @JsonKey(name: 'pset') String? pset});
}

/// @nodoc
class _$GdkSignPsetDetailsReplyCopyWithImpl<$Res>
    implements $GdkSignPsetDetailsReplyCopyWith<$Res> {
  _$GdkSignPsetDetailsReplyCopyWithImpl(this._value, this._then);

  final GdkSignPsetDetailsReply _value;
  // ignore: unused_field
  final $Res Function(GdkSignPsetDetailsReply) _then;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? pset = freezed,
  }) {
    return _then(_value.copyWith(
      addressees: addressees == freezed
          ? _value.addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      pset: pset == freezed
          ? _value.pset
          : pset // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkSignPsetDetailsReplyCopyWith<$Res>
    implements $GdkSignPsetDetailsReplyCopyWith<$Res> {
  factory _$$_GdkSignPsetDetailsReplyCopyWith(_$_GdkSignPsetDetailsReply value,
          $Res Function(_$_GdkSignPsetDetailsReply) then) =
      __$$_GdkSignPsetDetailsReplyCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GdkAddressee>? addressees, @JsonKey(name: 'pset') String? pset});
}

/// @nodoc
class __$$_GdkSignPsetDetailsReplyCopyWithImpl<$Res>
    extends _$GdkSignPsetDetailsReplyCopyWithImpl<$Res>
    implements _$$_GdkSignPsetDetailsReplyCopyWith<$Res> {
  __$$_GdkSignPsetDetailsReplyCopyWithImpl(_$_GdkSignPsetDetailsReply _value,
      $Res Function(_$_GdkSignPsetDetailsReply) _then)
      : super(_value, (v) => _then(v as _$_GdkSignPsetDetailsReply));

  @override
  _$_GdkSignPsetDetailsReply get _value =>
      super._value as _$_GdkSignPsetDetailsReply;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? pset = freezed,
  }) {
    return _then(_$_GdkSignPsetDetailsReply(
      addressees: addressees == freezed
          ? _value._addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      pset: pset == freezed
          ? _value.pset
          : pset // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkSignPsetDetailsReply extends _GdkSignPsetDetailsReply {
  const _$_GdkSignPsetDetailsReply(
      {final List<GdkAddressee>? addressees, @JsonKey(name: 'pset') this.pset})
      : _addressees = addressees,
        super._();

  factory _$_GdkSignPsetDetailsReply.fromJson(Map<String, dynamic> json) =>
      _$$_GdkSignPsetDetailsReplyFromJson(json);

  final List<GdkAddressee>? _addressees;
  @override
  List<GdkAddressee>? get addressees {
    final value = _addressees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'pset')
  final String? pset;

  @override
  String toString() {
    return 'GdkSignPsetDetailsReply(addressees: $addressees, pset: $pset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkSignPsetDetailsReply &&
            const DeepCollectionEquality()
                .equals(other._addressees, _addressees) &&
            const DeepCollectionEquality().equals(other.pset, pset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressees),
      const DeepCollectionEquality().hash(pset));

  @JsonKey(ignore: true)
  @override
  _$$_GdkSignPsetDetailsReplyCopyWith<_$_GdkSignPsetDetailsReply>
      get copyWith =>
          __$$_GdkSignPsetDetailsReplyCopyWithImpl<_$_GdkSignPsetDetailsReply>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkSignPsetDetailsReplyToJson(
      this,
    );
  }
}

abstract class _GdkSignPsetDetailsReply extends GdkSignPsetDetailsReply {
  const factory _GdkSignPsetDetailsReply(
      {final List<GdkAddressee>? addressees,
      @JsonKey(name: 'pset') final String? pset}) = _$_GdkSignPsetDetailsReply;
  const _GdkSignPsetDetailsReply._() : super._();

  factory _GdkSignPsetDetailsReply.fromJson(Map<String, dynamic> json) =
      _$_GdkSignPsetDetailsReply.fromJson;

  @override
  List<GdkAddressee>? get addressees;
  @override
  @JsonKey(name: 'pset')
  String? get pset;
  @override
  @JsonKey(ignore: true)
  _$$_GdkSignPsetDetailsReplyCopyWith<_$_GdkSignPsetDetailsReply>
      get copyWith => throw _privateConstructorUsedError;
}

GdkGetFeeEstimatesEvent _$GdkGetFeeEstimatesEventFromJson(
    Map<String, dynamic> json) {
  return _GdkGetFeeEstimatesEvent.fromJson(json);
}

/// @nodoc
mixin _$GdkGetFeeEstimatesEvent {
  List<int>? get fees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkGetFeeEstimatesEventCopyWith<GdkGetFeeEstimatesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkGetFeeEstimatesEventCopyWith<$Res> {
  factory $GdkGetFeeEstimatesEventCopyWith(GdkGetFeeEstimatesEvent value,
          $Res Function(GdkGetFeeEstimatesEvent) then) =
      _$GdkGetFeeEstimatesEventCopyWithImpl<$Res>;
  $Res call({List<int>? fees});
}

/// @nodoc
class _$GdkGetFeeEstimatesEventCopyWithImpl<$Res>
    implements $GdkGetFeeEstimatesEventCopyWith<$Res> {
  _$GdkGetFeeEstimatesEventCopyWithImpl(this._value, this._then);

  final GdkGetFeeEstimatesEvent _value;
  // ignore: unused_field
  final $Res Function(GdkGetFeeEstimatesEvent) _then;

  @override
  $Res call({
    Object? fees = freezed,
  }) {
    return _then(_value.copyWith(
      fees: fees == freezed
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkGetFeeEstimatesEventCopyWith<$Res>
    implements $GdkGetFeeEstimatesEventCopyWith<$Res> {
  factory _$$_GdkGetFeeEstimatesEventCopyWith(_$_GdkGetFeeEstimatesEvent value,
          $Res Function(_$_GdkGetFeeEstimatesEvent) then) =
      __$$_GdkGetFeeEstimatesEventCopyWithImpl<$Res>;
  @override
  $Res call({List<int>? fees});
}

/// @nodoc
class __$$_GdkGetFeeEstimatesEventCopyWithImpl<$Res>
    extends _$GdkGetFeeEstimatesEventCopyWithImpl<$Res>
    implements _$$_GdkGetFeeEstimatesEventCopyWith<$Res> {
  __$$_GdkGetFeeEstimatesEventCopyWithImpl(_$_GdkGetFeeEstimatesEvent _value,
      $Res Function(_$_GdkGetFeeEstimatesEvent) _then)
      : super(_value, (v) => _then(v as _$_GdkGetFeeEstimatesEvent));

  @override
  _$_GdkGetFeeEstimatesEvent get _value =>
      super._value as _$_GdkGetFeeEstimatesEvent;

  @override
  $Res call({
    Object? fees = freezed,
  }) {
    return _then(_$_GdkGetFeeEstimatesEvent(
      fees: fees == freezed
          ? _value._fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkGetFeeEstimatesEvent implements _GdkGetFeeEstimatesEvent {
  const _$_GdkGetFeeEstimatesEvent({final List<int>? fees}) : _fees = fees;

  factory _$_GdkGetFeeEstimatesEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GdkGetFeeEstimatesEventFromJson(json);

  final List<int>? _fees;
  @override
  List<int>? get fees {
    final value = _fees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GdkGetFeeEstimatesEvent(fees: $fees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkGetFeeEstimatesEvent &&
            const DeepCollectionEquality().equals(other._fees, _fees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fees));

  @JsonKey(ignore: true)
  @override
  _$$_GdkGetFeeEstimatesEventCopyWith<_$_GdkGetFeeEstimatesEvent>
      get copyWith =>
          __$$_GdkGetFeeEstimatesEventCopyWithImpl<_$_GdkGetFeeEstimatesEvent>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkGetFeeEstimatesEventToJson(
      this,
    );
  }
}

abstract class _GdkGetFeeEstimatesEvent implements GdkGetFeeEstimatesEvent {
  const factory _GdkGetFeeEstimatesEvent({final List<int>? fees}) =
      _$_GdkGetFeeEstimatesEvent;

  factory _GdkGetFeeEstimatesEvent.fromJson(Map<String, dynamic> json) =
      _$_GdkGetFeeEstimatesEvent.fromJson;

  @override
  List<int>? get fees;
  @override
  @JsonKey(ignore: true)
  _$$_GdkGetFeeEstimatesEventCopyWith<_$_GdkGetFeeEstimatesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

GdkBlockEvent _$GdkBlockEventFromJson(Map<String, dynamic> json) {
  return _GdkBlockEvent.fromJson(json);
}

/// @nodoc
mixin _$GdkBlockEvent {
  @JsonKey(name: 'block_hash')
  String? get blockHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_height')
  int? get blockHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'initial_timestamp')
  int? get initialTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_hash')
  String? get previousHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkBlockEventCopyWith<GdkBlockEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkBlockEventCopyWith<$Res> {
  factory $GdkBlockEventCopyWith(
          GdkBlockEvent value, $Res Function(GdkBlockEvent) then) =
      _$GdkBlockEventCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'initial_timestamp') int? initialTimestamp,
      @JsonKey(name: 'previous_hash') String? previousHash});
}

/// @nodoc
class _$GdkBlockEventCopyWithImpl<$Res>
    implements $GdkBlockEventCopyWith<$Res> {
  _$GdkBlockEventCopyWithImpl(this._value, this._then);

  final GdkBlockEvent _value;
  // ignore: unused_field
  final $Res Function(GdkBlockEvent) _then;

  @override
  $Res call({
    Object? blockHash = freezed,
    Object? blockHeight = freezed,
    Object? initialTimestamp = freezed,
    Object? previousHash = freezed,
  }) {
    return _then(_value.copyWith(
      blockHash: blockHash == freezed
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      previousHash: previousHash == freezed
          ? _value.previousHash
          : previousHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkBlockEventCopyWith<$Res>
    implements $GdkBlockEventCopyWith<$Res> {
  factory _$$_GdkBlockEventCopyWith(
          _$_GdkBlockEvent value, $Res Function(_$_GdkBlockEvent) then) =
      __$$_GdkBlockEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'initial_timestamp') int? initialTimestamp,
      @JsonKey(name: 'previous_hash') String? previousHash});
}

/// @nodoc
class __$$_GdkBlockEventCopyWithImpl<$Res>
    extends _$GdkBlockEventCopyWithImpl<$Res>
    implements _$$_GdkBlockEventCopyWith<$Res> {
  __$$_GdkBlockEventCopyWithImpl(
      _$_GdkBlockEvent _value, $Res Function(_$_GdkBlockEvent) _then)
      : super(_value, (v) => _then(v as _$_GdkBlockEvent));

  @override
  _$_GdkBlockEvent get _value => super._value as _$_GdkBlockEvent;

  @override
  $Res call({
    Object? blockHash = freezed,
    Object? blockHeight = freezed,
    Object? initialTimestamp = freezed,
    Object? previousHash = freezed,
  }) {
    return _then(_$_GdkBlockEvent(
      blockHash: blockHash == freezed
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      previousHash: previousHash == freezed
          ? _value.previousHash
          : previousHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkBlockEvent implements _GdkBlockEvent {
  const _$_GdkBlockEvent(
      {@JsonKey(name: 'block_hash') this.blockHash,
      @JsonKey(name: 'block_height') this.blockHeight,
      @JsonKey(name: 'initial_timestamp') this.initialTimestamp,
      @JsonKey(name: 'previous_hash') this.previousHash});

  factory _$_GdkBlockEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GdkBlockEventFromJson(json);

  @override
  @JsonKey(name: 'block_hash')
  final String? blockHash;
  @override
  @JsonKey(name: 'block_height')
  final int? blockHeight;
  @override
  @JsonKey(name: 'initial_timestamp')
  final int? initialTimestamp;
  @override
  @JsonKey(name: 'previous_hash')
  final String? previousHash;

  @override
  String toString() {
    return 'GdkBlockEvent(blockHash: $blockHash, blockHeight: $blockHeight, initialTimestamp: $initialTimestamp, previousHash: $previousHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkBlockEvent &&
            const DeepCollectionEquality().equals(other.blockHash, blockHash) &&
            const DeepCollectionEquality()
                .equals(other.blockHeight, blockHeight) &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.previousHash, previousHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blockHash),
      const DeepCollectionEquality().hash(blockHeight),
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(previousHash));

  @JsonKey(ignore: true)
  @override
  _$$_GdkBlockEventCopyWith<_$_GdkBlockEvent> get copyWith =>
      __$$_GdkBlockEventCopyWithImpl<_$_GdkBlockEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkBlockEventToJson(
      this,
    );
  }
}

abstract class _GdkBlockEvent implements GdkBlockEvent {
  const factory _GdkBlockEvent(
          {@JsonKey(name: 'block_hash') final String? blockHash,
          @JsonKey(name: 'block_height') final int? blockHeight,
          @JsonKey(name: 'initial_timestamp') final int? initialTimestamp,
          @JsonKey(name: 'previous_hash') final String? previousHash}) =
      _$_GdkBlockEvent;

  factory _GdkBlockEvent.fromJson(Map<String, dynamic> json) =
      _$_GdkBlockEvent.fromJson;

  @override
  @JsonKey(name: 'block_hash')
  String? get blockHash;
  @override
  @JsonKey(name: 'block_height')
  int? get blockHeight;
  @override
  @JsonKey(name: 'initial_timestamp')
  int? get initialTimestamp;
  @override
  @JsonKey(name: 'previous_hash')
  String? get previousHash;
  @override
  @JsonKey(ignore: true)
  _$$_GdkBlockEventCopyWith<_$_GdkBlockEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkSettingsEventNotifications _$GdkSettingsEventNotificationsFromJson(
    Map<String, dynamic> json) {
  return _GdkSettingsEventNotifications.fromJson(json);
}

/// @nodoc
mixin _$GdkSettingsEventNotifications {
  @JsonValue('email_incoming')
  bool? get emailIncoming => throw _privateConstructorUsedError;
  @JsonValue('email_outgoing')
  bool? get emailOutgoing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkSettingsEventNotificationsCopyWith<GdkSettingsEventNotifications>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkSettingsEventNotificationsCopyWith<$Res> {
  factory $GdkSettingsEventNotificationsCopyWith(
          GdkSettingsEventNotifications value,
          $Res Function(GdkSettingsEventNotifications) then) =
      _$GdkSettingsEventNotificationsCopyWithImpl<$Res>;
  $Res call(
      {@JsonValue('email_incoming') bool? emailIncoming,
      @JsonValue('email_outgoing') bool? emailOutgoing});
}

/// @nodoc
class _$GdkSettingsEventNotificationsCopyWithImpl<$Res>
    implements $GdkSettingsEventNotificationsCopyWith<$Res> {
  _$GdkSettingsEventNotificationsCopyWithImpl(this._value, this._then);

  final GdkSettingsEventNotifications _value;
  // ignore: unused_field
  final $Res Function(GdkSettingsEventNotifications) _then;

  @override
  $Res call({
    Object? emailIncoming = freezed,
    Object? emailOutgoing = freezed,
  }) {
    return _then(_value.copyWith(
      emailIncoming: emailIncoming == freezed
          ? _value.emailIncoming
          : emailIncoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailOutgoing: emailOutgoing == freezed
          ? _value.emailOutgoing
          : emailOutgoing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkSettingsEventNotificationsCopyWith<$Res>
    implements $GdkSettingsEventNotificationsCopyWith<$Res> {
  factory _$$_GdkSettingsEventNotificationsCopyWith(
          _$_GdkSettingsEventNotifications value,
          $Res Function(_$_GdkSettingsEventNotifications) then) =
      __$$_GdkSettingsEventNotificationsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonValue('email_incoming') bool? emailIncoming,
      @JsonValue('email_outgoing') bool? emailOutgoing});
}

/// @nodoc
class __$$_GdkSettingsEventNotificationsCopyWithImpl<$Res>
    extends _$GdkSettingsEventNotificationsCopyWithImpl<$Res>
    implements _$$_GdkSettingsEventNotificationsCopyWith<$Res> {
  __$$_GdkSettingsEventNotificationsCopyWithImpl(
      _$_GdkSettingsEventNotifications _value,
      $Res Function(_$_GdkSettingsEventNotifications) _then)
      : super(_value, (v) => _then(v as _$_GdkSettingsEventNotifications));

  @override
  _$_GdkSettingsEventNotifications get _value =>
      super._value as _$_GdkSettingsEventNotifications;

  @override
  $Res call({
    Object? emailIncoming = freezed,
    Object? emailOutgoing = freezed,
  }) {
    return _then(_$_GdkSettingsEventNotifications(
      emailIncoming: emailIncoming == freezed
          ? _value.emailIncoming
          : emailIncoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailOutgoing: emailOutgoing == freezed
          ? _value.emailOutgoing
          : emailOutgoing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkSettingsEventNotifications
    implements _GdkSettingsEventNotifications {
  const _$_GdkSettingsEventNotifications(
      {@JsonValue('email_incoming') this.emailIncoming,
      @JsonValue('email_outgoing') this.emailOutgoing});

  factory _$_GdkSettingsEventNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$$_GdkSettingsEventNotificationsFromJson(json);

  @override
  @JsonValue('email_incoming')
  final bool? emailIncoming;
  @override
  @JsonValue('email_outgoing')
  final bool? emailOutgoing;

  @override
  String toString() {
    return 'GdkSettingsEventNotifications(emailIncoming: $emailIncoming, emailOutgoing: $emailOutgoing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkSettingsEventNotifications &&
            const DeepCollectionEquality()
                .equals(other.emailIncoming, emailIncoming) &&
            const DeepCollectionEquality()
                .equals(other.emailOutgoing, emailOutgoing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailIncoming),
      const DeepCollectionEquality().hash(emailOutgoing));

  @JsonKey(ignore: true)
  @override
  _$$_GdkSettingsEventNotificationsCopyWith<_$_GdkSettingsEventNotifications>
      get copyWith => __$$_GdkSettingsEventNotificationsCopyWithImpl<
          _$_GdkSettingsEventNotifications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkSettingsEventNotificationsToJson(
      this,
    );
  }
}

abstract class _GdkSettingsEventNotifications
    implements GdkSettingsEventNotifications {
  const factory _GdkSettingsEventNotifications(
          {@JsonValue('email_incoming') final bool? emailIncoming,
          @JsonValue('email_outgoing') final bool? emailOutgoing}) =
      _$_GdkSettingsEventNotifications;

  factory _GdkSettingsEventNotifications.fromJson(Map<String, dynamic> json) =
      _$_GdkSettingsEventNotifications.fromJson;

  @override
  @JsonValue('email_incoming')
  bool? get emailIncoming;
  @override
  @JsonValue('email_outgoing')
  bool? get emailOutgoing;
  @override
  @JsonKey(ignore: true)
  _$$_GdkSettingsEventNotificationsCopyWith<_$_GdkSettingsEventNotifications>
      get copyWith => throw _privateConstructorUsedError;
}

GdkSettingsEvent _$GdkSettingsEventFromJson(Map<String, dynamic> json) {
  return _GdkSettingsEvent.fromJson(json);
}

/// @nodoc
mixin _$GdkSettingsEvent {
  int? get altimeout => throw _privateConstructorUsedError;
  int? get csvtime => throw _privateConstructorUsedError;
  int? get nlocktime => throw _privateConstructorUsedError;
  GdkSettingsEventNotifications? get notifications =>
      throw _privateConstructorUsedError;
  String? get pgp => throw _privateConstructorUsedError;
  GdkPricing? get pricing => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_num_blocks')
  int? get requiredNumBlocks => throw _privateConstructorUsedError;
  bool? get sound => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkSettingsEventCopyWith<GdkSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkSettingsEventCopyWith<$Res> {
  factory $GdkSettingsEventCopyWith(
          GdkSettingsEvent value, $Res Function(GdkSettingsEvent) then) =
      _$GdkSettingsEventCopyWithImpl<$Res>;
  $Res call(
      {int? altimeout,
      int? csvtime,
      int? nlocktime,
      GdkSettingsEventNotifications? notifications,
      String? pgp,
      GdkPricing? pricing,
      @JsonKey(name: 'required_num_blocks') int? requiredNumBlocks,
      bool? sound,
      String? unit});

  $GdkSettingsEventNotificationsCopyWith<$Res>? get notifications;
  $GdkPricingCopyWith<$Res>? get pricing;
}

/// @nodoc
class _$GdkSettingsEventCopyWithImpl<$Res>
    implements $GdkSettingsEventCopyWith<$Res> {
  _$GdkSettingsEventCopyWithImpl(this._value, this._then);

  final GdkSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(GdkSettingsEvent) _then;

  @override
  $Res call({
    Object? altimeout = freezed,
    Object? csvtime = freezed,
    Object? nlocktime = freezed,
    Object? notifications = freezed,
    Object? pgp = freezed,
    Object? pricing = freezed,
    Object? requiredNumBlocks = freezed,
    Object? sound = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      altimeout: altimeout == freezed
          ? _value.altimeout
          : altimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      csvtime: csvtime == freezed
          ? _value.csvtime
          : csvtime // ignore: cast_nullable_to_non_nullable
              as int?,
      nlocktime: nlocktime == freezed
          ? _value.nlocktime
          : nlocktime // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as GdkSettingsEventNotifications?,
      pgp: pgp == freezed
          ? _value.pgp
          : pgp // ignore: cast_nullable_to_non_nullable
              as String?,
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as GdkPricing?,
      requiredNumBlocks: requiredNumBlocks == freezed
          ? _value.requiredNumBlocks
          : requiredNumBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $GdkSettingsEventNotificationsCopyWith<$Res>? get notifications {
    if (_value.notifications == null) {
      return null;
    }

    return $GdkSettingsEventNotificationsCopyWith<$Res>(_value.notifications!,
        (value) {
      return _then(_value.copyWith(notifications: value));
    });
  }

  @override
  $GdkPricingCopyWith<$Res>? get pricing {
    if (_value.pricing == null) {
      return null;
    }

    return $GdkPricingCopyWith<$Res>(_value.pricing!, (value) {
      return _then(_value.copyWith(pricing: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkSettingsEventCopyWith<$Res>
    implements $GdkSettingsEventCopyWith<$Res> {
  factory _$$_GdkSettingsEventCopyWith(
          _$_GdkSettingsEvent value, $Res Function(_$_GdkSettingsEvent) then) =
      __$$_GdkSettingsEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? altimeout,
      int? csvtime,
      int? nlocktime,
      GdkSettingsEventNotifications? notifications,
      String? pgp,
      GdkPricing? pricing,
      @JsonKey(name: 'required_num_blocks') int? requiredNumBlocks,
      bool? sound,
      String? unit});

  @override
  $GdkSettingsEventNotificationsCopyWith<$Res>? get notifications;
  @override
  $GdkPricingCopyWith<$Res>? get pricing;
}

/// @nodoc
class __$$_GdkSettingsEventCopyWithImpl<$Res>
    extends _$GdkSettingsEventCopyWithImpl<$Res>
    implements _$$_GdkSettingsEventCopyWith<$Res> {
  __$$_GdkSettingsEventCopyWithImpl(
      _$_GdkSettingsEvent _value, $Res Function(_$_GdkSettingsEvent) _then)
      : super(_value, (v) => _then(v as _$_GdkSettingsEvent));

  @override
  _$_GdkSettingsEvent get _value => super._value as _$_GdkSettingsEvent;

  @override
  $Res call({
    Object? altimeout = freezed,
    Object? csvtime = freezed,
    Object? nlocktime = freezed,
    Object? notifications = freezed,
    Object? pgp = freezed,
    Object? pricing = freezed,
    Object? requiredNumBlocks = freezed,
    Object? sound = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_GdkSettingsEvent(
      altimeout: altimeout == freezed
          ? _value.altimeout
          : altimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      csvtime: csvtime == freezed
          ? _value.csvtime
          : csvtime // ignore: cast_nullable_to_non_nullable
              as int?,
      nlocktime: nlocktime == freezed
          ? _value.nlocktime
          : nlocktime // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as GdkSettingsEventNotifications?,
      pgp: pgp == freezed
          ? _value.pgp
          : pgp // ignore: cast_nullable_to_non_nullable
              as String?,
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as GdkPricing?,
      requiredNumBlocks: requiredNumBlocks == freezed
          ? _value.requiredNumBlocks
          : requiredNumBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkSettingsEvent implements _GdkSettingsEvent {
  const _$_GdkSettingsEvent(
      {this.altimeout,
      this.csvtime,
      this.nlocktime,
      this.notifications,
      this.pgp,
      this.pricing,
      @JsonKey(name: 'required_num_blocks') this.requiredNumBlocks,
      this.sound,
      this.unit});

  factory _$_GdkSettingsEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GdkSettingsEventFromJson(json);

  @override
  final int? altimeout;
  @override
  final int? csvtime;
  @override
  final int? nlocktime;
  @override
  final GdkSettingsEventNotifications? notifications;
  @override
  final String? pgp;
  @override
  final GdkPricing? pricing;
  @override
  @JsonKey(name: 'required_num_blocks')
  final int? requiredNumBlocks;
  @override
  final bool? sound;
  @override
  final String? unit;

  @override
  String toString() {
    return 'GdkSettingsEvent(altimeout: $altimeout, csvtime: $csvtime, nlocktime: $nlocktime, notifications: $notifications, pgp: $pgp, pricing: $pricing, requiredNumBlocks: $requiredNumBlocks, sound: $sound, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkSettingsEvent &&
            const DeepCollectionEquality().equals(other.altimeout, altimeout) &&
            const DeepCollectionEquality().equals(other.csvtime, csvtime) &&
            const DeepCollectionEquality().equals(other.nlocktime, nlocktime) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality().equals(other.pgp, pgp) &&
            const DeepCollectionEquality().equals(other.pricing, pricing) &&
            const DeepCollectionEquality()
                .equals(other.requiredNumBlocks, requiredNumBlocks) &&
            const DeepCollectionEquality().equals(other.sound, sound) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(altimeout),
      const DeepCollectionEquality().hash(csvtime),
      const DeepCollectionEquality().hash(nlocktime),
      const DeepCollectionEquality().hash(notifications),
      const DeepCollectionEquality().hash(pgp),
      const DeepCollectionEquality().hash(pricing),
      const DeepCollectionEquality().hash(requiredNumBlocks),
      const DeepCollectionEquality().hash(sound),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_GdkSettingsEventCopyWith<_$_GdkSettingsEvent> get copyWith =>
      __$$_GdkSettingsEventCopyWithImpl<_$_GdkSettingsEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkSettingsEventToJson(
      this,
    );
  }
}

abstract class _GdkSettingsEvent implements GdkSettingsEvent {
  const factory _GdkSettingsEvent(
      {final int? altimeout,
      final int? csvtime,
      final int? nlocktime,
      final GdkSettingsEventNotifications? notifications,
      final String? pgp,
      final GdkPricing? pricing,
      @JsonKey(name: 'required_num_blocks') final int? requiredNumBlocks,
      final bool? sound,
      final String? unit}) = _$_GdkSettingsEvent;

  factory _GdkSettingsEvent.fromJson(Map<String, dynamic> json) =
      _$_GdkSettingsEvent.fromJson;

  @override
  int? get altimeout;
  @override
  int? get csvtime;
  @override
  int? get nlocktime;
  @override
  GdkSettingsEventNotifications? get notifications;
  @override
  String? get pgp;
  @override
  GdkPricing? get pricing;
  @override
  @JsonKey(name: 'required_num_blocks')
  int? get requiredNumBlocks;
  @override
  bool? get sound;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$_GdkSettingsEventCopyWith<_$_GdkSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkTransactionEvent _$GdkTransactionEventFromJson(Map<String, dynamic> json) {
  return _GdkTransactionEvent.fromJson(json);
}

/// @nodoc
mixin _$GdkTransactionEvent {
  int? get satoshi => throw _privateConstructorUsedError;
  List<int>? get subaccounts => throw _privateConstructorUsedError;
  String? get txhash => throw _privateConstructorUsedError;
  GdkTransactionEventEnum? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkTransactionEventCopyWith<GdkTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkTransactionEventCopyWith<$Res> {
  factory $GdkTransactionEventCopyWith(
          GdkTransactionEvent value, $Res Function(GdkTransactionEvent) then) =
      _$GdkTransactionEventCopyWithImpl<$Res>;
  $Res call(
      {int? satoshi,
      List<int>? subaccounts,
      String? txhash,
      GdkTransactionEventEnum? type});
}

/// @nodoc
class _$GdkTransactionEventCopyWithImpl<$Res>
    implements $GdkTransactionEventCopyWith<$Res> {
  _$GdkTransactionEventCopyWithImpl(this._value, this._then);

  final GdkTransactionEvent _value;
  // ignore: unused_field
  final $Res Function(GdkTransactionEvent) _then;

  @override
  $Res call({
    Object? satoshi = freezed,
    Object? subaccounts = freezed,
    Object? txhash = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccounts: subaccounts == freezed
          ? _value.subaccounts
          : subaccounts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkTransactionEventEnum?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkTransactionEventCopyWith<$Res>
    implements $GdkTransactionEventCopyWith<$Res> {
  factory _$$_GdkTransactionEventCopyWith(_$_GdkTransactionEvent value,
          $Res Function(_$_GdkTransactionEvent) then) =
      __$$_GdkTransactionEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? satoshi,
      List<int>? subaccounts,
      String? txhash,
      GdkTransactionEventEnum? type});
}

/// @nodoc
class __$$_GdkTransactionEventCopyWithImpl<$Res>
    extends _$GdkTransactionEventCopyWithImpl<$Res>
    implements _$$_GdkTransactionEventCopyWith<$Res> {
  __$$_GdkTransactionEventCopyWithImpl(_$_GdkTransactionEvent _value,
      $Res Function(_$_GdkTransactionEvent) _then)
      : super(_value, (v) => _then(v as _$_GdkTransactionEvent));

  @override
  _$_GdkTransactionEvent get _value => super._value as _$_GdkTransactionEvent;

  @override
  $Res call({
    Object? satoshi = freezed,
    Object? subaccounts = freezed,
    Object? txhash = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_GdkTransactionEvent(
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccounts: subaccounts == freezed
          ? _value._subaccounts
          : subaccounts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkTransactionEventEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkTransactionEvent implements _GdkTransactionEvent {
  const _$_GdkTransactionEvent(
      {this.satoshi, final List<int>? subaccounts, this.txhash, this.type})
      : _subaccounts = subaccounts;

  factory _$_GdkTransactionEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GdkTransactionEventFromJson(json);

  @override
  final int? satoshi;
  final List<int>? _subaccounts;
  @override
  List<int>? get subaccounts {
    final value = _subaccounts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? txhash;
  @override
  final GdkTransactionEventEnum? type;

  @override
  String toString() {
    return 'GdkTransactionEvent(satoshi: $satoshi, subaccounts: $subaccounts, txhash: $txhash, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkTransactionEvent &&
            const DeepCollectionEquality().equals(other.satoshi, satoshi) &&
            const DeepCollectionEquality()
                .equals(other._subaccounts, _subaccounts) &&
            const DeepCollectionEquality().equals(other.txhash, txhash) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(satoshi),
      const DeepCollectionEquality().hash(_subaccounts),
      const DeepCollectionEquality().hash(txhash),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_GdkTransactionEventCopyWith<_$_GdkTransactionEvent> get copyWith =>
      __$$_GdkTransactionEventCopyWithImpl<_$_GdkTransactionEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkTransactionEventToJson(
      this,
    );
  }
}

abstract class _GdkTransactionEvent implements GdkTransactionEvent {
  const factory _GdkTransactionEvent(
      {final int? satoshi,
      final List<int>? subaccounts,
      final String? txhash,
      final GdkTransactionEventEnum? type}) = _$_GdkTransactionEvent;

  factory _GdkTransactionEvent.fromJson(Map<String, dynamic> json) =
      _$_GdkTransactionEvent.fromJson;

  @override
  int? get satoshi;
  @override
  List<int>? get subaccounts;
  @override
  String? get txhash;
  @override
  GdkTransactionEventEnum? get type;
  @override
  @JsonKey(ignore: true)
  _$$_GdkTransactionEventCopyWith<_$_GdkTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkPricing _$GdkPricingFromJson(Map<String, dynamic> json) {
  return _GdkPricing.fromJson(json);
}

/// @nodoc
mixin _$GdkPricing {
  String? get currency => throw _privateConstructorUsedError;
  String? get exchange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkPricingCopyWith<GdkPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkPricingCopyWith<$Res> {
  factory $GdkPricingCopyWith(
          GdkPricing value, $Res Function(GdkPricing) then) =
      _$GdkPricingCopyWithImpl<$Res>;
  $Res call({String? currency, String? exchange});
}

/// @nodoc
class _$GdkPricingCopyWithImpl<$Res> implements $GdkPricingCopyWith<$Res> {
  _$GdkPricingCopyWithImpl(this._value, this._then);

  final GdkPricing _value;
  // ignore: unused_field
  final $Res Function(GdkPricing) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? exchange = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkPricingCopyWith<$Res>
    implements $GdkPricingCopyWith<$Res> {
  factory _$$_GdkPricingCopyWith(
          _$_GdkPricing value, $Res Function(_$_GdkPricing) then) =
      __$$_GdkPricingCopyWithImpl<$Res>;
  @override
  $Res call({String? currency, String? exchange});
}

/// @nodoc
class __$$_GdkPricingCopyWithImpl<$Res> extends _$GdkPricingCopyWithImpl<$Res>
    implements _$$_GdkPricingCopyWith<$Res> {
  __$$_GdkPricingCopyWithImpl(
      _$_GdkPricing _value, $Res Function(_$_GdkPricing) _then)
      : super(_value, (v) => _then(v as _$_GdkPricing));

  @override
  _$_GdkPricing get _value => super._value as _$_GdkPricing;

  @override
  $Res call({
    Object? currency = freezed,
    Object? exchange = freezed,
  }) {
    return _then(_$_GdkPricing(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkPricing implements _GdkPricing {
  const _$_GdkPricing({this.currency, this.exchange});

  factory _$_GdkPricing.fromJson(Map<String, dynamic> json) =>
      _$$_GdkPricingFromJson(json);

  @override
  final String? currency;
  @override
  final String? exchange;

  @override
  String toString() {
    return 'GdkPricing(currency: $currency, exchange: $exchange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkPricing &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.exchange, exchange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(exchange));

  @JsonKey(ignore: true)
  @override
  _$$_GdkPricingCopyWith<_$_GdkPricing> get copyWith =>
      __$$_GdkPricingCopyWithImpl<_$_GdkPricing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkPricingToJson(
      this,
    );
  }
}

abstract class _GdkPricing implements GdkPricing {
  const factory _GdkPricing({final String? currency, final String? exchange}) =
      _$_GdkPricing;

  factory _GdkPricing.fromJson(Map<String, dynamic> json) =
      _$_GdkPricing.fromJson;

  @override
  String? get currency;
  @override
  String? get exchange;
  @override
  @JsonKey(ignore: true)
  _$$_GdkPricingCopyWith<_$_GdkPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkAddressee _$GdkAddresseeFromJson(Map<String, dynamic> json) {
  return _GdkAddressee.fromJson(json);
}

/// @nodoc
mixin _$GdkAddressee {
  String? get address => throw _privateConstructorUsedError;
  int? get satoshi => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkAddresseeCopyWith<GdkAddressee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkAddresseeCopyWith<$Res> {
  factory $GdkAddresseeCopyWith(
          GdkAddressee value, $Res Function(GdkAddressee) then) =
      _$GdkAddresseeCopyWithImpl<$Res>;
  $Res call(
      {String? address,
      int? satoshi,
      @JsonKey(name: 'asset_id') String? assetId});
}

/// @nodoc
class _$GdkAddresseeCopyWithImpl<$Res> implements $GdkAddresseeCopyWith<$Res> {
  _$GdkAddresseeCopyWithImpl(this._value, this._then);

  final GdkAddressee _value;
  // ignore: unused_field
  final $Res Function(GdkAddressee) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? satoshi = freezed,
    Object? assetId = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkAddresseeCopyWith<$Res>
    implements $GdkAddresseeCopyWith<$Res> {
  factory _$$_GdkAddresseeCopyWith(
          _$_GdkAddressee value, $Res Function(_$_GdkAddressee) then) =
      __$$_GdkAddresseeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? address,
      int? satoshi,
      @JsonKey(name: 'asset_id') String? assetId});
}

/// @nodoc
class __$$_GdkAddresseeCopyWithImpl<$Res>
    extends _$GdkAddresseeCopyWithImpl<$Res>
    implements _$$_GdkAddresseeCopyWith<$Res> {
  __$$_GdkAddresseeCopyWithImpl(
      _$_GdkAddressee _value, $Res Function(_$_GdkAddressee) _then)
      : super(_value, (v) => _then(v as _$_GdkAddressee));

  @override
  _$_GdkAddressee get _value => super._value as _$_GdkAddressee;

  @override
  $Res call({
    Object? address = freezed,
    Object? satoshi = freezed,
    Object? assetId = freezed,
  }) {
    return _then(_$_GdkAddressee(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkAddressee implements _GdkAddressee {
  const _$_GdkAddressee(
      {this.address, this.satoshi, @JsonKey(name: 'asset_id') this.assetId});

  factory _$_GdkAddressee.fromJson(Map<String, dynamic> json) =>
      _$$_GdkAddresseeFromJson(json);

  @override
  final String? address;
  @override
  final int? satoshi;
  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;

  @override
  String toString() {
    return 'GdkAddressee(address: $address, satoshi: $satoshi, assetId: $assetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkAddressee &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.satoshi, satoshi) &&
            const DeepCollectionEquality().equals(other.assetId, assetId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(satoshi),
      const DeepCollectionEquality().hash(assetId));

  @JsonKey(ignore: true)
  @override
  _$$_GdkAddresseeCopyWith<_$_GdkAddressee> get copyWith =>
      __$$_GdkAddresseeCopyWithImpl<_$_GdkAddressee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkAddresseeToJson(
      this,
    );
  }
}

abstract class _GdkAddressee implements GdkAddressee {
  const factory _GdkAddressee(
      {final String? address,
      final int? satoshi,
      @JsonKey(name: 'asset_id') final String? assetId}) = _$_GdkAddressee;

  factory _GdkAddressee.fromJson(Map<String, dynamic> json) =
      _$_GdkAddressee.fromJson;

  @override
  String? get address;
  @override
  int? get satoshi;
  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  @JsonKey(ignore: true)
  _$$_GdkAddresseeCopyWith<_$_GdkAddressee> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkNewTransaction _$GdkNewTransactionFromJson(Map<String, dynamic> json) {
  return _GdkNewTransaction.fromJson(json);
}

/// @nodoc
mixin _$GdkNewTransaction {
  List<GdkAddressee>? get addressees => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee_rate')
  int? get feeRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_all')
  bool? get sendAll => throw _privateConstructorUsedError;
  @JsonKey(name: 'utxo_strategy')
  GdkUtxoStrategyEnum? get utxoStrategy => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_utxos')
  String? get usedUtxos => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  Map<String, List<GdkUnspentOutputs>>? get utxos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkNewTransactionCopyWith<GdkNewTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkNewTransactionCopyWith<$Res> {
  factory $GdkNewTransactionCopyWith(
          GdkNewTransaction value, $Res Function(GdkNewTransaction) then) =
      _$GdkNewTransactionCopyWithImpl<$Res>;
  $Res call(
      {List<GdkAddressee>? addressees,
      int? subaccount,
      @JsonKey(name: 'fee_rate') int? feeRate,
      @JsonKey(name: 'send_all') bool? sendAll,
      @JsonKey(name: 'utxo_strategy') GdkUtxoStrategyEnum? utxoStrategy,
      @JsonKey(name: 'used_utxos') String? usedUtxos,
      String? memo,
      Map<String, List<GdkUnspentOutputs>>? utxos});
}

/// @nodoc
class _$GdkNewTransactionCopyWithImpl<$Res>
    implements $GdkNewTransactionCopyWith<$Res> {
  _$GdkNewTransactionCopyWithImpl(this._value, this._then);

  final GdkNewTransaction _value;
  // ignore: unused_field
  final $Res Function(GdkNewTransaction) _then;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? subaccount = freezed,
    Object? feeRate = freezed,
    Object? sendAll = freezed,
    Object? utxoStrategy = freezed,
    Object? usedUtxos = freezed,
    Object? memo = freezed,
    Object? utxos = freezed,
  }) {
    return _then(_value.copyWith(
      addressees: addressees == freezed
          ? _value.addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      feeRate: feeRate == freezed
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAll: sendAll == freezed
          ? _value.sendAll
          : sendAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      utxoStrategy: utxoStrategy == freezed
          ? _value.utxoStrategy
          : utxoStrategy // ignore: cast_nullable_to_non_nullable
              as GdkUtxoStrategyEnum?,
      usedUtxos: usedUtxos == freezed
          ? _value.usedUtxos
          : usedUtxos // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      utxos: utxos == freezed
          ? _value.utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as Map<String, List<GdkUnspentOutputs>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkNewTransactionCopyWith<$Res>
    implements $GdkNewTransactionCopyWith<$Res> {
  factory _$$_GdkNewTransactionCopyWith(_$_GdkNewTransaction value,
          $Res Function(_$_GdkNewTransaction) then) =
      __$$_GdkNewTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GdkAddressee>? addressees,
      int? subaccount,
      @JsonKey(name: 'fee_rate') int? feeRate,
      @JsonKey(name: 'send_all') bool? sendAll,
      @JsonKey(name: 'utxo_strategy') GdkUtxoStrategyEnum? utxoStrategy,
      @JsonKey(name: 'used_utxos') String? usedUtxos,
      String? memo,
      Map<String, List<GdkUnspentOutputs>>? utxos});
}

/// @nodoc
class __$$_GdkNewTransactionCopyWithImpl<$Res>
    extends _$GdkNewTransactionCopyWithImpl<$Res>
    implements _$$_GdkNewTransactionCopyWith<$Res> {
  __$$_GdkNewTransactionCopyWithImpl(
      _$_GdkNewTransaction _value, $Res Function(_$_GdkNewTransaction) _then)
      : super(_value, (v) => _then(v as _$_GdkNewTransaction));

  @override
  _$_GdkNewTransaction get _value => super._value as _$_GdkNewTransaction;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? subaccount = freezed,
    Object? feeRate = freezed,
    Object? sendAll = freezed,
    Object? utxoStrategy = freezed,
    Object? usedUtxos = freezed,
    Object? memo = freezed,
    Object? utxos = freezed,
  }) {
    return _then(_$_GdkNewTransaction(
      addressees: addressees == freezed
          ? _value._addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      feeRate: feeRate == freezed
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      sendAll: sendAll == freezed
          ? _value.sendAll
          : sendAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      utxoStrategy: utxoStrategy == freezed
          ? _value.utxoStrategy
          : utxoStrategy // ignore: cast_nullable_to_non_nullable
              as GdkUtxoStrategyEnum?,
      usedUtxos: usedUtxos == freezed
          ? _value.usedUtxos
          : usedUtxos // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      utxos: utxos == freezed
          ? _value._utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as Map<String, List<GdkUnspentOutputs>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkNewTransaction extends _GdkNewTransaction {
  const _$_GdkNewTransaction(
      {final List<GdkAddressee>? addressees,
      this.subaccount = 0,
      @JsonKey(name: 'fee_rate')
          this.feeRate = 1000,
      @JsonKey(name: 'send_all')
          this.sendAll = false,
      @JsonKey(name: 'utxo_strategy')
          this.utxoStrategy = GdkUtxoStrategyEnum.defaultStrategy,
      @JsonKey(name: 'used_utxos')
          this.usedUtxos,
      this.memo,
      final Map<String, List<GdkUnspentOutputs>>? utxos})
      : _addressees = addressees,
        _utxos = utxos,
        super._();

  factory _$_GdkNewTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_GdkNewTransactionFromJson(json);

  final List<GdkAddressee>? _addressees;
  @override
  List<GdkAddressee>? get addressees {
    final value = _addressees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? subaccount;
  @override
  @JsonKey(name: 'fee_rate')
  final int? feeRate;
  @override
  @JsonKey(name: 'send_all')
  final bool? sendAll;
  @override
  @JsonKey(name: 'utxo_strategy')
  final GdkUtxoStrategyEnum? utxoStrategy;
  @override
  @JsonKey(name: 'used_utxos')
  final String? usedUtxos;
  @override
  final String? memo;
  final Map<String, List<GdkUnspentOutputs>>? _utxos;
  @override
  Map<String, List<GdkUnspentOutputs>>? get utxos {
    final value = _utxos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GdkNewTransaction(addressees: $addressees, subaccount: $subaccount, feeRate: $feeRate, sendAll: $sendAll, utxoStrategy: $utxoStrategy, usedUtxos: $usedUtxos, memo: $memo, utxos: $utxos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkNewTransaction &&
            const DeepCollectionEquality()
                .equals(other._addressees, _addressees) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.feeRate, feeRate) &&
            const DeepCollectionEquality().equals(other.sendAll, sendAll) &&
            const DeepCollectionEquality()
                .equals(other.utxoStrategy, utxoStrategy) &&
            const DeepCollectionEquality().equals(other.usedUtxos, usedUtxos) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other._utxos, _utxos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressees),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(feeRate),
      const DeepCollectionEquality().hash(sendAll),
      const DeepCollectionEquality().hash(utxoStrategy),
      const DeepCollectionEquality().hash(usedUtxos),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(_utxos));

  @JsonKey(ignore: true)
  @override
  _$$_GdkNewTransactionCopyWith<_$_GdkNewTransaction> get copyWith =>
      __$$_GdkNewTransactionCopyWithImpl<_$_GdkNewTransaction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkNewTransactionToJson(
      this,
    );
  }
}

abstract class _GdkNewTransaction extends GdkNewTransaction {
  const factory _GdkNewTransaction(
      {final List<GdkAddressee>? addressees,
      final int? subaccount,
      @JsonKey(name: 'fee_rate') final int? feeRate,
      @JsonKey(name: 'send_all') final bool? sendAll,
      @JsonKey(name: 'utxo_strategy') final GdkUtxoStrategyEnum? utxoStrategy,
      @JsonKey(name: 'used_utxos') final String? usedUtxos,
      final String? memo,
      final Map<String, List<GdkUnspentOutputs>>?
          utxos}) = _$_GdkNewTransaction;
  const _GdkNewTransaction._() : super._();

  factory _GdkNewTransaction.fromJson(Map<String, dynamic> json) =
      _$_GdkNewTransaction.fromJson;

  @override
  List<GdkAddressee>? get addressees;
  @override
  int? get subaccount;
  @override
  @JsonKey(name: 'fee_rate')
  int? get feeRate;
  @override
  @JsonKey(name: 'send_all')
  bool? get sendAll;
  @override
  @JsonKey(name: 'utxo_strategy')
  GdkUtxoStrategyEnum? get utxoStrategy;
  @override
  @JsonKey(name: 'used_utxos')
  String? get usedUtxos;
  @override
  String? get memo;
  @override
  Map<String, List<GdkUnspentOutputs>>? get utxos;
  @override
  @JsonKey(ignore: true)
  _$$_GdkNewTransactionCopyWith<_$_GdkNewTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkNewTransactionReply _$GdkNewTransactionReplyFromJson(
    Map<String, dynamic> json) {
  return _GdkNewTransactionReply.fromJson(json);
}

/// @nodoc
mixin _$GdkNewTransactionReply {
  List<GdkAddressee>? get addressees => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressees_have_assets')
  bool? get addresseesHaveAssets => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressees_read_only')
  bool? get addresseesReadOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'changes_used')
  int? get changesUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'confidential_utxos_only')
  bool? get confidentialUtxosOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee_rate')
  int? get feeRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sweep')
  bool? get isSweep => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_confs')
  int? get numConfs => throw _privateConstructorUsedError;
  @JsonKey(name: 'rbf_optin')
  bool? get rbfOptin => throw _privateConstructorUsedError;
  Map<String, dynamic>? get satoshi => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_all')
  bool? get sendAll => throw _privateConstructorUsedError;
  @JsonKey(name: 'spv_verified')
  String? get spvVerified => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  String? get transaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_size')
  int? get transactionSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_vsize')
  int? get transactionVsize => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_weight')
  int? get transactionWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_version')
  int? get transactionVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_locktime')
  int? get transactionLocktime => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_outputs')
  dynamic get transactionOutputs => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_utxos')
  dynamic get usedUtxos => throw _privateConstructorUsedError;
  String? get txhash => throw _privateConstructorUsedError;
  GdkTransactionTypeEnum? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_signed')
  bool? get userSigned => throw _privateConstructorUsedError;
  @JsonKey(name: 'utxo_strategy')
  String? get utxoStrategy => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get utxos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkNewTransactionReplyCopyWith<GdkNewTransactionReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkNewTransactionReplyCopyWith<$Res> {
  factory $GdkNewTransactionReplyCopyWith(GdkNewTransactionReply value,
          $Res Function(GdkNewTransactionReply) then) =
      _$GdkNewTransactionReplyCopyWithImpl<$Res>;
  $Res call(
      {List<GdkAddressee>? addressees,
      @JsonKey(name: 'addressees_have_assets') bool? addresseesHaveAssets,
      @JsonKey(name: 'addressees_read_only') bool? addresseesReadOnly,
      @JsonKey(name: 'changes_used') int? changesUsed,
      @JsonKey(name: 'confidential_utxos_only') bool? confidentialUtxosOnly,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? error,
      int? fee,
      @JsonKey(name: 'fee_rate') int? feeRate,
      @JsonKey(name: 'is_sweep') bool? isSweep,
      String? network,
      @JsonKey(name: 'num_confs') int? numConfs,
      @JsonKey(name: 'rbf_optin') bool? rbfOptin,
      Map<String, dynamic>? satoshi,
      @JsonKey(name: 'send_all') bool? sendAll,
      @JsonKey(name: 'spv_verified') String? spvVerified,
      int? subaccount,
      int? timestamp,
      String? transaction,
      @JsonKey(name: 'transaction_size') int? transactionSize,
      @JsonKey(name: 'transaction_vsize') int? transactionVsize,
      @JsonKey(name: 'transaction_weight') int? transactionWeight,
      @JsonKey(name: 'transaction_version') int? transactionVersion,
      @JsonKey(name: 'transaction_locktime') int? transactionLocktime,
      @JsonKey(name: 'transaction_outputs') dynamic transactionOutputs,
      @JsonKey(name: 'used_utxos') dynamic usedUtxos,
      String? txhash,
      GdkTransactionTypeEnum? type,
      @JsonKey(name: 'user_signed') bool? userSigned,
      @JsonKey(name: 'utxo_strategy') String? utxoStrategy,
      String? memo,
      Map<String, dynamic>? utxos});
}

/// @nodoc
class _$GdkNewTransactionReplyCopyWithImpl<$Res>
    implements $GdkNewTransactionReplyCopyWith<$Res> {
  _$GdkNewTransactionReplyCopyWithImpl(this._value, this._then);

  final GdkNewTransactionReply _value;
  // ignore: unused_field
  final $Res Function(GdkNewTransactionReply) _then;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? addresseesHaveAssets = freezed,
    Object? addresseesReadOnly = freezed,
    Object? changesUsed = freezed,
    Object? confidentialUtxosOnly = freezed,
    Object? createdAt = freezed,
    Object? error = freezed,
    Object? fee = freezed,
    Object? feeRate = freezed,
    Object? isSweep = freezed,
    Object? network = freezed,
    Object? numConfs = freezed,
    Object? rbfOptin = freezed,
    Object? satoshi = freezed,
    Object? sendAll = freezed,
    Object? spvVerified = freezed,
    Object? subaccount = freezed,
    Object? timestamp = freezed,
    Object? transaction = freezed,
    Object? transactionSize = freezed,
    Object? transactionVsize = freezed,
    Object? transactionWeight = freezed,
    Object? transactionVersion = freezed,
    Object? transactionLocktime = freezed,
    Object? transactionOutputs = freezed,
    Object? usedUtxos = freezed,
    Object? txhash = freezed,
    Object? type = freezed,
    Object? userSigned = freezed,
    Object? utxoStrategy = freezed,
    Object? memo = freezed,
    Object? utxos = freezed,
  }) {
    return _then(_value.copyWith(
      addressees: addressees == freezed
          ? _value.addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      addresseesHaveAssets: addresseesHaveAssets == freezed
          ? _value.addresseesHaveAssets
          : addresseesHaveAssets // ignore: cast_nullable_to_non_nullable
              as bool?,
      addresseesReadOnly: addresseesReadOnly == freezed
          ? _value.addresseesReadOnly
          : addresseesReadOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      changesUsed: changesUsed == freezed
          ? _value.changesUsed
          : changesUsed // ignore: cast_nullable_to_non_nullable
              as int?,
      confidentialUtxosOnly: confidentialUtxosOnly == freezed
          ? _value.confidentialUtxosOnly
          : confidentialUtxosOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      feeRate: feeRate == freezed
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      isSweep: isSweep == freezed
          ? _value.isSweep
          : isSweep // ignore: cast_nullable_to_non_nullable
              as bool?,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      numConfs: numConfs == freezed
          ? _value.numConfs
          : numConfs // ignore: cast_nullable_to_non_nullable
              as int?,
      rbfOptin: rbfOptin == freezed
          ? _value.rbfOptin
          : rbfOptin // ignore: cast_nullable_to_non_nullable
              as bool?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sendAll: sendAll == freezed
          ? _value.sendAll
          : sendAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvVerified: spvVerified == freezed
          ? _value.spvVerified
          : spvVerified // ignore: cast_nullable_to_non_nullable
              as String?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionSize: transactionSize == freezed
          ? _value.transactionSize
          : transactionSize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVsize: transactionVsize == freezed
          ? _value.transactionVsize
          : transactionVsize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionWeight: transactionWeight == freezed
          ? _value.transactionWeight
          : transactionWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVersion: transactionVersion == freezed
          ? _value.transactionVersion
          : transactionVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionLocktime: transactionLocktime == freezed
          ? _value.transactionLocktime
          : transactionLocktime // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionOutputs: transactionOutputs == freezed
          ? _value.transactionOutputs
          : transactionOutputs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usedUtxos: usedUtxos == freezed
          ? _value.usedUtxos
          : usedUtxos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkTransactionTypeEnum?,
      userSigned: userSigned == freezed
          ? _value.userSigned
          : userSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      utxoStrategy: utxoStrategy == freezed
          ? _value.utxoStrategy
          : utxoStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      utxos: utxos == freezed
          ? _value.utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkNewTransactionReplyCopyWith<$Res>
    implements $GdkNewTransactionReplyCopyWith<$Res> {
  factory _$$_GdkNewTransactionReplyCopyWith(_$_GdkNewTransactionReply value,
          $Res Function(_$_GdkNewTransactionReply) then) =
      __$$_GdkNewTransactionReplyCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GdkAddressee>? addressees,
      @JsonKey(name: 'addressees_have_assets') bool? addresseesHaveAssets,
      @JsonKey(name: 'addressees_read_only') bool? addresseesReadOnly,
      @JsonKey(name: 'changes_used') int? changesUsed,
      @JsonKey(name: 'confidential_utxos_only') bool? confidentialUtxosOnly,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? error,
      int? fee,
      @JsonKey(name: 'fee_rate') int? feeRate,
      @JsonKey(name: 'is_sweep') bool? isSweep,
      String? network,
      @JsonKey(name: 'num_confs') int? numConfs,
      @JsonKey(name: 'rbf_optin') bool? rbfOptin,
      Map<String, dynamic>? satoshi,
      @JsonKey(name: 'send_all') bool? sendAll,
      @JsonKey(name: 'spv_verified') String? spvVerified,
      int? subaccount,
      int? timestamp,
      String? transaction,
      @JsonKey(name: 'transaction_size') int? transactionSize,
      @JsonKey(name: 'transaction_vsize') int? transactionVsize,
      @JsonKey(name: 'transaction_weight') int? transactionWeight,
      @JsonKey(name: 'transaction_version') int? transactionVersion,
      @JsonKey(name: 'transaction_locktime') int? transactionLocktime,
      @JsonKey(name: 'transaction_outputs') dynamic transactionOutputs,
      @JsonKey(name: 'used_utxos') dynamic usedUtxos,
      String? txhash,
      GdkTransactionTypeEnum? type,
      @JsonKey(name: 'user_signed') bool? userSigned,
      @JsonKey(name: 'utxo_strategy') String? utxoStrategy,
      String? memo,
      Map<String, dynamic>? utxos});
}

/// @nodoc
class __$$_GdkNewTransactionReplyCopyWithImpl<$Res>
    extends _$GdkNewTransactionReplyCopyWithImpl<$Res>
    implements _$$_GdkNewTransactionReplyCopyWith<$Res> {
  __$$_GdkNewTransactionReplyCopyWithImpl(_$_GdkNewTransactionReply _value,
      $Res Function(_$_GdkNewTransactionReply) _then)
      : super(_value, (v) => _then(v as _$_GdkNewTransactionReply));

  @override
  _$_GdkNewTransactionReply get _value =>
      super._value as _$_GdkNewTransactionReply;

  @override
  $Res call({
    Object? addressees = freezed,
    Object? addresseesHaveAssets = freezed,
    Object? addresseesReadOnly = freezed,
    Object? changesUsed = freezed,
    Object? confidentialUtxosOnly = freezed,
    Object? createdAt = freezed,
    Object? error = freezed,
    Object? fee = freezed,
    Object? feeRate = freezed,
    Object? isSweep = freezed,
    Object? network = freezed,
    Object? numConfs = freezed,
    Object? rbfOptin = freezed,
    Object? satoshi = freezed,
    Object? sendAll = freezed,
    Object? spvVerified = freezed,
    Object? subaccount = freezed,
    Object? timestamp = freezed,
    Object? transaction = freezed,
    Object? transactionSize = freezed,
    Object? transactionVsize = freezed,
    Object? transactionWeight = freezed,
    Object? transactionVersion = freezed,
    Object? transactionLocktime = freezed,
    Object? transactionOutputs = freezed,
    Object? usedUtxos = freezed,
    Object? txhash = freezed,
    Object? type = freezed,
    Object? userSigned = freezed,
    Object? utxoStrategy = freezed,
    Object? memo = freezed,
    Object? utxos = freezed,
  }) {
    return _then(_$_GdkNewTransactionReply(
      addressees: addressees == freezed
          ? _value._addressees
          : addressees // ignore: cast_nullable_to_non_nullable
              as List<GdkAddressee>?,
      addresseesHaveAssets: addresseesHaveAssets == freezed
          ? _value.addresseesHaveAssets
          : addresseesHaveAssets // ignore: cast_nullable_to_non_nullable
              as bool?,
      addresseesReadOnly: addresseesReadOnly == freezed
          ? _value.addresseesReadOnly
          : addresseesReadOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      changesUsed: changesUsed == freezed
          ? _value.changesUsed
          : changesUsed // ignore: cast_nullable_to_non_nullable
              as int?,
      confidentialUtxosOnly: confidentialUtxosOnly == freezed
          ? _value.confidentialUtxosOnly
          : confidentialUtxosOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      feeRate: feeRate == freezed
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int?,
      isSweep: isSweep == freezed
          ? _value.isSweep
          : isSweep // ignore: cast_nullable_to_non_nullable
              as bool?,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      numConfs: numConfs == freezed
          ? _value.numConfs
          : numConfs // ignore: cast_nullable_to_non_nullable
              as int?,
      rbfOptin: rbfOptin == freezed
          ? _value.rbfOptin
          : rbfOptin // ignore: cast_nullable_to_non_nullable
              as bool?,
      satoshi: satoshi == freezed
          ? _value._satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sendAll: sendAll == freezed
          ? _value.sendAll
          : sendAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      spvVerified: spvVerified == freezed
          ? _value.spvVerified
          : spvVerified // ignore: cast_nullable_to_non_nullable
              as String?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionSize: transactionSize == freezed
          ? _value.transactionSize
          : transactionSize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVsize: transactionVsize == freezed
          ? _value.transactionVsize
          : transactionVsize // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionWeight: transactionWeight == freezed
          ? _value.transactionWeight
          : transactionWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionVersion: transactionVersion == freezed
          ? _value.transactionVersion
          : transactionVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionLocktime: transactionLocktime == freezed
          ? _value.transactionLocktime
          : transactionLocktime // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionOutputs: transactionOutputs == freezed
          ? _value.transactionOutputs
          : transactionOutputs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usedUtxos: usedUtxos == freezed
          ? _value.usedUtxos
          : usedUtxos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GdkTransactionTypeEnum?,
      userSigned: userSigned == freezed
          ? _value.userSigned
          : userSigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      utxoStrategy: utxoStrategy == freezed
          ? _value.utxoStrategy
          : utxoStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      utxos: utxos == freezed
          ? _value._utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkNewTransactionReply extends _GdkNewTransactionReply {
  const _$_GdkNewTransactionReply(
      {final List<GdkAddressee>? addressees,
      @JsonKey(name: 'addressees_have_assets') this.addresseesHaveAssets,
      @JsonKey(name: 'addressees_read_only') this.addresseesReadOnly,
      @JsonKey(name: 'changes_used') this.changesUsed,
      @JsonKey(name: 'confidential_utxos_only') this.confidentialUtxosOnly,
      @JsonKey(name: 'created_at') this.createdAt,
      this.error,
      this.fee,
      @JsonKey(name: 'fee_rate') this.feeRate,
      @JsonKey(name: 'is_sweep') this.isSweep,
      this.network,
      @JsonKey(name: 'num_confs') this.numConfs,
      @JsonKey(name: 'rbf_optin') this.rbfOptin = true,
      final Map<String, dynamic>? satoshi,
      @JsonKey(name: 'send_all') this.sendAll,
      @JsonKey(name: 'spv_verified') this.spvVerified,
      this.subaccount,
      this.timestamp,
      this.transaction,
      @JsonKey(name: 'transaction_size') this.transactionSize,
      @JsonKey(name: 'transaction_vsize') this.transactionVsize,
      @JsonKey(name: 'transaction_weight') this.transactionWeight,
      @JsonKey(name: 'transaction_version') this.transactionVersion,
      @JsonKey(name: 'transaction_locktime') this.transactionLocktime,
      @JsonKey(name: 'transaction_outputs') this.transactionOutputs,
      @JsonKey(name: 'used_utxos') this.usedUtxos,
      this.txhash,
      this.type,
      @JsonKey(name: 'user_signed') this.userSigned,
      @JsonKey(name: 'utxo_strategy') this.utxoStrategy,
      this.memo,
      final Map<String, dynamic>? utxos})
      : _addressees = addressees,
        _satoshi = satoshi,
        _utxos = utxos,
        super._();

  factory _$_GdkNewTransactionReply.fromJson(Map<String, dynamic> json) =>
      _$$_GdkNewTransactionReplyFromJson(json);

  final List<GdkAddressee>? _addressees;
  @override
  List<GdkAddressee>? get addressees {
    final value = _addressees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'addressees_have_assets')
  final bool? addresseesHaveAssets;
  @override
  @JsonKey(name: 'addressees_read_only')
  final bool? addresseesReadOnly;
  @override
  @JsonKey(name: 'changes_used')
  final int? changesUsed;
  @override
  @JsonKey(name: 'confidential_utxos_only')
  final bool? confidentialUtxosOnly;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final String? error;
  @override
  final int? fee;
  @override
  @JsonKey(name: 'fee_rate')
  final int? feeRate;
  @override
  @JsonKey(name: 'is_sweep')
  final bool? isSweep;
  @override
  final String? network;
  @override
  @JsonKey(name: 'num_confs')
  final int? numConfs;
  @override
  @JsonKey(name: 'rbf_optin')
  final bool? rbfOptin;
  final Map<String, dynamic>? _satoshi;
  @override
  Map<String, dynamic>? get satoshi {
    final value = _satoshi;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'send_all')
  final bool? sendAll;
  @override
  @JsonKey(name: 'spv_verified')
  final String? spvVerified;
  @override
  final int? subaccount;
  @override
  final int? timestamp;
  @override
  final String? transaction;
  @override
  @JsonKey(name: 'transaction_size')
  final int? transactionSize;
  @override
  @JsonKey(name: 'transaction_vsize')
  final int? transactionVsize;
  @override
  @JsonKey(name: 'transaction_weight')
  final int? transactionWeight;
  @override
  @JsonKey(name: 'transaction_version')
  final int? transactionVersion;
  @override
  @JsonKey(name: 'transaction_locktime')
  final int? transactionLocktime;
  @override
  @JsonKey(name: 'transaction_outputs')
  final dynamic transactionOutputs;
  @override
  @JsonKey(name: 'used_utxos')
  final dynamic usedUtxos;
  @override
  final String? txhash;
  @override
  final GdkTransactionTypeEnum? type;
  @override
  @JsonKey(name: 'user_signed')
  final bool? userSigned;
  @override
  @JsonKey(name: 'utxo_strategy')
  final String? utxoStrategy;
  @override
  final String? memo;
  final Map<String, dynamic>? _utxos;
  @override
  Map<String, dynamic>? get utxos {
    final value = _utxos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GdkNewTransactionReply(addressees: $addressees, addresseesHaveAssets: $addresseesHaveAssets, addresseesReadOnly: $addresseesReadOnly, changesUsed: $changesUsed, confidentialUtxosOnly: $confidentialUtxosOnly, createdAt: $createdAt, error: $error, fee: $fee, feeRate: $feeRate, isSweep: $isSweep, network: $network, numConfs: $numConfs, rbfOptin: $rbfOptin, satoshi: $satoshi, sendAll: $sendAll, spvVerified: $spvVerified, subaccount: $subaccount, timestamp: $timestamp, transaction: $transaction, transactionSize: $transactionSize, transactionVsize: $transactionVsize, transactionWeight: $transactionWeight, transactionVersion: $transactionVersion, transactionLocktime: $transactionLocktime, transactionOutputs: $transactionOutputs, usedUtxos: $usedUtxos, txhash: $txhash, type: $type, userSigned: $userSigned, utxoStrategy: $utxoStrategy, memo: $memo, utxos: $utxos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkNewTransactionReply &&
            const DeepCollectionEquality()
                .equals(other._addressees, _addressees) &&
            const DeepCollectionEquality()
                .equals(other.addresseesHaveAssets, addresseesHaveAssets) &&
            const DeepCollectionEquality()
                .equals(other.addresseesReadOnly, addresseesReadOnly) &&
            const DeepCollectionEquality()
                .equals(other.changesUsed, changesUsed) &&
            const DeepCollectionEquality()
                .equals(other.confidentialUtxosOnly, confidentialUtxosOnly) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.fee, fee) &&
            const DeepCollectionEquality().equals(other.feeRate, feeRate) &&
            const DeepCollectionEquality().equals(other.isSweep, isSweep) &&
            const DeepCollectionEquality().equals(other.network, network) &&
            const DeepCollectionEquality().equals(other.numConfs, numConfs) &&
            const DeepCollectionEquality().equals(other.rbfOptin, rbfOptin) &&
            const DeepCollectionEquality().equals(other._satoshi, _satoshi) &&
            const DeepCollectionEquality().equals(other.sendAll, sendAll) &&
            const DeepCollectionEquality()
                .equals(other.spvVerified, spvVerified) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality()
                .equals(other.transactionSize, transactionSize) &&
            const DeepCollectionEquality()
                .equals(other.transactionVsize, transactionVsize) &&
            const DeepCollectionEquality()
                .equals(other.transactionWeight, transactionWeight) &&
            const DeepCollectionEquality()
                .equals(other.transactionVersion, transactionVersion) &&
            const DeepCollectionEquality()
                .equals(other.transactionLocktime, transactionLocktime) &&
            const DeepCollectionEquality()
                .equals(other.transactionOutputs, transactionOutputs) &&
            const DeepCollectionEquality().equals(other.usedUtxos, usedUtxos) &&
            const DeepCollectionEquality().equals(other.txhash, txhash) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.userSigned, userSigned) &&
            const DeepCollectionEquality()
                .equals(other.utxoStrategy, utxoStrategy) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other._utxos, _utxos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_addressees),
        const DeepCollectionEquality().hash(addresseesHaveAssets),
        const DeepCollectionEquality().hash(addresseesReadOnly),
        const DeepCollectionEquality().hash(changesUsed),
        const DeepCollectionEquality().hash(confidentialUtxosOnly),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(error),
        const DeepCollectionEquality().hash(fee),
        const DeepCollectionEquality().hash(feeRate),
        const DeepCollectionEquality().hash(isSweep),
        const DeepCollectionEquality().hash(network),
        const DeepCollectionEquality().hash(numConfs),
        const DeepCollectionEquality().hash(rbfOptin),
        const DeepCollectionEquality().hash(_satoshi),
        const DeepCollectionEquality().hash(sendAll),
        const DeepCollectionEquality().hash(spvVerified),
        const DeepCollectionEquality().hash(subaccount),
        const DeepCollectionEquality().hash(timestamp),
        const DeepCollectionEquality().hash(transaction),
        const DeepCollectionEquality().hash(transactionSize),
        const DeepCollectionEquality().hash(transactionVsize),
        const DeepCollectionEquality().hash(transactionWeight),
        const DeepCollectionEquality().hash(transactionVersion),
        const DeepCollectionEquality().hash(transactionLocktime),
        const DeepCollectionEquality().hash(transactionOutputs),
        const DeepCollectionEquality().hash(usedUtxos),
        const DeepCollectionEquality().hash(txhash),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(userSigned),
        const DeepCollectionEquality().hash(utxoStrategy),
        const DeepCollectionEquality().hash(memo),
        const DeepCollectionEquality().hash(_utxos)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_GdkNewTransactionReplyCopyWith<_$_GdkNewTransactionReply> get copyWith =>
      __$$_GdkNewTransactionReplyCopyWithImpl<_$_GdkNewTransactionReply>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkNewTransactionReplyToJson(
      this,
    );
  }
}

abstract class _GdkNewTransactionReply extends GdkNewTransactionReply {
  const factory _GdkNewTransactionReply(
      {final List<GdkAddressee>? addressees,
      @JsonKey(name: 'addressees_have_assets')
          final bool? addresseesHaveAssets,
      @JsonKey(name: 'addressees_read_only')
          final bool? addresseesReadOnly,
      @JsonKey(name: 'changes_used')
          final int? changesUsed,
      @JsonKey(name: 'confidential_utxos_only')
          final bool? confidentialUtxosOnly,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      final String? error,
      final int? fee,
      @JsonKey(name: 'fee_rate')
          final int? feeRate,
      @JsonKey(name: 'is_sweep')
          final bool? isSweep,
      final String? network,
      @JsonKey(name: 'num_confs')
          final int? numConfs,
      @JsonKey(name: 'rbf_optin')
          final bool? rbfOptin,
      final Map<String, dynamic>? satoshi,
      @JsonKey(name: 'send_all')
          final bool? sendAll,
      @JsonKey(name: 'spv_verified')
          final String? spvVerified,
      final int? subaccount,
      final int? timestamp,
      final String? transaction,
      @JsonKey(name: 'transaction_size')
          final int? transactionSize,
      @JsonKey(name: 'transaction_vsize')
          final int? transactionVsize,
      @JsonKey(name: 'transaction_weight')
          final int? transactionWeight,
      @JsonKey(name: 'transaction_version')
          final int? transactionVersion,
      @JsonKey(name: 'transaction_locktime')
          final int? transactionLocktime,
      @JsonKey(name: 'transaction_outputs')
          final dynamic transactionOutputs,
      @JsonKey(name: 'used_utxos')
          final dynamic usedUtxos,
      final String? txhash,
      final GdkTransactionTypeEnum? type,
      @JsonKey(name: 'user_signed')
          final bool? userSigned,
      @JsonKey(name: 'utxo_strategy')
          final String? utxoStrategy,
      final String? memo,
      final Map<String, dynamic>? utxos}) = _$_GdkNewTransactionReply;
  const _GdkNewTransactionReply._() : super._();

  factory _GdkNewTransactionReply.fromJson(Map<String, dynamic> json) =
      _$_GdkNewTransactionReply.fromJson;

  @override
  List<GdkAddressee>? get addressees;
  @override
  @JsonKey(name: 'addressees_have_assets')
  bool? get addresseesHaveAssets;
  @override
  @JsonKey(name: 'addressees_read_only')
  bool? get addresseesReadOnly;
  @override
  @JsonKey(name: 'changes_used')
  int? get changesUsed;
  @override
  @JsonKey(name: 'confidential_utxos_only')
  bool? get confidentialUtxosOnly;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  String? get error;
  @override
  int? get fee;
  @override
  @JsonKey(name: 'fee_rate')
  int? get feeRate;
  @override
  @JsonKey(name: 'is_sweep')
  bool? get isSweep;
  @override
  String? get network;
  @override
  @JsonKey(name: 'num_confs')
  int? get numConfs;
  @override
  @JsonKey(name: 'rbf_optin')
  bool? get rbfOptin;
  @override
  Map<String, dynamic>? get satoshi;
  @override
  @JsonKey(name: 'send_all')
  bool? get sendAll;
  @override
  @JsonKey(name: 'spv_verified')
  String? get spvVerified;
  @override
  int? get subaccount;
  @override
  int? get timestamp;
  @override
  String? get transaction;
  @override
  @JsonKey(name: 'transaction_size')
  int? get transactionSize;
  @override
  @JsonKey(name: 'transaction_vsize')
  int? get transactionVsize;
  @override
  @JsonKey(name: 'transaction_weight')
  int? get transactionWeight;
  @override
  @JsonKey(name: 'transaction_version')
  int? get transactionVersion;
  @override
  @JsonKey(name: 'transaction_locktime')
  int? get transactionLocktime;
  @override
  @JsonKey(name: 'transaction_outputs')
  dynamic get transactionOutputs;
  @override
  @JsonKey(name: 'used_utxos')
  dynamic get usedUtxos;
  @override
  String? get txhash;
  @override
  GdkTransactionTypeEnum? get type;
  @override
  @JsonKey(name: 'user_signed')
  bool? get userSigned;
  @override
  @JsonKey(name: 'utxo_strategy')
  String? get utxoStrategy;
  @override
  String? get memo;
  @override
  Map<String, dynamic>? get utxos;
  @override
  @JsonKey(ignore: true)
  _$$_GdkNewTransactionReplyCopyWith<_$_GdkNewTransactionReply> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkRegisterNetworkData _$GdkRegisterNetworkDataFromJson(
    Map<String, dynamic> json) {
  return _GdkRegisterNetworkData.fromJson(json);
}

/// @nodoc
mixin _$GdkRegisterNetworkData {
  String? get name => throw _privateConstructorUsedError;
  GdkNetwork? get networkDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkRegisterNetworkDataCopyWith<GdkRegisterNetworkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkRegisterNetworkDataCopyWith<$Res> {
  factory $GdkRegisterNetworkDataCopyWith(GdkRegisterNetworkData value,
          $Res Function(GdkRegisterNetworkData) then) =
      _$GdkRegisterNetworkDataCopyWithImpl<$Res>;
  $Res call({String? name, GdkNetwork? networkDetails});

  $GdkNetworkCopyWith<$Res>? get networkDetails;
}

/// @nodoc
class _$GdkRegisterNetworkDataCopyWithImpl<$Res>
    implements $GdkRegisterNetworkDataCopyWith<$Res> {
  _$GdkRegisterNetworkDataCopyWithImpl(this._value, this._then);

  final GdkRegisterNetworkData _value;
  // ignore: unused_field
  final $Res Function(GdkRegisterNetworkData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? networkDetails = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      networkDetails: networkDetails == freezed
          ? _value.networkDetails
          : networkDetails // ignore: cast_nullable_to_non_nullable
              as GdkNetwork?,
    ));
  }

  @override
  $GdkNetworkCopyWith<$Res>? get networkDetails {
    if (_value.networkDetails == null) {
      return null;
    }

    return $GdkNetworkCopyWith<$Res>(_value.networkDetails!, (value) {
      return _then(_value.copyWith(networkDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_GdkRegisterNetworkDataCopyWith<$Res>
    implements $GdkRegisterNetworkDataCopyWith<$Res> {
  factory _$$_GdkRegisterNetworkDataCopyWith(_$_GdkRegisterNetworkData value,
          $Res Function(_$_GdkRegisterNetworkData) then) =
      __$$_GdkRegisterNetworkDataCopyWithImpl<$Res>;
  @override
  $Res call({String? name, GdkNetwork? networkDetails});

  @override
  $GdkNetworkCopyWith<$Res>? get networkDetails;
}

/// @nodoc
class __$$_GdkRegisterNetworkDataCopyWithImpl<$Res>
    extends _$GdkRegisterNetworkDataCopyWithImpl<$Res>
    implements _$$_GdkRegisterNetworkDataCopyWith<$Res> {
  __$$_GdkRegisterNetworkDataCopyWithImpl(_$_GdkRegisterNetworkData _value,
      $Res Function(_$_GdkRegisterNetworkData) _then)
      : super(_value, (v) => _then(v as _$_GdkRegisterNetworkData));

  @override
  _$_GdkRegisterNetworkData get _value =>
      super._value as _$_GdkRegisterNetworkData;

  @override
  $Res call({
    Object? name = freezed,
    Object? networkDetails = freezed,
  }) {
    return _then(_$_GdkRegisterNetworkData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      networkDetails: networkDetails == freezed
          ? _value.networkDetails
          : networkDetails // ignore: cast_nullable_to_non_nullable
              as GdkNetwork?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkRegisterNetworkData implements _GdkRegisterNetworkData {
  const _$_GdkRegisterNetworkData({this.name, this.networkDetails});

  factory _$_GdkRegisterNetworkData.fromJson(Map<String, dynamic> json) =>
      _$$_GdkRegisterNetworkDataFromJson(json);

  @override
  final String? name;
  @override
  final GdkNetwork? networkDetails;

  @override
  String toString() {
    return 'GdkRegisterNetworkData(name: $name, networkDetails: $networkDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkRegisterNetworkData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.networkDetails, networkDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(networkDetails));

  @JsonKey(ignore: true)
  @override
  _$$_GdkRegisterNetworkDataCopyWith<_$_GdkRegisterNetworkData> get copyWith =>
      __$$_GdkRegisterNetworkDataCopyWithImpl<_$_GdkRegisterNetworkData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkRegisterNetworkDataToJson(
      this,
    );
  }
}

abstract class _GdkRegisterNetworkData implements GdkRegisterNetworkData {
  const factory _GdkRegisterNetworkData(
      {final String? name,
      final GdkNetwork? networkDetails}) = _$_GdkRegisterNetworkData;

  factory _GdkRegisterNetworkData.fromJson(Map<String, dynamic> json) =
      _$_GdkRegisterNetworkData.fromJson;

  @override
  String? get name;
  @override
  GdkNetwork? get networkDetails;
  @override
  @JsonKey(ignore: true)
  _$$_GdkRegisterNetworkDataCopyWith<_$_GdkRegisterNetworkData> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkSessionEvent _$GdkSessionEventFromJson(Map<String, dynamic> json) {
  return _GdkSessionEvent.fromJson(json);
}

/// @nodoc
mixin _$GdkSessionEvent {
  bool? get connected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkSessionEventCopyWith<GdkSessionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkSessionEventCopyWith<$Res> {
  factory $GdkSessionEventCopyWith(
          GdkSessionEvent value, $Res Function(GdkSessionEvent) then) =
      _$GdkSessionEventCopyWithImpl<$Res>;
  $Res call({bool? connected});
}

/// @nodoc
class _$GdkSessionEventCopyWithImpl<$Res>
    implements $GdkSessionEventCopyWith<$Res> {
  _$GdkSessionEventCopyWithImpl(this._value, this._then);

  final GdkSessionEvent _value;
  // ignore: unused_field
  final $Res Function(GdkSessionEvent) _then;

  @override
  $Res call({
    Object? connected = freezed,
  }) {
    return _then(_value.copyWith(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkSessionEventCopyWith<$Res>
    implements $GdkSessionEventCopyWith<$Res> {
  factory _$$_GdkSessionEventCopyWith(
          _$_GdkSessionEvent value, $Res Function(_$_GdkSessionEvent) then) =
      __$$_GdkSessionEventCopyWithImpl<$Res>;
  @override
  $Res call({bool? connected});
}

/// @nodoc
class __$$_GdkSessionEventCopyWithImpl<$Res>
    extends _$GdkSessionEventCopyWithImpl<$Res>
    implements _$$_GdkSessionEventCopyWith<$Res> {
  __$$_GdkSessionEventCopyWithImpl(
      _$_GdkSessionEvent _value, $Res Function(_$_GdkSessionEvent) _then)
      : super(_value, (v) => _then(v as _$_GdkSessionEvent));

  @override
  _$_GdkSessionEvent get _value => super._value as _$_GdkSessionEvent;

  @override
  $Res call({
    Object? connected = freezed,
  }) {
    return _then(_$_GdkSessionEvent(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkSessionEvent implements _GdkSessionEvent {
  const _$_GdkSessionEvent({this.connected});

  factory _$_GdkSessionEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GdkSessionEventFromJson(json);

  @override
  final bool? connected;

  @override
  String toString() {
    return 'GdkSessionEvent(connected: $connected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkSessionEvent &&
            const DeepCollectionEquality().equals(other.connected, connected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(connected));

  @JsonKey(ignore: true)
  @override
  _$$_GdkSessionEventCopyWith<_$_GdkSessionEvent> get copyWith =>
      __$$_GdkSessionEventCopyWithImpl<_$_GdkSessionEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkSessionEventToJson(
      this,
    );
  }
}

abstract class _GdkSessionEvent implements GdkSessionEvent {
  const factory _GdkSessionEvent({final bool? connected}) = _$_GdkSessionEvent;

  factory _GdkSessionEvent.fromJson(Map<String, dynamic> json) =
      _$_GdkSessionEvent.fromJson;

  @override
  bool? get connected;
  @override
  @JsonKey(ignore: true)
  _$$_GdkSessionEventCopyWith<_$_GdkSessionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkNetworkEvent _$GdkNetworkEventFromJson(Map<String, dynamic> json) {
  return _GdkNetworkEvent.fromJson(json);
}

/// @nodoc
mixin _$GdkNetworkEvent {
  @JsonKey(name: 'wait_ms')
  int? get waitMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_state')
  GdkNetworkEventStateEnum? get currentState =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_state')
  GdkNetworkEventStateEnum? get nextState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkNetworkEventCopyWith<GdkNetworkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkNetworkEventCopyWith<$Res> {
  factory $GdkNetworkEventCopyWith(
          GdkNetworkEvent value, $Res Function(GdkNetworkEvent) then) =
      _$GdkNetworkEventCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'wait_ms') int? waitMs,
      @JsonKey(name: 'current_state') GdkNetworkEventStateEnum? currentState,
      @JsonKey(name: 'next_state') GdkNetworkEventStateEnum? nextState});
}

/// @nodoc
class _$GdkNetworkEventCopyWithImpl<$Res>
    implements $GdkNetworkEventCopyWith<$Res> {
  _$GdkNetworkEventCopyWithImpl(this._value, this._then);

  final GdkNetworkEvent _value;
  // ignore: unused_field
  final $Res Function(GdkNetworkEvent) _then;

  @override
  $Res call({
    Object? waitMs = freezed,
    Object? currentState = freezed,
    Object? nextState = freezed,
  }) {
    return _then(_value.copyWith(
      waitMs: waitMs == freezed
          ? _value.waitMs
          : waitMs // ignore: cast_nullable_to_non_nullable
              as int?,
      currentState: currentState == freezed
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as GdkNetworkEventStateEnum?,
      nextState: nextState == freezed
          ? _value.nextState
          : nextState // ignore: cast_nullable_to_non_nullable
              as GdkNetworkEventStateEnum?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkNetworkEventCopyWith<$Res>
    implements $GdkNetworkEventCopyWith<$Res> {
  factory _$$_GdkNetworkEventCopyWith(
          _$_GdkNetworkEvent value, $Res Function(_$_GdkNetworkEvent) then) =
      __$$_GdkNetworkEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'wait_ms') int? waitMs,
      @JsonKey(name: 'current_state') GdkNetworkEventStateEnum? currentState,
      @JsonKey(name: 'next_state') GdkNetworkEventStateEnum? nextState});
}

/// @nodoc
class __$$_GdkNetworkEventCopyWithImpl<$Res>
    extends _$GdkNetworkEventCopyWithImpl<$Res>
    implements _$$_GdkNetworkEventCopyWith<$Res> {
  __$$_GdkNetworkEventCopyWithImpl(
      _$_GdkNetworkEvent _value, $Res Function(_$_GdkNetworkEvent) _then)
      : super(_value, (v) => _then(v as _$_GdkNetworkEvent));

  @override
  _$_GdkNetworkEvent get _value => super._value as _$_GdkNetworkEvent;

  @override
  $Res call({
    Object? waitMs = freezed,
    Object? currentState = freezed,
    Object? nextState = freezed,
  }) {
    return _then(_$_GdkNetworkEvent(
      waitMs: waitMs == freezed
          ? _value.waitMs
          : waitMs // ignore: cast_nullable_to_non_nullable
              as int?,
      currentState: currentState == freezed
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as GdkNetworkEventStateEnum?,
      nextState: nextState == freezed
          ? _value.nextState
          : nextState // ignore: cast_nullable_to_non_nullable
              as GdkNetworkEventStateEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkNetworkEvent implements _GdkNetworkEvent {
  const _$_GdkNetworkEvent(
      {@JsonKey(name: 'wait_ms') this.waitMs,
      @JsonKey(name: 'current_state') this.currentState,
      @JsonKey(name: 'next_state') this.nextState});

  factory _$_GdkNetworkEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GdkNetworkEventFromJson(json);

  @override
  @JsonKey(name: 'wait_ms')
  final int? waitMs;
  @override
  @JsonKey(name: 'current_state')
  final GdkNetworkEventStateEnum? currentState;
  @override
  @JsonKey(name: 'next_state')
  final GdkNetworkEventStateEnum? nextState;

  @override
  String toString() {
    return 'GdkNetworkEvent(waitMs: $waitMs, currentState: $currentState, nextState: $nextState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkNetworkEvent &&
            const DeepCollectionEquality().equals(other.waitMs, waitMs) &&
            const DeepCollectionEquality()
                .equals(other.currentState, currentState) &&
            const DeepCollectionEquality().equals(other.nextState, nextState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(waitMs),
      const DeepCollectionEquality().hash(currentState),
      const DeepCollectionEquality().hash(nextState));

  @JsonKey(ignore: true)
  @override
  _$$_GdkNetworkEventCopyWith<_$_GdkNetworkEvent> get copyWith =>
      __$$_GdkNetworkEventCopyWithImpl<_$_GdkNetworkEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkNetworkEventToJson(
      this,
    );
  }
}

abstract class _GdkNetworkEvent implements GdkNetworkEvent {
  const factory _GdkNetworkEvent(
      {@JsonKey(name: 'wait_ms')
          final int? waitMs,
      @JsonKey(name: 'current_state')
          final GdkNetworkEventStateEnum? currentState,
      @JsonKey(name: 'next_state')
          final GdkNetworkEventStateEnum? nextState}) = _$_GdkNetworkEvent;

  factory _GdkNetworkEvent.fromJson(Map<String, dynamic> json) =
      _$_GdkNetworkEvent.fromJson;

  @override
  @JsonKey(name: 'wait_ms')
  int? get waitMs;
  @override
  @JsonKey(name: 'current_state')
  GdkNetworkEventStateEnum? get currentState;
  @override
  @JsonKey(name: 'next_state')
  GdkNetworkEventStateEnum? get nextState;
  @override
  @JsonKey(ignore: true)
  _$$_GdkNetworkEventCopyWith<_$_GdkNetworkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkConvertData _$GdkConvertDataFromJson(Map<String, dynamic> json) {
  return _GdkConvertData.fromJson(json);
}

/// @nodoc
mixin _$GdkConvertData {
  int? get satoshi => throw _privateConstructorUsedError;
  String? get bits => throw _privateConstructorUsedError;
  @JsonKey(name: 'fiat_currenct')
  String? get fiatCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'fiat_rate')
  String? get fiatRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkConvertDataCopyWith<GdkConvertData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkConvertDataCopyWith<$Res> {
  factory $GdkConvertDataCopyWith(
          GdkConvertData value, $Res Function(GdkConvertData) then) =
      _$GdkConvertDataCopyWithImpl<$Res>;
  $Res call(
      {int? satoshi,
      String? bits,
      @JsonKey(name: 'fiat_currenct') String? fiatCurrency,
      @JsonKey(name: 'fiat_rate') String? fiatRate});
}

/// @nodoc
class _$GdkConvertDataCopyWithImpl<$Res>
    implements $GdkConvertDataCopyWith<$Res> {
  _$GdkConvertDataCopyWithImpl(this._value, this._then);

  final GdkConvertData _value;
  // ignore: unused_field
  final $Res Function(GdkConvertData) _then;

  @override
  $Res call({
    Object? satoshi = freezed,
    Object? bits = freezed,
    Object? fiatCurrency = freezed,
    Object? fiatRate = freezed,
  }) {
    return _then(_value.copyWith(
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatCurrency: fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatRate: fiatRate == freezed
          ? _value.fiatRate
          : fiatRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkConvertDataCopyWith<$Res>
    implements $GdkConvertDataCopyWith<$Res> {
  factory _$$_GdkConvertDataCopyWith(
          _$_GdkConvertData value, $Res Function(_$_GdkConvertData) then) =
      __$$_GdkConvertDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? satoshi,
      String? bits,
      @JsonKey(name: 'fiat_currenct') String? fiatCurrency,
      @JsonKey(name: 'fiat_rate') String? fiatRate});
}

/// @nodoc
class __$$_GdkConvertDataCopyWithImpl<$Res>
    extends _$GdkConvertDataCopyWithImpl<$Res>
    implements _$$_GdkConvertDataCopyWith<$Res> {
  __$$_GdkConvertDataCopyWithImpl(
      _$_GdkConvertData _value, $Res Function(_$_GdkConvertData) _then)
      : super(_value, (v) => _then(v as _$_GdkConvertData));

  @override
  _$_GdkConvertData get _value => super._value as _$_GdkConvertData;

  @override
  $Res call({
    Object? satoshi = freezed,
    Object? bits = freezed,
    Object? fiatCurrency = freezed,
    Object? fiatRate = freezed,
  }) {
    return _then(_$_GdkConvertData(
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatCurrency: fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatRate: fiatRate == freezed
          ? _value.fiatRate
          : fiatRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkConvertData extends _GdkConvertData {
  const _$_GdkConvertData(
      {this.satoshi = 0,
      this.bits,
      @JsonKey(name: 'fiat_currenct') this.fiatCurrency,
      @JsonKey(name: 'fiat_rate') this.fiatRate})
      : super._();

  factory _$_GdkConvertData.fromJson(Map<String, dynamic> json) =>
      _$$_GdkConvertDataFromJson(json);

  @override
  @JsonKey()
  final int? satoshi;
  @override
  final String? bits;
  @override
  @JsonKey(name: 'fiat_currenct')
  final String? fiatCurrency;
  @override
  @JsonKey(name: 'fiat_rate')
  final String? fiatRate;

  @override
  String toString() {
    return 'GdkConvertData(satoshi: $satoshi, bits: $bits, fiatCurrency: $fiatCurrency, fiatRate: $fiatRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkConvertData &&
            const DeepCollectionEquality().equals(other.satoshi, satoshi) &&
            const DeepCollectionEquality().equals(other.bits, bits) &&
            const DeepCollectionEquality()
                .equals(other.fiatCurrency, fiatCurrency) &&
            const DeepCollectionEquality().equals(other.fiatRate, fiatRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(satoshi),
      const DeepCollectionEquality().hash(bits),
      const DeepCollectionEquality().hash(fiatCurrency),
      const DeepCollectionEquality().hash(fiatRate));

  @JsonKey(ignore: true)
  @override
  _$$_GdkConvertDataCopyWith<_$_GdkConvertData> get copyWith =>
      __$$_GdkConvertDataCopyWithImpl<_$_GdkConvertData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkConvertDataToJson(
      this,
    );
  }
}

abstract class _GdkConvertData extends GdkConvertData {
  const factory _GdkConvertData(
      {final int? satoshi,
      final String? bits,
      @JsonKey(name: 'fiat_currenct') final String? fiatCurrency,
      @JsonKey(name: 'fiat_rate') final String? fiatRate}) = _$_GdkConvertData;
  const _GdkConvertData._() : super._();

  factory _GdkConvertData.fromJson(Map<String, dynamic> json) =
      _$_GdkConvertData.fromJson;

  @override
  int? get satoshi;
  @override
  String? get bits;
  @override
  @JsonKey(name: 'fiat_currenct')
  String? get fiatCurrency;
  @override
  @JsonKey(name: 'fiat_rate')
  String? get fiatRate;
  @override
  @JsonKey(ignore: true)
  _$$_GdkConvertDataCopyWith<_$_GdkConvertData> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkAmountData _$GdkAmountDataFromJson(Map<String, dynamic> json) {
  return _GdkAmountData.fromJson(json);
}

/// @nodoc
mixin _$GdkAmountData {
  String? get bits => throw _privateConstructorUsedError;
  String? get btc => throw _privateConstructorUsedError;
  String? get fiat => throw _privateConstructorUsedError;
  @JsonKey(name: 'fiat_currency')
  String? get fiatCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'fiat_rate')
  String? get fiatRate => throw _privateConstructorUsedError;
  String? get mbtc => throw _privateConstructorUsedError;
  int? get satoshi => throw _privateConstructorUsedError;
  String? get sats => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  String? get ubtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_current')
  bool? get isCurrent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkAmountDataCopyWith<GdkAmountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkAmountDataCopyWith<$Res> {
  factory $GdkAmountDataCopyWith(
          GdkAmountData value, $Res Function(GdkAmountData) then) =
      _$GdkAmountDataCopyWithImpl<$Res>;
  $Res call(
      {String? bits,
      String? btc,
      String? fiat,
      @JsonKey(name: 'fiat_currency') String? fiatCurrency,
      @JsonKey(name: 'fiat_rate') String? fiatRate,
      String? mbtc,
      int? satoshi,
      String? sats,
      int? subaccount,
      String? ubtc,
      @JsonKey(name: 'is_current') bool? isCurrent});
}

/// @nodoc
class _$GdkAmountDataCopyWithImpl<$Res>
    implements $GdkAmountDataCopyWith<$Res> {
  _$GdkAmountDataCopyWithImpl(this._value, this._then);

  final GdkAmountData _value;
  // ignore: unused_field
  final $Res Function(GdkAmountData) _then;

  @override
  $Res call({
    Object? bits = freezed,
    Object? btc = freezed,
    Object? fiat = freezed,
    Object? fiatCurrency = freezed,
    Object? fiatRate = freezed,
    Object? mbtc = freezed,
    Object? satoshi = freezed,
    Object? sats = freezed,
    Object? subaccount = freezed,
    Object? ubtc = freezed,
    Object? isCurrent = freezed,
  }) {
    return _then(_value.copyWith(
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as String?,
      btc: btc == freezed
          ? _value.btc
          : btc // ignore: cast_nullable_to_non_nullable
              as String?,
      fiat: fiat == freezed
          ? _value.fiat
          : fiat // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatCurrency: fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatRate: fiatRate == freezed
          ? _value.fiatRate
          : fiatRate // ignore: cast_nullable_to_non_nullable
              as String?,
      mbtc: mbtc == freezed
          ? _value.mbtc
          : mbtc // ignore: cast_nullable_to_non_nullable
              as String?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      sats: sats == freezed
          ? _value.sats
          : sats // ignore: cast_nullable_to_non_nullable
              as String?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      ubtc: ubtc == freezed
          ? _value.ubtc
          : ubtc // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrent: isCurrent == freezed
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkAmountDataCopyWith<$Res>
    implements $GdkAmountDataCopyWith<$Res> {
  factory _$$_GdkAmountDataCopyWith(
          _$_GdkAmountData value, $Res Function(_$_GdkAmountData) then) =
      __$$_GdkAmountDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? bits,
      String? btc,
      String? fiat,
      @JsonKey(name: 'fiat_currency') String? fiatCurrency,
      @JsonKey(name: 'fiat_rate') String? fiatRate,
      String? mbtc,
      int? satoshi,
      String? sats,
      int? subaccount,
      String? ubtc,
      @JsonKey(name: 'is_current') bool? isCurrent});
}

/// @nodoc
class __$$_GdkAmountDataCopyWithImpl<$Res>
    extends _$GdkAmountDataCopyWithImpl<$Res>
    implements _$$_GdkAmountDataCopyWith<$Res> {
  __$$_GdkAmountDataCopyWithImpl(
      _$_GdkAmountData _value, $Res Function(_$_GdkAmountData) _then)
      : super(_value, (v) => _then(v as _$_GdkAmountData));

  @override
  _$_GdkAmountData get _value => super._value as _$_GdkAmountData;

  @override
  $Res call({
    Object? bits = freezed,
    Object? btc = freezed,
    Object? fiat = freezed,
    Object? fiatCurrency = freezed,
    Object? fiatRate = freezed,
    Object? mbtc = freezed,
    Object? satoshi = freezed,
    Object? sats = freezed,
    Object? subaccount = freezed,
    Object? ubtc = freezed,
    Object? isCurrent = freezed,
  }) {
    return _then(_$_GdkAmountData(
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as String?,
      btc: btc == freezed
          ? _value.btc
          : btc // ignore: cast_nullable_to_non_nullable
              as String?,
      fiat: fiat == freezed
          ? _value.fiat
          : fiat // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatCurrency: fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatRate: fiatRate == freezed
          ? _value.fiatRate
          : fiatRate // ignore: cast_nullable_to_non_nullable
              as String?,
      mbtc: mbtc == freezed
          ? _value.mbtc
          : mbtc // ignore: cast_nullable_to_non_nullable
              as String?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      sats: sats == freezed
          ? _value.sats
          : sats // ignore: cast_nullable_to_non_nullable
              as String?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      ubtc: ubtc == freezed
          ? _value.ubtc
          : ubtc // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrent: isCurrent == freezed
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkAmountData implements _GdkAmountData {
  const _$_GdkAmountData(
      {this.bits,
      this.btc,
      this.fiat,
      @JsonKey(name: 'fiat_currency') this.fiatCurrency,
      @JsonKey(name: 'fiat_rate') this.fiatRate,
      this.mbtc,
      this.satoshi,
      this.sats,
      this.subaccount,
      this.ubtc,
      @JsonKey(name: 'is_current') this.isCurrent});

  factory _$_GdkAmountData.fromJson(Map<String, dynamic> json) =>
      _$$_GdkAmountDataFromJson(json);

  @override
  final String? bits;
  @override
  final String? btc;
  @override
  final String? fiat;
  @override
  @JsonKey(name: 'fiat_currency')
  final String? fiatCurrency;
  @override
  @JsonKey(name: 'fiat_rate')
  final String? fiatRate;
  @override
  final String? mbtc;
  @override
  final int? satoshi;
  @override
  final String? sats;
  @override
  final int? subaccount;
  @override
  final String? ubtc;
  @override
  @JsonKey(name: 'is_current')
  final bool? isCurrent;

  @override
  String toString() {
    return 'GdkAmountData(bits: $bits, btc: $btc, fiat: $fiat, fiatCurrency: $fiatCurrency, fiatRate: $fiatRate, mbtc: $mbtc, satoshi: $satoshi, sats: $sats, subaccount: $subaccount, ubtc: $ubtc, isCurrent: $isCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkAmountData &&
            const DeepCollectionEquality().equals(other.bits, bits) &&
            const DeepCollectionEquality().equals(other.btc, btc) &&
            const DeepCollectionEquality().equals(other.fiat, fiat) &&
            const DeepCollectionEquality()
                .equals(other.fiatCurrency, fiatCurrency) &&
            const DeepCollectionEquality().equals(other.fiatRate, fiatRate) &&
            const DeepCollectionEquality().equals(other.mbtc, mbtc) &&
            const DeepCollectionEquality().equals(other.satoshi, satoshi) &&
            const DeepCollectionEquality().equals(other.sats, sats) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.ubtc, ubtc) &&
            const DeepCollectionEquality().equals(other.isCurrent, isCurrent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bits),
      const DeepCollectionEquality().hash(btc),
      const DeepCollectionEquality().hash(fiat),
      const DeepCollectionEquality().hash(fiatCurrency),
      const DeepCollectionEquality().hash(fiatRate),
      const DeepCollectionEquality().hash(mbtc),
      const DeepCollectionEquality().hash(satoshi),
      const DeepCollectionEquality().hash(sats),
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(ubtc),
      const DeepCollectionEquality().hash(isCurrent));

  @JsonKey(ignore: true)
  @override
  _$$_GdkAmountDataCopyWith<_$_GdkAmountData> get copyWith =>
      __$$_GdkAmountDataCopyWithImpl<_$_GdkAmountData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkAmountDataToJson(
      this,
    );
  }
}

abstract class _GdkAmountData implements GdkAmountData {
  const factory _GdkAmountData(
      {final String? bits,
      final String? btc,
      final String? fiat,
      @JsonKey(name: 'fiat_currency') final String? fiatCurrency,
      @JsonKey(name: 'fiat_rate') final String? fiatRate,
      final String? mbtc,
      final int? satoshi,
      final String? sats,
      final int? subaccount,
      final String? ubtc,
      @JsonKey(name: 'is_current') final bool? isCurrent}) = _$_GdkAmountData;

  factory _GdkAmountData.fromJson(Map<String, dynamic> json) =
      _$_GdkAmountData.fromJson;

  @override
  String? get bits;
  @override
  String? get btc;
  @override
  String? get fiat;
  @override
  @JsonKey(name: 'fiat_currency')
  String? get fiatCurrency;
  @override
  @JsonKey(name: 'fiat_rate')
  String? get fiatRate;
  @override
  String? get mbtc;
  @override
  int? get satoshi;
  @override
  String? get sats;
  @override
  int? get subaccount;
  @override
  String? get ubtc;
  @override
  @JsonKey(name: 'is_current')
  bool? get isCurrent;
  @override
  @JsonKey(ignore: true)
  _$$_GdkAmountDataCopyWith<_$_GdkAmountData> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkGetUnspentOutputs _$GdkGetUnspentOutputsFromJson(Map<String, dynamic> json) {
  return _GdkGetUnspentOutputs.fromJson(json);
}

/// @nodoc
mixin _$GdkGetUnspentOutputs {
  int? get subaccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_confs')
  int? get numConfs => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_coins')
  bool? get allCoins => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  int? get expiredAt => throw _privateConstructorUsedError;
  bool? get confidential => throw _privateConstructorUsedError;
  @JsonKey(name: 'dust_limit')
  int? get dustLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkGetUnspentOutputsCopyWith<GdkGetUnspentOutputs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkGetUnspentOutputsCopyWith<$Res> {
  factory $GdkGetUnspentOutputsCopyWith(GdkGetUnspentOutputs value,
          $Res Function(GdkGetUnspentOutputs) then) =
      _$GdkGetUnspentOutputsCopyWithImpl<$Res>;
  $Res call(
      {int? subaccount,
      @JsonKey(name: 'num_confs') int? numConfs,
      @JsonKey(name: 'all_coins') bool? allCoins,
      @JsonKey(name: 'expired_at') int? expiredAt,
      bool? confidential,
      @JsonKey(name: 'dust_limit') int? dustLimit});
}

/// @nodoc
class _$GdkGetUnspentOutputsCopyWithImpl<$Res>
    implements $GdkGetUnspentOutputsCopyWith<$Res> {
  _$GdkGetUnspentOutputsCopyWithImpl(this._value, this._then);

  final GdkGetUnspentOutputs _value;
  // ignore: unused_field
  final $Res Function(GdkGetUnspentOutputs) _then;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? numConfs = freezed,
    Object? allCoins = freezed,
    Object? expiredAt = freezed,
    Object? confidential = freezed,
    Object? dustLimit = freezed,
  }) {
    return _then(_value.copyWith(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      numConfs: numConfs == freezed
          ? _value.numConfs
          : numConfs // ignore: cast_nullable_to_non_nullable
              as int?,
      allCoins: allCoins == freezed
          ? _value.allCoins
          : allCoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      confidential: confidential == freezed
          ? _value.confidential
          : confidential // ignore: cast_nullable_to_non_nullable
              as bool?,
      dustLimit: dustLimit == freezed
          ? _value.dustLimit
          : dustLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkGetUnspentOutputsCopyWith<$Res>
    implements $GdkGetUnspentOutputsCopyWith<$Res> {
  factory _$$_GdkGetUnspentOutputsCopyWith(_$_GdkGetUnspentOutputs value,
          $Res Function(_$_GdkGetUnspentOutputs) then) =
      __$$_GdkGetUnspentOutputsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? subaccount,
      @JsonKey(name: 'num_confs') int? numConfs,
      @JsonKey(name: 'all_coins') bool? allCoins,
      @JsonKey(name: 'expired_at') int? expiredAt,
      bool? confidential,
      @JsonKey(name: 'dust_limit') int? dustLimit});
}

/// @nodoc
class __$$_GdkGetUnspentOutputsCopyWithImpl<$Res>
    extends _$GdkGetUnspentOutputsCopyWithImpl<$Res>
    implements _$$_GdkGetUnspentOutputsCopyWith<$Res> {
  __$$_GdkGetUnspentOutputsCopyWithImpl(_$_GdkGetUnspentOutputs _value,
      $Res Function(_$_GdkGetUnspentOutputs) _then)
      : super(_value, (v) => _then(v as _$_GdkGetUnspentOutputs));

  @override
  _$_GdkGetUnspentOutputs get _value => super._value as _$_GdkGetUnspentOutputs;

  @override
  $Res call({
    Object? subaccount = freezed,
    Object? numConfs = freezed,
    Object? allCoins = freezed,
    Object? expiredAt = freezed,
    Object? confidential = freezed,
    Object? dustLimit = freezed,
  }) {
    return _then(_$_GdkGetUnspentOutputs(
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      numConfs: numConfs == freezed
          ? _value.numConfs
          : numConfs // ignore: cast_nullable_to_non_nullable
              as int?,
      allCoins: allCoins == freezed
          ? _value.allCoins
          : allCoins // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      confidential: confidential == freezed
          ? _value.confidential
          : confidential // ignore: cast_nullable_to_non_nullable
              as bool?,
      dustLimit: dustLimit == freezed
          ? _value.dustLimit
          : dustLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkGetUnspentOutputs extends _GdkGetUnspentOutputs {
  const _$_GdkGetUnspentOutputs(
      {this.subaccount = 0,
      @JsonKey(name: 'num_confs') this.numConfs = 0,
      @JsonKey(name: 'all_coins') this.allCoins = false,
      @JsonKey(name: 'expired_at') this.expiredAt,
      this.confidential = false,
      @JsonKey(name: 'dust_limit') this.dustLimit})
      : super._();

  factory _$_GdkGetUnspentOutputs.fromJson(Map<String, dynamic> json) =>
      _$$_GdkGetUnspentOutputsFromJson(json);

  @override
  @JsonKey()
  final int? subaccount;
  @override
  @JsonKey(name: 'num_confs')
  final int? numConfs;
  @override
  @JsonKey(name: 'all_coins')
  final bool? allCoins;
  @override
  @JsonKey(name: 'expired_at')
  final int? expiredAt;
  @override
  @JsonKey()
  final bool? confidential;
  @override
  @JsonKey(name: 'dust_limit')
  final int? dustLimit;

  @override
  String toString() {
    return 'GdkGetUnspentOutputs(subaccount: $subaccount, numConfs: $numConfs, allCoins: $allCoins, expiredAt: $expiredAt, confidential: $confidential, dustLimit: $dustLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkGetUnspentOutputs &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.numConfs, numConfs) &&
            const DeepCollectionEquality().equals(other.allCoins, allCoins) &&
            const DeepCollectionEquality().equals(other.expiredAt, expiredAt) &&
            const DeepCollectionEquality()
                .equals(other.confidential, confidential) &&
            const DeepCollectionEquality().equals(other.dustLimit, dustLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subaccount),
      const DeepCollectionEquality().hash(numConfs),
      const DeepCollectionEquality().hash(allCoins),
      const DeepCollectionEquality().hash(expiredAt),
      const DeepCollectionEquality().hash(confidential),
      const DeepCollectionEquality().hash(dustLimit));

  @JsonKey(ignore: true)
  @override
  _$$_GdkGetUnspentOutputsCopyWith<_$_GdkGetUnspentOutputs> get copyWith =>
      __$$_GdkGetUnspentOutputsCopyWithImpl<_$_GdkGetUnspentOutputs>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkGetUnspentOutputsToJson(
      this,
    );
  }
}

abstract class _GdkGetUnspentOutputs extends GdkGetUnspentOutputs {
  const factory _GdkGetUnspentOutputs(
          {final int? subaccount,
          @JsonKey(name: 'num_confs') final int? numConfs,
          @JsonKey(name: 'all_coins') final bool? allCoins,
          @JsonKey(name: 'expired_at') final int? expiredAt,
          final bool? confidential,
          @JsonKey(name: 'dust_limit') final int? dustLimit}) =
      _$_GdkGetUnspentOutputs;
  const _GdkGetUnspentOutputs._() : super._();

  factory _GdkGetUnspentOutputs.fromJson(Map<String, dynamic> json) =
      _$_GdkGetUnspentOutputs.fromJson;

  @override
  int? get subaccount;
  @override
  @JsonKey(name: 'num_confs')
  int? get numConfs;
  @override
  @JsonKey(name: 'all_coins')
  bool? get allCoins;
  @override
  @JsonKey(name: 'expired_at')
  int? get expiredAt;
  @override
  bool? get confidential;
  @override
  @JsonKey(name: 'dust_limit')
  int? get dustLimit;
  @override
  @JsonKey(ignore: true)
  _$$_GdkGetUnspentOutputsCopyWith<_$_GdkGetUnspentOutputs> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkUnspentOutputsReply _$GdkUnspentOutputsReplyFromJson(
    Map<String, dynamic> json) {
  return _GdkUnspentOutputsReply.fromJson(json);
}

/// @nodoc
mixin _$GdkUnspentOutputsReply {
  @JsonKey(name: 'unspent_outputs')
  Map<String, List<GdkUnspentOutputs>>? get unsentOutputs =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkUnspentOutputsReplyCopyWith<GdkUnspentOutputsReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkUnspentOutputsReplyCopyWith<$Res> {
  factory $GdkUnspentOutputsReplyCopyWith(GdkUnspentOutputsReply value,
          $Res Function(GdkUnspentOutputsReply) then) =
      _$GdkUnspentOutputsReplyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'unspent_outputs')
          Map<String, List<GdkUnspentOutputs>>? unsentOutputs});
}

/// @nodoc
class _$GdkUnspentOutputsReplyCopyWithImpl<$Res>
    implements $GdkUnspentOutputsReplyCopyWith<$Res> {
  _$GdkUnspentOutputsReplyCopyWithImpl(this._value, this._then);

  final GdkUnspentOutputsReply _value;
  // ignore: unused_field
  final $Res Function(GdkUnspentOutputsReply) _then;

  @override
  $Res call({
    Object? unsentOutputs = freezed,
  }) {
    return _then(_value.copyWith(
      unsentOutputs: unsentOutputs == freezed
          ? _value.unsentOutputs
          : unsentOutputs // ignore: cast_nullable_to_non_nullable
              as Map<String, List<GdkUnspentOutputs>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkUnspentOutputsReplyCopyWith<$Res>
    implements $GdkUnspentOutputsReplyCopyWith<$Res> {
  factory _$$_GdkUnspentOutputsReplyCopyWith(_$_GdkUnspentOutputsReply value,
          $Res Function(_$_GdkUnspentOutputsReply) then) =
      __$$_GdkUnspentOutputsReplyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'unspent_outputs')
          Map<String, List<GdkUnspentOutputs>>? unsentOutputs});
}

/// @nodoc
class __$$_GdkUnspentOutputsReplyCopyWithImpl<$Res>
    extends _$GdkUnspentOutputsReplyCopyWithImpl<$Res>
    implements _$$_GdkUnspentOutputsReplyCopyWith<$Res> {
  __$$_GdkUnspentOutputsReplyCopyWithImpl(_$_GdkUnspentOutputsReply _value,
      $Res Function(_$_GdkUnspentOutputsReply) _then)
      : super(_value, (v) => _then(v as _$_GdkUnspentOutputsReply));

  @override
  _$_GdkUnspentOutputsReply get _value =>
      super._value as _$_GdkUnspentOutputsReply;

  @override
  $Res call({
    Object? unsentOutputs = freezed,
  }) {
    return _then(_$_GdkUnspentOutputsReply(
      unsentOutputs: unsentOutputs == freezed
          ? _value._unsentOutputs
          : unsentOutputs // ignore: cast_nullable_to_non_nullable
              as Map<String, List<GdkUnspentOutputs>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkUnspentOutputsReply implements _GdkUnspentOutputsReply {
  const _$_GdkUnspentOutputsReply(
      {@JsonKey(name: 'unspent_outputs')
          final Map<String, List<GdkUnspentOutputs>>? unsentOutputs})
      : _unsentOutputs = unsentOutputs;

  factory _$_GdkUnspentOutputsReply.fromJson(Map<String, dynamic> json) =>
      _$$_GdkUnspentOutputsReplyFromJson(json);

  final Map<String, List<GdkUnspentOutputs>>? _unsentOutputs;
  @override
  @JsonKey(name: 'unspent_outputs')
  Map<String, List<GdkUnspentOutputs>>? get unsentOutputs {
    final value = _unsentOutputs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GdkUnspentOutputsReply(unsentOutputs: $unsentOutputs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkUnspentOutputsReply &&
            const DeepCollectionEquality()
                .equals(other._unsentOutputs, _unsentOutputs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_unsentOutputs));

  @JsonKey(ignore: true)
  @override
  _$$_GdkUnspentOutputsReplyCopyWith<_$_GdkUnspentOutputsReply> get copyWith =>
      __$$_GdkUnspentOutputsReplyCopyWithImpl<_$_GdkUnspentOutputsReply>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkUnspentOutputsReplyToJson(
      this,
    );
  }
}

abstract class _GdkUnspentOutputsReply implements GdkUnspentOutputsReply {
  const factory _GdkUnspentOutputsReply(
          {@JsonKey(name: 'unspent_outputs')
              final Map<String, List<GdkUnspentOutputs>>? unsentOutputs}) =
      _$_GdkUnspentOutputsReply;

  factory _GdkUnspentOutputsReply.fromJson(Map<String, dynamic> json) =
      _$_GdkUnspentOutputsReply.fromJson;

  @override
  @JsonKey(name: 'unspent_outputs')
  Map<String, List<GdkUnspentOutputs>>? get unsentOutputs;
  @override
  @JsonKey(ignore: true)
  _$$_GdkUnspentOutputsReplyCopyWith<_$_GdkUnspentOutputsReply> get copyWith =>
      throw _privateConstructorUsedError;
}

GdkUnspentOutputs _$GdkUnspentOutputsFromJson(Map<String, dynamic> json) {
  return _GdkUnspentOutputs.fromJson(json);
}

/// @nodoc
mixin _$GdkUnspentOutputs {
  @JsonKey(name: 'address_type')
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_height')
  int? get blockHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  bool? get isInternal => throw _privateConstructorUsedError;
  int? get pointer => throw _privateConstructorUsedError;
  @JsonKey(name: 'pt_idx')
  int? get ptIdx => throw _privateConstructorUsedError;
  int? get satoshi => throw _privateConstructorUsedError;
  int? get subaccount => throw _privateConstructorUsedError;
  String? get txhash => throw _privateConstructorUsedError;
  @JsonKey(name: 'prevout_script')
  String? get prevoutScript => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_path')
  List<int>? get userPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_key')
  String? get publicKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_height')
  int? get expiryHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'script_type')
  int? get scriptType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_status')
  int? get userStatus => throw _privateConstructorUsedError;
  int? get subtype => throw _privateConstructorUsedError; // Liquid specific
  bool? get confidential => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assetblinder')
  String? get assetBlinder => throw _privateConstructorUsedError;
  @JsonKey(name: 'amountblinder')
  String? get amountBlinder => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_tag')
  String? get assetTag => throw _privateConstructorUsedError;
  String? get commitment => throw _privateConstructorUsedError;
  @JsonKey(name: 'nonce_commitment')
  String? get nonceCommitment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GdkUnspentOutputsCopyWith<GdkUnspentOutputs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdkUnspentOutputsCopyWith<$Res> {
  factory $GdkUnspentOutputsCopyWith(
          GdkUnspentOutputs value, $Res Function(GdkUnspentOutputs) then) =
      _$GdkUnspentOutputsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address_type') String? addressType,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'is_internal') bool? isInternal,
      int? pointer,
      @JsonKey(name: 'pt_idx') int? ptIdx,
      int? satoshi,
      int? subaccount,
      String? txhash,
      @JsonKey(name: 'prevout_script') String? prevoutScript,
      @JsonKey(name: 'user_path') List<int>? userPath,
      @JsonKey(name: 'public_key') String? publicKey,
      @JsonKey(name: 'expiry_height') int? expiryHeight,
      @JsonKey(name: 'script_type') int? scriptType,
      @JsonKey(name: 'user_status') int? userStatus,
      int? subtype,
      bool? confidential,
      @JsonKey(name: 'asset_id') String? assetId,
      @JsonKey(name: 'assetblinder') String? assetBlinder,
      @JsonKey(name: 'amountblinder') String? amountBlinder,
      @JsonKey(name: 'asset_tag') String? assetTag,
      String? commitment,
      @JsonKey(name: 'nonce_commitment') String? nonceCommitment});
}

/// @nodoc
class _$GdkUnspentOutputsCopyWithImpl<$Res>
    implements $GdkUnspentOutputsCopyWith<$Res> {
  _$GdkUnspentOutputsCopyWithImpl(this._value, this._then);

  final GdkUnspentOutputs _value;
  // ignore: unused_field
  final $Res Function(GdkUnspentOutputs) _then;

  @override
  $Res call({
    Object? addressType = freezed,
    Object? blockHeight = freezed,
    Object? isInternal = freezed,
    Object? pointer = freezed,
    Object? ptIdx = freezed,
    Object? satoshi = freezed,
    Object? subaccount = freezed,
    Object? txhash = freezed,
    Object? prevoutScript = freezed,
    Object? userPath = freezed,
    Object? publicKey = freezed,
    Object? expiryHeight = freezed,
    Object? scriptType = freezed,
    Object? userStatus = freezed,
    Object? subtype = freezed,
    Object? confidential = freezed,
    Object? assetId = freezed,
    Object? assetBlinder = freezed,
    Object? amountBlinder = freezed,
    Object? assetTag = freezed,
    Object? commitment = freezed,
    Object? nonceCommitment = freezed,
  }) {
    return _then(_value.copyWith(
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: isInternal == freezed
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      ptIdx: ptIdx == freezed
          ? _value.ptIdx
          : ptIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      prevoutScript: prevoutScript == freezed
          ? _value.prevoutScript
          : prevoutScript // ignore: cast_nullable_to_non_nullable
              as String?,
      userPath: userPath == freezed
          ? _value.userPath
          : userPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryHeight: expiryHeight == freezed
          ? _value.expiryHeight
          : expiryHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      scriptType: scriptType == freezed
          ? _value.scriptType
          : scriptType // ignore: cast_nullable_to_non_nullable
              as int?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as int?,
      confidential: confidential == freezed
          ? _value.confidential
          : confidential // ignore: cast_nullable_to_non_nullable
              as bool?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetBlinder: assetBlinder == freezed
          ? _value.assetBlinder
          : assetBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
      amountBlinder: amountBlinder == freezed
          ? _value.amountBlinder
          : amountBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTag: assetTag == freezed
          ? _value.assetTag
          : assetTag // ignore: cast_nullable_to_non_nullable
              as String?,
      commitment: commitment == freezed
          ? _value.commitment
          : commitment // ignore: cast_nullable_to_non_nullable
              as String?,
      nonceCommitment: nonceCommitment == freezed
          ? _value.nonceCommitment
          : nonceCommitment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GdkUnspentOutputsCopyWith<$Res>
    implements $GdkUnspentOutputsCopyWith<$Res> {
  factory _$$_GdkUnspentOutputsCopyWith(_$_GdkUnspentOutputs value,
          $Res Function(_$_GdkUnspentOutputs) then) =
      __$$_GdkUnspentOutputsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address_type') String? addressType,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'is_internal') bool? isInternal,
      int? pointer,
      @JsonKey(name: 'pt_idx') int? ptIdx,
      int? satoshi,
      int? subaccount,
      String? txhash,
      @JsonKey(name: 'prevout_script') String? prevoutScript,
      @JsonKey(name: 'user_path') List<int>? userPath,
      @JsonKey(name: 'public_key') String? publicKey,
      @JsonKey(name: 'expiry_height') int? expiryHeight,
      @JsonKey(name: 'script_type') int? scriptType,
      @JsonKey(name: 'user_status') int? userStatus,
      int? subtype,
      bool? confidential,
      @JsonKey(name: 'asset_id') String? assetId,
      @JsonKey(name: 'assetblinder') String? assetBlinder,
      @JsonKey(name: 'amountblinder') String? amountBlinder,
      @JsonKey(name: 'asset_tag') String? assetTag,
      String? commitment,
      @JsonKey(name: 'nonce_commitment') String? nonceCommitment});
}

/// @nodoc
class __$$_GdkUnspentOutputsCopyWithImpl<$Res>
    extends _$GdkUnspentOutputsCopyWithImpl<$Res>
    implements _$$_GdkUnspentOutputsCopyWith<$Res> {
  __$$_GdkUnspentOutputsCopyWithImpl(
      _$_GdkUnspentOutputs _value, $Res Function(_$_GdkUnspentOutputs) _then)
      : super(_value, (v) => _then(v as _$_GdkUnspentOutputs));

  @override
  _$_GdkUnspentOutputs get _value => super._value as _$_GdkUnspentOutputs;

  @override
  $Res call({
    Object? addressType = freezed,
    Object? blockHeight = freezed,
    Object? isInternal = freezed,
    Object? pointer = freezed,
    Object? ptIdx = freezed,
    Object? satoshi = freezed,
    Object? subaccount = freezed,
    Object? txhash = freezed,
    Object? prevoutScript = freezed,
    Object? userPath = freezed,
    Object? publicKey = freezed,
    Object? expiryHeight = freezed,
    Object? scriptType = freezed,
    Object? userStatus = freezed,
    Object? subtype = freezed,
    Object? confidential = freezed,
    Object? assetId = freezed,
    Object? assetBlinder = freezed,
    Object? amountBlinder = freezed,
    Object? assetTag = freezed,
    Object? commitment = freezed,
    Object? nonceCommitment = freezed,
  }) {
    return _then(_$_GdkUnspentOutputs(
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      blockHeight: blockHeight == freezed
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: isInternal == freezed
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      pointer: pointer == freezed
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as int?,
      ptIdx: ptIdx == freezed
          ? _value.ptIdx
          : ptIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      satoshi: satoshi == freezed
          ? _value.satoshi
          : satoshi // ignore: cast_nullable_to_non_nullable
              as int?,
      subaccount: subaccount == freezed
          ? _value.subaccount
          : subaccount // ignore: cast_nullable_to_non_nullable
              as int?,
      txhash: txhash == freezed
          ? _value.txhash
          : txhash // ignore: cast_nullable_to_non_nullable
              as String?,
      prevoutScript: prevoutScript == freezed
          ? _value.prevoutScript
          : prevoutScript // ignore: cast_nullable_to_non_nullable
              as String?,
      userPath: userPath == freezed
          ? _value._userPath
          : userPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryHeight: expiryHeight == freezed
          ? _value.expiryHeight
          : expiryHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      scriptType: scriptType == freezed
          ? _value.scriptType
          : scriptType // ignore: cast_nullable_to_non_nullable
              as int?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as int?,
      confidential: confidential == freezed
          ? _value.confidential
          : confidential // ignore: cast_nullable_to_non_nullable
              as bool?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetBlinder: assetBlinder == freezed
          ? _value.assetBlinder
          : assetBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
      amountBlinder: amountBlinder == freezed
          ? _value.amountBlinder
          : amountBlinder // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTag: assetTag == freezed
          ? _value.assetTag
          : assetTag // ignore: cast_nullable_to_non_nullable
              as String?,
      commitment: commitment == freezed
          ? _value.commitment
          : commitment // ignore: cast_nullable_to_non_nullable
              as String?,
      nonceCommitment: nonceCommitment == freezed
          ? _value.nonceCommitment
          : nonceCommitment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GdkUnspentOutputs implements _GdkUnspentOutputs {
  const _$_GdkUnspentOutputs(
      {@JsonKey(name: 'address_type') this.addressType,
      @JsonKey(name: 'block_height') this.blockHeight,
      @JsonKey(name: 'is_internal') this.isInternal,
      this.pointer,
      @JsonKey(name: 'pt_idx') this.ptIdx,
      this.satoshi,
      this.subaccount,
      this.txhash,
      @JsonKey(name: 'prevout_script') this.prevoutScript,
      @JsonKey(name: 'user_path') final List<int>? userPath,
      @JsonKey(name: 'public_key') this.publicKey,
      @JsonKey(name: 'expiry_height') this.expiryHeight,
      @JsonKey(name: 'script_type') this.scriptType,
      @JsonKey(name: 'user_status') this.userStatus,
      this.subtype,
      this.confidential,
      @JsonKey(name: 'asset_id') this.assetId,
      @JsonKey(name: 'assetblinder') this.assetBlinder,
      @JsonKey(name: 'amountblinder') this.amountBlinder,
      @JsonKey(name: 'asset_tag') this.assetTag,
      this.commitment,
      @JsonKey(name: 'nonce_commitment') this.nonceCommitment})
      : _userPath = userPath;

  factory _$_GdkUnspentOutputs.fromJson(Map<String, dynamic> json) =>
      _$$_GdkUnspentOutputsFromJson(json);

  @override
  @JsonKey(name: 'address_type')
  final String? addressType;
  @override
  @JsonKey(name: 'block_height')
  final int? blockHeight;
  @override
  @JsonKey(name: 'is_internal')
  final bool? isInternal;
  @override
  final int? pointer;
  @override
  @JsonKey(name: 'pt_idx')
  final int? ptIdx;
  @override
  final int? satoshi;
  @override
  final int? subaccount;
  @override
  final String? txhash;
  @override
  @JsonKey(name: 'prevout_script')
  final String? prevoutScript;
  final List<int>? _userPath;
  @override
  @JsonKey(name: 'user_path')
  List<int>? get userPath {
    final value = _userPath;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'public_key')
  final String? publicKey;
  @override
  @JsonKey(name: 'expiry_height')
  final int? expiryHeight;
  @override
  @JsonKey(name: 'script_type')
  final int? scriptType;
  @override
  @JsonKey(name: 'user_status')
  final int? userStatus;
  @override
  final int? subtype;
// Liquid specific
  @override
  final bool? confidential;
  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @override
  @JsonKey(name: 'assetblinder')
  final String? assetBlinder;
  @override
  @JsonKey(name: 'amountblinder')
  final String? amountBlinder;
  @override
  @JsonKey(name: 'asset_tag')
  final String? assetTag;
  @override
  final String? commitment;
  @override
  @JsonKey(name: 'nonce_commitment')
  final String? nonceCommitment;

  @override
  String toString() {
    return 'GdkUnspentOutputs(addressType: $addressType, blockHeight: $blockHeight, isInternal: $isInternal, pointer: $pointer, ptIdx: $ptIdx, satoshi: $satoshi, subaccount: $subaccount, txhash: $txhash, prevoutScript: $prevoutScript, userPath: $userPath, publicKey: $publicKey, expiryHeight: $expiryHeight, scriptType: $scriptType, userStatus: $userStatus, subtype: $subtype, confidential: $confidential, assetId: $assetId, assetBlinder: $assetBlinder, amountBlinder: $amountBlinder, assetTag: $assetTag, commitment: $commitment, nonceCommitment: $nonceCommitment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GdkUnspentOutputs &&
            const DeepCollectionEquality()
                .equals(other.addressType, addressType) &&
            const DeepCollectionEquality()
                .equals(other.blockHeight, blockHeight) &&
            const DeepCollectionEquality()
                .equals(other.isInternal, isInternal) &&
            const DeepCollectionEquality().equals(other.pointer, pointer) &&
            const DeepCollectionEquality().equals(other.ptIdx, ptIdx) &&
            const DeepCollectionEquality().equals(other.satoshi, satoshi) &&
            const DeepCollectionEquality()
                .equals(other.subaccount, subaccount) &&
            const DeepCollectionEquality().equals(other.txhash, txhash) &&
            const DeepCollectionEquality()
                .equals(other.prevoutScript, prevoutScript) &&
            const DeepCollectionEquality().equals(other._userPath, _userPath) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality()
                .equals(other.expiryHeight, expiryHeight) &&
            const DeepCollectionEquality()
                .equals(other.scriptType, scriptType) &&
            const DeepCollectionEquality()
                .equals(other.userStatus, userStatus) &&
            const DeepCollectionEquality().equals(other.subtype, subtype) &&
            const DeepCollectionEquality()
                .equals(other.confidential, confidential) &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality()
                .equals(other.assetBlinder, assetBlinder) &&
            const DeepCollectionEquality()
                .equals(other.amountBlinder, amountBlinder) &&
            const DeepCollectionEquality().equals(other.assetTag, assetTag) &&
            const DeepCollectionEquality()
                .equals(other.commitment, commitment) &&
            const DeepCollectionEquality()
                .equals(other.nonceCommitment, nonceCommitment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(addressType),
        const DeepCollectionEquality().hash(blockHeight),
        const DeepCollectionEquality().hash(isInternal),
        const DeepCollectionEquality().hash(pointer),
        const DeepCollectionEquality().hash(ptIdx),
        const DeepCollectionEquality().hash(satoshi),
        const DeepCollectionEquality().hash(subaccount),
        const DeepCollectionEquality().hash(txhash),
        const DeepCollectionEquality().hash(prevoutScript),
        const DeepCollectionEquality().hash(_userPath),
        const DeepCollectionEquality().hash(publicKey),
        const DeepCollectionEquality().hash(expiryHeight),
        const DeepCollectionEquality().hash(scriptType),
        const DeepCollectionEquality().hash(userStatus),
        const DeepCollectionEquality().hash(subtype),
        const DeepCollectionEquality().hash(confidential),
        const DeepCollectionEquality().hash(assetId),
        const DeepCollectionEquality().hash(assetBlinder),
        const DeepCollectionEquality().hash(amountBlinder),
        const DeepCollectionEquality().hash(assetTag),
        const DeepCollectionEquality().hash(commitment),
        const DeepCollectionEquality().hash(nonceCommitment)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_GdkUnspentOutputsCopyWith<_$_GdkUnspentOutputs> get copyWith =>
      __$$_GdkUnspentOutputsCopyWithImpl<_$_GdkUnspentOutputs>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GdkUnspentOutputsToJson(
      this,
    );
  }
}

abstract class _GdkUnspentOutputs implements GdkUnspentOutputs {
  const factory _GdkUnspentOutputs(
          {@JsonKey(name: 'address_type') final String? addressType,
          @JsonKey(name: 'block_height') final int? blockHeight,
          @JsonKey(name: 'is_internal') final bool? isInternal,
          final int? pointer,
          @JsonKey(name: 'pt_idx') final int? ptIdx,
          final int? satoshi,
          final int? subaccount,
          final String? txhash,
          @JsonKey(name: 'prevout_script') final String? prevoutScript,
          @JsonKey(name: 'user_path') final List<int>? userPath,
          @JsonKey(name: 'public_key') final String? publicKey,
          @JsonKey(name: 'expiry_height') final int? expiryHeight,
          @JsonKey(name: 'script_type') final int? scriptType,
          @JsonKey(name: 'user_status') final int? userStatus,
          final int? subtype,
          final bool? confidential,
          @JsonKey(name: 'asset_id') final String? assetId,
          @JsonKey(name: 'assetblinder') final String? assetBlinder,
          @JsonKey(name: 'amountblinder') final String? amountBlinder,
          @JsonKey(name: 'asset_tag') final String? assetTag,
          final String? commitment,
          @JsonKey(name: 'nonce_commitment') final String? nonceCommitment}) =
      _$_GdkUnspentOutputs;

  factory _GdkUnspentOutputs.fromJson(Map<String, dynamic> json) =
      _$_GdkUnspentOutputs.fromJson;

  @override
  @JsonKey(name: 'address_type')
  String? get addressType;
  @override
  @JsonKey(name: 'block_height')
  int? get blockHeight;
  @override
  @JsonKey(name: 'is_internal')
  bool? get isInternal;
  @override
  int? get pointer;
  @override
  @JsonKey(name: 'pt_idx')
  int? get ptIdx;
  @override
  int? get satoshi;
  @override
  int? get subaccount;
  @override
  String? get txhash;
  @override
  @JsonKey(name: 'prevout_script')
  String? get prevoutScript;
  @override
  @JsonKey(name: 'user_path')
  List<int>? get userPath;
  @override
  @JsonKey(name: 'public_key')
  String? get publicKey;
  @override
  @JsonKey(name: 'expiry_height')
  int? get expiryHeight;
  @override
  @JsonKey(name: 'script_type')
  int? get scriptType;
  @override
  @JsonKey(name: 'user_status')
  int? get userStatus;
  @override
  int? get subtype;
  @override // Liquid specific
  bool? get confidential;
  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  @JsonKey(name: 'assetblinder')
  String? get assetBlinder;
  @override
  @JsonKey(name: 'amountblinder')
  String? get amountBlinder;
  @override
  @JsonKey(name: 'asset_tag')
  String? get assetTag;
  @override
  String? get commitment;
  @override
  @JsonKey(name: 'nonce_commitment')
  String? get nonceCommitment;
  @override
  @JsonKey(ignore: true)
  _$$_GdkUnspentOutputsCopyWith<_$_GdkUnspentOutputs> get copyWith =>
      throw _privateConstructorUsedError;
}

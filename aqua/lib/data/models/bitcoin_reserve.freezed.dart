// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bitcoin_reserve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  @JsonKey(name: "return_code")
  BrResponseStatus? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "return_code") BrResponseStatus? code, String? message});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as BrResponseStatus?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "return_code") BrResponseStatus? code, String? message});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, (v) => _then(v as _$_Status));

  @override
  _$_Status get _value => super._value as _$_Status;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Status(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as BrResponseStatus?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status({@JsonKey(name: "return_code") this.code, this.message});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  @JsonKey(name: "return_code")
  final BrResponseStatus? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Status(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {@JsonKey(name: "return_code") final BrResponseStatus? code,
      final String? message}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  @JsonKey(name: "return_code")
  BrResponseStatus? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

BrUserBalanceResponse _$BrUserBalanceResponseFromJson(
    Map<String, dynamic> json) {
  return _BrUserBalanceResponse.fromJson(json);
}

/// @nodoc
mixin _$BrUserBalanceResponse {
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "response_data")
  List<UserBalanceItem?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrUserBalanceResponseCopyWith<BrUserBalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrUserBalanceResponseCopyWith<$Res> {
  factory $BrUserBalanceResponseCopyWith(BrUserBalanceResponse value,
          $Res Function(BrUserBalanceResponse) then) =
      _$BrUserBalanceResponseCopyWithImpl<$Res>;
  $Res call(
      {Status? status,
      @JsonKey(name: "response_data") List<UserBalanceItem?>? data});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$BrUserBalanceResponseCopyWithImpl<$Res>
    implements $BrUserBalanceResponseCopyWith<$Res> {
  _$BrUserBalanceResponseCopyWithImpl(this._value, this._then);

  final BrUserBalanceResponse _value;
  // ignore: unused_field
  final $Res Function(BrUserBalanceResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserBalanceItem?>?,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_BrUserBalanceResponseCopyWith<$Res>
    implements $BrUserBalanceResponseCopyWith<$Res> {
  factory _$$_BrUserBalanceResponseCopyWith(_$_BrUserBalanceResponse value,
          $Res Function(_$_BrUserBalanceResponse) then) =
      __$$_BrUserBalanceResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status? status,
      @JsonKey(name: "response_data") List<UserBalanceItem?>? data});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_BrUserBalanceResponseCopyWithImpl<$Res>
    extends _$BrUserBalanceResponseCopyWithImpl<$Res>
    implements _$$_BrUserBalanceResponseCopyWith<$Res> {
  __$$_BrUserBalanceResponseCopyWithImpl(_$_BrUserBalanceResponse _value,
      $Res Function(_$_BrUserBalanceResponse) _then)
      : super(_value, (v) => _then(v as _$_BrUserBalanceResponse));

  @override
  _$_BrUserBalanceResponse get _value =>
      super._value as _$_BrUserBalanceResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BrUserBalanceResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserBalanceItem?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrUserBalanceResponse implements _BrUserBalanceResponse {
  const _$_BrUserBalanceResponse(
      {this.status,
      @JsonKey(name: "response_data") final List<UserBalanceItem?>? data})
      : _data = data;

  factory _$_BrUserBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BrUserBalanceResponseFromJson(json);

  @override
  final Status? status;
  final List<UserBalanceItem?>? _data;
  @override
  @JsonKey(name: "response_data")
  List<UserBalanceItem?>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrUserBalanceResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrUserBalanceResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_BrUserBalanceResponseCopyWith<_$_BrUserBalanceResponse> get copyWith =>
      __$$_BrUserBalanceResponseCopyWithImpl<_$_BrUserBalanceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrUserBalanceResponseToJson(
      this,
    );
  }
}

abstract class _BrUserBalanceResponse implements BrUserBalanceResponse {
  const factory _BrUserBalanceResponse(
          {final Status? status,
          @JsonKey(name: "response_data") final List<UserBalanceItem?>? data}) =
      _$_BrUserBalanceResponse;

  factory _BrUserBalanceResponse.fromJson(Map<String, dynamic> json) =
      _$_BrUserBalanceResponse.fromJson;

  @override
  Status? get status;
  @override
  @JsonKey(name: "response_data")
  List<UserBalanceItem?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BrUserBalanceResponseCopyWith<_$_BrUserBalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBalanceItem _$UserBalanceItemFromJson(Map<String, dynamic> json) {
  return _UserBalanceItem.fromJson(json);
}

/// @nodoc
mixin _$UserBalanceItem {
  String? get currency => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBalanceItemCopyWith<UserBalanceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBalanceItemCopyWith<$Res> {
  factory $UserBalanceItemCopyWith(
          UserBalanceItem value, $Res Function(UserBalanceItem) then) =
      _$UserBalanceItemCopyWithImpl<$Res>;
  $Res call({String? currency, String? balance});
}

/// @nodoc
class _$UserBalanceItemCopyWithImpl<$Res>
    implements $UserBalanceItemCopyWith<$Res> {
  _$UserBalanceItemCopyWithImpl(this._value, this._then);

  final UserBalanceItem _value;
  // ignore: unused_field
  final $Res Function(UserBalanceItem) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserBalanceItemCopyWith<$Res>
    implements $UserBalanceItemCopyWith<$Res> {
  factory _$$_UserBalanceItemCopyWith(
          _$_UserBalanceItem value, $Res Function(_$_UserBalanceItem) then) =
      __$$_UserBalanceItemCopyWithImpl<$Res>;
  @override
  $Res call({String? currency, String? balance});
}

/// @nodoc
class __$$_UserBalanceItemCopyWithImpl<$Res>
    extends _$UserBalanceItemCopyWithImpl<$Res>
    implements _$$_UserBalanceItemCopyWith<$Res> {
  __$$_UserBalanceItemCopyWithImpl(
      _$_UserBalanceItem _value, $Res Function(_$_UserBalanceItem) _then)
      : super(_value, (v) => _then(v as _$_UserBalanceItem));

  @override
  _$_UserBalanceItem get _value => super._value as _$_UserBalanceItem;

  @override
  $Res call({
    Object? currency = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_UserBalanceItem(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBalanceItem implements _UserBalanceItem {
  const _$_UserBalanceItem({this.currency, this.balance});

  factory _$_UserBalanceItem.fromJson(Map<String, dynamic> json) =>
      _$$_UserBalanceItemFromJson(json);

  @override
  final String? currency;
  @override
  final String? balance;

  @override
  String toString() {
    return 'UserBalanceItem(currency: $currency, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBalanceItem &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  _$$_UserBalanceItemCopyWith<_$_UserBalanceItem> get copyWith =>
      __$$_UserBalanceItemCopyWithImpl<_$_UserBalanceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBalanceItemToJson(
      this,
    );
  }
}

abstract class _UserBalanceItem implements UserBalanceItem {
  const factory _UserBalanceItem(
      {final String? currency, final String? balance}) = _$_UserBalanceItem;

  factory _UserBalanceItem.fromJson(Map<String, dynamic> json) =
      _$_UserBalanceItem.fromJson;

  @override
  String? get currency;
  @override
  String? get balance;
  @override
  @JsonKey(ignore: true)
  _$$_UserBalanceItemCopyWith<_$_UserBalanceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

BrLoginRequest _$BrLoginRequestFromJson(Map<String, dynamic> json) {
  return _BrLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$BrLoginRequest {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'tfa_code')
  String? get tfaCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrLoginRequestCopyWith<BrLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrLoginRequestCopyWith<$Res> {
  factory $BrLoginRequestCopyWith(
          BrLoginRequest value, $Res Function(BrLoginRequest) then) =
      _$BrLoginRequestCopyWithImpl<$Res>;
  $Res call(
      {String? username,
      String? password,
      String? description,
      @JsonKey(name: 'tfa_code') String? tfaCode});
}

/// @nodoc
class _$BrLoginRequestCopyWithImpl<$Res>
    implements $BrLoginRequestCopyWith<$Res> {
  _$BrLoginRequestCopyWithImpl(this._value, this._then);

  final BrLoginRequest _value;
  // ignore: unused_field
  final $Res Function(BrLoginRequest) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? description = freezed,
    Object? tfaCode = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tfaCode: tfaCode == freezed
          ? _value.tfaCode
          : tfaCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BrLoginRequestCopyWith<$Res>
    implements $BrLoginRequestCopyWith<$Res> {
  factory _$$_BrLoginRequestCopyWith(
          _$_BrLoginRequest value, $Res Function(_$_BrLoginRequest) then) =
      __$$_BrLoginRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? username,
      String? password,
      String? description,
      @JsonKey(name: 'tfa_code') String? tfaCode});
}

/// @nodoc
class __$$_BrLoginRequestCopyWithImpl<$Res>
    extends _$BrLoginRequestCopyWithImpl<$Res>
    implements _$$_BrLoginRequestCopyWith<$Res> {
  __$$_BrLoginRequestCopyWithImpl(
      _$_BrLoginRequest _value, $Res Function(_$_BrLoginRequest) _then)
      : super(_value, (v) => _then(v as _$_BrLoginRequest));

  @override
  _$_BrLoginRequest get _value => super._value as _$_BrLoginRequest;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? description = freezed,
    Object? tfaCode = freezed,
  }) {
    return _then(_$_BrLoginRequest(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tfaCode: tfaCode == freezed
          ? _value.tfaCode
          : tfaCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrLoginRequest implements _BrLoginRequest {
  _$_BrLoginRequest(
      {this.username,
      this.password,
      this.description,
      @JsonKey(name: 'tfa_code') this.tfaCode});

  factory _$_BrLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BrLoginRequestFromJson(json);

  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? description;
  @override
  @JsonKey(name: 'tfa_code')
  final String? tfaCode;

  @override
  String toString() {
    return 'BrLoginRequest(username: $username, password: $password, description: $description, tfaCode: $tfaCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrLoginRequest &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.tfaCode, tfaCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(tfaCode));

  @JsonKey(ignore: true)
  @override
  _$$_BrLoginRequestCopyWith<_$_BrLoginRequest> get copyWith =>
      __$$_BrLoginRequestCopyWithImpl<_$_BrLoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrLoginRequestToJson(
      this,
    );
  }
}

abstract class _BrLoginRequest implements BrLoginRequest {
  factory _BrLoginRequest(
      {final String? username,
      final String? password,
      final String? description,
      @JsonKey(name: 'tfa_code') final String? tfaCode}) = _$_BrLoginRequest;

  factory _BrLoginRequest.fromJson(Map<String, dynamic> json) =
      _$_BrLoginRequest.fromJson;

  @override
  String? get username;
  @override
  String? get password;
  @override
  String? get description;
  @override
  @JsonKey(name: 'tfa_code')
  String? get tfaCode;
  @override
  @JsonKey(ignore: true)
  _$$_BrLoginRequestCopyWith<_$_BrLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

BrLoginResponse _$BrLoginResponseFromJson(Map<String, dynamic> json) {
  return _BrLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$BrLoginResponse {
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_data')
  LoginResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrLoginResponseCopyWith<BrLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrLoginResponseCopyWith<$Res> {
  factory $BrLoginResponseCopyWith(
          BrLoginResponse value, $Res Function(BrLoginResponse) then) =
      _$BrLoginResponseCopyWithImpl<$Res>;
  $Res call(
      {Status? status,
      @JsonKey(name: 'response_data') LoginResponseData? data});

  $StatusCopyWith<$Res>? get status;
  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrLoginResponseCopyWithImpl<$Res>
    implements $BrLoginResponseCopyWith<$Res> {
  _$BrLoginResponseCopyWithImpl(this._value, this._then);

  final BrLoginResponse _value;
  // ignore: unused_field
  final $Res Function(BrLoginResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $LoginResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_BrLoginResponseCopyWith<$Res>
    implements $BrLoginResponseCopyWith<$Res> {
  factory _$$_BrLoginResponseCopyWith(
          _$_BrLoginResponse value, $Res Function(_$_BrLoginResponse) then) =
      __$$_BrLoginResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status? status,
      @JsonKey(name: 'response_data') LoginResponseData? data});

  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BrLoginResponseCopyWithImpl<$Res>
    extends _$BrLoginResponseCopyWithImpl<$Res>
    implements _$$_BrLoginResponseCopyWith<$Res> {
  __$$_BrLoginResponseCopyWithImpl(
      _$_BrLoginResponse _value, $Res Function(_$_BrLoginResponse) _then)
      : super(_value, (v) => _then(v as _$_BrLoginResponse));

  @override
  _$_BrLoginResponse get _value => super._value as _$_BrLoginResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BrLoginResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrLoginResponse implements _BrLoginResponse {
  _$_BrLoginResponse({this.status, @JsonKey(name: 'response_data') this.data});

  factory _$_BrLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BrLoginResponseFromJson(json);

  @override
  final Status? status;
  @override
  @JsonKey(name: 'response_data')
  final LoginResponseData? data;

  @override
  String toString() {
    return 'BrLoginResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrLoginResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_BrLoginResponseCopyWith<_$_BrLoginResponse> get copyWith =>
      __$$_BrLoginResponseCopyWithImpl<_$_BrLoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrLoginResponseToJson(
      this,
    );
  }
}

abstract class _BrLoginResponse implements BrLoginResponse {
  factory _BrLoginResponse(
          {final Status? status,
          @JsonKey(name: 'response_data') final LoginResponseData? data}) =
      _$_BrLoginResponse;

  factory _BrLoginResponse.fromJson(Map<String, dynamic> json) =
      _$_BrLoginResponse.fromJson;

  @override
  Status? get status;
  @override
  @JsonKey(name: 'response_data')
  LoginResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BrLoginResponseCopyWith<_$_BrLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return _LoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseData {
  @JsonKey(name: 'sign-in-token')
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
          LoginResponseData value, $Res Function(LoginResponseData) then) =
      _$LoginResponseDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'sign-in-token') String? token});
}

/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._value, this._then);

  final LoginResponseData _value;
  // ignore: unused_field
  final $Res Function(LoginResponseData) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginResponseDataCopyWith<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  factory _$$_LoginResponseDataCopyWith(_$_LoginResponseData value,
          $Res Function(_$_LoginResponseData) then) =
      __$$_LoginResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'sign-in-token') String? token});
}

/// @nodoc
class __$$_LoginResponseDataCopyWithImpl<$Res>
    extends _$LoginResponseDataCopyWithImpl<$Res>
    implements _$$_LoginResponseDataCopyWith<$Res> {
  __$$_LoginResponseDataCopyWithImpl(
      _$_LoginResponseData _value, $Res Function(_$_LoginResponseData) _then)
      : super(_value, (v) => _then(v as _$_LoginResponseData));

  @override
  _$_LoginResponseData get _value => super._value as _$_LoginResponseData;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_LoginResponseData(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseData implements _LoginResponseData {
  _$_LoginResponseData({@JsonKey(name: 'sign-in-token') this.token});

  factory _$_LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDataFromJson(json);

  @override
  @JsonKey(name: 'sign-in-token')
  final String? token;

  @override
  String toString() {
    return 'LoginResponseData(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseData &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_LoginResponseDataCopyWith<_$_LoginResponseData> get copyWith =>
      __$$_LoginResponseDataCopyWithImpl<_$_LoginResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDataToJson(
      this,
    );
  }
}

abstract class _LoginResponseData implements LoginResponseData {
  factory _LoginResponseData(
          {@JsonKey(name: 'sign-in-token') final String? token}) =
      _$_LoginResponseData;

  factory _LoginResponseData.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseData.fromJson;

  @override
  @JsonKey(name: 'sign-in-token')
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseDataCopyWith<_$_LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

BrTransactionsResponse _$BrTransactionsResponseFromJson(
    Map<String, dynamic> json) {
  return _BrTransactionsResponse.fromJson(json);
}

/// @nodoc
mixin _$BrTransactionsResponse {
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_data')
  TransactionsResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrTransactionsResponseCopyWith<BrTransactionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrTransactionsResponseCopyWith<$Res> {
  factory $BrTransactionsResponseCopyWith(BrTransactionsResponse value,
          $Res Function(BrTransactionsResponse) then) =
      _$BrTransactionsResponseCopyWithImpl<$Res>;
  $Res call(
      {Status? status,
      @JsonKey(name: 'response_data') TransactionsResponseData? data});

  $StatusCopyWith<$Res>? get status;
  $TransactionsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrTransactionsResponseCopyWithImpl<$Res>
    implements $BrTransactionsResponseCopyWith<$Res> {
  _$BrTransactionsResponseCopyWithImpl(this._value, this._then);

  final BrTransactionsResponse _value;
  // ignore: unused_field
  final $Res Function(BrTransactionsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionsResponseData?,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $TransactionsResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionsResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_BrTransactionsResponseCopyWith<$Res>
    implements $BrTransactionsResponseCopyWith<$Res> {
  factory _$$_BrTransactionsResponseCopyWith(_$_BrTransactionsResponse value,
          $Res Function(_$_BrTransactionsResponse) then) =
      __$$_BrTransactionsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status? status,
      @JsonKey(name: 'response_data') TransactionsResponseData? data});

  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $TransactionsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BrTransactionsResponseCopyWithImpl<$Res>
    extends _$BrTransactionsResponseCopyWithImpl<$Res>
    implements _$$_BrTransactionsResponseCopyWith<$Res> {
  __$$_BrTransactionsResponseCopyWithImpl(_$_BrTransactionsResponse _value,
      $Res Function(_$_BrTransactionsResponse) _then)
      : super(_value, (v) => _then(v as _$_BrTransactionsResponse));

  @override
  _$_BrTransactionsResponse get _value =>
      super._value as _$_BrTransactionsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BrTransactionsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionsResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrTransactionsResponse implements _BrTransactionsResponse {
  _$_BrTransactionsResponse(
      {this.status, @JsonKey(name: 'response_data') this.data});

  factory _$_BrTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BrTransactionsResponseFromJson(json);

  @override
  final Status? status;
  @override
  @JsonKey(name: 'response_data')
  final TransactionsResponseData? data;

  @override
  String toString() {
    return 'BrTransactionsResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrTransactionsResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_BrTransactionsResponseCopyWith<_$_BrTransactionsResponse> get copyWith =>
      __$$_BrTransactionsResponseCopyWithImpl<_$_BrTransactionsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrTransactionsResponseToJson(
      this,
    );
  }
}

abstract class _BrTransactionsResponse implements BrTransactionsResponse {
  factory _BrTransactionsResponse(
      {final Status? status,
      @JsonKey(name: 'response_data')
          final TransactionsResponseData? data}) = _$_BrTransactionsResponse;

  factory _BrTransactionsResponse.fromJson(Map<String, dynamic> json) =
      _$_BrTransactionsResponse.fromJson;

  @override
  Status? get status;
  @override
  @JsonKey(name: 'response_data')
  TransactionsResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BrTransactionsResponseCopyWith<_$_BrTransactionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionsResponseData _$TransactionsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TransactionsResponseData.fromJson(json);
}

/// @nodoc
mixin _$TransactionsResponseData {
  Stats? get stats => throw _privateConstructorUsedError;
  List<Transaction>? get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsResponseDataCopyWith<TransactionsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsResponseDataCopyWith<$Res> {
  factory $TransactionsResponseDataCopyWith(TransactionsResponseData value,
          $Res Function(TransactionsResponseData) then) =
      _$TransactionsResponseDataCopyWithImpl<$Res>;
  $Res call({Stats? stats, List<Transaction>? transactions});

  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$TransactionsResponseDataCopyWithImpl<$Res>
    implements $TransactionsResponseDataCopyWith<$Res> {
  _$TransactionsResponseDataCopyWithImpl(this._value, this._then);

  final TransactionsResponseData _value;
  // ignore: unused_field
  final $Res Function(TransactionsResponseData) _then;

  @override
  $Res call({
    Object? stats = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ));
  }

  @override
  $StatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$$_TransactionsResponseDataCopyWith<$Res>
    implements $TransactionsResponseDataCopyWith<$Res> {
  factory _$$_TransactionsResponseDataCopyWith(
          _$_TransactionsResponseData value,
          $Res Function(_$_TransactionsResponseData) then) =
      __$$_TransactionsResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({Stats? stats, List<Transaction>? transactions});

  @override
  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$_TransactionsResponseDataCopyWithImpl<$Res>
    extends _$TransactionsResponseDataCopyWithImpl<$Res>
    implements _$$_TransactionsResponseDataCopyWith<$Res> {
  __$$_TransactionsResponseDataCopyWithImpl(_$_TransactionsResponseData _value,
      $Res Function(_$_TransactionsResponseData) _then)
      : super(_value, (v) => _then(v as _$_TransactionsResponseData));

  @override
  _$_TransactionsResponseData get _value =>
      super._value as _$_TransactionsResponseData;

  @override
  $Res call({
    Object? stats = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_$_TransactionsResponseData(
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      transactions: transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionsResponseData implements _TransactionsResponseData {
  _$_TransactionsResponseData(
      {this.stats, final List<Transaction>? transactions})
      : _transactions = transactions;

  factory _$_TransactionsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionsResponseDataFromJson(json);

  @override
  final Stats? stats;
  final List<Transaction>? _transactions;
  @override
  List<Transaction>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionsResponseData(stats: $stats, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsResponseData &&
            const DeepCollectionEquality().equals(other.stats, stats) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stats),
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionsResponseDataCopyWith<_$_TransactionsResponseData>
      get copyWith => __$$_TransactionsResponseDataCopyWithImpl<
          _$_TransactionsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionsResponseDataToJson(
      this,
    );
  }
}

abstract class _TransactionsResponseData implements TransactionsResponseData {
  factory _TransactionsResponseData(
      {final Stats? stats,
      final List<Transaction>? transactions}) = _$_TransactionsResponseData;

  factory _TransactionsResponseData.fromJson(Map<String, dynamic> json) =
      _$_TransactionsResponseData.fromJson;

  @override
  Stats? get stats;
  @override
  List<Transaction>? get transactions;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsResponseDataCopyWith<_$_TransactionsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  @JsonKey(name: 'total_transaction_count')
  int? get totalTransactionCount => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_number_of_pages')
  int? get totalNumberOfPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_transaction_count') int? totalTransactionCount,
      int? page,
      @JsonKey(name: 'total_number_of_pages') int? totalNumberOfPages});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res> implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  final Stats _value;
  // ignore: unused_field
  final $Res Function(Stats) _then;

  @override
  $Res call({
    Object? totalTransactionCount = freezed,
    Object? page = freezed,
    Object? totalNumberOfPages = freezed,
  }) {
    return _then(_value.copyWith(
      totalTransactionCount: totalTransactionCount == freezed
          ? _value.totalTransactionCount
          : totalTransactionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNumberOfPages: totalNumberOfPages == freezed
          ? _value.totalNumberOfPages
          : totalNumberOfPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_transaction_count') int? totalTransactionCount,
      int? page,
      @JsonKey(name: 'total_number_of_pages') int? totalNumberOfPages});
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, (v) => _then(v as _$_Stats));

  @override
  _$_Stats get _value => super._value as _$_Stats;

  @override
  $Res call({
    Object? totalTransactionCount = freezed,
    Object? page = freezed,
    Object? totalNumberOfPages = freezed,
  }) {
    return _then(_$_Stats(
      totalTransactionCount: totalTransactionCount == freezed
          ? _value.totalTransactionCount
          : totalTransactionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNumberOfPages: totalNumberOfPages == freezed
          ? _value.totalNumberOfPages
          : totalNumberOfPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stats implements _Stats {
  _$_Stats(
      {@JsonKey(name: 'total_transaction_count') this.totalTransactionCount,
      this.page,
      @JsonKey(name: 'total_number_of_pages') this.totalNumberOfPages});

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  @JsonKey(name: 'total_transaction_count')
  final int? totalTransactionCount;
  @override
  final int? page;
  @override
  @JsonKey(name: 'total_number_of_pages')
  final int? totalNumberOfPages;

  @override
  String toString() {
    return 'Stats(totalTransactionCount: $totalTransactionCount, page: $page, totalNumberOfPages: $totalNumberOfPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            const DeepCollectionEquality()
                .equals(other.totalTransactionCount, totalTransactionCount) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalNumberOfPages, totalNumberOfPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalTransactionCount),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalNumberOfPages));

  @JsonKey(ignore: true)
  @override
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  factory _Stats(
      {@JsonKey(name: 'total_transaction_count')
          final int? totalTransactionCount,
      final int? page,
      @JsonKey(name: 'total_number_of_pages')
          final int? totalNumberOfPages}) = _$_Stats;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  @JsonKey(name: 'total_transaction_count')
  int? get totalTransactionCount;
  @override
  int? get page;
  @override
  @JsonKey(name: 'total_number_of_pages')
  int? get totalNumberOfPages;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: 'transaction_id')
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_status')
  BrTransactionStatus? get transactionStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_type')
  BrTransactionType? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_time')
  String? get transactionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_currency')
  String? get inCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_amount')
  String? get inAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_currency')
  String? get outCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_amount')
  String? get outAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'transaction_id')
          String? transactionId,
      @JsonKey(name: 'transaction_status')
          BrTransactionStatus? transactionStatus,
      @JsonKey(name: 'transaction_type')
          BrTransactionType? transactionType,
      @JsonKey(name: 'transaction_time')
          String? transactionTime,
      @JsonKey(name: 'in_currency')
          String? inCurrency,
      @JsonKey(name: 'in_amount')
          String? inAmount,
      @JsonKey(name: 'out_currency')
          String? outCurrency,
      @JsonKey(name: 'out_amount')
          String? outAmount});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? transactionStatus = freezed,
    Object? transactionType = freezed,
    Object? transactionTime = freezed,
    Object? inCurrency = freezed,
    Object? inAmount = freezed,
    Object? outCurrency = freezed,
    Object? outAmount = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as BrTransactionStatus?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as BrTransactionType?,
      transactionTime: transactionTime == freezed
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      inCurrency: inCurrency == freezed
          ? _value.inCurrency
          : inCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      inAmount: inAmount == freezed
          ? _value.inAmount
          : inAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      outCurrency: outCurrency == freezed
          ? _value.outCurrency
          : outCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      outAmount: outAmount == freezed
          ? _value.outAmount
          : outAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'transaction_id')
          String? transactionId,
      @JsonKey(name: 'transaction_status')
          BrTransactionStatus? transactionStatus,
      @JsonKey(name: 'transaction_type')
          BrTransactionType? transactionType,
      @JsonKey(name: 'transaction_time')
          String? transactionTime,
      @JsonKey(name: 'in_currency')
          String? inCurrency,
      @JsonKey(name: 'in_amount')
          String? inAmount,
      @JsonKey(name: 'out_currency')
          String? outCurrency,
      @JsonKey(name: 'out_amount')
          String? outAmount});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, (v) => _then(v as _$_Transaction));

  @override
  _$_Transaction get _value => super._value as _$_Transaction;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? transactionStatus = freezed,
    Object? transactionType = freezed,
    Object? transactionTime = freezed,
    Object? inCurrency = freezed,
    Object? inAmount = freezed,
    Object? outCurrency = freezed,
    Object? outAmount = freezed,
  }) {
    return _then(_$_Transaction(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as BrTransactionStatus?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as BrTransactionType?,
      transactionTime: transactionTime == freezed
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      inCurrency: inCurrency == freezed
          ? _value.inCurrency
          : inCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      inAmount: inAmount == freezed
          ? _value.inAmount
          : inAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      outCurrency: outCurrency == freezed
          ? _value.outCurrency
          : outCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      outAmount: outAmount == freezed
          ? _value.outAmount
          : outAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  _$_Transaction(
      {@JsonKey(name: 'transaction_id') this.transactionId,
      @JsonKey(name: 'transaction_status') this.transactionStatus,
      @JsonKey(name: 'transaction_type') this.transactionType,
      @JsonKey(name: 'transaction_time') this.transactionTime,
      @JsonKey(name: 'in_currency') this.inCurrency,
      @JsonKey(name: 'in_amount') this.inAmount,
      @JsonKey(name: 'out_currency') this.outCurrency,
      @JsonKey(name: 'out_amount') this.outAmount});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  @JsonKey(name: 'transaction_id')
  final String? transactionId;
  @override
  @JsonKey(name: 'transaction_status')
  final BrTransactionStatus? transactionStatus;
  @override
  @JsonKey(name: 'transaction_type')
  final BrTransactionType? transactionType;
  @override
  @JsonKey(name: 'transaction_time')
  final String? transactionTime;
  @override
  @JsonKey(name: 'in_currency')
  final String? inCurrency;
  @override
  @JsonKey(name: 'in_amount')
  final String? inAmount;
  @override
  @JsonKey(name: 'out_currency')
  final String? outCurrency;
  @override
  @JsonKey(name: 'out_amount')
  final String? outAmount;

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, transactionStatus: $transactionStatus, transactionType: $transactionType, transactionTime: $transactionTime, inCurrency: $inCurrency, inAmount: $inAmount, outCurrency: $outCurrency, outAmount: $outAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality()
                .equals(other.transactionStatus, transactionStatus) &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality()
                .equals(other.transactionTime, transactionTime) &&
            const DeepCollectionEquality()
                .equals(other.inCurrency, inCurrency) &&
            const DeepCollectionEquality().equals(other.inAmount, inAmount) &&
            const DeepCollectionEquality()
                .equals(other.outCurrency, outCurrency) &&
            const DeepCollectionEquality().equals(other.outAmount, outAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(transactionStatus),
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(transactionTime),
      const DeepCollectionEquality().hash(inCurrency),
      const DeepCollectionEquality().hash(inAmount),
      const DeepCollectionEquality().hash(outCurrency),
      const DeepCollectionEquality().hash(outAmount));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {@JsonKey(name: 'transaction_id')
          final String? transactionId,
      @JsonKey(name: 'transaction_status')
          final BrTransactionStatus? transactionStatus,
      @JsonKey(name: 'transaction_type')
          final BrTransactionType? transactionType,
      @JsonKey(name: 'transaction_time')
          final String? transactionTime,
      @JsonKey(name: 'in_currency')
          final String? inCurrency,
      @JsonKey(name: 'in_amount')
          final String? inAmount,
      @JsonKey(name: 'out_currency')
          final String? outCurrency,
      @JsonKey(name: 'out_amount')
          final String? outAmount}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @JsonKey(name: 'transaction_id')
  String? get transactionId;
  @override
  @JsonKey(name: 'transaction_status')
  BrTransactionStatus? get transactionStatus;
  @override
  @JsonKey(name: 'transaction_type')
  BrTransactionType? get transactionType;
  @override
  @JsonKey(name: 'transaction_time')
  String? get transactionTime;
  @override
  @JsonKey(name: 'in_currency')
  String? get inCurrency;
  @override
  @JsonKey(name: 'in_amount')
  String? get inAmount;
  @override
  @JsonKey(name: 'out_currency')
  String? get outCurrency;
  @override
  @JsonKey(name: 'out_amount')
  String? get outAmount;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

BrTransactionDetailsResponse _$BrTransactionDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _BrTransactionDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$BrTransactionDetailsResponse {
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_data')
  TransactionDetailsResponseData? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrTransactionDetailsResponseCopyWith<BrTransactionDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrTransactionDetailsResponseCopyWith<$Res> {
  factory $BrTransactionDetailsResponseCopyWith(
          BrTransactionDetailsResponse value,
          $Res Function(BrTransactionDetailsResponse) then) =
      _$BrTransactionDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {Status? status,
      @JsonKey(name: 'response_data') TransactionDetailsResponseData? data});

  $StatusCopyWith<$Res>? get status;
  $TransactionDetailsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrTransactionDetailsResponseCopyWithImpl<$Res>
    implements $BrTransactionDetailsResponseCopyWith<$Res> {
  _$BrTransactionDetailsResponseCopyWithImpl(this._value, this._then);

  final BrTransactionDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(BrTransactionDetailsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDetailsResponseData?,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $TransactionDetailsResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDetailsResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_BrTransactionDetailsResponseCopyWith<$Res>
    implements $BrTransactionDetailsResponseCopyWith<$Res> {
  factory _$$_BrTransactionDetailsResponseCopyWith(
          _$_BrTransactionDetailsResponse value,
          $Res Function(_$_BrTransactionDetailsResponse) then) =
      __$$_BrTransactionDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status? status,
      @JsonKey(name: 'response_data') TransactionDetailsResponseData? data});

  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $TransactionDetailsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BrTransactionDetailsResponseCopyWithImpl<$Res>
    extends _$BrTransactionDetailsResponseCopyWithImpl<$Res>
    implements _$$_BrTransactionDetailsResponseCopyWith<$Res> {
  __$$_BrTransactionDetailsResponseCopyWithImpl(
      _$_BrTransactionDetailsResponse _value,
      $Res Function(_$_BrTransactionDetailsResponse) _then)
      : super(_value, (v) => _then(v as _$_BrTransactionDetailsResponse));

  @override
  _$_BrTransactionDetailsResponse get _value =>
      super._value as _$_BrTransactionDetailsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BrTransactionDetailsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDetailsResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrTransactionDetailsResponse implements _BrTransactionDetailsResponse {
  const _$_BrTransactionDetailsResponse(
      {this.status, @JsonKey(name: 'response_data') this.data});

  factory _$_BrTransactionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BrTransactionDetailsResponseFromJson(json);

  @override
  final Status? status;
  @override
  @JsonKey(name: 'response_data')
  final TransactionDetailsResponseData? data;

  @override
  String toString() {
    return 'BrTransactionDetailsResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrTransactionDetailsResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_BrTransactionDetailsResponseCopyWith<_$_BrTransactionDetailsResponse>
      get copyWith => __$$_BrTransactionDetailsResponseCopyWithImpl<
          _$_BrTransactionDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrTransactionDetailsResponseToJson(
      this,
    );
  }
}

abstract class _BrTransactionDetailsResponse
    implements BrTransactionDetailsResponse {
  const factory _BrTransactionDetailsResponse(
          {final Status? status,
          @JsonKey(name: 'response_data')
              final TransactionDetailsResponseData? data}) =
      _$_BrTransactionDetailsResponse;

  factory _BrTransactionDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_BrTransactionDetailsResponse.fromJson;

  @override
  Status? get status;
  @override
  @JsonKey(name: 'response_data')
  TransactionDetailsResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BrTransactionDetailsResponseCopyWith<_$_BrTransactionDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionDetailsResponseData _$TransactionDetailsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TransactionDetailsResponseData.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailsResponseData {
  @JsonKey(name: "transaction_id")
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  BrTransactionType? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_status")
  BrTransactionStatus? get transactionStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "asset_bought")
  String? get assetBought => throw _privateConstructorUsedError;
  @JsonKey(name: "asset_units_bought")
  String? get assetUnitsBought => throw _privateConstructorUsedError;
  @JsonKey(name: "sats_bought")
  String? get satsBought => throw _privateConstructorUsedError;
  @JsonKey(name: "fiat_spent")
  String? get fiatSpent => throw _privateConstructorUsedError;
  @JsonKey(name: "fiat_currency")
  String? get fiatCurrency => throw _privateConstructorUsedError;
  List<Withdrawal>? get withdrawals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailsResponseDataCopyWith<TransactionDetailsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsResponseDataCopyWith<$Res> {
  factory $TransactionDetailsResponseDataCopyWith(
          TransactionDetailsResponseData value,
          $Res Function(TransactionDetailsResponseData) then) =
      _$TransactionDetailsResponseDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "transaction_id")
          String? transactionId,
      @JsonKey(name: "transaction_type")
          BrTransactionType? transactionType,
      @JsonKey(name: "transaction_status")
          BrTransactionStatus? transactionStatus,
      @JsonKey(name: "asset_bought")
          String? assetBought,
      @JsonKey(name: "asset_units_bought")
          String? assetUnitsBought,
      @JsonKey(name: "sats_bought")
          String? satsBought,
      @JsonKey(name: "fiat_spent")
          String? fiatSpent,
      @JsonKey(name: "fiat_currency")
          String? fiatCurrency,
      List<Withdrawal>? withdrawals});
}

/// @nodoc
class _$TransactionDetailsResponseDataCopyWithImpl<$Res>
    implements $TransactionDetailsResponseDataCopyWith<$Res> {
  _$TransactionDetailsResponseDataCopyWithImpl(this._value, this._then);

  final TransactionDetailsResponseData _value;
  // ignore: unused_field
  final $Res Function(TransactionDetailsResponseData) _then;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? transactionType = freezed,
    Object? transactionStatus = freezed,
    Object? assetBought = freezed,
    Object? assetUnitsBought = freezed,
    Object? satsBought = freezed,
    Object? fiatSpent = freezed,
    Object? fiatCurrency = freezed,
    Object? withdrawals = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as BrTransactionType?,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as BrTransactionStatus?,
      assetBought: assetBought == freezed
          ? _value.assetBought
          : assetBought // ignore: cast_nullable_to_non_nullable
              as String?,
      assetUnitsBought: assetUnitsBought == freezed
          ? _value.assetUnitsBought
          : assetUnitsBought // ignore: cast_nullable_to_non_nullable
              as String?,
      satsBought: satsBought == freezed
          ? _value.satsBought
          : satsBought // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatSpent: fiatSpent == freezed
          ? _value.fiatSpent
          : fiatSpent // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatCurrency: fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<Withdrawal>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionDetailsResponseDataCopyWith<$Res>
    implements $TransactionDetailsResponseDataCopyWith<$Res> {
  factory _$$_TransactionDetailsResponseDataCopyWith(
          _$_TransactionDetailsResponseData value,
          $Res Function(_$_TransactionDetailsResponseData) then) =
      __$$_TransactionDetailsResponseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "transaction_id")
          String? transactionId,
      @JsonKey(name: "transaction_type")
          BrTransactionType? transactionType,
      @JsonKey(name: "transaction_status")
          BrTransactionStatus? transactionStatus,
      @JsonKey(name: "asset_bought")
          String? assetBought,
      @JsonKey(name: "asset_units_bought")
          String? assetUnitsBought,
      @JsonKey(name: "sats_bought")
          String? satsBought,
      @JsonKey(name: "fiat_spent")
          String? fiatSpent,
      @JsonKey(name: "fiat_currency")
          String? fiatCurrency,
      List<Withdrawal>? withdrawals});
}

/// @nodoc
class __$$_TransactionDetailsResponseDataCopyWithImpl<$Res>
    extends _$TransactionDetailsResponseDataCopyWithImpl<$Res>
    implements _$$_TransactionDetailsResponseDataCopyWith<$Res> {
  __$$_TransactionDetailsResponseDataCopyWithImpl(
      _$_TransactionDetailsResponseData _value,
      $Res Function(_$_TransactionDetailsResponseData) _then)
      : super(_value, (v) => _then(v as _$_TransactionDetailsResponseData));

  @override
  _$_TransactionDetailsResponseData get _value =>
      super._value as _$_TransactionDetailsResponseData;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? transactionType = freezed,
    Object? transactionStatus = freezed,
    Object? assetBought = freezed,
    Object? assetUnitsBought = freezed,
    Object? satsBought = freezed,
    Object? fiatSpent = freezed,
    Object? fiatCurrency = freezed,
    Object? withdrawals = freezed,
  }) {
    return _then(_$_TransactionDetailsResponseData(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as BrTransactionType?,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as BrTransactionStatus?,
      assetBought: assetBought == freezed
          ? _value.assetBought
          : assetBought // ignore: cast_nullable_to_non_nullable
              as String?,
      assetUnitsBought: assetUnitsBought == freezed
          ? _value.assetUnitsBought
          : assetUnitsBought // ignore: cast_nullable_to_non_nullable
              as String?,
      satsBought: satsBought == freezed
          ? _value.satsBought
          : satsBought // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatSpent: fiatSpent == freezed
          ? _value.fiatSpent
          : fiatSpent // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatCurrency: fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: withdrawals == freezed
          ? _value._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<Withdrawal>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDetailsResponseData
    implements _TransactionDetailsResponseData {
  const _$_TransactionDetailsResponseData(
      {@JsonKey(name: "transaction_id") this.transactionId,
      @JsonKey(name: "transaction_type") this.transactionType,
      @JsonKey(name: "transaction_status") this.transactionStatus,
      @JsonKey(name: "asset_bought") this.assetBought,
      @JsonKey(name: "asset_units_bought") this.assetUnitsBought,
      @JsonKey(name: "sats_bought") this.satsBought,
      @JsonKey(name: "fiat_spent") this.fiatSpent,
      @JsonKey(name: "fiat_currency") this.fiatCurrency,
      final List<Withdrawal>? withdrawals})
      : _withdrawals = withdrawals;

  factory _$_TransactionDetailsResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$$_TransactionDetailsResponseDataFromJson(json);

  @override
  @JsonKey(name: "transaction_id")
  final String? transactionId;
  @override
  @JsonKey(name: "transaction_type")
  final BrTransactionType? transactionType;
  @override
  @JsonKey(name: "transaction_status")
  final BrTransactionStatus? transactionStatus;
  @override
  @JsonKey(name: "asset_bought")
  final String? assetBought;
  @override
  @JsonKey(name: "asset_units_bought")
  final String? assetUnitsBought;
  @override
  @JsonKey(name: "sats_bought")
  final String? satsBought;
  @override
  @JsonKey(name: "fiat_spent")
  final String? fiatSpent;
  @override
  @JsonKey(name: "fiat_currency")
  final String? fiatCurrency;
  final List<Withdrawal>? _withdrawals;
  @override
  List<Withdrawal>? get withdrawals {
    final value = _withdrawals;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionDetailsResponseData(transactionId: $transactionId, transactionType: $transactionType, transactionStatus: $transactionStatus, assetBought: $assetBought, assetUnitsBought: $assetUnitsBought, satsBought: $satsBought, fiatSpent: $fiatSpent, fiatCurrency: $fiatCurrency, withdrawals: $withdrawals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDetailsResponseData &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality()
                .equals(other.transactionStatus, transactionStatus) &&
            const DeepCollectionEquality()
                .equals(other.assetBought, assetBought) &&
            const DeepCollectionEquality()
                .equals(other.assetUnitsBought, assetUnitsBought) &&
            const DeepCollectionEquality()
                .equals(other.satsBought, satsBought) &&
            const DeepCollectionEquality().equals(other.fiatSpent, fiatSpent) &&
            const DeepCollectionEquality()
                .equals(other.fiatCurrency, fiatCurrency) &&
            const DeepCollectionEquality()
                .equals(other._withdrawals, _withdrawals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(transactionStatus),
      const DeepCollectionEquality().hash(assetBought),
      const DeepCollectionEquality().hash(assetUnitsBought),
      const DeepCollectionEquality().hash(satsBought),
      const DeepCollectionEquality().hash(fiatSpent),
      const DeepCollectionEquality().hash(fiatCurrency),
      const DeepCollectionEquality().hash(_withdrawals));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionDetailsResponseDataCopyWith<_$_TransactionDetailsResponseData>
      get copyWith => __$$_TransactionDetailsResponseDataCopyWithImpl<
          _$_TransactionDetailsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDetailsResponseDataToJson(
      this,
    );
  }
}

abstract class _TransactionDetailsResponseData
    implements TransactionDetailsResponseData {
  const factory _TransactionDetailsResponseData(
      {@JsonKey(name: "transaction_id")
          final String? transactionId,
      @JsonKey(name: "transaction_type")
          final BrTransactionType? transactionType,
      @JsonKey(name: "transaction_status")
          final BrTransactionStatus? transactionStatus,
      @JsonKey(name: "asset_bought")
          final String? assetBought,
      @JsonKey(name: "asset_units_bought")
          final String? assetUnitsBought,
      @JsonKey(name: "sats_bought")
          final String? satsBought,
      @JsonKey(name: "fiat_spent")
          final String? fiatSpent,
      @JsonKey(name: "fiat_currency")
          final String? fiatCurrency,
      final List<Withdrawal>? withdrawals}) = _$_TransactionDetailsResponseData;

  factory _TransactionDetailsResponseData.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetailsResponseData.fromJson;

  @override
  @JsonKey(name: "transaction_id")
  String? get transactionId;
  @override
  @JsonKey(name: "transaction_type")
  BrTransactionType? get transactionType;
  @override
  @JsonKey(name: "transaction_status")
  BrTransactionStatus? get transactionStatus;
  @override
  @JsonKey(name: "asset_bought")
  String? get assetBought;
  @override
  @JsonKey(name: "asset_units_bought")
  String? get assetUnitsBought;
  @override
  @JsonKey(name: "sats_bought")
  String? get satsBought;
  @override
  @JsonKey(name: "fiat_spent")
  String? get fiatSpent;
  @override
  @JsonKey(name: "fiat_currency")
  String? get fiatCurrency;
  @override
  List<Withdrawal>? get withdrawals;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDetailsResponseDataCopyWith<_$_TransactionDetailsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

Withdrawal _$WithdrawalFromJson(Map<String, dynamic> json) {
  return _Withdrawal.fromJson(json);
}

/// @nodoc
mixin _$Withdrawal {
  String? get rails => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  BrTransactionType? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_serial_number")
  int? get serialNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_status")
  BrTransactionStatus? get transactionStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_address")
  String? get transactionAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_fee")
  String? get transactionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_currency")
  String? get transactionCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_identifier")
  String? get transactionIdentifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalCopyWith<Withdrawal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalCopyWith<$Res> {
  factory $WithdrawalCopyWith(
          Withdrawal value, $Res Function(Withdrawal) then) =
      _$WithdrawalCopyWithImpl<$Res>;
  $Res call(
      {String? rails,
      @JsonKey(name: "transaction_id")
          String? transactionId,
      @JsonKey(name: "transaction_type")
          BrTransactionType? transactionType,
      @JsonKey(name: "transaction_serial_number")
          int? serialNumber,
      @JsonKey(name: "transaction_status")
          BrTransactionStatus? transactionStatus,
      @JsonKey(name: "transaction_address")
          String? transactionAddress,
      @JsonKey(name: "transaction_fee")
          String? transactionFee,
      @JsonKey(name: "transaction_currency")
          String? transactionCurrency,
      @JsonKey(name: "transaction_identifier")
          String? transactionIdentifier});
}

/// @nodoc
class _$WithdrawalCopyWithImpl<$Res> implements $WithdrawalCopyWith<$Res> {
  _$WithdrawalCopyWithImpl(this._value, this._then);

  final Withdrawal _value;
  // ignore: unused_field
  final $Res Function(Withdrawal) _then;

  @override
  $Res call({
    Object? rails = freezed,
    Object? transactionId = freezed,
    Object? transactionType = freezed,
    Object? serialNumber = freezed,
    Object? transactionStatus = freezed,
    Object? transactionAddress = freezed,
    Object? transactionFee = freezed,
    Object? transactionCurrency = freezed,
    Object? transactionIdentifier = freezed,
  }) {
    return _then(_value.copyWith(
      rails: rails == freezed
          ? _value.rails
          : rails // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as BrTransactionType?,
      serialNumber: serialNumber == freezed
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as BrTransactionStatus?,
      transactionAddress: transactionAddress == freezed
          ? _value.transactionAddress
          : transactionAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionFee: transactionFee == freezed
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCurrency: transactionCurrency == freezed
          ? _value.transactionCurrency
          : transactionCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionIdentifier: transactionIdentifier == freezed
          ? _value.transactionIdentifier
          : transactionIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WithdrawalCopyWith<$Res>
    implements $WithdrawalCopyWith<$Res> {
  factory _$$_WithdrawalCopyWith(
          _$_Withdrawal value, $Res Function(_$_Withdrawal) then) =
      __$$_WithdrawalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? rails,
      @JsonKey(name: "transaction_id")
          String? transactionId,
      @JsonKey(name: "transaction_type")
          BrTransactionType? transactionType,
      @JsonKey(name: "transaction_serial_number")
          int? serialNumber,
      @JsonKey(name: "transaction_status")
          BrTransactionStatus? transactionStatus,
      @JsonKey(name: "transaction_address")
          String? transactionAddress,
      @JsonKey(name: "transaction_fee")
          String? transactionFee,
      @JsonKey(name: "transaction_currency")
          String? transactionCurrency,
      @JsonKey(name: "transaction_identifier")
          String? transactionIdentifier});
}

/// @nodoc
class __$$_WithdrawalCopyWithImpl<$Res> extends _$WithdrawalCopyWithImpl<$Res>
    implements _$$_WithdrawalCopyWith<$Res> {
  __$$_WithdrawalCopyWithImpl(
      _$_Withdrawal _value, $Res Function(_$_Withdrawal) _then)
      : super(_value, (v) => _then(v as _$_Withdrawal));

  @override
  _$_Withdrawal get _value => super._value as _$_Withdrawal;

  @override
  $Res call({
    Object? rails = freezed,
    Object? transactionId = freezed,
    Object? transactionType = freezed,
    Object? serialNumber = freezed,
    Object? transactionStatus = freezed,
    Object? transactionAddress = freezed,
    Object? transactionFee = freezed,
    Object? transactionCurrency = freezed,
    Object? transactionIdentifier = freezed,
  }) {
    return _then(_$_Withdrawal(
      rails: rails == freezed
          ? _value.rails
          : rails // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as BrTransactionType?,
      serialNumber: serialNumber == freezed
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as BrTransactionStatus?,
      transactionAddress: transactionAddress == freezed
          ? _value.transactionAddress
          : transactionAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionFee: transactionFee == freezed
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCurrency: transactionCurrency == freezed
          ? _value.transactionCurrency
          : transactionCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionIdentifier: transactionIdentifier == freezed
          ? _value.transactionIdentifier
          : transactionIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Withdrawal implements _Withdrawal {
  const _$_Withdrawal(
      {this.rails,
      @JsonKey(name: "transaction_id") this.transactionId,
      @JsonKey(name: "transaction_type") this.transactionType,
      @JsonKey(name: "transaction_serial_number") this.serialNumber,
      @JsonKey(name: "transaction_status") this.transactionStatus,
      @JsonKey(name: "transaction_address") this.transactionAddress,
      @JsonKey(name: "transaction_fee") this.transactionFee,
      @JsonKey(name: "transaction_currency") this.transactionCurrency,
      @JsonKey(name: "transaction_identifier") this.transactionIdentifier});

  factory _$_Withdrawal.fromJson(Map<String, dynamic> json) =>
      _$$_WithdrawalFromJson(json);

  @override
  final String? rails;
  @override
  @JsonKey(name: "transaction_id")
  final String? transactionId;
  @override
  @JsonKey(name: "transaction_type")
  final BrTransactionType? transactionType;
  @override
  @JsonKey(name: "transaction_serial_number")
  final int? serialNumber;
  @override
  @JsonKey(name: "transaction_status")
  final BrTransactionStatus? transactionStatus;
  @override
  @JsonKey(name: "transaction_address")
  final String? transactionAddress;
  @override
  @JsonKey(name: "transaction_fee")
  final String? transactionFee;
  @override
  @JsonKey(name: "transaction_currency")
  final String? transactionCurrency;
  @override
  @JsonKey(name: "transaction_identifier")
  final String? transactionIdentifier;

  @override
  String toString() {
    return 'Withdrawal(rails: $rails, transactionId: $transactionId, transactionType: $transactionType, serialNumber: $serialNumber, transactionStatus: $transactionStatus, transactionAddress: $transactionAddress, transactionFee: $transactionFee, transactionCurrency: $transactionCurrency, transactionIdentifier: $transactionIdentifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Withdrawal &&
            const DeepCollectionEquality().equals(other.rails, rails) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality()
                .equals(other.serialNumber, serialNumber) &&
            const DeepCollectionEquality()
                .equals(other.transactionStatus, transactionStatus) &&
            const DeepCollectionEquality()
                .equals(other.transactionAddress, transactionAddress) &&
            const DeepCollectionEquality()
                .equals(other.transactionFee, transactionFee) &&
            const DeepCollectionEquality()
                .equals(other.transactionCurrency, transactionCurrency) &&
            const DeepCollectionEquality()
                .equals(other.transactionIdentifier, transactionIdentifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rails),
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(serialNumber),
      const DeepCollectionEquality().hash(transactionStatus),
      const DeepCollectionEquality().hash(transactionAddress),
      const DeepCollectionEquality().hash(transactionFee),
      const DeepCollectionEquality().hash(transactionCurrency),
      const DeepCollectionEquality().hash(transactionIdentifier));

  @JsonKey(ignore: true)
  @override
  _$$_WithdrawalCopyWith<_$_Withdrawal> get copyWith =>
      __$$_WithdrawalCopyWithImpl<_$_Withdrawal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WithdrawalToJson(
      this,
    );
  }
}

abstract class _Withdrawal implements Withdrawal {
  const factory _Withdrawal(
      {final String? rails,
      @JsonKey(name: "transaction_id")
          final String? transactionId,
      @JsonKey(name: "transaction_type")
          final BrTransactionType? transactionType,
      @JsonKey(name: "transaction_serial_number")
          final int? serialNumber,
      @JsonKey(name: "transaction_status")
          final BrTransactionStatus? transactionStatus,
      @JsonKey(name: "transaction_address")
          final String? transactionAddress,
      @JsonKey(name: "transaction_fee")
          final String? transactionFee,
      @JsonKey(name: "transaction_currency")
          final String? transactionCurrency,
      @JsonKey(name: "transaction_identifier")
          final String? transactionIdentifier}) = _$_Withdrawal;

  factory _Withdrawal.fromJson(Map<String, dynamic> json) =
      _$_Withdrawal.fromJson;

  @override
  String? get rails;
  @override
  @JsonKey(name: "transaction_id")
  String? get transactionId;
  @override
  @JsonKey(name: "transaction_type")
  BrTransactionType? get transactionType;
  @override
  @JsonKey(name: "transaction_serial_number")
  int? get serialNumber;
  @override
  @JsonKey(name: "transaction_status")
  BrTransactionStatus? get transactionStatus;
  @override
  @JsonKey(name: "transaction_address")
  String? get transactionAddress;
  @override
  @JsonKey(name: "transaction_fee")
  String? get transactionFee;
  @override
  @JsonKey(name: "transaction_currency")
  String? get transactionCurrency;
  @override
  @JsonKey(name: "transaction_identifier")
  String? get transactionIdentifier;
  @override
  @JsonKey(ignore: true)
  _$$_WithdrawalCopyWith<_$_Withdrawal> get copyWith =>
      throw _privateConstructorUsedError;
}

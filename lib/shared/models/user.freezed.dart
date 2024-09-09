// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionId")
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "verified")
  bool? get verified => throw _privateConstructorUsedError;
  @JsonKey(name: "emailVisibility")
  bool? get emailVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  UserRole get role => throw _privateConstructorUsedError;

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "verified") bool? verified,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? username = null,
    Object? verified = freezed,
    Object? emailVisibility = freezed,
    Object? email = freezed,
    Object? created = null,
    Object? updated = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVisibility: freezed == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "verified") bool? verified,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? username = null,
    Object? verified = freezed,
    Object? emailVisibility = freezed,
    Object? email = freezed,
    Object? created = null,
    Object? updated = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_$UserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVisibility: freezed == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl with DiagnosticableTreeMixin implements _UserDto {
  const _$UserDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "verified") this.verified,
      @JsonKey(name: "emailVisibility") this.emailVisibility,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "avatarUrl") this.avatarUrl,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "role") required this.role});

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "collectionId")
  final String collectionId;
  @override
  @JsonKey(name: "collectionName")
  final String collectionName;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "verified")
  final bool? verified;
  @override
  @JsonKey(name: "emailVisibility")
  final bool? emailVisibility;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "updated")
  final DateTime updated;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "avatarUrl")
  final String? avatarUrl;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "role")
  final UserRole role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, username: $username, verified: $verified, emailVisibility: $emailVisibility, email: $email, created: $created, updated: $updated, name: $name, avatarUrl: $avatarUrl, phone: $phone, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('verified', verified))
      ..add(DiagnosticsProperty('emailVisibility', emailVisibility))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.emailVisibility, emailVisibility) ||
                other.emailVisibility == emailVisibility) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      collectionName,
      username,
      verified,
      emailVisibility,
      email,
      created,
      updated,
      name,
      avatarUrl,
      phone,
      role);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "username") required final String username,
      @JsonKey(name: "verified") final bool? verified,
      @JsonKey(name: "emailVisibility") final bool? emailVisibility,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "avatarUrl") final String? avatarUrl,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "role") required final UserRole role}) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "collectionId")
  String get collectionId;
  @override
  @JsonKey(name: "collectionName")
  String get collectionName;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "verified")
  bool? get verified;
  @override
  @JsonKey(name: "emailVisibility")
  bool? get emailVisibility;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "updated")
  DateTime get updated;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "role")
  UserRole get role;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCreationDto _$UserCreationDtoFromJson(Map<String, dynamic> json) {
  return _UserCreationDto.fromJson(json);
}

/// @nodoc
mixin _$UserCreationDto {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  set username(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "emailVisibility")
  bool? get emailVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: "emailVisibility")
  set emailVisibility(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  set password(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "passwordConfirm")
  String get passwordConfirm => throw _privateConstructorUsedError;
  @JsonKey(name: "passwordConfirm")
  set passwordConfirm(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "avatarUrl")
  set avatarUrl(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  set phone(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  UserRole get role => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  set role(UserRole value) => throw _privateConstructorUsedError;

  /// Serializes this UserCreationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCreationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCreationDtoCopyWith<UserCreationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreationDtoCopyWith<$Res> {
  factory $UserCreationDtoCopyWith(
          UserCreationDto value, $Res Function(UserCreationDto) then) =
      _$UserCreationDtoCopyWithImpl<$Res, UserCreationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirm") String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class _$UserCreationDtoCopyWithImpl<$Res, $Val extends UserCreationDto>
    implements $UserCreationDtoCopyWith<$Res> {
  _$UserCreationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCreationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVisibility = freezed,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVisibility: freezed == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCreationDtoImplCopyWith<$Res>
    implements $UserCreationDtoCopyWith<$Res> {
  factory _$$UserCreationDtoImplCopyWith(_$UserCreationDtoImpl value,
          $Res Function(_$UserCreationDtoImpl) then) =
      __$$UserCreationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirm") String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class __$$UserCreationDtoImplCopyWithImpl<$Res>
    extends _$UserCreationDtoCopyWithImpl<$Res, _$UserCreationDtoImpl>
    implements _$$UserCreationDtoImplCopyWith<$Res> {
  __$$UserCreationDtoImplCopyWithImpl(
      _$UserCreationDtoImpl _value, $Res Function(_$UserCreationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCreationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVisibility = freezed,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_$UserCreationDtoImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVisibility: freezed == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$UserCreationDtoImpl
    with DiagnosticableTreeMixin
    implements _UserCreationDto {
  _$UserCreationDtoImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "emailVisibility") this.emailVisibility,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "passwordConfirm") required this.passwordConfirm,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "avatarUrl") this.avatarUrl,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "role") required this.role});

  factory _$UserCreationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCreationDtoImplFromJson(json);

  @override
  @JsonKey(name: "username")
  String? username;
  @override
  @JsonKey(name: "email")
  String? email;
  @override
  @JsonKey(name: "emailVisibility")
  bool? emailVisibility;
  @override
  @JsonKey(name: "password")
  String password;
  @override
  @JsonKey(name: "passwordConfirm")
  String passwordConfirm;
  @override
  @JsonKey(name: "name")
  String? name;
  @override
  @JsonKey(name: "avatarUrl")
  String? avatarUrl;
  @override
  @JsonKey(name: "phone")
  String? phone;
  @override
  @JsonKey(name: "role")
  UserRole role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserCreationDto(username: $username, email: $email, emailVisibility: $emailVisibility, password: $password, passwordConfirm: $passwordConfirm, name: $name, avatarUrl: $avatarUrl, phone: $phone, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCreationDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVisibility', emailVisibility))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordConfirm', passwordConfirm))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('role', role));
  }

  /// Create a copy of UserCreationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreationDtoImplCopyWith<_$UserCreationDtoImpl> get copyWith =>
      __$$UserCreationDtoImplCopyWithImpl<_$UserCreationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreationDtoImplToJson(
      this,
    );
  }
}

abstract class _UserCreationDto implements UserCreationDto {
  factory _UserCreationDto(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "password") required String password,
      @JsonKey(name: "passwordConfirm") required String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") required UserRole role}) = _$UserCreationDtoImpl;

  factory _UserCreationDto.fromJson(Map<String, dynamic> json) =
      _$UserCreationDtoImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @JsonKey(name: "username")
  set username(String? value);
  @override
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "email")
  set email(String? value);
  @override
  @JsonKey(name: "emailVisibility")
  bool? get emailVisibility;
  @JsonKey(name: "emailVisibility")
  set emailVisibility(bool? value);
  @override
  @JsonKey(name: "password")
  String get password;
  @JsonKey(name: "password")
  set password(String value);
  @override
  @JsonKey(name: "passwordConfirm")
  String get passwordConfirm;
  @JsonKey(name: "passwordConfirm")
  set passwordConfirm(String value);
  @override
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "name")
  set name(String? value);
  @override
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl;
  @JsonKey(name: "avatarUrl")
  set avatarUrl(String? value);
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "phone")
  set phone(String? value);
  @override
  @JsonKey(name: "role")
  UserRole get role;
  @JsonKey(name: "role")
  set role(UserRole value);

  /// Create a copy of UserCreationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreationDtoImplCopyWith<_$UserCreationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdateDto _$UserUpdateDtoFromJson(Map<String, dynamic> json) {
  return _UserUpdateDto.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateDto {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  set username(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "emailVisibility")
  bool? get emailVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: "emailVisibility")
  set emailVisibility(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPassword")
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPassword")
  set oldPassword(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  set password(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "passwordConfirm")
  String? get passwordConfirm => throw _privateConstructorUsedError;
  @JsonKey(name: "passwordConfirm")
  set passwordConfirm(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "avatarUrl")
  set avatarUrl(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  set phone(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  UserRole get role => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  set role(UserRole value) => throw _privateConstructorUsedError;

  /// Serializes this UserUpdateDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateDtoCopyWith<UserUpdateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateDtoCopyWith<$Res> {
  factory $UserUpdateDtoCopyWith(
          UserUpdateDto value, $Res Function(UserUpdateDto) then) =
      _$UserUpdateDtoCopyWithImpl<$Res, UserUpdateDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "oldPassword") String? oldPassword,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "passwordConfirm") String? passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class _$UserUpdateDtoCopyWithImpl<$Res, $Val extends UserUpdateDto>
    implements $UserUpdateDtoCopyWith<$Res> {
  _$UserUpdateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? emailVisibility = freezed,
    Object? oldPassword = freezed,
    Object? password = freezed,
    Object? passwordConfirm = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVisibility: freezed == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirm: freezed == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateDtoImplCopyWith<$Res>
    implements $UserUpdateDtoCopyWith<$Res> {
  factory _$$UserUpdateDtoImplCopyWith(
          _$UserUpdateDtoImpl value, $Res Function(_$UserUpdateDtoImpl) then) =
      __$$UserUpdateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "oldPassword") String? oldPassword,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "passwordConfirm") String? passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class __$$UserUpdateDtoImplCopyWithImpl<$Res>
    extends _$UserUpdateDtoCopyWithImpl<$Res, _$UserUpdateDtoImpl>
    implements _$$UserUpdateDtoImplCopyWith<$Res> {
  __$$UserUpdateDtoImplCopyWithImpl(
      _$UserUpdateDtoImpl _value, $Res Function(_$UserUpdateDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? emailVisibility = freezed,
    Object? oldPassword = freezed,
    Object? password = freezed,
    Object? passwordConfirm = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_$UserUpdateDtoImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVisibility: freezed == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirm: freezed == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$UserUpdateDtoImpl
    with DiagnosticableTreeMixin
    implements _UserUpdateDto {
  _$UserUpdateDtoImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "emailVisibility") this.emailVisibility,
      @JsonKey(name: "oldPassword") this.oldPassword,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "passwordConfirm") this.passwordConfirm,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "avatarUrl") this.avatarUrl,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "role") required this.role});

  factory _$UserUpdateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateDtoImplFromJson(json);

  @override
  @JsonKey(name: "username")
  String? username;
  @override
  @JsonKey(name: "emailVisibility")
  bool? emailVisibility;
  @override
  @JsonKey(name: "oldPassword")
  String? oldPassword;
  @override
  @JsonKey(name: "password")
  String? password;
  @override
  @JsonKey(name: "passwordConfirm")
  String? passwordConfirm;
  @override
  @JsonKey(name: "name")
  String? name;
  @override
  @JsonKey(name: "avatarUrl")
  String? avatarUrl;
  @override
  @JsonKey(name: "phone")
  String? phone;
  @override
  @JsonKey(name: "role")
  UserRole role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserUpdateDto(username: $username, emailVisibility: $emailVisibility, oldPassword: $oldPassword, password: $password, passwordConfirm: $passwordConfirm, name: $name, avatarUrl: $avatarUrl, phone: $phone, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserUpdateDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('emailVisibility', emailVisibility))
      ..add(DiagnosticsProperty('oldPassword', oldPassword))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordConfirm', passwordConfirm))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('role', role));
  }

  /// Create a copy of UserUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateDtoImplCopyWith<_$UserUpdateDtoImpl> get copyWith =>
      __$$UserUpdateDtoImplCopyWithImpl<_$UserUpdateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateDtoImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateDto implements UserUpdateDto {
  factory _UserUpdateDto(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "oldPassword") String? oldPassword,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "passwordConfirm") String? passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") required UserRole role}) = _$UserUpdateDtoImpl;

  factory _UserUpdateDto.fromJson(Map<String, dynamic> json) =
      _$UserUpdateDtoImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @JsonKey(name: "username")
  set username(String? value);
  @override
  @JsonKey(name: "emailVisibility")
  bool? get emailVisibility;
  @JsonKey(name: "emailVisibility")
  set emailVisibility(bool? value);
  @override
  @JsonKey(name: "oldPassword")
  String? get oldPassword;
  @JsonKey(name: "oldPassword")
  set oldPassword(String? value);
  @override
  @JsonKey(name: "password")
  String? get password;
  @JsonKey(name: "password")
  set password(String? value);
  @override
  @JsonKey(name: "passwordConfirm")
  String? get passwordConfirm;
  @JsonKey(name: "passwordConfirm")
  set passwordConfirm(String? value);
  @override
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "name")
  set name(String? value);
  @override
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl;
  @JsonKey(name: "avatarUrl")
  set avatarUrl(String? value);
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @JsonKey(name: "phone")
  set phone(String? value);
  @override
  @JsonKey(name: "role")
  UserRole get role;
  @JsonKey(name: "role")
  set role(UserRole value);

  /// Create a copy of UserUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateDtoImplCopyWith<_$UserUpdateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
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

  /// Serializes this UserDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
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
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDTO
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
abstract class _$$UserDTOImplCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$UserDTOImplCopyWith(
          _$UserDTOImpl value, $Res Function(_$UserDTOImpl) then) =
      __$$UserDTOImplCopyWithImpl<$Res>;
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
class __$$UserDTOImplCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$UserDTOImpl>
    implements _$$UserDTOImplCopyWith<$Res> {
  __$$UserDTOImplCopyWithImpl(
      _$UserDTOImpl _value, $Res Function(_$UserDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDTO
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
    return _then(_$UserDTOImpl(
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
class _$UserDTOImpl with DiagnosticableTreeMixin implements _UserDTO {
  const _$UserDTOImpl(
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

  factory _$UserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOImplFromJson(json);

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
    return 'UserDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, username: $username, verified: $verified, emailVisibility: $emailVisibility, email: $email, created: $created, updated: $updated, name: $name, avatarUrl: $avatarUrl, phone: $phone, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDTO'))
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
            other is _$UserDTOImpl &&
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

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      __$$UserDTOImplCopyWithImpl<_$UserDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOImplToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
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
      @JsonKey(name: "role") required final UserRole role}) = _$UserDTOImpl;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$UserDTOImpl.fromJson;

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

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCreationDTO _$UserCreationDTOFromJson(Map<String, dynamic> json) {
  return _UserCreationDTO.fromJson(json);
}

/// @nodoc
mixin _$UserCreationDTO {
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

  /// Serializes this UserCreationDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCreationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCreationDTOCopyWith<UserCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreationDTOCopyWith<$Res> {
  factory $UserCreationDTOCopyWith(
          UserCreationDTO value, $Res Function(UserCreationDTO) then) =
      _$UserCreationDTOCopyWithImpl<$Res, UserCreationDTO>;
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
class _$UserCreationDTOCopyWithImpl<$Res, $Val extends UserCreationDTO>
    implements $UserCreationDTOCopyWith<$Res> {
  _$UserCreationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCreationDTO
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
abstract class _$$UserCreationDTOImplCopyWith<$Res>
    implements $UserCreationDTOCopyWith<$Res> {
  factory _$$UserCreationDTOImplCopyWith(_$UserCreationDTOImpl value,
          $Res Function(_$UserCreationDTOImpl) then) =
      __$$UserCreationDTOImplCopyWithImpl<$Res>;
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
class __$$UserCreationDTOImplCopyWithImpl<$Res>
    extends _$UserCreationDTOCopyWithImpl<$Res, _$UserCreationDTOImpl>
    implements _$$UserCreationDTOImplCopyWith<$Res> {
  __$$UserCreationDTOImplCopyWithImpl(
      _$UserCreationDTOImpl _value, $Res Function(_$UserCreationDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCreationDTO
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
    return _then(_$UserCreationDTOImpl(
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
class _$UserCreationDTOImpl
    with DiagnosticableTreeMixin
    implements _UserCreationDTO {
  _$UserCreationDTOImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "emailVisibility") this.emailVisibility,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "passwordConfirm") required this.passwordConfirm,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "avatarUrl") this.avatarUrl,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "role") required this.role});

  factory _$UserCreationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCreationDTOImplFromJson(json);

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
    return 'UserCreationDTO(username: $username, email: $email, emailVisibility: $emailVisibility, password: $password, passwordConfirm: $passwordConfirm, name: $name, avatarUrl: $avatarUrl, phone: $phone, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCreationDTO'))
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

  /// Create a copy of UserCreationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreationDTOImplCopyWith<_$UserCreationDTOImpl> get copyWith =>
      __$$UserCreationDTOImplCopyWithImpl<_$UserCreationDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreationDTOImplToJson(
      this,
    );
  }
}

abstract class _UserCreationDTO implements UserCreationDTO {
  factory _UserCreationDTO(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "password") required String password,
      @JsonKey(name: "passwordConfirm") required String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") required UserRole role}) = _$UserCreationDTOImpl;

  factory _UserCreationDTO.fromJson(Map<String, dynamic> json) =
      _$UserCreationDTOImpl.fromJson;

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

  /// Create a copy of UserCreationDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreationDTOImplCopyWith<_$UserCreationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdateDTO _$UserUpdateDTOFromJson(Map<String, dynamic> json) {
  return _UserUpdateDTO.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateDTO {
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
  @JsonKey(name: "oldPassword")
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPassword")
  set oldPassword(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  set password(String? value) => throw _privateConstructorUsedError;
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

  /// Serializes this UserUpdateDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdateDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateDTOCopyWith<UserUpdateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateDTOCopyWith<$Res> {
  factory $UserUpdateDTOCopyWith(
          UserUpdateDTO value, $Res Function(UserUpdateDTO) then) =
      _$UserUpdateDTOCopyWithImpl<$Res, UserUpdateDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "oldPassword") String? oldPassword,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "passwordConfirm") String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class _$UserUpdateDTOCopyWithImpl<$Res, $Val extends UserUpdateDTO>
    implements $UserUpdateDTOCopyWith<$Res> {
  _$UserUpdateDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVisibility = freezed,
    Object? oldPassword = freezed,
    Object? password = freezed,
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
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$UserUpdateDTOImplCopyWith<$Res>
    implements $UserUpdateDTOCopyWith<$Res> {
  factory _$$UserUpdateDTOImplCopyWith(
          _$UserUpdateDTOImpl value, $Res Function(_$UserUpdateDTOImpl) then) =
      __$$UserUpdateDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "oldPassword") String? oldPassword,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "passwordConfirm") String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") UserRole role});
}

/// @nodoc
class __$$UserUpdateDTOImplCopyWithImpl<$Res>
    extends _$UserUpdateDTOCopyWithImpl<$Res, _$UserUpdateDTOImpl>
    implements _$$UserUpdateDTOImplCopyWith<$Res> {
  __$$UserUpdateDTOImplCopyWithImpl(
      _$UserUpdateDTOImpl _value, $Res Function(_$UserUpdateDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVisibility = freezed,
    Object? oldPassword = freezed,
    Object? password = freezed,
    Object? passwordConfirm = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? phone = freezed,
    Object? role = null,
  }) {
    return _then(_$UserUpdateDTOImpl(
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
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$UserUpdateDTOImpl
    with DiagnosticableTreeMixin
    implements _UserUpdateDTO {
  _$UserUpdateDTOImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "emailVisibility") this.emailVisibility,
      @JsonKey(name: "oldPassword") this.oldPassword,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "passwordConfirm") required this.passwordConfirm,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "avatarUrl") this.avatarUrl,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "role") required this.role});

  factory _$UserUpdateDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateDTOImplFromJson(json);

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
  @JsonKey(name: "oldPassword")
  String? oldPassword;
  @override
  @JsonKey(name: "password")
  String? password;
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
    return 'UserUpdateDTO(username: $username, email: $email, emailVisibility: $emailVisibility, oldPassword: $oldPassword, password: $password, passwordConfirm: $passwordConfirm, name: $name, avatarUrl: $avatarUrl, phone: $phone, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserUpdateDTO'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVisibility', emailVisibility))
      ..add(DiagnosticsProperty('oldPassword', oldPassword))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordConfirm', passwordConfirm))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('role', role));
  }

  /// Create a copy of UserUpdateDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateDTOImplCopyWith<_$UserUpdateDTOImpl> get copyWith =>
      __$$UserUpdateDTOImplCopyWithImpl<_$UserUpdateDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateDTOImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateDTO implements UserUpdateDTO {
  factory _UserUpdateDTO(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "emailVisibility") bool? emailVisibility,
      @JsonKey(name: "oldPassword") String? oldPassword,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "passwordConfirm") required String passwordConfirm,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatarUrl") String? avatarUrl,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "role") required UserRole role}) = _$UserUpdateDTOImpl;

  factory _UserUpdateDTO.fromJson(Map<String, dynamic> json) =
      _$UserUpdateDTOImpl.fromJson;

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

  /// Create a copy of UserUpdateDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateDTOImplCopyWith<_$UserUpdateDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

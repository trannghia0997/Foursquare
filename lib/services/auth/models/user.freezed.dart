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

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  set avatar(String? value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  set phone(String? value) => throw _privateConstructorUsedError;
  StaffStatus get staffStatus => throw _privateConstructorUsedError;
  set staffStatus(StaffStatus value) => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  set role(Role value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_unit_id')
  String? get workUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_unit_id')
  set workUnitId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      String? avatar,
      String email,
      String password,
      String? name,
      String? phone,
      StaffStatus staffStatus,
      Role role,
      @JsonKey(name: 'work_unit_id') String? workUnitId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
    Object? phone = freezed,
    Object? staffStatus = null,
    Object? role = null,
    Object? workUnitId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      staffStatus: null == staffStatus
          ? _value.staffStatus
          : staffStatus // ignore: cast_nullable_to_non_nullable
              as StaffStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      workUnitId: freezed == workUnitId
          ? _value.workUnitId
          : workUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? avatar,
      String email,
      String password,
      String? name,
      String? phone,
      StaffStatus staffStatus,
      Role role,
      @JsonKey(name: 'work_unit_id') String? workUnitId});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
    Object? phone = freezed,
    Object? staffStatus = null,
    Object? role = null,
    Object? workUnitId = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      staffStatus: null == staffStatus
          ? _value.staffStatus
          : staffStatus // ignore: cast_nullable_to_non_nullable
              as StaffStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      workUnitId: freezed == workUnitId
          ? _value.workUnitId
          : workUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User with DiagnosticableTreeMixin {
  _$UserImpl(
      {this.id,
      this.avatar,
      required this.email,
      required this.password,
      this.name,
      this.phone,
      required this.staffStatus,
      required this.role,
      @JsonKey(name: 'work_unit_id') this.workUnitId})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  String? id;
  @override
  String? avatar;
  @override
  String email;
  @override
  String password;
  @override
  String? name;
  @override
  String? phone;
  @override
  StaffStatus staffStatus;
  @override
  Role role;
  @override
  @JsonKey(name: 'work_unit_id')
  String? workUnitId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, avatar: $avatar, email: $email, password: $password, name: $name, phone: $phone, staffStatus: $staffStatus, role: $role, workUnitId: $workUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('staffStatus', staffStatus))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('workUnitId', workUnitId));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {String? id,
      String? avatar,
      required String email,
      required String password,
      String? name,
      String? phone,
      required StaffStatus staffStatus,
      required Role role,
      @JsonKey(name: 'work_unit_id') String? workUnitId}) = _$UserImpl;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get avatar;
  set avatar(String? value);
  @override
  String get email;
  set email(String value);
  @override
  String get password;
  set password(String value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get phone;
  set phone(String? value);
  @override
  StaffStatus get staffStatus;
  set staffStatus(StaffStatus value);
  @override
  Role get role;
  set role(Role value);
  @override
  @JsonKey(name: 'work_unit_id')
  String? get workUnitId;
  @JsonKey(name: 'work_unit_id')
  set workUnitId(String? value);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  String? get avatar => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get emailVisibility => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_unit_id')
  String? get workUnitId => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? avatar,
      String email,
      bool emailVisibility,
      String? name,
      String? phone,
      Role role,
      String username,
      @JsonKey(name: 'work_unit_id') String? workUnitId,
      bool verified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? email = null,
    Object? emailVisibility = null,
    Object? name = freezed,
    Object? phone = freezed,
    Object? role = null,
    Object? username = null,
    Object? workUnitId = freezed,
    Object? verified = null,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      workUnitId: freezed == workUnitId
          ? _value.workUnitId
          : workUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
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
      {String? avatar,
      String email,
      bool emailVisibility,
      String? name,
      String? phone,
      Role role,
      String username,
      @JsonKey(name: 'work_unit_id') String? workUnitId,
      bool verified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? email = null,
    Object? emailVisibility = null,
    Object? name = freezed,
    Object? phone = freezed,
    Object? role = null,
    Object? username = null,
    Object? workUnitId = freezed,
    Object? verified = null,
    Object? record = freezed,
  }) {
    return _then(_$UserImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      workUnitId: freezed == workUnitId
          ? _value.workUnitId
          : workUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {this.avatar,
      required this.email,
      required this.emailVisibility,
      this.name,
      this.phone,
      required this.role,
      required this.username,
      @JsonKey(name: 'work_unit_id') this.workUnitId,
      required this.verified,
      @JsonKey(includeFromJson: false, includeToJson: false) this.record});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? avatar;
  @override
  final String email;
  @override
  final bool emailVisibility;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final Role role;
  @override
  final String username;
  @override
  @JsonKey(name: 'work_unit_id')
  final String? workUnitId;
  @override
  final bool verified;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RecordModel? record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(avatar: $avatar, email: $email, emailVisibility: $emailVisibility, name: $name, phone: $phone, role: $role, username: $username, workUnitId: $workUnitId, verified: $verified, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVisibility', emailVisibility))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('workUnitId', workUnitId))
      ..add(DiagnosticsProperty('verified', verified))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVisibility, emailVisibility) ||
                other.emailVisibility == emailVisibility) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.workUnitId, workUnitId) ||
                other.workUnitId == workUnitId) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, email, emailVisibility,
      name, phone, role, username, workUnitId, verified, record);

  @JsonKey(ignore: true)
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

abstract class _User implements User {
  const factory _User(
      {final String? avatar,
      required final String email,
      required final bool emailVisibility,
      final String? name,
      final String? phone,
      required final Role role,
      required final String username,
      @JsonKey(name: 'work_unit_id') final String? workUnitId,
      required final bool verified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RecordModel? record}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get avatar;
  @override
  String get email;
  @override
  bool get emailVisibility;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  Role get role;
  @override
  String get username;
  @override
  @JsonKey(name: 'work_unit_id')
  String? get workUnitId;
  @override
  bool get verified;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

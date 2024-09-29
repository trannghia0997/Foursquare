// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffInfoDto _$StaffInfoDtoFromJson(Map<String, dynamic> json) {
  return _StaffInfoDto.fromJson(json);
}

/// @nodoc
mixin _$StaffInfoDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionId")
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  StaffStatus get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  StaffRole get role => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  String? get workingUnitId => throw _privateConstructorUsedError;

  /// Serializes this StaffInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffInfoDtoCopyWith<StaffInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoDtoCopyWith<$Res> {
  factory $StaffInfoDtoCopyWith(
          StaffInfoDto value, $Res Function(StaffInfoDto) then) =
      _$StaffInfoDtoCopyWithImpl<$Res, StaffInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "statusCode") StaffStatus statusCode,
      @JsonKey(name: "role") StaffRole role,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "workingUnitId") String? workingUnitId});
}

/// @nodoc
class _$StaffInfoDtoCopyWithImpl<$Res, $Val extends StaffInfoDto>
    implements $StaffInfoDtoCopyWith<$Res> {
  _$StaffInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? statusCode = null,
    Object? role = null,
    Object? userId = null,
    Object? workingUnitId = freezed,
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as StaffStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StaffRole,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: freezed == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffInfoDtoImplCopyWith<$Res>
    implements $StaffInfoDtoCopyWith<$Res> {
  factory _$$StaffInfoDtoImplCopyWith(
          _$StaffInfoDtoImpl value, $Res Function(_$StaffInfoDtoImpl) then) =
      __$$StaffInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "statusCode") StaffStatus statusCode,
      @JsonKey(name: "role") StaffRole role,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "workingUnitId") String? workingUnitId});
}

/// @nodoc
class __$$StaffInfoDtoImplCopyWithImpl<$Res>
    extends _$StaffInfoDtoCopyWithImpl<$Res, _$StaffInfoDtoImpl>
    implements _$$StaffInfoDtoImplCopyWith<$Res> {
  __$$StaffInfoDtoImplCopyWithImpl(
      _$StaffInfoDtoImpl _value, $Res Function(_$StaffInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? statusCode = null,
    Object? role = null,
    Object? userId = null,
    Object? workingUnitId = freezed,
  }) {
    return _then(_$StaffInfoDtoImpl(
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as StaffStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StaffRole,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: freezed == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffInfoDtoImpl with DiagnosticableTreeMixin implements _StaffInfoDto {
  const _$StaffInfoDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "workingUnitId") this.workingUnitId});

  factory _$StaffInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffInfoDtoImplFromJson(json);

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
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "updated")
  final DateTime updated;
  @override
  @JsonKey(name: "statusCode")
  final StaffStatus statusCode;
  @override
  @JsonKey(name: "role")
  final StaffRole role;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "workingUnitId")
  final String? workingUnitId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StaffInfoDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, statusCode: $statusCode, role: $role, userId: $userId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfoDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.workingUnitId, workingUnitId) ||
                other.workingUnitId == workingUnitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, statusCode, role, userId, workingUnitId);

  /// Create a copy of StaffInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoDtoImplCopyWith<_$StaffInfoDtoImpl> get copyWith =>
      __$$StaffInfoDtoImplCopyWithImpl<_$StaffInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _StaffInfoDto implements StaffInfoDto {
  const factory _StaffInfoDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "statusCode") required final StaffStatus statusCode,
          @JsonKey(name: "role") required final StaffRole role,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "workingUnitId") final String? workingUnitId}) =
      _$StaffInfoDtoImpl;

  factory _StaffInfoDto.fromJson(Map<String, dynamic> json) =
      _$StaffInfoDtoImpl.fromJson;

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
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "updated")
  DateTime get updated;
  @override
  @JsonKey(name: "statusCode")
  StaffStatus get statusCode;
  @override
  @JsonKey(name: "role")
  StaffRole get role;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "workingUnitId")
  String? get workingUnitId;

  /// Create a copy of StaffInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoDtoImplCopyWith<_$StaffInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffInfoEditDto _$StaffInfoEditDtoFromJson(Map<String, dynamic> json) {
  return _StaffInfoEditDto.fromJson(json);
}

/// @nodoc
mixin _$StaffInfoEditDto {
  @JsonKey(name: "statusCode")
  StaffStatus get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  set statusCode(StaffStatus value) => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  StaffRole get role => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  set role(StaffRole value) => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  set userId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  String? get workingUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  set workingUnitId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this StaffInfoEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffInfoEditDtoCopyWith<StaffInfoEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoEditDtoCopyWith<$Res> {
  factory $StaffInfoEditDtoCopyWith(
          StaffInfoEditDto value, $Res Function(StaffInfoEditDto) then) =
      _$StaffInfoEditDtoCopyWithImpl<$Res, StaffInfoEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") StaffStatus statusCode,
      @JsonKey(name: "role") StaffRole role,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "workingUnitId") String? workingUnitId});
}

/// @nodoc
class _$StaffInfoEditDtoCopyWithImpl<$Res, $Val extends StaffInfoEditDto>
    implements $StaffInfoEditDtoCopyWith<$Res> {
  _$StaffInfoEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? role = null,
    Object? userId = null,
    Object? workingUnitId = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as StaffStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StaffRole,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: freezed == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffInfoEditDtoImplCopyWith<$Res>
    implements $StaffInfoEditDtoCopyWith<$Res> {
  factory _$$StaffInfoEditDtoImplCopyWith(_$StaffInfoEditDtoImpl value,
          $Res Function(_$StaffInfoEditDtoImpl) then) =
      __$$StaffInfoEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") StaffStatus statusCode,
      @JsonKey(name: "role") StaffRole role,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "workingUnitId") String? workingUnitId});
}

/// @nodoc
class __$$StaffInfoEditDtoImplCopyWithImpl<$Res>
    extends _$StaffInfoEditDtoCopyWithImpl<$Res, _$StaffInfoEditDtoImpl>
    implements _$$StaffInfoEditDtoImplCopyWith<$Res> {
  __$$StaffInfoEditDtoImplCopyWithImpl(_$StaffInfoEditDtoImpl _value,
      $Res Function(_$StaffInfoEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? role = null,
    Object? userId = null,
    Object? workingUnitId = freezed,
  }) {
    return _then(_$StaffInfoEditDtoImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as StaffStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as StaffRole,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: freezed == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$StaffInfoEditDtoImpl
    with DiagnosticableTreeMixin
    implements _StaffInfoEditDto {
  _$StaffInfoEditDtoImpl(
      {@JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "workingUnitId") this.workingUnitId});

  factory _$StaffInfoEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffInfoEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "statusCode")
  StaffStatus statusCode;
  @override
  @JsonKey(name: "role")
  StaffRole role;
  @override
  @JsonKey(name: "userId")
  String userId;
  @override
  @JsonKey(name: "workingUnitId")
  String? workingUnitId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StaffInfoEditDto(statusCode: $statusCode, role: $role, userId: $userId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfoEditDto'))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  /// Create a copy of StaffInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoEditDtoImplCopyWith<_$StaffInfoEditDtoImpl> get copyWith =>
      __$$StaffInfoEditDtoImplCopyWithImpl<_$StaffInfoEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffInfoEditDtoImplToJson(
      this,
    );
  }
}

abstract class _StaffInfoEditDto implements StaffInfoEditDto {
  factory _StaffInfoEditDto(
          {@JsonKey(name: "statusCode") required StaffStatus statusCode,
          @JsonKey(name: "role") required StaffRole role,
          @JsonKey(name: "userId") required String userId,
          @JsonKey(name: "workingUnitId") String? workingUnitId}) =
      _$StaffInfoEditDtoImpl;

  factory _StaffInfoEditDto.fromJson(Map<String, dynamic> json) =
      _$StaffInfoEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "statusCode")
  StaffStatus get statusCode;
  @JsonKey(name: "statusCode")
  set statusCode(StaffStatus value);
  @override
  @JsonKey(name: "role")
  StaffRole get role;
  @JsonKey(name: "role")
  set role(StaffRole value);
  @override
  @JsonKey(name: "userId")
  String get userId;
  @JsonKey(name: "userId")
  set userId(String value);
  @override
  @JsonKey(name: "workingUnitId")
  String? get workingUnitId;
  @JsonKey(name: "workingUnitId")
  set workingUnitId(String? value);

  /// Create a copy of StaffInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoEditDtoImplCopyWith<_$StaffInfoEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

StaffInfoDTO _$StaffInfoDTOFromJson(Map<String, dynamic> json) {
  return _StaffInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$StaffInfoDTO {
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

  /// Serializes this StaffInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffInfoDTOCopyWith<StaffInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoDTOCopyWith<$Res> {
  factory $StaffInfoDTOCopyWith(
          StaffInfoDTO value, $Res Function(StaffInfoDTO) then) =
      _$StaffInfoDTOCopyWithImpl<$Res, StaffInfoDTO>;
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
class _$StaffInfoDTOCopyWithImpl<$Res, $Val extends StaffInfoDTO>
    implements $StaffInfoDTOCopyWith<$Res> {
  _$StaffInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffInfoDTO
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
abstract class _$$StaffInfoDTOImplCopyWith<$Res>
    implements $StaffInfoDTOCopyWith<$Res> {
  factory _$$StaffInfoDTOImplCopyWith(
          _$StaffInfoDTOImpl value, $Res Function(_$StaffInfoDTOImpl) then) =
      __$$StaffInfoDTOImplCopyWithImpl<$Res>;
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
class __$$StaffInfoDTOImplCopyWithImpl<$Res>
    extends _$StaffInfoDTOCopyWithImpl<$Res, _$StaffInfoDTOImpl>
    implements _$$StaffInfoDTOImplCopyWith<$Res> {
  __$$StaffInfoDTOImplCopyWithImpl(
      _$StaffInfoDTOImpl _value, $Res Function(_$StaffInfoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffInfoDTO
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
    return _then(_$StaffInfoDTOImpl(
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
class _$StaffInfoDTOImpl with DiagnosticableTreeMixin implements _StaffInfoDTO {
  const _$StaffInfoDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "workingUnitId") this.workingUnitId});

  factory _$StaffInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffInfoDTOImplFromJson(json);

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
    return 'StaffInfoDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, statusCode: $statusCode, role: $role, userId: $userId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfoDTO'))
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
            other is _$StaffInfoDTOImpl &&
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

  /// Create a copy of StaffInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoDTOImplCopyWith<_$StaffInfoDTOImpl> get copyWith =>
      __$$StaffInfoDTOImplCopyWithImpl<_$StaffInfoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _StaffInfoDTO implements StaffInfoDTO {
  const factory _StaffInfoDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "statusCode") required final StaffStatus statusCode,
          @JsonKey(name: "role") required final StaffRole role,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "workingUnitId") final String? workingUnitId}) =
      _$StaffInfoDTOImpl;

  factory _StaffInfoDTO.fromJson(Map<String, dynamic> json) =
      _$StaffInfoDTOImpl.fromJson;

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

  /// Create a copy of StaffInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoDTOImplCopyWith<_$StaffInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffInfoEditDTO _$StaffInfoEditDTOFromJson(Map<String, dynamic> json) {
  return _StaffInfoEditDTO.fromJson(json);
}

/// @nodoc
mixin _$StaffInfoEditDTO {
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

  /// Serializes this StaffInfoEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffInfoEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffInfoEditDTOCopyWith<StaffInfoEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoEditDTOCopyWith<$Res> {
  factory $StaffInfoEditDTOCopyWith(
          StaffInfoEditDTO value, $Res Function(StaffInfoEditDTO) then) =
      _$StaffInfoEditDTOCopyWithImpl<$Res, StaffInfoEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") StaffStatus statusCode,
      @JsonKey(name: "role") StaffRole role,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "workingUnitId") String? workingUnitId});
}

/// @nodoc
class _$StaffInfoEditDTOCopyWithImpl<$Res, $Val extends StaffInfoEditDTO>
    implements $StaffInfoEditDTOCopyWith<$Res> {
  _$StaffInfoEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffInfoEditDTO
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
abstract class _$$StaffInfoEditDTOImplCopyWith<$Res>
    implements $StaffInfoEditDTOCopyWith<$Res> {
  factory _$$StaffInfoEditDTOImplCopyWith(_$StaffInfoEditDTOImpl value,
          $Res Function(_$StaffInfoEditDTOImpl) then) =
      __$$StaffInfoEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") StaffStatus statusCode,
      @JsonKey(name: "role") StaffRole role,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "workingUnitId") String? workingUnitId});
}

/// @nodoc
class __$$StaffInfoEditDTOImplCopyWithImpl<$Res>
    extends _$StaffInfoEditDTOCopyWithImpl<$Res, _$StaffInfoEditDTOImpl>
    implements _$$StaffInfoEditDTOImplCopyWith<$Res> {
  __$$StaffInfoEditDTOImplCopyWithImpl(_$StaffInfoEditDTOImpl _value,
      $Res Function(_$StaffInfoEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffInfoEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? role = null,
    Object? userId = null,
    Object? workingUnitId = freezed,
  }) {
    return _then(_$StaffInfoEditDTOImpl(
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
class _$StaffInfoEditDTOImpl
    with DiagnosticableTreeMixin
    implements _StaffInfoEditDTO {
  _$StaffInfoEditDTOImpl(
      {@JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "workingUnitId") this.workingUnitId});

  factory _$StaffInfoEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffInfoEditDTOImplFromJson(json);

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
    return 'StaffInfoEditDTO(statusCode: $statusCode, role: $role, userId: $userId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfoEditDTO'))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  /// Create a copy of StaffInfoEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoEditDTOImplCopyWith<_$StaffInfoEditDTOImpl> get copyWith =>
      __$$StaffInfoEditDTOImplCopyWithImpl<_$StaffInfoEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffInfoEditDTOImplToJson(
      this,
    );
  }
}

abstract class _StaffInfoEditDTO implements StaffInfoEditDTO {
  factory _StaffInfoEditDTO(
          {@JsonKey(name: "statusCode") required StaffStatus statusCode,
          @JsonKey(name: "role") required StaffRole role,
          @JsonKey(name: "userId") required String userId,
          @JsonKey(name: "workingUnitId") String? workingUnitId}) =
      _$StaffInfoEditDTOImpl;

  factory _StaffInfoEditDTO.fromJson(Map<String, dynamic> json) =
      _$StaffInfoEditDTOImpl.fromJson;

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

  /// Create a copy of StaffInfoEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoEditDTOImplCopyWith<_$StaffInfoEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

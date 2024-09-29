// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseAssignmentDto _$WarehouseAssignmentDtoFromJson(
    Map<String, dynamic> json) {
  return _WarehouseAssignmentDto.fromJson(json);
}

/// @nodoc
mixin _$WarehouseAssignmentDto {
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
  @JsonKey(name: "status")
  AssignmentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "staffId")
  String? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  String get internalOrderId => throw _privateConstructorUsedError;

  /// Serializes this WarehouseAssignmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseAssignmentDtoCopyWith<WarehouseAssignmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseAssignmentDtoCopyWith<$Res> {
  factory $WarehouseAssignmentDtoCopyWith(WarehouseAssignmentDto value,
          $Res Function(WarehouseAssignmentDto) then) =
      _$WarehouseAssignmentDtoCopyWithImpl<$Res, WarehouseAssignmentDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "staffId") String? staffId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class _$WarehouseAssignmentDtoCopyWithImpl<$Res,
        $Val extends WarehouseAssignmentDto>
    implements $WarehouseAssignmentDtoCopyWith<$Res> {
  _$WarehouseAssignmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? status = null,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? staffId = freezed,
    Object? internalOrderId = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseAssignmentDtoImplCopyWith<$Res>
    implements $WarehouseAssignmentDtoCopyWith<$Res> {
  factory _$$WarehouseAssignmentDtoImplCopyWith(
          _$WarehouseAssignmentDtoImpl value,
          $Res Function(_$WarehouseAssignmentDtoImpl) then) =
      __$$WarehouseAssignmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "staffId") String? staffId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class __$$WarehouseAssignmentDtoImplCopyWithImpl<$Res>
    extends _$WarehouseAssignmentDtoCopyWithImpl<$Res,
        _$WarehouseAssignmentDtoImpl>
    implements _$$WarehouseAssignmentDtoImplCopyWith<$Res> {
  __$$WarehouseAssignmentDtoImplCopyWithImpl(
      _$WarehouseAssignmentDtoImpl _value,
      $Res Function(_$WarehouseAssignmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? status = null,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? staffId = freezed,
    Object? internalOrderId = null,
  }) {
    return _then(_$WarehouseAssignmentDtoImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseAssignmentDtoImpl
    with DiagnosticableTreeMixin
    implements _WarehouseAssignmentDto {
  const _$WarehouseAssignmentDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "staffId") this.staffId,
      @JsonKey(name: "internalOrderId") required this.internalOrderId});

  factory _$WarehouseAssignmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseAssignmentDtoImplFromJson(json);

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
  @JsonKey(name: "status")
  final AssignmentStatus status;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "otherInfo")
  final String? otherInfo;
  @override
  @JsonKey(name: "staffId")
  final String? staffId;
  @override
  @JsonKey(name: "internalOrderId")
  final String internalOrderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarehouseAssignmentDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, status: $status, note: $note, otherInfo: $otherInfo, staffId: $staffId, internalOrderId: $internalOrderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarehouseAssignmentDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('staffId', staffId))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseAssignmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.internalOrderId, internalOrderId) ||
                other.internalOrderId == internalOrderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, status, note, otherInfo, staffId, internalOrderId);

  /// Create a copy of WarehouseAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseAssignmentDtoImplCopyWith<_$WarehouseAssignmentDtoImpl>
      get copyWith => __$$WarehouseAssignmentDtoImplCopyWithImpl<
          _$WarehouseAssignmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseAssignmentDtoImplToJson(
      this,
    );
  }
}

abstract class _WarehouseAssignmentDto implements WarehouseAssignmentDto {
  const factory _WarehouseAssignmentDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "status") required final AssignmentStatus status,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "otherInfo") final String? otherInfo,
      @JsonKey(name: "staffId") final String? staffId,
      @JsonKey(name: "internalOrderId")
      required final String internalOrderId}) = _$WarehouseAssignmentDtoImpl;

  factory _WarehouseAssignmentDto.fromJson(Map<String, dynamic> json) =
      _$WarehouseAssignmentDtoImpl.fromJson;

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
  @JsonKey(name: "status")
  AssignmentStatus get status;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "otherInfo")
  String? get otherInfo;
  @override
  @JsonKey(name: "staffId")
  String? get staffId;
  @override
  @JsonKey(name: "internalOrderId")
  String get internalOrderId;

  /// Create a copy of WarehouseAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentDtoImplCopyWith<_$WarehouseAssignmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WarehouseAssignmentEditDto _$WarehouseAssignmentEditDtoFromJson(
    Map<String, dynamic> json) {
  return _WarehouseAssignmentEditDto.fromJson(json);
}

/// @nodoc
mixin _$WarehouseAssignmentEditDto {
  @JsonKey(name: "status")
  AssignmentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(AssignmentStatus value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  set otherInfo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "staffId")
  String? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: "staffId")
  set staffId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  String get internalOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  set internalOrderId(String value) => throw _privateConstructorUsedError;

  /// Serializes this WarehouseAssignmentEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseAssignmentEditDtoCopyWith<WarehouseAssignmentEditDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseAssignmentEditDtoCopyWith<$Res> {
  factory $WarehouseAssignmentEditDtoCopyWith(WarehouseAssignmentEditDto value,
          $Res Function(WarehouseAssignmentEditDto) then) =
      _$WarehouseAssignmentEditDtoCopyWithImpl<$Res,
          WarehouseAssignmentEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "staffId") String? staffId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class _$WarehouseAssignmentEditDtoCopyWithImpl<$Res,
        $Val extends WarehouseAssignmentEditDto>
    implements $WarehouseAssignmentEditDtoCopyWith<$Res> {
  _$WarehouseAssignmentEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? staffId = freezed,
    Object? internalOrderId = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseAssignmentEditDtoImplCopyWith<$Res>
    implements $WarehouseAssignmentEditDtoCopyWith<$Res> {
  factory _$$WarehouseAssignmentEditDtoImplCopyWith(
          _$WarehouseAssignmentEditDtoImpl value,
          $Res Function(_$WarehouseAssignmentEditDtoImpl) then) =
      __$$WarehouseAssignmentEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "staffId") String? staffId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class __$$WarehouseAssignmentEditDtoImplCopyWithImpl<$Res>
    extends _$WarehouseAssignmentEditDtoCopyWithImpl<$Res,
        _$WarehouseAssignmentEditDtoImpl>
    implements _$$WarehouseAssignmentEditDtoImplCopyWith<$Res> {
  __$$WarehouseAssignmentEditDtoImplCopyWithImpl(
      _$WarehouseAssignmentEditDtoImpl _value,
      $Res Function(_$WarehouseAssignmentEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? staffId = freezed,
    Object? internalOrderId = null,
  }) {
    return _then(_$WarehouseAssignmentEditDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WarehouseAssignmentEditDtoImpl
    with DiagnosticableTreeMixin
    implements _WarehouseAssignmentEditDto {
  _$WarehouseAssignmentEditDtoImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "staffId") this.staffId,
      @JsonKey(name: "internalOrderId") required this.internalOrderId});

  factory _$WarehouseAssignmentEditDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseAssignmentEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "status")
  AssignmentStatus status;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "otherInfo")
  String? otherInfo;
  @override
  @JsonKey(name: "staffId")
  String? staffId;
  @override
  @JsonKey(name: "internalOrderId")
  String internalOrderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarehouseAssignmentEditDto(status: $status, note: $note, otherInfo: $otherInfo, staffId: $staffId, internalOrderId: $internalOrderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarehouseAssignmentEditDto'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('staffId', staffId))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId));
  }

  /// Create a copy of WarehouseAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseAssignmentEditDtoImplCopyWith<_$WarehouseAssignmentEditDtoImpl>
      get copyWith => __$$WarehouseAssignmentEditDtoImplCopyWithImpl<
          _$WarehouseAssignmentEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseAssignmentEditDtoImplToJson(
      this,
    );
  }
}

abstract class _WarehouseAssignmentEditDto
    implements WarehouseAssignmentEditDto {
  factory _WarehouseAssignmentEditDto(
          {@JsonKey(name: "status") required AssignmentStatus status,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "otherInfo") String? otherInfo,
          @JsonKey(name: "staffId") String? staffId,
          @JsonKey(name: "internalOrderId") required String internalOrderId}) =
      _$WarehouseAssignmentEditDtoImpl;

  factory _WarehouseAssignmentEditDto.fromJson(Map<String, dynamic> json) =
      _$WarehouseAssignmentEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "status")
  AssignmentStatus get status;
  @JsonKey(name: "status")
  set status(AssignmentStatus value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "otherInfo")
  String? get otherInfo;
  @JsonKey(name: "otherInfo")
  set otherInfo(String? value);
  @override
  @JsonKey(name: "staffId")
  String? get staffId;
  @JsonKey(name: "staffId")
  set staffId(String? value);
  @override
  @JsonKey(name: "internalOrderId")
  String get internalOrderId;
  @JsonKey(name: "internalOrderId")
  set internalOrderId(String value);

  /// Create a copy of WarehouseAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentEditDtoImplCopyWith<_$WarehouseAssignmentEditDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

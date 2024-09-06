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

WarehouseAssignmentDTO _$WarehouseAssignmentDTOFromJson(
    Map<String, dynamic> json) {
  return _WarehouseAssignmentDTO.fromJson(json);
}

/// @nodoc
mixin _$WarehouseAssignmentDTO {
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
  @JsonKey(name: "srcWorkingUnitId")
  String get srcWorkingUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "dstWorkingUnitId")
  String? get dstWorkingUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  String get internalOrderId => throw _privateConstructorUsedError;

  /// Serializes this WarehouseAssignmentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseAssignmentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseAssignmentDTOCopyWith<WarehouseAssignmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseAssignmentDTOCopyWith<$Res> {
  factory $WarehouseAssignmentDTOCopyWith(WarehouseAssignmentDTO value,
          $Res Function(WarehouseAssignmentDTO) then) =
      _$WarehouseAssignmentDTOCopyWithImpl<$Res, WarehouseAssignmentDTO>;
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
      @JsonKey(name: "srcWorkingUnitId") String srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class _$WarehouseAssignmentDTOCopyWithImpl<$Res,
        $Val extends WarehouseAssignmentDTO>
    implements $WarehouseAssignmentDTOCopyWith<$Res> {
  _$WarehouseAssignmentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseAssignmentDTO
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
    Object? srcWorkingUnitId = null,
    Object? dstWorkingUnitId = freezed,
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
      srcWorkingUnitId: null == srcWorkingUnitId
          ? _value.srcWorkingUnitId
          : srcWorkingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      dstWorkingUnitId: freezed == dstWorkingUnitId
          ? _value.dstWorkingUnitId
          : dstWorkingUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseAssignmentDTOImplCopyWith<$Res>
    implements $WarehouseAssignmentDTOCopyWith<$Res> {
  factory _$$WarehouseAssignmentDTOImplCopyWith(
          _$WarehouseAssignmentDTOImpl value,
          $Res Function(_$WarehouseAssignmentDTOImpl) then) =
      __$$WarehouseAssignmentDTOImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "srcWorkingUnitId") String srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class __$$WarehouseAssignmentDTOImplCopyWithImpl<$Res>
    extends _$WarehouseAssignmentDTOCopyWithImpl<$Res,
        _$WarehouseAssignmentDTOImpl>
    implements _$$WarehouseAssignmentDTOImplCopyWith<$Res> {
  __$$WarehouseAssignmentDTOImplCopyWithImpl(
      _$WarehouseAssignmentDTOImpl _value,
      $Res Function(_$WarehouseAssignmentDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseAssignmentDTO
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
    Object? srcWorkingUnitId = null,
    Object? dstWorkingUnitId = freezed,
    Object? internalOrderId = null,
  }) {
    return _then(_$WarehouseAssignmentDTOImpl(
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
      srcWorkingUnitId: null == srcWorkingUnitId
          ? _value.srcWorkingUnitId
          : srcWorkingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      dstWorkingUnitId: freezed == dstWorkingUnitId
          ? _value.dstWorkingUnitId
          : dstWorkingUnitId // ignore: cast_nullable_to_non_nullable
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
class _$WarehouseAssignmentDTOImpl
    with DiagnosticableTreeMixin
    implements _WarehouseAssignmentDTO {
  const _$WarehouseAssignmentDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "staffId") this.staffId,
      @JsonKey(name: "srcWorkingUnitId") required this.srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") this.dstWorkingUnitId,
      @JsonKey(name: "internalOrderId") required this.internalOrderId});

  factory _$WarehouseAssignmentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseAssignmentDTOImplFromJson(json);

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
  @JsonKey(name: "srcWorkingUnitId")
  final String srcWorkingUnitId;
  @override
  @JsonKey(name: "dstWorkingUnitId")
  final String? dstWorkingUnitId;
  @override
  @JsonKey(name: "internalOrderId")
  final String internalOrderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarehouseAssignmentDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, status: $status, note: $note, otherInfo: $otherInfo, staffId: $staffId, srcWorkingUnitId: $srcWorkingUnitId, dstWorkingUnitId: $dstWorkingUnitId, internalOrderId: $internalOrderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarehouseAssignmentDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('staffId', staffId))
      ..add(DiagnosticsProperty('srcWorkingUnitId', srcWorkingUnitId))
      ..add(DiagnosticsProperty('dstWorkingUnitId', dstWorkingUnitId))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseAssignmentDTOImpl &&
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
            (identical(other.srcWorkingUnitId, srcWorkingUnitId) ||
                other.srcWorkingUnitId == srcWorkingUnitId) &&
            (identical(other.dstWorkingUnitId, dstWorkingUnitId) ||
                other.dstWorkingUnitId == dstWorkingUnitId) &&
            (identical(other.internalOrderId, internalOrderId) ||
                other.internalOrderId == internalOrderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      collectionName,
      created,
      updated,
      status,
      note,
      otherInfo,
      staffId,
      srcWorkingUnitId,
      dstWorkingUnitId,
      internalOrderId);

  /// Create a copy of WarehouseAssignmentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseAssignmentDTOImplCopyWith<_$WarehouseAssignmentDTOImpl>
      get copyWith => __$$WarehouseAssignmentDTOImplCopyWithImpl<
          _$WarehouseAssignmentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseAssignmentDTOImplToJson(
      this,
    );
  }
}

abstract class _WarehouseAssignmentDTO implements WarehouseAssignmentDTO {
  const factory _WarehouseAssignmentDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "status") required final AssignmentStatus status,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "otherInfo") final String? otherInfo,
      @JsonKey(name: "staffId") final String? staffId,
      @JsonKey(name: "srcWorkingUnitId") required final String srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") final String? dstWorkingUnitId,
      @JsonKey(name: "internalOrderId")
      required final String internalOrderId}) = _$WarehouseAssignmentDTOImpl;

  factory _WarehouseAssignmentDTO.fromJson(Map<String, dynamic> json) =
      _$WarehouseAssignmentDTOImpl.fromJson;

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
  @JsonKey(name: "srcWorkingUnitId")
  String get srcWorkingUnitId;
  @override
  @JsonKey(name: "dstWorkingUnitId")
  String? get dstWorkingUnitId;
  @override
  @JsonKey(name: "internalOrderId")
  String get internalOrderId;

  /// Create a copy of WarehouseAssignmentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentDTOImplCopyWith<_$WarehouseAssignmentDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WarehouseAssignmentEditDTO _$WarehouseAssignmentEditDTOFromJson(
    Map<String, dynamic> json) {
  return _WarehouseAssignmentEditDTO.fromJson(json);
}

/// @nodoc
mixin _$WarehouseAssignmentEditDTO {
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
  @JsonKey(name: "srcWorkingUnitId")
  String get srcWorkingUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "srcWorkingUnitId")
  set srcWorkingUnitId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "dstWorkingUnitId")
  String? get dstWorkingUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "dstWorkingUnitId")
  set dstWorkingUnitId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  String get internalOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  set internalOrderId(String value) => throw _privateConstructorUsedError;

  /// Serializes this WarehouseAssignmentEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseAssignmentEditDTOCopyWith<WarehouseAssignmentEditDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseAssignmentEditDTOCopyWith<$Res> {
  factory $WarehouseAssignmentEditDTOCopyWith(WarehouseAssignmentEditDTO value,
          $Res Function(WarehouseAssignmentEditDTO) then) =
      _$WarehouseAssignmentEditDTOCopyWithImpl<$Res,
          WarehouseAssignmentEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "staffId") String? staffId,
      @JsonKey(name: "srcWorkingUnitId") String srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class _$WarehouseAssignmentEditDTOCopyWithImpl<$Res,
        $Val extends WarehouseAssignmentEditDTO>
    implements $WarehouseAssignmentEditDTOCopyWith<$Res> {
  _$WarehouseAssignmentEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? staffId = freezed,
    Object? srcWorkingUnitId = null,
    Object? dstWorkingUnitId = freezed,
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
      srcWorkingUnitId: null == srcWorkingUnitId
          ? _value.srcWorkingUnitId
          : srcWorkingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      dstWorkingUnitId: freezed == dstWorkingUnitId
          ? _value.dstWorkingUnitId
          : dstWorkingUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseAssignmentEditDTOImplCopyWith<$Res>
    implements $WarehouseAssignmentEditDTOCopyWith<$Res> {
  factory _$$WarehouseAssignmentEditDTOImplCopyWith(
          _$WarehouseAssignmentEditDTOImpl value,
          $Res Function(_$WarehouseAssignmentEditDTOImpl) then) =
      __$$WarehouseAssignmentEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "staffId") String? staffId,
      @JsonKey(name: "srcWorkingUnitId") String srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
      @JsonKey(name: "internalOrderId") String internalOrderId});
}

/// @nodoc
class __$$WarehouseAssignmentEditDTOImplCopyWithImpl<$Res>
    extends _$WarehouseAssignmentEditDTOCopyWithImpl<$Res,
        _$WarehouseAssignmentEditDTOImpl>
    implements _$$WarehouseAssignmentEditDTOImplCopyWith<$Res> {
  __$$WarehouseAssignmentEditDTOImplCopyWithImpl(
      _$WarehouseAssignmentEditDTOImpl _value,
      $Res Function(_$WarehouseAssignmentEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? staffId = freezed,
    Object? srcWorkingUnitId = null,
    Object? dstWorkingUnitId = freezed,
    Object? internalOrderId = null,
  }) {
    return _then(_$WarehouseAssignmentEditDTOImpl(
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
      srcWorkingUnitId: null == srcWorkingUnitId
          ? _value.srcWorkingUnitId
          : srcWorkingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      dstWorkingUnitId: freezed == dstWorkingUnitId
          ? _value.dstWorkingUnitId
          : dstWorkingUnitId // ignore: cast_nullable_to_non_nullable
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
class _$WarehouseAssignmentEditDTOImpl
    with DiagnosticableTreeMixin
    implements _WarehouseAssignmentEditDTO {
  _$WarehouseAssignmentEditDTOImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "staffId") this.staffId,
      @JsonKey(name: "srcWorkingUnitId") required this.srcWorkingUnitId,
      @JsonKey(name: "dstWorkingUnitId") this.dstWorkingUnitId,
      @JsonKey(name: "internalOrderId") required this.internalOrderId});

  factory _$WarehouseAssignmentEditDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseAssignmentEditDTOImplFromJson(json);

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
  @JsonKey(name: "srcWorkingUnitId")
  String srcWorkingUnitId;
  @override
  @JsonKey(name: "dstWorkingUnitId")
  String? dstWorkingUnitId;
  @override
  @JsonKey(name: "internalOrderId")
  String internalOrderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarehouseAssignmentEditDTO(status: $status, note: $note, otherInfo: $otherInfo, staffId: $staffId, srcWorkingUnitId: $srcWorkingUnitId, dstWorkingUnitId: $dstWorkingUnitId, internalOrderId: $internalOrderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarehouseAssignmentEditDTO'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('staffId', staffId))
      ..add(DiagnosticsProperty('srcWorkingUnitId', srcWorkingUnitId))
      ..add(DiagnosticsProperty('dstWorkingUnitId', dstWorkingUnitId))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId));
  }

  /// Create a copy of WarehouseAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseAssignmentEditDTOImplCopyWith<_$WarehouseAssignmentEditDTOImpl>
      get copyWith => __$$WarehouseAssignmentEditDTOImplCopyWithImpl<
          _$WarehouseAssignmentEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseAssignmentEditDTOImplToJson(
      this,
    );
  }
}

abstract class _WarehouseAssignmentEditDTO
    implements WarehouseAssignmentEditDTO {
  factory _WarehouseAssignmentEditDTO(
          {@JsonKey(name: "status") required AssignmentStatus status,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "otherInfo") String? otherInfo,
          @JsonKey(name: "staffId") String? staffId,
          @JsonKey(name: "srcWorkingUnitId") required String srcWorkingUnitId,
          @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
          @JsonKey(name: "internalOrderId") required String internalOrderId}) =
      _$WarehouseAssignmentEditDTOImpl;

  factory _WarehouseAssignmentEditDTO.fromJson(Map<String, dynamic> json) =
      _$WarehouseAssignmentEditDTOImpl.fromJson;

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
  @JsonKey(name: "srcWorkingUnitId")
  String get srcWorkingUnitId;
  @JsonKey(name: "srcWorkingUnitId")
  set srcWorkingUnitId(String value);
  @override
  @JsonKey(name: "dstWorkingUnitId")
  String? get dstWorkingUnitId;
  @JsonKey(name: "dstWorkingUnitId")
  set dstWorkingUnitId(String? value);
  @override
  @JsonKey(name: "internalOrderId")
  String get internalOrderId;
  @JsonKey(name: "internalOrderId")
  set internalOrderId(String value);

  /// Create a copy of WarehouseAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentEditDTOImplCopyWith<_$WarehouseAssignmentEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

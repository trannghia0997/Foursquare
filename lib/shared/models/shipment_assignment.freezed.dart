// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipmentAssignmentDTO _$ShipmentAssignmentDTOFromJson(
    Map<String, dynamic> json) {
  return _ShipmentAssignmentDTO.fromJson(json);
}

/// @nodoc
mixin _$ShipmentAssignmentDTO {
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
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "other_info")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "shipment_id")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "staff_id")
  String? get staffId => throw _privateConstructorUsedError;

  /// Serializes this ShipmentAssignmentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentAssignmentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentAssignmentDTOCopyWith<ShipmentAssignmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentDTOCopyWith<$Res> {
  factory $ShipmentAssignmentDTOCopyWith(ShipmentAssignmentDTO value,
          $Res Function(ShipmentAssignmentDTO) then) =
      _$ShipmentAssignmentDTOCopyWithImpl<$Res, ShipmentAssignmentDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "shipment_id") String shipmentId,
      @JsonKey(name: "staff_id") String? staffId});
}

/// @nodoc
class _$ShipmentAssignmentDTOCopyWithImpl<$Res,
        $Val extends ShipmentAssignmentDTO>
    implements $ShipmentAssignmentDTOCopyWith<$Res> {
  _$ShipmentAssignmentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentAssignmentDTO
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
    Object? shipmentId = null,
    Object? staffId = freezed,
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
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentAssignmentDTOImplCopyWith<$Res>
    implements $ShipmentAssignmentDTOCopyWith<$Res> {
  factory _$$ShipmentAssignmentDTOImplCopyWith(
          _$ShipmentAssignmentDTOImpl value,
          $Res Function(_$ShipmentAssignmentDTOImpl) then) =
      __$$ShipmentAssignmentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "shipment_id") String shipmentId,
      @JsonKey(name: "staff_id") String? staffId});
}

/// @nodoc
class __$$ShipmentAssignmentDTOImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentDTOCopyWithImpl<$Res,
        _$ShipmentAssignmentDTOImpl>
    implements _$$ShipmentAssignmentDTOImplCopyWith<$Res> {
  __$$ShipmentAssignmentDTOImplCopyWithImpl(_$ShipmentAssignmentDTOImpl _value,
      $Res Function(_$ShipmentAssignmentDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentAssignmentDTO
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
    Object? shipmentId = null,
    Object? staffId = freezed,
  }) {
    return _then(_$ShipmentAssignmentDTOImpl(
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
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentAssignmentDTOImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAssignmentDTO {
  const _$ShipmentAssignmentDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "other_info") this.otherInfo,
      @JsonKey(name: "shipment_id") required this.shipmentId,
      @JsonKey(name: "staff_id") this.staffId});

  factory _$ShipmentAssignmentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentAssignmentDTOImplFromJson(json);

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
  final String status;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "other_info")
  final String? otherInfo;
  @override
  @JsonKey(name: "shipment_id")
  final String shipmentId;
  @override
  @JsonKey(name: "staff_id")
  final String? staffId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentAssignmentDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, status: $status, note: $note, otherInfo: $otherInfo, shipmentId: $shipmentId, staffId: $staffId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentAssignmentDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('staffId', staffId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAssignmentDTOImpl &&
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
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.staffId, staffId) || other.staffId == staffId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, status, note, otherInfo, shipmentId, staffId);

  /// Create a copy of ShipmentAssignmentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentDTOImplCopyWith<_$ShipmentAssignmentDTOImpl>
      get copyWith => __$$ShipmentAssignmentDTOImplCopyWithImpl<
          _$ShipmentAssignmentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentAssignmentDTOImplToJson(
      this,
    );
  }
}

abstract class _ShipmentAssignmentDTO implements ShipmentAssignmentDTO {
  const factory _ShipmentAssignmentDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "other_info") final String? otherInfo,
          @JsonKey(name: "shipment_id") required final String shipmentId,
          @JsonKey(name: "staff_id") final String? staffId}) =
      _$ShipmentAssignmentDTOImpl;

  factory _ShipmentAssignmentDTO.fromJson(Map<String, dynamic> json) =
      _$ShipmentAssignmentDTOImpl.fromJson;

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
  String get status;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "other_info")
  String? get otherInfo;
  @override
  @JsonKey(name: "shipment_id")
  String get shipmentId;
  @override
  @JsonKey(name: "staff_id")
  String? get staffId;

  /// Create a copy of ShipmentAssignmentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentAssignmentDTOImplCopyWith<_$ShipmentAssignmentDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShipmentAssignmentEditDTO _$ShipmentAssignmentEditDTOFromJson(
    Map<String, dynamic> json) {
  return _ShipmentAssignmentEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ShipmentAssignmentEditDTO {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "other_info")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "other_info")
  set otherInfo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "shipment_id")
  String? get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipment_id")
  set shipmentId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "staff_id")
  String? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: "staff_id")
  set staffId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this ShipmentAssignmentEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentAssignmentEditDTOCopyWith<ShipmentAssignmentEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentEditDTOCopyWith<$Res> {
  factory $ShipmentAssignmentEditDTOCopyWith(ShipmentAssignmentEditDTO value,
          $Res Function(ShipmentAssignmentEditDTO) then) =
      _$ShipmentAssignmentEditDTOCopyWithImpl<$Res, ShipmentAssignmentEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "shipment_id") String? shipmentId,
      @JsonKey(name: "staff_id") String? staffId});
}

/// @nodoc
class _$ShipmentAssignmentEditDTOCopyWithImpl<$Res,
        $Val extends ShipmentAssignmentEditDTO>
    implements $ShipmentAssignmentEditDTOCopyWith<$Res> {
  _$ShipmentAssignmentEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? shipmentId = freezed,
    Object? staffId = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentId: freezed == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentAssignmentEditDTOImplCopyWith<$Res>
    implements $ShipmentAssignmentEditDTOCopyWith<$Res> {
  factory _$$ShipmentAssignmentEditDTOImplCopyWith(
          _$ShipmentAssignmentEditDTOImpl value,
          $Res Function(_$ShipmentAssignmentEditDTOImpl) then) =
      __$$ShipmentAssignmentEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "shipment_id") String? shipmentId,
      @JsonKey(name: "staff_id") String? staffId});
}

/// @nodoc
class __$$ShipmentAssignmentEditDTOImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentEditDTOCopyWithImpl<$Res,
        _$ShipmentAssignmentEditDTOImpl>
    implements _$$ShipmentAssignmentEditDTOImplCopyWith<$Res> {
  __$$ShipmentAssignmentEditDTOImplCopyWithImpl(
      _$ShipmentAssignmentEditDTOImpl _value,
      $Res Function(_$ShipmentAssignmentEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? shipmentId = freezed,
    Object? staffId = freezed,
  }) {
    return _then(_$ShipmentAssignmentEditDTOImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentId: freezed == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentAssignmentEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAssignmentEditDTO {
  _$ShipmentAssignmentEditDTOImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "other_info") this.otherInfo,
      @JsonKey(name: "shipment_id") this.shipmentId,
      @JsonKey(name: "staff_id") this.staffId});

  factory _$ShipmentAssignmentEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentAssignmentEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "status")
  String? status;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "other_info")
  String? otherInfo;
  @override
  @JsonKey(name: "shipment_id")
  String? shipmentId;
  @override
  @JsonKey(name: "staff_id")
  String? staffId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentAssignmentEditDTO(status: $status, note: $note, otherInfo: $otherInfo, shipmentId: $shipmentId, staffId: $staffId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentAssignmentEditDTO'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('staffId', staffId));
  }

  /// Create a copy of ShipmentAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentEditDTOImplCopyWith<_$ShipmentAssignmentEditDTOImpl>
      get copyWith => __$$ShipmentAssignmentEditDTOImplCopyWithImpl<
          _$ShipmentAssignmentEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentAssignmentEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ShipmentAssignmentEditDTO implements ShipmentAssignmentEditDTO {
  factory _ShipmentAssignmentEditDTO(
          {@JsonKey(name: "status") String? status,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "other_info") String? otherInfo,
          @JsonKey(name: "shipment_id") String? shipmentId,
          @JsonKey(name: "staff_id") String? staffId}) =
      _$ShipmentAssignmentEditDTOImpl;

  factory _ShipmentAssignmentEditDTO.fromJson(Map<String, dynamic> json) =
      _$ShipmentAssignmentEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @JsonKey(name: "status")
  set status(String? value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "other_info")
  String? get otherInfo;
  @JsonKey(name: "other_info")
  set otherInfo(String? value);
  @override
  @JsonKey(name: "shipment_id")
  String? get shipmentId;
  @JsonKey(name: "shipment_id")
  set shipmentId(String? value);
  @override
  @JsonKey(name: "staff_id")
  String? get staffId;
  @JsonKey(name: "staff_id")
  set staffId(String? value);

  /// Create a copy of ShipmentAssignmentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentAssignmentEditDTOImplCopyWith<_$ShipmentAssignmentEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

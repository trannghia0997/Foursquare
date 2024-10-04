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

ShipmentAssignmentDto _$ShipmentAssignmentDtoFromJson(
    Map<String, dynamic> json) {
  return _ShipmentAssignmentDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentAssignmentDto {
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
  @JsonKey(name: "shipmentId")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "staffId")
  String? get staffId => throw _privateConstructorUsedError;

  /// Serializes this ShipmentAssignmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentAssignmentDtoCopyWith<ShipmentAssignmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentDtoCopyWith<$Res> {
  factory $ShipmentAssignmentDtoCopyWith(ShipmentAssignmentDto value,
          $Res Function(ShipmentAssignmentDto) then) =
      _$ShipmentAssignmentDtoCopyWithImpl<$Res, ShipmentAssignmentDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "staffId") String? staffId});
}

/// @nodoc
class _$ShipmentAssignmentDtoCopyWithImpl<$Res,
        $Val extends ShipmentAssignmentDto>
    implements $ShipmentAssignmentDtoCopyWith<$Res> {
  _$ShipmentAssignmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentAssignmentDto
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
              as AssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ShipmentAssignmentDtoImplCopyWith<$Res>
    implements $ShipmentAssignmentDtoCopyWith<$Res> {
  factory _$$ShipmentAssignmentDtoImplCopyWith(
          _$ShipmentAssignmentDtoImpl value,
          $Res Function(_$ShipmentAssignmentDtoImpl) then) =
      __$$ShipmentAssignmentDtoImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "staffId") String? staffId});
}

/// @nodoc
class __$$ShipmentAssignmentDtoImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentDtoCopyWithImpl<$Res,
        _$ShipmentAssignmentDtoImpl>
    implements _$$ShipmentAssignmentDtoImplCopyWith<$Res> {
  __$$ShipmentAssignmentDtoImplCopyWithImpl(_$ShipmentAssignmentDtoImpl _value,
      $Res Function(_$ShipmentAssignmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentAssignmentDto
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
    Object? shipmentId = null,
    Object? staffId = freezed,
  }) {
    return _then(_$ShipmentAssignmentDtoImpl(
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
class _$ShipmentAssignmentDtoImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAssignmentDto {
  const _$ShipmentAssignmentDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "shipmentId") required this.shipmentId,
      @JsonKey(name: "staffId") this.staffId});

  factory _$ShipmentAssignmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentAssignmentDtoImplFromJson(json);

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
  @JsonKey(name: "shipmentId")
  final String shipmentId;
  @override
  @JsonKey(name: "staffId")
  final String? staffId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentAssignmentDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, status: $status, note: $note, shipmentId: $shipmentId, staffId: $staffId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentAssignmentDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('staffId', staffId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAssignmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.staffId, staffId) || other.staffId == staffId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, status, note, shipmentId, staffId);

  /// Create a copy of ShipmentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentDtoImplCopyWith<_$ShipmentAssignmentDtoImpl>
      get copyWith => __$$ShipmentAssignmentDtoImplCopyWithImpl<
          _$ShipmentAssignmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentAssignmentDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentAssignmentDto implements ShipmentAssignmentDto {
  const factory _ShipmentAssignmentDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "status") required final AssignmentStatus status,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "shipmentId") required final String shipmentId,
          @JsonKey(name: "staffId") final String? staffId}) =
      _$ShipmentAssignmentDtoImpl;

  factory _ShipmentAssignmentDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentAssignmentDtoImpl.fromJson;

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
  @JsonKey(name: "shipmentId")
  String get shipmentId;
  @override
  @JsonKey(name: "staffId")
  String? get staffId;

  /// Create a copy of ShipmentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentAssignmentDtoImplCopyWith<_$ShipmentAssignmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShipmentAssignmentEditDto _$ShipmentAssignmentEditDtoFromJson(
    Map<String, dynamic> json) {
  return _ShipmentAssignmentEditDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentAssignmentEditDto {
  @JsonKey(name: "status")
  AssignmentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(AssignmentStatus value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  set shipmentId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "staffId")
  String? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: "staffId")
  set staffId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this ShipmentAssignmentEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentAssignmentEditDtoCopyWith<ShipmentAssignmentEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentEditDtoCopyWith<$Res> {
  factory $ShipmentAssignmentEditDtoCopyWith(ShipmentAssignmentEditDto value,
          $Res Function(ShipmentAssignmentEditDto) then) =
      _$ShipmentAssignmentEditDtoCopyWithImpl<$Res, ShipmentAssignmentEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "staffId") String? staffId});
}

/// @nodoc
class _$ShipmentAssignmentEditDtoCopyWithImpl<$Res,
        $Val extends ShipmentAssignmentEditDto>
    implements $ShipmentAssignmentEditDtoCopyWith<$Res> {
  _$ShipmentAssignmentEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? note = freezed,
    Object? shipmentId = null,
    Object? staffId = freezed,
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
abstract class _$$ShipmentAssignmentEditDtoImplCopyWith<$Res>
    implements $ShipmentAssignmentEditDtoCopyWith<$Res> {
  factory _$$ShipmentAssignmentEditDtoImplCopyWith(
          _$ShipmentAssignmentEditDtoImpl value,
          $Res Function(_$ShipmentAssignmentEditDtoImpl) then) =
      __$$ShipmentAssignmentEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") AssignmentStatus status,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "staffId") String? staffId});
}

/// @nodoc
class __$$ShipmentAssignmentEditDtoImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentEditDtoCopyWithImpl<$Res,
        _$ShipmentAssignmentEditDtoImpl>
    implements _$$ShipmentAssignmentEditDtoImplCopyWith<$Res> {
  __$$ShipmentAssignmentEditDtoImplCopyWithImpl(
      _$ShipmentAssignmentEditDtoImpl _value,
      $Res Function(_$ShipmentAssignmentEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? note = freezed,
    Object? shipmentId = null,
    Object? staffId = freezed,
  }) {
    return _then(_$ShipmentAssignmentEditDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(includeIfNull: false)
class _$ShipmentAssignmentEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAssignmentEditDto {
  _$ShipmentAssignmentEditDtoImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "shipmentId") required this.shipmentId,
      @JsonKey(name: "staffId") this.staffId});

  factory _$ShipmentAssignmentEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentAssignmentEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "status")
  AssignmentStatus status;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "shipmentId")
  String shipmentId;
  @override
  @JsonKey(name: "staffId")
  String? staffId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentAssignmentEditDto(status: $status, note: $note, shipmentId: $shipmentId, staffId: $staffId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentAssignmentEditDto'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('staffId', staffId));
  }

  /// Create a copy of ShipmentAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentEditDtoImplCopyWith<_$ShipmentAssignmentEditDtoImpl>
      get copyWith => __$$ShipmentAssignmentEditDtoImplCopyWithImpl<
          _$ShipmentAssignmentEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentAssignmentEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentAssignmentEditDto implements ShipmentAssignmentEditDto {
  factory _ShipmentAssignmentEditDto(
          {@JsonKey(name: "status") required AssignmentStatus status,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "shipmentId") required String shipmentId,
          @JsonKey(name: "staffId") String? staffId}) =
      _$ShipmentAssignmentEditDtoImpl;

  factory _ShipmentAssignmentEditDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentAssignmentEditDtoImpl.fromJson;

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
  @JsonKey(name: "shipmentId")
  String get shipmentId;
  @JsonKey(name: "shipmentId")
  set shipmentId(String value);
  @override
  @JsonKey(name: "staffId")
  String? get staffId;
  @JsonKey(name: "staffId")
  set staffId(String? value);

  /// Create a copy of ShipmentAssignmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentAssignmentEditDtoImplCopyWith<_$ShipmentAssignmentEditDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

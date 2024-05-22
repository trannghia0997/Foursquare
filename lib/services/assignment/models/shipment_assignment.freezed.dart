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

ShipmentAssignment _$ShipmentAssignmentFromJson(Map<String, dynamic> json) {
  return _ShipmentAssignment.fromJson(json);
}

/// @nodoc
mixin _$ShipmentAssignment {
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipment_id')
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  ShipmentAssignmentStatus get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentAssignmentCopyWith<ShipmentAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentCopyWith<$Res> {
  factory $ShipmentAssignmentCopyWith(
          ShipmentAssignment value, $Res Function(ShipmentAssignment) then) =
      _$ShipmentAssignmentCopyWithImpl<$Res, ShipmentAssignment>;
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'shipment_id') String shipmentId,
      @JsonKey(name: 'user_id') String? userId,
      ShipmentAssignmentStatus status,
      String? note});
}

/// @nodoc
class _$ShipmentAssignmentCopyWithImpl<$Res, $Val extends ShipmentAssignment>
    implements $ShipmentAssignmentCopyWith<$Res> {
  _$ShipmentAssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? shipmentId = null,
    Object? userId = freezed,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShipmentAssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentAssignmentImplCopyWith<$Res>
    implements $ShipmentAssignmentCopyWith<$Res> {
  factory _$$ShipmentAssignmentImplCopyWith(_$ShipmentAssignmentImpl value,
          $Res Function(_$ShipmentAssignmentImpl) then) =
      __$$ShipmentAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'shipment_id') String shipmentId,
      @JsonKey(name: 'user_id') String? userId,
      ShipmentAssignmentStatus status,
      String? note});
}

/// @nodoc
class __$$ShipmentAssignmentImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentCopyWithImpl<$Res, _$ShipmentAssignmentImpl>
    implements _$$ShipmentAssignmentImplCopyWith<$Res> {
  __$$ShipmentAssignmentImplCopyWithImpl(_$ShipmentAssignmentImpl _value,
      $Res Function(_$ShipmentAssignmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? shipmentId = null,
    Object? userId = freezed,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_$ShipmentAssignmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShipmentAssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentAssignmentImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAssignment {
  const _$ShipmentAssignmentImpl(
      {required this.id,
      required this.created,
      required this.updated,
      @JsonKey(name: 'shipment_id') required this.shipmentId,
      @JsonKey(name: 'user_id') this.userId,
      required this.status,
      this.note});

  factory _$ShipmentAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentAssignmentImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  @JsonKey(name: 'shipment_id')
  final String shipmentId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final ShipmentAssignmentStatus status;
  @override
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentAssignment(id: $id, created: $created, updated: $updated, shipmentId: $shipmentId, userId: $userId, status: $status, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentAssignment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAssignmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, created, updated, shipmentId, userId, status, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentImplCopyWith<_$ShipmentAssignmentImpl> get copyWith =>
      __$$ShipmentAssignmentImplCopyWithImpl<_$ShipmentAssignmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentAssignmentImplToJson(
      this,
    );
  }
}

abstract class _ShipmentAssignment implements ShipmentAssignment {
  const factory _ShipmentAssignment(
      {required final String id,
      required final DateTime created,
      required final DateTime updated,
      @JsonKey(name: 'shipment_id') required final String shipmentId,
      @JsonKey(name: 'user_id') final String? userId,
      required final ShipmentAssignmentStatus status,
      final String? note}) = _$ShipmentAssignmentImpl;

  factory _ShipmentAssignment.fromJson(Map<String, dynamic> json) =
      _$ShipmentAssignmentImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  @JsonKey(name: 'shipment_id')
  String get shipmentId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  ShipmentAssignmentStatus get status;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentAssignmentImplCopyWith<_$ShipmentAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipmentDto _$ShipmentDtoFromJson(Map<String, dynamic> json) {
  return _ShipmentDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentDto {
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
  @JsonKey(name: "type")
  ShipmentType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentDate")
  DateTime? get shipmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "deliveryDate")
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceId")
  String get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;

  /// Serializes this ShipmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentDtoCopyWith<ShipmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentDtoCopyWith<$Res> {
  factory $ShipmentDtoCopyWith(
          ShipmentDto value, $Res Function(ShipmentDto) then) =
      _$ShipmentDtoCopyWithImpl<$Res, ShipmentDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") ShipmentType type,
      @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
      @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "statusCodeId") String statusCodeId});
}

/// @nodoc
class _$ShipmentDtoCopyWithImpl<$Res, $Val extends ShipmentDto>
    implements $ShipmentDtoCopyWith<$Res> {
  _$ShipmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? type = null,
    Object? shipmentDate = freezed,
    Object? deliveryDate = freezed,
    Object? note = freezed,
    Object? orderId = null,
    Object? invoiceId = null,
    Object? statusCodeId = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentType,
      shipmentDate: freezed == shipmentDate
          ? _value.shipmentDate
          : shipmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentDtoImplCopyWith<$Res>
    implements $ShipmentDtoCopyWith<$Res> {
  factory _$$ShipmentDtoImplCopyWith(
          _$ShipmentDtoImpl value, $Res Function(_$ShipmentDtoImpl) then) =
      __$$ShipmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") ShipmentType type,
      @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
      @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "statusCodeId") String statusCodeId});
}

/// @nodoc
class __$$ShipmentDtoImplCopyWithImpl<$Res>
    extends _$ShipmentDtoCopyWithImpl<$Res, _$ShipmentDtoImpl>
    implements _$$ShipmentDtoImplCopyWith<$Res> {
  __$$ShipmentDtoImplCopyWithImpl(
      _$ShipmentDtoImpl _value, $Res Function(_$ShipmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? type = null,
    Object? shipmentDate = freezed,
    Object? deliveryDate = freezed,
    Object? note = freezed,
    Object? orderId = null,
    Object? invoiceId = null,
    Object? statusCodeId = null,
  }) {
    return _then(_$ShipmentDtoImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentType,
      shipmentDate: freezed == shipmentDate
          ? _value.shipmentDate
          : shipmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentDtoImpl with DiagnosticableTreeMixin implements _ShipmentDto {
  const _$ShipmentDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "shipmentDate") this.shipmentDate,
      @JsonKey(name: "deliveryDate") this.deliveryDate,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "orderId") required this.orderId,
      @JsonKey(name: "invoiceId") required this.invoiceId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId});

  factory _$ShipmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentDtoImplFromJson(json);

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
  @JsonKey(name: "type")
  final ShipmentType type;
  @override
  @JsonKey(name: "shipmentDate")
  final DateTime? shipmentDate;
  @override
  @JsonKey(name: "deliveryDate")
  final DateTime? deliveryDate;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "orderId")
  final String orderId;
  @override
  @JsonKey(name: "invoiceId")
  final String invoiceId;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, shipmentDate: $shipmentDate, deliveryDate: $deliveryDate, note: $note, orderId: $orderId, invoiceId: $invoiceId, statusCodeId: $statusCodeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('shipmentDate', shipmentDate))
      ..add(DiagnosticsProperty('deliveryDate', deliveryDate))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('invoiceId', invoiceId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.shipmentDate, shipmentDate) ||
                other.shipmentDate == shipmentDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.statusCodeId, statusCodeId) ||
                other.statusCodeId == statusCodeId));
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
      type,
      shipmentDate,
      deliveryDate,
      note,
      orderId,
      invoiceId,
      statusCodeId);

  /// Create a copy of ShipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentDtoImplCopyWith<_$ShipmentDtoImpl> get copyWith =>
      __$$ShipmentDtoImplCopyWithImpl<_$ShipmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentDto implements ShipmentDto {
  const factory _ShipmentDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final ShipmentType type,
          @JsonKey(name: "shipmentDate") final DateTime? shipmentDate,
          @JsonKey(name: "deliveryDate") final DateTime? deliveryDate,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "orderId") required final String orderId,
          @JsonKey(name: "invoiceId") required final String invoiceId,
          @JsonKey(name: "statusCodeId") required final String statusCodeId}) =
      _$ShipmentDtoImpl;

  factory _ShipmentDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentDtoImpl.fromJson;

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
  @JsonKey(name: "type")
  ShipmentType get type;
  @override
  @JsonKey(name: "shipmentDate")
  DateTime? get shipmentDate;
  @override
  @JsonKey(name: "deliveryDate")
  DateTime? get deliveryDate;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "orderId")
  String get orderId;
  @override
  @JsonKey(name: "invoiceId")
  String get invoiceId;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;

  /// Create a copy of ShipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentDtoImplCopyWith<_$ShipmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipmentEditDto _$ShipmentEditDtoFromJson(Map<String, dynamic> json) {
  return _ShipmentEditDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentEditDto {
  @JsonKey(name: "type")
  ShipmentType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(ShipmentType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentDate")
  DateTime? get shipmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentDate")
  set shipmentDate(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "deliveryDate")
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "deliveryDate")
  set deliveryDate(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  set orderId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceId")
  String get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceId")
  set invoiceId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ShipmentEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentEditDtoCopyWith<ShipmentEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentEditDtoCopyWith<$Res> {
  factory $ShipmentEditDtoCopyWith(
          ShipmentEditDto value, $Res Function(ShipmentEditDto) then) =
      _$ShipmentEditDtoCopyWithImpl<$Res, ShipmentEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") ShipmentType type,
      @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
      @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "statusCodeId") String statusCodeId});
}

/// @nodoc
class _$ShipmentEditDtoCopyWithImpl<$Res, $Val extends ShipmentEditDto>
    implements $ShipmentEditDtoCopyWith<$Res> {
  _$ShipmentEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? shipmentDate = freezed,
    Object? deliveryDate = freezed,
    Object? note = freezed,
    Object? orderId = null,
    Object? invoiceId = null,
    Object? statusCodeId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentType,
      shipmentDate: freezed == shipmentDate
          ? _value.shipmentDate
          : shipmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentEditDtoImplCopyWith<$Res>
    implements $ShipmentEditDtoCopyWith<$Res> {
  factory _$$ShipmentEditDtoImplCopyWith(_$ShipmentEditDtoImpl value,
          $Res Function(_$ShipmentEditDtoImpl) then) =
      __$$ShipmentEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") ShipmentType type,
      @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
      @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "statusCodeId") String statusCodeId});
}

/// @nodoc
class __$$ShipmentEditDtoImplCopyWithImpl<$Res>
    extends _$ShipmentEditDtoCopyWithImpl<$Res, _$ShipmentEditDtoImpl>
    implements _$$ShipmentEditDtoImplCopyWith<$Res> {
  __$$ShipmentEditDtoImplCopyWithImpl(
      _$ShipmentEditDtoImpl _value, $Res Function(_$ShipmentEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? shipmentDate = freezed,
    Object? deliveryDate = freezed,
    Object? note = freezed,
    Object? orderId = null,
    Object? invoiceId = null,
    Object? statusCodeId = null,
  }) {
    return _then(_$ShipmentEditDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentType,
      shipmentDate: freezed == shipmentDate
          ? _value.shipmentDate
          : shipmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ShipmentEditDto {
  _$ShipmentEditDtoImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "shipmentDate") this.shipmentDate,
      @JsonKey(name: "deliveryDate") this.deliveryDate,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "orderId") required this.orderId,
      @JsonKey(name: "invoiceId") required this.invoiceId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId});

  factory _$ShipmentEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "type")
  ShipmentType type;
  @override
  @JsonKey(name: "shipmentDate")
  DateTime? shipmentDate;
  @override
  @JsonKey(name: "deliveryDate")
  DateTime? deliveryDate;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "orderId")
  String orderId;
  @override
  @JsonKey(name: "invoiceId")
  String invoiceId;
  @override
  @JsonKey(name: "statusCodeId")
  String statusCodeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentEditDto(type: $type, shipmentDate: $shipmentDate, deliveryDate: $deliveryDate, note: $note, orderId: $orderId, invoiceId: $invoiceId, statusCodeId: $statusCodeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentEditDto'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('shipmentDate', shipmentDate))
      ..add(DiagnosticsProperty('deliveryDate', deliveryDate))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('invoiceId', invoiceId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId));
  }

  /// Create a copy of ShipmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentEditDtoImplCopyWith<_$ShipmentEditDtoImpl> get copyWith =>
      __$$ShipmentEditDtoImplCopyWithImpl<_$ShipmentEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentEditDto implements ShipmentEditDto {
  factory _ShipmentEditDto(
          {@JsonKey(name: "type") required ShipmentType type,
          @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
          @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "orderId") required String orderId,
          @JsonKey(name: "invoiceId") required String invoiceId,
          @JsonKey(name: "statusCodeId") required String statusCodeId}) =
      _$ShipmentEditDtoImpl;

  factory _ShipmentEditDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "type")
  ShipmentType get type;
  @JsonKey(name: "type")
  set type(ShipmentType value);
  @override
  @JsonKey(name: "shipmentDate")
  DateTime? get shipmentDate;
  @JsonKey(name: "shipmentDate")
  set shipmentDate(DateTime? value);
  @override
  @JsonKey(name: "deliveryDate")
  DateTime? get deliveryDate;
  @JsonKey(name: "deliveryDate")
  set deliveryDate(DateTime? value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "orderId")
  String get orderId;
  @JsonKey(name: "orderId")
  set orderId(String value);
  @override
  @JsonKey(name: "invoiceId")
  String get invoiceId;
  @JsonKey(name: "invoiceId")
  set invoiceId(String value);
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value);

  /// Create a copy of ShipmentEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentEditDtoImplCopyWith<_$ShipmentEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

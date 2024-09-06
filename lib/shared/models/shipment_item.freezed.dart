// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipmentItemDTO _$ShipmentItemDTOFromJson(Map<String, dynamic> json) {
  return _ShipmentItemDTO.fromJson(json);
}

/// @nodoc
mixin _$ShipmentItemDTO {
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
  @JsonKey(name: "qty")
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  int get rollQty => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;

  /// Serializes this ShipmentItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentItemDTOCopyWith<ShipmentItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentItemDTOCopyWith<$Res> {
  factory $ShipmentItemDTOCopyWith(
          ShipmentItemDTO value, $Res Function(ShipmentItemDTO) then) =
      _$ShipmentItemDTOCopyWithImpl<$Res, ShipmentItemDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class _$ShipmentItemDTOCopyWithImpl<$Res, $Val extends ShipmentItemDTO>
    implements $ShipmentItemDTOCopyWith<$Res> {
  _$ShipmentItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? qty = null,
    Object? rollQty = null,
    Object? total = null,
    Object? shipmentId = null,
    Object? orderItemId = null,
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
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rollQty: null == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentItemDTOImplCopyWith<$Res>
    implements $ShipmentItemDTOCopyWith<$Res> {
  factory _$$ShipmentItemDTOImplCopyWith(_$ShipmentItemDTOImpl value,
          $Res Function(_$ShipmentItemDTOImpl) then) =
      __$$ShipmentItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class __$$ShipmentItemDTOImplCopyWithImpl<$Res>
    extends _$ShipmentItemDTOCopyWithImpl<$Res, _$ShipmentItemDTOImpl>
    implements _$$ShipmentItemDTOImplCopyWith<$Res> {
  __$$ShipmentItemDTOImplCopyWithImpl(
      _$ShipmentItemDTOImpl _value, $Res Function(_$ShipmentItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? qty = null,
    Object? rollQty = null,
    Object? total = null,
    Object? shipmentId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$ShipmentItemDTOImpl(
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
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rollQty: null == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentItemDTOImpl
    with DiagnosticableTreeMixin
    implements _ShipmentItemDTO {
  const _$ShipmentItemDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "qty") required this.qty,
      @JsonKey(name: "rollQty") required this.rollQty,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "shipmentId") required this.shipmentId,
      @JsonKey(name: "orderItemId") required this.orderItemId});

  factory _$ShipmentItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentItemDTOImplFromJson(json);

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
  @JsonKey(name: "qty")
  final int qty;
  @override
  @JsonKey(name: "rollQty")
  final int rollQty;
  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "shipmentId")
  final String shipmentId;
  @override
  @JsonKey(name: "orderItemId")
  final String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentItemDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, qty: $qty, rollQty: $rollQty, total: $total, shipmentId: $shipmentId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentItemDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.rollQty, rollQty) || other.rollQty == rollQty) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, qty, rollQty, total, shipmentId, orderItemId);

  /// Create a copy of ShipmentItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentItemDTOImplCopyWith<_$ShipmentItemDTOImpl> get copyWith =>
      __$$ShipmentItemDTOImplCopyWithImpl<_$ShipmentItemDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentItemDTOImplToJson(
      this,
    );
  }
}

abstract class _ShipmentItemDTO implements ShipmentItemDTO {
  const factory _ShipmentItemDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "qty") required final int qty,
          @JsonKey(name: "rollQty") required final int rollQty,
          @JsonKey(name: "total") required final int total,
          @JsonKey(name: "shipmentId") required final String shipmentId,
          @JsonKey(name: "orderItemId") required final String orderItemId}) =
      _$ShipmentItemDTOImpl;

  factory _ShipmentItemDTO.fromJson(Map<String, dynamic> json) =
      _$ShipmentItemDTOImpl.fromJson;

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
  @JsonKey(name: "qty")
  int get qty;
  @override
  @JsonKey(name: "rollQty")
  int get rollQty;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "shipmentId")
  String get shipmentId;
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;

  /// Create a copy of ShipmentItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentItemDTOImplCopyWith<_$ShipmentItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipmentItemEditDTO _$ShipmentItemEditDTOFromJson(Map<String, dynamic> json) {
  return _ShipmentItemEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ShipmentItemEditDTO {
  @JsonKey(name: "qty")
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  set qty(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  int get rollQty => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  set rollQty(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  set total(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  set shipmentId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ShipmentItemEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentItemEditDTOCopyWith<ShipmentItemEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentItemEditDTOCopyWith<$Res> {
  factory $ShipmentItemEditDTOCopyWith(
          ShipmentItemEditDTO value, $Res Function(ShipmentItemEditDTO) then) =
      _$ShipmentItemEditDTOCopyWithImpl<$Res, ShipmentItemEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class _$ShipmentItemEditDTOCopyWithImpl<$Res, $Val extends ShipmentItemEditDTO>
    implements $ShipmentItemEditDTOCopyWith<$Res> {
  _$ShipmentItemEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? rollQty = null,
    Object? total = null,
    Object? shipmentId = null,
    Object? orderItemId = null,
  }) {
    return _then(_value.copyWith(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rollQty: null == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentItemEditDTOImplCopyWith<$Res>
    implements $ShipmentItemEditDTOCopyWith<$Res> {
  factory _$$ShipmentItemEditDTOImplCopyWith(_$ShipmentItemEditDTOImpl value,
          $Res Function(_$ShipmentItemEditDTOImpl) then) =
      __$$ShipmentItemEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class __$$ShipmentItemEditDTOImplCopyWithImpl<$Res>
    extends _$ShipmentItemEditDTOCopyWithImpl<$Res, _$ShipmentItemEditDTOImpl>
    implements _$$ShipmentItemEditDTOImplCopyWith<$Res> {
  __$$ShipmentItemEditDTOImplCopyWithImpl(_$ShipmentItemEditDTOImpl _value,
      $Res Function(_$ShipmentItemEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? rollQty = null,
    Object? total = null,
    Object? shipmentId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$ShipmentItemEditDTOImpl(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rollQty: null == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentItemEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ShipmentItemEditDTO {
  _$ShipmentItemEditDTOImpl(
      {@JsonKey(name: "qty") required this.qty,
      @JsonKey(name: "rollQty") required this.rollQty,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "shipmentId") required this.shipmentId,
      @JsonKey(name: "orderItemId") required this.orderItemId});

  factory _$ShipmentItemEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentItemEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "qty")
  int qty;
  @override
  @JsonKey(name: "rollQty")
  int rollQty;
  @override
  @JsonKey(name: "total")
  int total;
  @override
  @JsonKey(name: "shipmentId")
  String shipmentId;
  @override
  @JsonKey(name: "orderItemId")
  String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentItemEditDTO(qty: $qty, rollQty: $rollQty, total: $total, shipmentId: $shipmentId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentItemEditDTO'))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  /// Create a copy of ShipmentItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentItemEditDTOImplCopyWith<_$ShipmentItemEditDTOImpl> get copyWith =>
      __$$ShipmentItemEditDTOImplCopyWithImpl<_$ShipmentItemEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentItemEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ShipmentItemEditDTO implements ShipmentItemEditDTO {
  factory _ShipmentItemEditDTO(
          {@JsonKey(name: "qty") required int qty,
          @JsonKey(name: "rollQty") required int rollQty,
          @JsonKey(name: "total") required int total,
          @JsonKey(name: "shipmentId") required String shipmentId,
          @JsonKey(name: "orderItemId") required String orderItemId}) =
      _$ShipmentItemEditDTOImpl;

  factory _ShipmentItemEditDTO.fromJson(Map<String, dynamic> json) =
      _$ShipmentItemEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "qty")
  int get qty;
  @JsonKey(name: "qty")
  set qty(int value);
  @override
  @JsonKey(name: "rollQty")
  int get rollQty;
  @JsonKey(name: "rollQty")
  set rollQty(int value);
  @override
  @JsonKey(name: "total")
  int get total;
  @JsonKey(name: "total")
  set total(int value);
  @override
  @JsonKey(name: "shipmentId")
  String get shipmentId;
  @JsonKey(name: "shipmentId")
  set shipmentId(String value);
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value);

  /// Create a copy of ShipmentItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentItemEditDTOImplCopyWith<_$ShipmentItemEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

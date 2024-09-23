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

ShipmentItemDto _$ShipmentItemDtoFromJson(Map<String, dynamic> json) {
  return _ShipmentItemDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentItemDto {
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
  @JsonKey(name: "shipmentId")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;

  /// Serializes this ShipmentItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentItemDtoCopyWith<ShipmentItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentItemDtoCopyWith<$Res> {
  factory $ShipmentItemDtoCopyWith(
          ShipmentItemDto value, $Res Function(ShipmentItemDto) then) =
      _$ShipmentItemDtoCopyWithImpl<$Res, ShipmentItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class _$ShipmentItemDtoCopyWithImpl<$Res, $Val extends ShipmentItemDto>
    implements $ShipmentItemDtoCopyWith<$Res> {
  _$ShipmentItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentItemDto
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
abstract class _$$ShipmentItemDtoImplCopyWith<$Res>
    implements $ShipmentItemDtoCopyWith<$Res> {
  factory _$$ShipmentItemDtoImplCopyWith(_$ShipmentItemDtoImpl value,
          $Res Function(_$ShipmentItemDtoImpl) then) =
      __$$ShipmentItemDtoImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class __$$ShipmentItemDtoImplCopyWithImpl<$Res>
    extends _$ShipmentItemDtoCopyWithImpl<$Res, _$ShipmentItemDtoImpl>
    implements _$$ShipmentItemDtoImplCopyWith<$Res> {
  __$$ShipmentItemDtoImplCopyWithImpl(
      _$ShipmentItemDtoImpl _value, $Res Function(_$ShipmentItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentItemDto
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
    Object? shipmentId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$ShipmentItemDtoImpl(
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
class _$ShipmentItemDtoImpl
    with DiagnosticableTreeMixin
    implements _ShipmentItemDto {
  const _$ShipmentItemDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "qty") required this.qty,
      @JsonKey(name: "rollQty") required this.rollQty,
      @JsonKey(name: "shipmentId") required this.shipmentId,
      @JsonKey(name: "orderItemId") required this.orderItemId});

  factory _$ShipmentItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentItemDtoImplFromJson(json);

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
  @JsonKey(name: "shipmentId")
  final String shipmentId;
  @override
  @JsonKey(name: "orderItemId")
  final String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentItemDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, qty: $qty, rollQty: $rollQty, shipmentId: $shipmentId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentItemDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.rollQty, rollQty) || other.rollQty == rollQty) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, qty, rollQty, shipmentId, orderItemId);

  /// Create a copy of ShipmentItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentItemDtoImplCopyWith<_$ShipmentItemDtoImpl> get copyWith =>
      __$$ShipmentItemDtoImplCopyWithImpl<_$ShipmentItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentItemDto implements ShipmentItemDto {
  const factory _ShipmentItemDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "qty") required final int qty,
          @JsonKey(name: "rollQty") required final int rollQty,
          @JsonKey(name: "shipmentId") required final String shipmentId,
          @JsonKey(name: "orderItemId") required final String orderItemId}) =
      _$ShipmentItemDtoImpl;

  factory _ShipmentItemDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentItemDtoImpl.fromJson;

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
  @JsonKey(name: "shipmentId")
  String get shipmentId;
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;

  /// Create a copy of ShipmentItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentItemDtoImplCopyWith<_$ShipmentItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipmentItemEditDto _$ShipmentItemEditDtoFromJson(Map<String, dynamic> json) {
  return _ShipmentItemEditDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentItemEditDto {
  @JsonKey(name: "qty")
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  set qty(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  int get rollQty => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  set rollQty(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipmentId")
  set shipmentId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ShipmentItemEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentItemEditDtoCopyWith<ShipmentItemEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentItemEditDtoCopyWith<$Res> {
  factory $ShipmentItemEditDtoCopyWith(
          ShipmentItemEditDto value, $Res Function(ShipmentItemEditDto) then) =
      _$ShipmentItemEditDtoCopyWithImpl<$Res, ShipmentItemEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class _$ShipmentItemEditDtoCopyWithImpl<$Res, $Val extends ShipmentItemEditDto>
    implements $ShipmentItemEditDtoCopyWith<$Res> {
  _$ShipmentItemEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? rollQty = null,
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
abstract class _$$ShipmentItemEditDtoImplCopyWith<$Res>
    implements $ShipmentItemEditDtoCopyWith<$Res> {
  factory _$$ShipmentItemEditDtoImplCopyWith(_$ShipmentItemEditDtoImpl value,
          $Res Function(_$ShipmentItemEditDtoImpl) then) =
      __$$ShipmentItemEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int qty,
      @JsonKey(name: "rollQty") int rollQty,
      @JsonKey(name: "shipmentId") String shipmentId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class __$$ShipmentItemEditDtoImplCopyWithImpl<$Res>
    extends _$ShipmentItemEditDtoCopyWithImpl<$Res, _$ShipmentItemEditDtoImpl>
    implements _$$ShipmentItemEditDtoImplCopyWith<$Res> {
  __$$ShipmentItemEditDtoImplCopyWithImpl(_$ShipmentItemEditDtoImpl _value,
      $Res Function(_$ShipmentItemEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? rollQty = null,
    Object? shipmentId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$ShipmentItemEditDtoImpl(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rollQty: null == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
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
class _$ShipmentItemEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ShipmentItemEditDto {
  _$ShipmentItemEditDtoImpl(
      {@JsonKey(name: "qty") required this.qty,
      @JsonKey(name: "rollQty") required this.rollQty,
      @JsonKey(name: "shipmentId") required this.shipmentId,
      @JsonKey(name: "orderItemId") required this.orderItemId});

  factory _$ShipmentItemEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentItemEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "qty")
  int qty;
  @override
  @JsonKey(name: "rollQty")
  int rollQty;
  @override
  @JsonKey(name: "shipmentId")
  String shipmentId;
  @override
  @JsonKey(name: "orderItemId")
  String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentItemEditDto(qty: $qty, rollQty: $rollQty, shipmentId: $shipmentId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentItemEditDto'))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  /// Create a copy of ShipmentItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentItemEditDtoImplCopyWith<_$ShipmentItemEditDtoImpl> get copyWith =>
      __$$ShipmentItemEditDtoImplCopyWithImpl<_$ShipmentItemEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentItemEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentItemEditDto implements ShipmentItemEditDto {
  factory _ShipmentItemEditDto(
          {@JsonKey(name: "qty") required int qty,
          @JsonKey(name: "rollQty") required int rollQty,
          @JsonKey(name: "shipmentId") required String shipmentId,
          @JsonKey(name: "orderItemId") required String orderItemId}) =
      _$ShipmentItemEditDtoImpl;

  factory _ShipmentItemEditDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentItemEditDtoImpl.fromJson;

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
  @JsonKey(name: "shipmentId")
  String get shipmentId;
  @JsonKey(name: "shipmentId")
  set shipmentId(String value);
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value);

  /// Create a copy of ShipmentItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentItemEditDtoImplCopyWith<_$ShipmentItemEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

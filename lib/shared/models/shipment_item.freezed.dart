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

ShipmentItem _$ShipmentItemFromJson(Map<String, dynamic> json) {
  return _ShipmentItem.fromJson(json);
}

/// @nodoc
mixin _$ShipmentItem {
  String? get id => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  Decimal? get total => throw _privateConstructorUsedError;
  int? get rollQty => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  OrderItem? get orderItem => throw _privateConstructorUsedError;
  Shipment? get shipment => throw _privateConstructorUsedError;

  /// Serializes this ShipmentItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentItemCopyWith<ShipmentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentItemCopyWith<$Res> {
  factory $ShipmentItemCopyWith(
          ShipmentItem value, $Res Function(ShipmentItem) then) =
      _$ShipmentItemCopyWithImpl<$Res, ShipmentItem>;
  @useResult
  $Res call(
      {String? id,
      int? qty,
      Decimal? total,
      int? rollQty,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      OrderItem? orderItem,
      Shipment? shipment});

  $OrderItemCopyWith<$Res>? get orderItem;
  $ShipmentCopyWith<$Res>? get shipment;
}

/// @nodoc
class _$ShipmentItemCopyWithImpl<$Res, $Val extends ShipmentItem>
    implements $ShipmentItemCopyWith<$Res> {
  _$ShipmentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? total = freezed,
    Object? rollQty = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? orderItem = freezed,
    Object? shipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      rollQty: freezed == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderItem: freezed == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem?,
      shipment: freezed == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment?,
    ) as $Val);
  }

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res>? get orderItem {
    if (_value.orderItem == null) {
      return null;
    }

    return $OrderItemCopyWith<$Res>(_value.orderItem!, (value) {
      return _then(_value.copyWith(orderItem: value) as $Val);
    });
  }

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentCopyWith<$Res>? get shipment {
    if (_value.shipment == null) {
      return null;
    }

    return $ShipmentCopyWith<$Res>(_value.shipment!, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentItemImplCopyWith<$Res>
    implements $ShipmentItemCopyWith<$Res> {
  factory _$$ShipmentItemImplCopyWith(
          _$ShipmentItemImpl value, $Res Function(_$ShipmentItemImpl) then) =
      __$$ShipmentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? qty,
      Decimal? total,
      int? rollQty,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      OrderItem? orderItem,
      Shipment? shipment});

  @override
  $OrderItemCopyWith<$Res>? get orderItem;
  @override
  $ShipmentCopyWith<$Res>? get shipment;
}

/// @nodoc
class __$$ShipmentItemImplCopyWithImpl<$Res>
    extends _$ShipmentItemCopyWithImpl<$Res, _$ShipmentItemImpl>
    implements _$$ShipmentItemImplCopyWith<$Res> {
  __$$ShipmentItemImplCopyWithImpl(
      _$ShipmentItemImpl _value, $Res Function(_$ShipmentItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? total = freezed,
    Object? rollQty = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? orderItem = freezed,
    Object? shipment = freezed,
  }) {
    return _then(_$ShipmentItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      rollQty: freezed == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderItem: freezed == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem?,
      shipment: freezed == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentItemImpl with DiagnosticableTreeMixin implements _ShipmentItem {
  const _$ShipmentItemImpl(
      {this.id,
      this.qty,
      this.total,
      this.rollQty,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.orderItem,
      this.shipment});

  factory _$ShipmentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentItemImplFromJson(json);

  @override
  final String? id;
  @override
  final int? qty;
  @override
  final Decimal? total;
  @override
  final int? rollQty;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  final OrderItem? orderItem;
  @override
  final Shipment? shipment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentItem(id: $id, qty: $qty, total: $total, rollQty: $rollQty, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, orderItem: $orderItem, shipment: $shipment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('orderItem', orderItem))
      ..add(DiagnosticsProperty('shipment', shipment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.rollQty, rollQty) || other.rollQty == rollQty) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.orderItem, orderItem) ||
                other.orderItem == orderItem) &&
            (identical(other.shipment, shipment) ||
                other.shipment == shipment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      qty,
      total,
      rollQty,
      createdBy,
      createdDate,
      lastModifiedBy,
      lastModifiedDate,
      orderItem,
      shipment);

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentItemImplCopyWith<_$ShipmentItemImpl> get copyWith =>
      __$$ShipmentItemImplCopyWithImpl<_$ShipmentItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentItemImplToJson(
      this,
    );
  }
}

abstract class _ShipmentItem implements ShipmentItem {
  const factory _ShipmentItem(
      {final String? id,
      final int? qty,
      final Decimal? total,
      final int? rollQty,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      final OrderItem? orderItem,
      final Shipment? shipment}) = _$ShipmentItemImpl;

  factory _ShipmentItem.fromJson(Map<String, dynamic> json) =
      _$ShipmentItemImpl.fromJson;

  @override
  String? get id;
  @override
  int? get qty;
  @override
  Decimal? get total;
  @override
  int? get rollQty;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  OrderItem? get orderItem;
  @override
  Shipment? get shipment;

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentItemImplCopyWith<_$ShipmentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  @JsonKey(name: 'shipment_id')
  String get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_item_id')
  String get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  double get quantity => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'shipment_id') String shipmentId,
      @JsonKey(name: 'order_item_id') String orderItemId,
      @JsonKey(name: 'qty') double quantity,
      double total});
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
    Object? shipmentId = null,
    Object? orderItemId = null,
    Object? quantity = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
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
      {@JsonKey(name: 'shipment_id') String shipmentId,
      @JsonKey(name: 'order_item_id') String orderItemId,
      @JsonKey(name: 'qty') double quantity,
      double total});
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
    Object? shipmentId = null,
    Object? orderItemId = null,
    Object? quantity = null,
    Object? total = null,
  }) {
    return _then(_$ShipmentItemImpl(
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentItemImpl with DiagnosticableTreeMixin implements _ShipmentItem {
  const _$ShipmentItemImpl(
      {@JsonKey(name: 'shipment_id') required this.shipmentId,
      @JsonKey(name: 'order_item_id') required this.orderItemId,
      @JsonKey(name: 'qty') this.quantity = 0,
      this.total = 0});

  factory _$ShipmentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentItemImplFromJson(json);

  @override
  @JsonKey(name: 'shipment_id')
  final String shipmentId;
  @override
  @JsonKey(name: 'order_item_id')
  final String orderItemId;
  @override
  @JsonKey(name: 'qty')
  final double quantity;
  @override
  @JsonKey()
  final double total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentItem(shipmentId: $shipmentId, orderItemId: $orderItemId, quantity: $quantity, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentItem'))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentItemImpl &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shipmentId, orderItemId, quantity, total);

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
      {@JsonKey(name: 'shipment_id') required final String shipmentId,
      @JsonKey(name: 'order_item_id') required final String orderItemId,
      @JsonKey(name: 'qty') final double quantity,
      final double total}) = _$ShipmentItemImpl;

  factory _ShipmentItem.fromJson(Map<String, dynamic> json) =
      _$ShipmentItemImpl.fromJson;

  @override
  @JsonKey(name: 'shipment_id')
  String get shipmentId;
  @override
  @JsonKey(name: 'order_item_id')
  String get orderItemId;
  @override
  @JsonKey(name: 'qty')
  double get quantity;
  @override
  double get total;

  /// Create a copy of ShipmentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentItemImplCopyWith<_$ShipmentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

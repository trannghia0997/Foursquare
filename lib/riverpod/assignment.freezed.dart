// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WarehouseAssignmentInfo {
  WarehouseAssignmentDto get warehouseAssignment =>
      throw _privateConstructorUsedError;
  InternalOrderDto get internalOrder => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseAssignmentInfoCopyWith<WarehouseAssignmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseAssignmentInfoCopyWith<$Res> {
  factory $WarehouseAssignmentInfoCopyWith(WarehouseAssignmentInfo value,
          $Res Function(WarehouseAssignmentInfo) then) =
      _$WarehouseAssignmentInfoCopyWithImpl<$Res, WarehouseAssignmentInfo>;
  @useResult
  $Res call(
      {WarehouseAssignmentDto warehouseAssignment,
      InternalOrderDto internalOrder});

  $WarehouseAssignmentDtoCopyWith<$Res> get warehouseAssignment;
  $InternalOrderDtoCopyWith<$Res> get internalOrder;
}

/// @nodoc
class _$WarehouseAssignmentInfoCopyWithImpl<$Res,
        $Val extends WarehouseAssignmentInfo>
    implements $WarehouseAssignmentInfoCopyWith<$Res> {
  _$WarehouseAssignmentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseAssignment = null,
    Object? internalOrder = null,
  }) {
    return _then(_value.copyWith(
      warehouseAssignment: null == warehouseAssignment
          ? _value.warehouseAssignment
          : warehouseAssignment // ignore: cast_nullable_to_non_nullable
              as WarehouseAssignmentDto,
      internalOrder: null == internalOrder
          ? _value.internalOrder
          : internalOrder // ignore: cast_nullable_to_non_nullable
              as InternalOrderDto,
    ) as $Val);
  }

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WarehouseAssignmentDtoCopyWith<$Res> get warehouseAssignment {
    return $WarehouseAssignmentDtoCopyWith<$Res>(_value.warehouseAssignment,
        (value) {
      return _then(_value.copyWith(warehouseAssignment: value) as $Val);
    });
  }

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InternalOrderDtoCopyWith<$Res> get internalOrder {
    return $InternalOrderDtoCopyWith<$Res>(_value.internalOrder, (value) {
      return _then(_value.copyWith(internalOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WarehouseAssignmentInfoImplCopyWith<$Res>
    implements $WarehouseAssignmentInfoCopyWith<$Res> {
  factory _$$WarehouseAssignmentInfoImplCopyWith(
          _$WarehouseAssignmentInfoImpl value,
          $Res Function(_$WarehouseAssignmentInfoImpl) then) =
      __$$WarehouseAssignmentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WarehouseAssignmentDto warehouseAssignment,
      InternalOrderDto internalOrder});

  @override
  $WarehouseAssignmentDtoCopyWith<$Res> get warehouseAssignment;
  @override
  $InternalOrderDtoCopyWith<$Res> get internalOrder;
}

/// @nodoc
class __$$WarehouseAssignmentInfoImplCopyWithImpl<$Res>
    extends _$WarehouseAssignmentInfoCopyWithImpl<$Res,
        _$WarehouseAssignmentInfoImpl>
    implements _$$WarehouseAssignmentInfoImplCopyWith<$Res> {
  __$$WarehouseAssignmentInfoImplCopyWithImpl(
      _$WarehouseAssignmentInfoImpl _value,
      $Res Function(_$WarehouseAssignmentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseAssignment = null,
    Object? internalOrder = null,
  }) {
    return _then(_$WarehouseAssignmentInfoImpl(
      warehouseAssignment: null == warehouseAssignment
          ? _value.warehouseAssignment
          : warehouseAssignment // ignore: cast_nullable_to_non_nullable
              as WarehouseAssignmentDto,
      internalOrder: null == internalOrder
          ? _value.internalOrder
          : internalOrder // ignore: cast_nullable_to_non_nullable
              as InternalOrderDto,
    ));
  }
}

/// @nodoc

class _$WarehouseAssignmentInfoImpl implements _WarehouseAssignmentInfo {
  const _$WarehouseAssignmentInfoImpl(
      {required this.warehouseAssignment, required this.internalOrder});

  @override
  final WarehouseAssignmentDto warehouseAssignment;
  @override
  final InternalOrderDto internalOrder;

  @override
  String toString() {
    return 'WarehouseAssignmentInfo(warehouseAssignment: $warehouseAssignment, internalOrder: $internalOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseAssignmentInfoImpl &&
            (identical(other.warehouseAssignment, warehouseAssignment) ||
                other.warehouseAssignment == warehouseAssignment) &&
            (identical(other.internalOrder, internalOrder) ||
                other.internalOrder == internalOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, warehouseAssignment, internalOrder);

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseAssignmentInfoImplCopyWith<_$WarehouseAssignmentInfoImpl>
      get copyWith => __$$WarehouseAssignmentInfoImplCopyWithImpl<
          _$WarehouseAssignmentInfoImpl>(this, _$identity);
}

abstract class _WarehouseAssignmentInfo implements WarehouseAssignmentInfo {
  const factory _WarehouseAssignmentInfo(
          {required final WarehouseAssignmentDto warehouseAssignment,
          required final InternalOrderDto internalOrder}) =
      _$WarehouseAssignmentInfoImpl;

  @override
  WarehouseAssignmentDto get warehouseAssignment;
  @override
  InternalOrderDto get internalOrder;

  /// Create a copy of WarehouseAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentInfoImplCopyWith<_$WarehouseAssignmentInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShipmentAssignmentInfo {
  ShipmentAssignmentDto get shipmentAssignment =>
      throw _privateConstructorUsedError;
  ShipmentDto get shipment => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentAssignmentInfoCopyWith<ShipmentAssignmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentInfoCopyWith<$Res> {
  factory $ShipmentAssignmentInfoCopyWith(ShipmentAssignmentInfo value,
          $Res Function(ShipmentAssignmentInfo) then) =
      _$ShipmentAssignmentInfoCopyWithImpl<$Res, ShipmentAssignmentInfo>;
  @useResult
  $Res call({ShipmentAssignmentDto shipmentAssignment, ShipmentDto shipment});

  $ShipmentAssignmentDtoCopyWith<$Res> get shipmentAssignment;
  $ShipmentDtoCopyWith<$Res> get shipment;
}

/// @nodoc
class _$ShipmentAssignmentInfoCopyWithImpl<$Res,
        $Val extends ShipmentAssignmentInfo>
    implements $ShipmentAssignmentInfoCopyWith<$Res> {
  _$ShipmentAssignmentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipmentAssignment = null,
    Object? shipment = null,
  }) {
    return _then(_value.copyWith(
      shipmentAssignment: null == shipmentAssignment
          ? _value.shipmentAssignment
          : shipmentAssignment // ignore: cast_nullable_to_non_nullable
              as ShipmentAssignmentDto,
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
    ) as $Val);
  }

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentAssignmentDtoCopyWith<$Res> get shipmentAssignment {
    return $ShipmentAssignmentDtoCopyWith<$Res>(_value.shipmentAssignment,
        (value) {
      return _then(_value.copyWith(shipmentAssignment: value) as $Val);
    });
  }

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentDtoCopyWith<$Res> get shipment {
    return $ShipmentDtoCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentAssignmentInfoImplCopyWith<$Res>
    implements $ShipmentAssignmentInfoCopyWith<$Res> {
  factory _$$ShipmentAssignmentInfoImplCopyWith(
          _$ShipmentAssignmentInfoImpl value,
          $Res Function(_$ShipmentAssignmentInfoImpl) then) =
      __$$ShipmentAssignmentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShipmentAssignmentDto shipmentAssignment, ShipmentDto shipment});

  @override
  $ShipmentAssignmentDtoCopyWith<$Res> get shipmentAssignment;
  @override
  $ShipmentDtoCopyWith<$Res> get shipment;
}

/// @nodoc
class __$$ShipmentAssignmentInfoImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentInfoCopyWithImpl<$Res,
        _$ShipmentAssignmentInfoImpl>
    implements _$$ShipmentAssignmentInfoImplCopyWith<$Res> {
  __$$ShipmentAssignmentInfoImplCopyWithImpl(
      _$ShipmentAssignmentInfoImpl _value,
      $Res Function(_$ShipmentAssignmentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipmentAssignment = null,
    Object? shipment = null,
  }) {
    return _then(_$ShipmentAssignmentInfoImpl(
      shipmentAssignment: null == shipmentAssignment
          ? _value.shipmentAssignment
          : shipmentAssignment // ignore: cast_nullable_to_non_nullable
              as ShipmentAssignmentDto,
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
    ));
  }
}

/// @nodoc

class _$ShipmentAssignmentInfoImpl implements _ShipmentAssignmentInfo {
  const _$ShipmentAssignmentInfoImpl(
      {required this.shipmentAssignment, required this.shipment});

  @override
  final ShipmentAssignmentDto shipmentAssignment;
  @override
  final ShipmentDto shipment;

  @override
  String toString() {
    return 'ShipmentAssignmentInfo(shipmentAssignment: $shipmentAssignment, shipment: $shipment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAssignmentInfoImpl &&
            (identical(other.shipmentAssignment, shipmentAssignment) ||
                other.shipmentAssignment == shipmentAssignment) &&
            (identical(other.shipment, shipment) ||
                other.shipment == shipment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shipmentAssignment, shipment);

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentInfoImplCopyWith<_$ShipmentAssignmentInfoImpl>
      get copyWith => __$$ShipmentAssignmentInfoImplCopyWithImpl<
          _$ShipmentAssignmentInfoImpl>(this, _$identity);
}

abstract class _ShipmentAssignmentInfo implements ShipmentAssignmentInfo {
  const factory _ShipmentAssignmentInfo(
      {required final ShipmentAssignmentDto shipmentAssignment,
      required final ShipmentDto shipment}) = _$ShipmentAssignmentInfoImpl;

  @override
  ShipmentAssignmentDto get shipmentAssignment;
  @override
  ShipmentDto get shipment;

  /// Create a copy of ShipmentAssignmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentAssignmentInfoImplCopyWith<_$ShipmentAssignmentInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

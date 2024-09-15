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

/// @nodoc
mixin _$ShipmentInfoModel {
  ShipmentDto get shipment => throw _privateConstructorUsedError;
  OrderInfoModel get orderInfo => throw _privateConstructorUsedError;
  InvoiceDto get invoice => throw _privateConstructorUsedError;
  List<(ShipmentItemDto, OrderItemDto)> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentInfoModelCopyWith<ShipmentInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentInfoModelCopyWith<$Res> {
  factory $ShipmentInfoModelCopyWith(
          ShipmentInfoModel value, $Res Function(ShipmentInfoModel) then) =
      _$ShipmentInfoModelCopyWithImpl<$Res, ShipmentInfoModel>;
  @useResult
  $Res call(
      {ShipmentDto shipment,
      OrderInfoModel orderInfo,
      InvoiceDto invoice,
      List<(ShipmentItemDto, OrderItemDto)> items});

  $ShipmentDtoCopyWith<$Res> get shipment;
  $OrderInfoModelCopyWith<$Res> get orderInfo;
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class _$ShipmentInfoModelCopyWithImpl<$Res, $Val extends ShipmentInfoModel>
    implements $ShipmentInfoModelCopyWith<$Res> {
  _$ShipmentInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? orderInfo = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
      orderInfo: null == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfoModel,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<(ShipmentItemDto, OrderItemDto)>,
    ) as $Val);
  }

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentDtoCopyWith<$Res> get shipment {
    return $ShipmentDtoCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoModelCopyWith<$Res> get orderInfo {
    return $OrderInfoModelCopyWith<$Res>(_value.orderInfo, (value) {
      return _then(_value.copyWith(orderInfo: value) as $Val);
    });
  }

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceDtoCopyWith<$Res> get invoice {
    return $InvoiceDtoCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentInfoModelImplCopyWith<$Res>
    implements $ShipmentInfoModelCopyWith<$Res> {
  factory _$$ShipmentInfoModelImplCopyWith(_$ShipmentInfoModelImpl value,
          $Res Function(_$ShipmentInfoModelImpl) then) =
      __$$ShipmentInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShipmentDto shipment,
      OrderInfoModel orderInfo,
      InvoiceDto invoice,
      List<(ShipmentItemDto, OrderItemDto)> items});

  @override
  $ShipmentDtoCopyWith<$Res> get shipment;
  @override
  $OrderInfoModelCopyWith<$Res> get orderInfo;
  @override
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$ShipmentInfoModelImplCopyWithImpl<$Res>
    extends _$ShipmentInfoModelCopyWithImpl<$Res, _$ShipmentInfoModelImpl>
    implements _$$ShipmentInfoModelImplCopyWith<$Res> {
  __$$ShipmentInfoModelImplCopyWithImpl(_$ShipmentInfoModelImpl _value,
      $Res Function(_$ShipmentInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? orderInfo = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_$ShipmentInfoModelImpl(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
      orderInfo: null == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfoModel,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<(ShipmentItemDto, OrderItemDto)>,
    ));
  }
}

/// @nodoc

class _$ShipmentInfoModelImpl implements _ShipmentInfoModel {
  const _$ShipmentInfoModelImpl(
      {required this.shipment,
      required this.orderInfo,
      required this.invoice,
      required final List<(ShipmentItemDto, OrderItemDto)> items})
      : _items = items;

  @override
  final ShipmentDto shipment;
  @override
  final OrderInfoModel orderInfo;
  @override
  final InvoiceDto invoice;
  final List<(ShipmentItemDto, OrderItemDto)> _items;
  @override
  List<(ShipmentItemDto, OrderItemDto)> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ShipmentInfoModel(shipment: $shipment, orderInfo: $orderInfo, invoice: $invoice, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentInfoModelImpl &&
            (identical(other.shipment, shipment) ||
                other.shipment == shipment) &&
            (identical(other.orderInfo, orderInfo) ||
                other.orderInfo == orderInfo) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shipment, orderInfo, invoice,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentInfoModelImplCopyWith<_$ShipmentInfoModelImpl> get copyWith =>
      __$$ShipmentInfoModelImplCopyWithImpl<_$ShipmentInfoModelImpl>(
          this, _$identity);
}

abstract class _ShipmentInfoModel implements ShipmentInfoModel {
  const factory _ShipmentInfoModel(
          {required final ShipmentDto shipment,
          required final OrderInfoModel orderInfo,
          required final InvoiceDto invoice,
          required final List<(ShipmentItemDto, OrderItemDto)> items}) =
      _$ShipmentInfoModelImpl;

  @override
  ShipmentDto get shipment;
  @override
  OrderInfoModel get orderInfo;
  @override
  InvoiceDto get invoice;
  @override
  List<(ShipmentItemDto, OrderItemDto)> get items;

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentInfoModelImplCopyWith<_$ShipmentInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

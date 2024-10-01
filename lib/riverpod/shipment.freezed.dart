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
mixin _$ShipmentInfo {
  ShipmentDto get shipment => throw _privateConstructorUsedError;
  OrderInfo get orderInfo => throw _privateConstructorUsedError;
  InvoiceDto get invoice => throw _privateConstructorUsedError;
  List<(ShipmentItemDto, OrderItemDto)> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentInfoCopyWith<ShipmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentInfoCopyWith<$Res> {
  factory $ShipmentInfoCopyWith(
          ShipmentInfo value, $Res Function(ShipmentInfo) then) =
      _$ShipmentInfoCopyWithImpl<$Res, ShipmentInfo>;
  @useResult
  $Res call(
      {ShipmentDto shipment,
      OrderInfo orderInfo,
      InvoiceDto invoice,
      List<(ShipmentItemDto, OrderItemDto)> items});

  $ShipmentDtoCopyWith<$Res> get shipment;
  $OrderInfoCopyWith<$Res> get orderInfo;
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class _$ShipmentInfoCopyWithImpl<$Res, $Val extends ShipmentInfo>
    implements $ShipmentInfoCopyWith<$Res> {
  _$ShipmentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentInfo
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
              as OrderInfo,
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

  /// Create a copy of ShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentDtoCopyWith<$Res> get shipment {
    return $ShipmentDtoCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }

  /// Create a copy of ShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoCopyWith<$Res> get orderInfo {
    return $OrderInfoCopyWith<$Res>(_value.orderInfo, (value) {
      return _then(_value.copyWith(orderInfo: value) as $Val);
    });
  }

  /// Create a copy of ShipmentInfo
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
abstract class _$$ShipmentInfoImplCopyWith<$Res>
    implements $ShipmentInfoCopyWith<$Res> {
  factory _$$ShipmentInfoImplCopyWith(
          _$ShipmentInfoImpl value, $Res Function(_$ShipmentInfoImpl) then) =
      __$$ShipmentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShipmentDto shipment,
      OrderInfo orderInfo,
      InvoiceDto invoice,
      List<(ShipmentItemDto, OrderItemDto)> items});

  @override
  $ShipmentDtoCopyWith<$Res> get shipment;
  @override
  $OrderInfoCopyWith<$Res> get orderInfo;
  @override
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$ShipmentInfoImplCopyWithImpl<$Res>
    extends _$ShipmentInfoCopyWithImpl<$Res, _$ShipmentInfoImpl>
    implements _$$ShipmentInfoImplCopyWith<$Res> {
  __$$ShipmentInfoImplCopyWithImpl(
      _$ShipmentInfoImpl _value, $Res Function(_$ShipmentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? orderInfo = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_$ShipmentInfoImpl(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
      orderInfo: null == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfo,
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

class _$ShipmentInfoImpl implements _ShipmentInfo {
  const _$ShipmentInfoImpl(
      {required this.shipment,
      required this.orderInfo,
      required this.invoice,
      required final List<(ShipmentItemDto, OrderItemDto)> items})
      : _items = items;

  @override
  final ShipmentDto shipment;
  @override
  final OrderInfo orderInfo;
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
    return 'ShipmentInfo(shipment: $shipment, orderInfo: $orderInfo, invoice: $invoice, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentInfoImpl &&
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

  /// Create a copy of ShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentInfoImplCopyWith<_$ShipmentInfoImpl> get copyWith =>
      __$$ShipmentInfoImplCopyWithImpl<_$ShipmentInfoImpl>(this, _$identity);
}

abstract class _ShipmentInfo implements ShipmentInfo {
  const factory _ShipmentInfo(
          {required final ShipmentDto shipment,
          required final OrderInfo orderInfo,
          required final InvoiceDto invoice,
          required final List<(ShipmentItemDto, OrderItemDto)> items}) =
      _$ShipmentInfoImpl;

  @override
  ShipmentDto get shipment;
  @override
  OrderInfo get orderInfo;
  @override
  InvoiceDto get invoice;
  @override
  List<(ShipmentItemDto, OrderItemDto)> get items;

  /// Create a copy of ShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentInfoImplCopyWith<_$ShipmentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BriefShipmentInfo {
  ShipmentDto get shipment => throw _privateConstructorUsedError;
  InvoiceDto get invoice => throw _privateConstructorUsedError;
  List<(ShipmentItemDto, OrderItemDto)> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of BriefShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BriefShipmentInfoCopyWith<BriefShipmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BriefShipmentInfoCopyWith<$Res> {
  factory $BriefShipmentInfoCopyWith(
          BriefShipmentInfo value, $Res Function(BriefShipmentInfo) then) =
      _$BriefShipmentInfoCopyWithImpl<$Res, BriefShipmentInfo>;
  @useResult
  $Res call(
      {ShipmentDto shipment,
      InvoiceDto invoice,
      List<(ShipmentItemDto, OrderItemDto)> items});

  $ShipmentDtoCopyWith<$Res> get shipment;
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class _$BriefShipmentInfoCopyWithImpl<$Res, $Val extends BriefShipmentInfo>
    implements $BriefShipmentInfoCopyWith<$Res> {
  _$BriefShipmentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BriefShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
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

  /// Create a copy of BriefShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentDtoCopyWith<$Res> get shipment {
    return $ShipmentDtoCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }

  /// Create a copy of BriefShipmentInfo
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
abstract class _$$BriefShipmentInfoImplCopyWith<$Res>
    implements $BriefShipmentInfoCopyWith<$Res> {
  factory _$$BriefShipmentInfoImplCopyWith(_$BriefShipmentInfoImpl value,
          $Res Function(_$BriefShipmentInfoImpl) then) =
      __$$BriefShipmentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShipmentDto shipment,
      InvoiceDto invoice,
      List<(ShipmentItemDto, OrderItemDto)> items});

  @override
  $ShipmentDtoCopyWith<$Res> get shipment;
  @override
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$BriefShipmentInfoImplCopyWithImpl<$Res>
    extends _$BriefShipmentInfoCopyWithImpl<$Res, _$BriefShipmentInfoImpl>
    implements _$$BriefShipmentInfoImplCopyWith<$Res> {
  __$$BriefShipmentInfoImplCopyWithImpl(_$BriefShipmentInfoImpl _value,
      $Res Function(_$BriefShipmentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BriefShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_$BriefShipmentInfoImpl(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
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

class _$BriefShipmentInfoImpl implements _BriefShipmentInfo {
  const _$BriefShipmentInfoImpl(
      {required this.shipment,
      required this.invoice,
      required final List<(ShipmentItemDto, OrderItemDto)> items})
      : _items = items;

  @override
  final ShipmentDto shipment;
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
    return 'BriefShipmentInfo(shipment: $shipment, invoice: $invoice, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BriefShipmentInfoImpl &&
            (identical(other.shipment, shipment) ||
                other.shipment == shipment) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shipment, invoice,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of BriefShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BriefShipmentInfoImplCopyWith<_$BriefShipmentInfoImpl> get copyWith =>
      __$$BriefShipmentInfoImplCopyWithImpl<_$BriefShipmentInfoImpl>(
          this, _$identity);
}

abstract class _BriefShipmentInfo implements BriefShipmentInfo {
  const factory _BriefShipmentInfo(
          {required final ShipmentDto shipment,
          required final InvoiceDto invoice,
          required final List<(ShipmentItemDto, OrderItemDto)> items}) =
      _$BriefShipmentInfoImpl;

  @override
  ShipmentDto get shipment;
  @override
  InvoiceDto get invoice;
  @override
  List<(ShipmentItemDto, OrderItemDto)> get items;

  /// Create a copy of BriefShipmentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BriefShipmentInfoImplCopyWith<_$BriefShipmentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

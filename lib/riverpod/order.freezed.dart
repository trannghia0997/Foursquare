// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderInfo {
  OrderDto get order => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  UserDto get customer => throw _privateConstructorUsedError;
  List<OrderItemDto> get orderItems => throw _privateConstructorUsedError;
  OrderDto? get rootOrder => throw _privateConstructorUsedError;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderInfoCopyWith<OrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoCopyWith<$Res> {
  factory $OrderInfoCopyWith(OrderInfo value, $Res Function(OrderInfo) then) =
      _$OrderInfoCopyWithImpl<$Res, OrderInfo>;
  @useResult
  $Res call(
      {OrderDto order,
      AddressDto address,
      UserDto customer,
      List<OrderItemDto> orderItems,
      OrderDto? rootOrder});

  $OrderDtoCopyWith<$Res> get order;
  $AddressDtoCopyWith<$Res> get address;
  $UserDtoCopyWith<$Res> get customer;
  $OrderDtoCopyWith<$Res>? get rootOrder;
}

/// @nodoc
class _$OrderInfoCopyWithImpl<$Res, $Val extends OrderInfo>
    implements $OrderInfoCopyWith<$Res> {
  _$OrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? address = null,
    Object? customer = null,
    Object? orderItems = null,
    Object? rootOrder = freezed,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDto>,
      rootOrder: freezed == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto?,
    ) as $Val);
  }

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get order {
    return $OrderDtoCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res>? get rootOrder {
    if (_value.rootOrder == null) {
      return null;
    }

    return $OrderDtoCopyWith<$Res>(_value.rootOrder!, (value) {
      return _then(_value.copyWith(rootOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderInfoImplCopyWith<$Res>
    implements $OrderInfoCopyWith<$Res> {
  factory _$$OrderInfoImplCopyWith(
          _$OrderInfoImpl value, $Res Function(_$OrderInfoImpl) then) =
      __$$OrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderDto order,
      AddressDto address,
      UserDto customer,
      List<OrderItemDto> orderItems,
      OrderDto? rootOrder});

  @override
  $OrderDtoCopyWith<$Res> get order;
  @override
  $AddressDtoCopyWith<$Res> get address;
  @override
  $UserDtoCopyWith<$Res> get customer;
  @override
  $OrderDtoCopyWith<$Res>? get rootOrder;
}

/// @nodoc
class __$$OrderInfoImplCopyWithImpl<$Res>
    extends _$OrderInfoCopyWithImpl<$Res, _$OrderInfoImpl>
    implements _$$OrderInfoImplCopyWith<$Res> {
  __$$OrderInfoImplCopyWithImpl(
      _$OrderInfoImpl _value, $Res Function(_$OrderInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? address = null,
    Object? customer = null,
    Object? orderItems = null,
    Object? rootOrder = freezed,
  }) {
    return _then(_$OrderInfoImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDto>,
      rootOrder: freezed == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto?,
    ));
  }
}

/// @nodoc

class _$OrderInfoImpl implements _OrderInfo {
  const _$OrderInfoImpl(
      {required this.order,
      required this.address,
      required this.customer,
      required final List<OrderItemDto> orderItems,
      this.rootOrder})
      : _orderItems = orderItems;

  @override
  final OrderDto order;
  @override
  final AddressDto address;
  @override
  final UserDto customer;
  final List<OrderItemDto> _orderItems;
  @override
  List<OrderItemDto> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  final OrderDto? rootOrder;

  @override
  String toString() {
    return 'OrderInfo(order: $order, address: $address, customer: $customer, orderItems: $orderItems, rootOrder: $rootOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderInfoImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.rootOrder, rootOrder) ||
                other.rootOrder == rootOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, address, customer,
      const DeepCollectionEquality().hash(_orderItems), rootOrder);

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderInfoImplCopyWith<_$OrderInfoImpl> get copyWith =>
      __$$OrderInfoImplCopyWithImpl<_$OrderInfoImpl>(this, _$identity);
}

abstract class _OrderInfo implements OrderInfo {
  const factory _OrderInfo(
      {required final OrderDto order,
      required final AddressDto address,
      required final UserDto customer,
      required final List<OrderItemDto> orderItems,
      final OrderDto? rootOrder}) = _$OrderInfoImpl;

  @override
  OrderDto get order;
  @override
  AddressDto get address;
  @override
  UserDto get customer;
  @override
  List<OrderItemDto> get orderItems;
  @override
  OrderDto? get rootOrder;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderInfoImplCopyWith<_$OrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

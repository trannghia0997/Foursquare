// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderInfoModel {
  OrderDto get order => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  UserDto get customer => throw _privateConstructorUsedError;
  List<OrderItemDto> get items => throw _privateConstructorUsedError;
  OrderDto? get rootOrder => throw _privateConstructorUsedError;

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderInfoModelCopyWith<OrderInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoModelCopyWith<$Res> {
  factory $OrderInfoModelCopyWith(
          OrderInfoModel value, $Res Function(OrderInfoModel) then) =
      _$OrderInfoModelCopyWithImpl<$Res, OrderInfoModel>;
  @useResult
  $Res call(
      {OrderDto order,
      AddressDto address,
      UserDto customer,
      List<OrderItemDto> items,
      OrderDto? rootOrder});

  $OrderDtoCopyWith<$Res> get order;
  $AddressDtoCopyWith<$Res> get address;
  $UserDtoCopyWith<$Res> get customer;
  $OrderDtoCopyWith<$Res>? get rootOrder;
}

/// @nodoc
class _$OrderInfoModelCopyWithImpl<$Res, $Val extends OrderInfoModel>
    implements $OrderInfoModelCopyWith<$Res> {
  _$OrderInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? address = null,
    Object? customer = null,
    Object? items = null,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDto>,
      rootOrder: freezed == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto?,
    ) as $Val);
  }

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get order {
    return $OrderDtoCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of OrderInfoModel
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
abstract class _$$OrderInfoModelImplCopyWith<$Res>
    implements $OrderInfoModelCopyWith<$Res> {
  factory _$$OrderInfoModelImplCopyWith(_$OrderInfoModelImpl value,
          $Res Function(_$OrderInfoModelImpl) then) =
      __$$OrderInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderDto order,
      AddressDto address,
      UserDto customer,
      List<OrderItemDto> items,
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
class __$$OrderInfoModelImplCopyWithImpl<$Res>
    extends _$OrderInfoModelCopyWithImpl<$Res, _$OrderInfoModelImpl>
    implements _$$OrderInfoModelImplCopyWith<$Res> {
  __$$OrderInfoModelImplCopyWithImpl(
      _$OrderInfoModelImpl _value, $Res Function(_$OrderInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? address = null,
    Object? customer = null,
    Object? items = null,
    Object? rootOrder = freezed,
  }) {
    return _then(_$OrderInfoModelImpl(
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDto>,
      rootOrder: freezed == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto?,
    ));
  }
}

/// @nodoc

class _$OrderInfoModelImpl implements _OrderInfoModel {
  const _$OrderInfoModelImpl(
      {required this.order,
      required this.address,
      required this.customer,
      required final List<OrderItemDto> items,
      this.rootOrder})
      : _items = items;

  @override
  final OrderDto order;
  @override
  final AddressDto address;
  @override
  final UserDto customer;
  final List<OrderItemDto> _items;
  @override
  List<OrderItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderDto? rootOrder;

  @override
  String toString() {
    return 'OrderInfoModel(order: $order, address: $address, customer: $customer, items: $items, rootOrder: $rootOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderInfoModelImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.rootOrder, rootOrder) ||
                other.rootOrder == rootOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, address, customer,
      const DeepCollectionEquality().hash(_items), rootOrder);

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderInfoModelImplCopyWith<_$OrderInfoModelImpl> get copyWith =>
      __$$OrderInfoModelImplCopyWithImpl<_$OrderInfoModelImpl>(
          this, _$identity);
}

abstract class _OrderInfoModel implements OrderInfoModel {
  const factory _OrderInfoModel(
      {required final OrderDto order,
      required final AddressDto address,
      required final UserDto customer,
      required final List<OrderItemDto> items,
      final OrderDto? rootOrder}) = _$OrderInfoModelImpl;

  @override
  OrderDto get order;
  @override
  AddressDto get address;
  @override
  UserDto get customer;
  @override
  List<OrderItemDto> get items;
  @override
  OrderDto? get rootOrder;

  /// Create a copy of OrderInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderInfoModelImplCopyWith<_$OrderInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternalOrderItemInfo {
  InternalOrderItemDto get item => throw _privateConstructorUsedError;
  OrderItemDto get rootItem => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderItemInfoCopyWith<InternalOrderItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderItemInfoCopyWith<$Res> {
  factory $InternalOrderItemInfoCopyWith(InternalOrderItemInfo value,
          $Res Function(InternalOrderItemInfo) then) =
      _$InternalOrderItemInfoCopyWithImpl<$Res, InternalOrderItemInfo>;
  @useResult
  $Res call({InternalOrderItemDto item, OrderItemDto rootItem});

  $InternalOrderItemDtoCopyWith<$Res> get item;
  $OrderItemDtoCopyWith<$Res> get rootItem;
}

/// @nodoc
class _$InternalOrderItemInfoCopyWithImpl<$Res,
        $Val extends InternalOrderItemInfo>
    implements $InternalOrderItemInfoCopyWith<$Res> {
  _$InternalOrderItemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? rootItem = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InternalOrderItemDto,
      rootItem: null == rootItem
          ? _value.rootItem
          : rootItem // ignore: cast_nullable_to_non_nullable
              as OrderItemDto,
    ) as $Val);
  }

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InternalOrderItemDtoCopyWith<$Res> get item {
    return $InternalOrderItemDtoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemDtoCopyWith<$Res> get rootItem {
    return $OrderItemDtoCopyWith<$Res>(_value.rootItem, (value) {
      return _then(_value.copyWith(rootItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InternalOrderItemInfoImplCopyWith<$Res>
    implements $InternalOrderItemInfoCopyWith<$Res> {
  factory _$$InternalOrderItemInfoImplCopyWith(
          _$InternalOrderItemInfoImpl value,
          $Res Function(_$InternalOrderItemInfoImpl) then) =
      __$$InternalOrderItemInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InternalOrderItemDto item, OrderItemDto rootItem});

  @override
  $InternalOrderItemDtoCopyWith<$Res> get item;
  @override
  $OrderItemDtoCopyWith<$Res> get rootItem;
}

/// @nodoc
class __$$InternalOrderItemInfoImplCopyWithImpl<$Res>
    extends _$InternalOrderItemInfoCopyWithImpl<$Res,
        _$InternalOrderItemInfoImpl>
    implements _$$InternalOrderItemInfoImplCopyWith<$Res> {
  __$$InternalOrderItemInfoImplCopyWithImpl(_$InternalOrderItemInfoImpl _value,
      $Res Function(_$InternalOrderItemInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? rootItem = null,
  }) {
    return _then(_$InternalOrderItemInfoImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InternalOrderItemDto,
      rootItem: null == rootItem
          ? _value.rootItem
          : rootItem // ignore: cast_nullable_to_non_nullable
              as OrderItemDto,
    ));
  }
}

/// @nodoc

class _$InternalOrderItemInfoImpl implements _InternalOrderItemInfo {
  const _$InternalOrderItemInfoImpl(
      {required this.item, required this.rootItem});

  @override
  final InternalOrderItemDto item;
  @override
  final OrderItemDto rootItem;

  @override
  String toString() {
    return 'InternalOrderItemInfo(item: $item, rootItem: $rootItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderItemInfoImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.rootItem, rootItem) ||
                other.rootItem == rootItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, rootItem);

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderItemInfoImplCopyWith<_$InternalOrderItemInfoImpl>
      get copyWith => __$$InternalOrderItemInfoImplCopyWithImpl<
          _$InternalOrderItemInfoImpl>(this, _$identity);
}

abstract class _InternalOrderItemInfo implements InternalOrderItemInfo {
  const factory _InternalOrderItemInfo(
      {required final InternalOrderItemDto item,
      required final OrderItemDto rootItem}) = _$InternalOrderItemInfoImpl;

  @override
  InternalOrderItemDto get item;
  @override
  OrderItemDto get rootItem;

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderItemInfoImplCopyWith<_$InternalOrderItemInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternalOrderInfo {
  InternalOrderDto get order => throw _privateConstructorUsedError;
  List<InternalOrderItemInfo> get items => throw _privateConstructorUsedError;
  OrderDto get rootOrder => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderInfoCopyWith<InternalOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderInfoCopyWith<$Res> {
  factory $InternalOrderInfoCopyWith(
          InternalOrderInfo value, $Res Function(InternalOrderInfo) then) =
      _$InternalOrderInfoCopyWithImpl<$Res, InternalOrderInfo>;
  @useResult
  $Res call(
      {InternalOrderDto order,
      List<InternalOrderItemInfo> items,
      OrderDto rootOrder});

  $InternalOrderDtoCopyWith<$Res> get order;
  $OrderDtoCopyWith<$Res> get rootOrder;
}

/// @nodoc
class _$InternalOrderInfoCopyWithImpl<$Res, $Val extends InternalOrderInfo>
    implements $InternalOrderInfoCopyWith<$Res> {
  _$InternalOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? items = null,
    Object? rootOrder = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as InternalOrderDto,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InternalOrderItemInfo>,
      rootOrder: null == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto,
    ) as $Val);
  }

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InternalOrderDtoCopyWith<$Res> get order {
    return $InternalOrderDtoCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get rootOrder {
    return $OrderDtoCopyWith<$Res>(_value.rootOrder, (value) {
      return _then(_value.copyWith(rootOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InternalOrderInfoImplCopyWith<$Res>
    implements $InternalOrderInfoCopyWith<$Res> {
  factory _$$InternalOrderInfoImplCopyWith(_$InternalOrderInfoImpl value,
          $Res Function(_$InternalOrderInfoImpl) then) =
      __$$InternalOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InternalOrderDto order,
      List<InternalOrderItemInfo> items,
      OrderDto rootOrder});

  @override
  $InternalOrderDtoCopyWith<$Res> get order;
  @override
  $OrderDtoCopyWith<$Res> get rootOrder;
}

/// @nodoc
class __$$InternalOrderInfoImplCopyWithImpl<$Res>
    extends _$InternalOrderInfoCopyWithImpl<$Res, _$InternalOrderInfoImpl>
    implements _$$InternalOrderInfoImplCopyWith<$Res> {
  __$$InternalOrderInfoImplCopyWithImpl(_$InternalOrderInfoImpl _value,
      $Res Function(_$InternalOrderInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? items = null,
    Object? rootOrder = null,
  }) {
    return _then(_$InternalOrderInfoImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as InternalOrderDto,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InternalOrderItemInfo>,
      rootOrder: null == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto,
    ));
  }
}

/// @nodoc

class _$InternalOrderInfoImpl implements _InternalOrderInfo {
  const _$InternalOrderInfoImpl(
      {required this.order,
      required final List<InternalOrderItemInfo> items,
      required this.rootOrder})
      : _items = items;

  @override
  final InternalOrderDto order;
  final List<InternalOrderItemInfo> _items;
  @override
  List<InternalOrderItemInfo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderDto rootOrder;

  @override
  String toString() {
    return 'InternalOrderInfo(order: $order, items: $items, rootOrder: $rootOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderInfoImpl &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.rootOrder, rootOrder) ||
                other.rootOrder == rootOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order,
      const DeepCollectionEquality().hash(_items), rootOrder);

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderInfoImplCopyWith<_$InternalOrderInfoImpl> get copyWith =>
      __$$InternalOrderInfoImplCopyWithImpl<_$InternalOrderInfoImpl>(
          this, _$identity);
}

abstract class _InternalOrderInfo implements InternalOrderInfo {
  const factory _InternalOrderInfo(
      {required final InternalOrderDto order,
      required final List<InternalOrderItemInfo> items,
      required final OrderDto rootOrder}) = _$InternalOrderInfoImpl;

  @override
  InternalOrderDto get order;
  @override
  List<InternalOrderItemInfo> get items;
  @override
  OrderDto get rootOrder;

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderInfoImplCopyWith<_$InternalOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

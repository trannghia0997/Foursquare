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
mixin _$OrderWithItems {
  OrderDto get order => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  List<OrderItemDto> get items => throw _privateConstructorUsedError;

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderWithItemsCopyWith<OrderWithItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderWithItemsCopyWith<$Res> {
  factory $OrderWithItemsCopyWith(
          OrderWithItems value, $Res Function(OrderWithItems) then) =
      _$OrderWithItemsCopyWithImpl<$Res, OrderWithItems>;
  @useResult
  $Res call({OrderDto order, AddressDto address, List<OrderItemDto> items});

  $OrderDtoCopyWith<$Res> get order;
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class _$OrderWithItemsCopyWithImpl<$Res, $Val extends OrderWithItems>
    implements $OrderWithItemsCopyWith<$Res> {
  _$OrderWithItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? address = null,
    Object? items = null,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDto>,
    ) as $Val);
  }

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get order {
    return $OrderDtoCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderWithItemsImplCopyWith<$Res>
    implements $OrderWithItemsCopyWith<$Res> {
  factory _$$OrderWithItemsImplCopyWith(_$OrderWithItemsImpl value,
          $Res Function(_$OrderWithItemsImpl) then) =
      __$$OrderWithItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderDto order, AddressDto address, List<OrderItemDto> items});

  @override
  $OrderDtoCopyWith<$Res> get order;
  @override
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class __$$OrderWithItemsImplCopyWithImpl<$Res>
    extends _$OrderWithItemsCopyWithImpl<$Res, _$OrderWithItemsImpl>
    implements _$$OrderWithItemsImplCopyWith<$Res> {
  __$$OrderWithItemsImplCopyWithImpl(
      _$OrderWithItemsImpl _value, $Res Function(_$OrderWithItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? address = null,
    Object? items = null,
  }) {
    return _then(_$OrderWithItemsImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDto>,
    ));
  }
}

/// @nodoc

class _$OrderWithItemsImpl implements _OrderWithItems {
  const _$OrderWithItemsImpl(
      {required this.order,
      required this.address,
      required final List<OrderItemDto> items})
      : _items = items;

  @override
  final OrderDto order;
  @override
  final AddressDto address;
  final List<OrderItemDto> _items;
  @override
  List<OrderItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderWithItems(order: $order, address: $address, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderWithItemsImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, order, address, const DeepCollectionEquality().hash(_items));

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderWithItemsImplCopyWith<_$OrderWithItemsImpl> get copyWith =>
      __$$OrderWithItemsImplCopyWithImpl<_$OrderWithItemsImpl>(
          this, _$identity);
}

abstract class _OrderWithItems implements OrderWithItems {
  const factory _OrderWithItems(
      {required final OrderDto order,
      required final AddressDto address,
      required final List<OrderItemDto> items}) = _$OrderWithItemsImpl;

  @override
  OrderDto get order;
  @override
  AddressDto get address;
  @override
  List<OrderItemDto> get items;

  /// Create a copy of OrderWithItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderWithItemsImplCopyWith<_$OrderWithItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

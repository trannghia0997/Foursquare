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
mixin _$InternalOrderItemInfo {
  InternalOrderItemDto get internalOrderItem =>
      throw _privateConstructorUsedError;
  OrderItemDto get rootOrderItem => throw _privateConstructorUsedError;

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
  $Res call(
      {InternalOrderItemDto internalOrderItem, OrderItemDto rootOrderItem});

  $InternalOrderItemDtoCopyWith<$Res> get internalOrderItem;
  $OrderItemDtoCopyWith<$Res> get rootOrderItem;
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
    Object? internalOrderItem = null,
    Object? rootOrderItem = null,
  }) {
    return _then(_value.copyWith(
      internalOrderItem: null == internalOrderItem
          ? _value.internalOrderItem
          : internalOrderItem // ignore: cast_nullable_to_non_nullable
              as InternalOrderItemDto,
      rootOrderItem: null == rootOrderItem
          ? _value.rootOrderItem
          : rootOrderItem // ignore: cast_nullable_to_non_nullable
              as OrderItemDto,
    ) as $Val);
  }

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InternalOrderItemDtoCopyWith<$Res> get internalOrderItem {
    return $InternalOrderItemDtoCopyWith<$Res>(_value.internalOrderItem,
        (value) {
      return _then(_value.copyWith(internalOrderItem: value) as $Val);
    });
  }

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemDtoCopyWith<$Res> get rootOrderItem {
    return $OrderItemDtoCopyWith<$Res>(_value.rootOrderItem, (value) {
      return _then(_value.copyWith(rootOrderItem: value) as $Val);
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
  $Res call(
      {InternalOrderItemDto internalOrderItem, OrderItemDto rootOrderItem});

  @override
  $InternalOrderItemDtoCopyWith<$Res> get internalOrderItem;
  @override
  $OrderItemDtoCopyWith<$Res> get rootOrderItem;
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
    Object? internalOrderItem = null,
    Object? rootOrderItem = null,
  }) {
    return _then(_$InternalOrderItemInfoImpl(
      internalOrderItem: null == internalOrderItem
          ? _value.internalOrderItem
          : internalOrderItem // ignore: cast_nullable_to_non_nullable
              as InternalOrderItemDto,
      rootOrderItem: null == rootOrderItem
          ? _value.rootOrderItem
          : rootOrderItem // ignore: cast_nullable_to_non_nullable
              as OrderItemDto,
    ));
  }
}

/// @nodoc

class _$InternalOrderItemInfoImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderItemInfo {
  const _$InternalOrderItemInfoImpl(
      {required this.internalOrderItem, required this.rootOrderItem});

  @override
  final InternalOrderItemDto internalOrderItem;
  @override
  final OrderItemDto rootOrderItem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderItemInfo(internalOrderItem: $internalOrderItem, rootOrderItem: $rootOrderItem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderItemInfo'))
      ..add(DiagnosticsProperty('internalOrderItem', internalOrderItem))
      ..add(DiagnosticsProperty('rootOrderItem', rootOrderItem));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderItemInfoImpl &&
            (identical(other.internalOrderItem, internalOrderItem) ||
                other.internalOrderItem == internalOrderItem) &&
            (identical(other.rootOrderItem, rootOrderItem) ||
                other.rootOrderItem == rootOrderItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, internalOrderItem, rootOrderItem);

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
      {required final InternalOrderItemDto internalOrderItem,
      required final OrderItemDto rootOrderItem}) = _$InternalOrderItemInfoImpl;

  @override
  InternalOrderItemDto get internalOrderItem;
  @override
  OrderItemDto get rootOrderItem;

  /// Create a copy of InternalOrderItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderItemInfoImplCopyWith<_$InternalOrderItemInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternalOrderInfo {
  InternalOrderDto get internalOrder => throw _privateConstructorUsedError;
  List<InternalOrderItemInfo> get internalOrderItems =>
      throw _privateConstructorUsedError;
  OrderDto get rootOrder => throw _privateConstructorUsedError;
  UserDto get creator => throw _privateConstructorUsedError;
  GuestInfoDto? get guest => throw _privateConstructorUsedError;

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
      {InternalOrderDto internalOrder,
      List<InternalOrderItemInfo> internalOrderItems,
      OrderDto rootOrder,
      UserDto creator,
      GuestInfoDto? guest});

  $InternalOrderDtoCopyWith<$Res> get internalOrder;
  $OrderDtoCopyWith<$Res> get rootOrder;
  $UserDtoCopyWith<$Res> get creator;
  $GuestInfoDtoCopyWith<$Res>? get guest;
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
    Object? internalOrder = null,
    Object? internalOrderItems = null,
    Object? rootOrder = null,
    Object? creator = null,
    Object? guest = freezed,
  }) {
    return _then(_value.copyWith(
      internalOrder: null == internalOrder
          ? _value.internalOrder
          : internalOrder // ignore: cast_nullable_to_non_nullable
              as InternalOrderDto,
      internalOrderItems: null == internalOrderItems
          ? _value.internalOrderItems
          : internalOrderItems // ignore: cast_nullable_to_non_nullable
              as List<InternalOrderItemInfo>,
      rootOrder: null == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserDto,
      guest: freezed == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as GuestInfoDto?,
    ) as $Val);
  }

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InternalOrderDtoCopyWith<$Res> get internalOrder {
    return $InternalOrderDtoCopyWith<$Res>(_value.internalOrder, (value) {
      return _then(_value.copyWith(internalOrder: value) as $Val);
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

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get creator {
    return $UserDtoCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestInfoDtoCopyWith<$Res>? get guest {
    if (_value.guest == null) {
      return null;
    }

    return $GuestInfoDtoCopyWith<$Res>(_value.guest!, (value) {
      return _then(_value.copyWith(guest: value) as $Val);
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
      {InternalOrderDto internalOrder,
      List<InternalOrderItemInfo> internalOrderItems,
      OrderDto rootOrder,
      UserDto creator,
      GuestInfoDto? guest});

  @override
  $InternalOrderDtoCopyWith<$Res> get internalOrder;
  @override
  $OrderDtoCopyWith<$Res> get rootOrder;
  @override
  $UserDtoCopyWith<$Res> get creator;
  @override
  $GuestInfoDtoCopyWith<$Res>? get guest;
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
    Object? internalOrder = null,
    Object? internalOrderItems = null,
    Object? rootOrder = null,
    Object? creator = null,
    Object? guest = freezed,
  }) {
    return _then(_$InternalOrderInfoImpl(
      internalOrder: null == internalOrder
          ? _value.internalOrder
          : internalOrder // ignore: cast_nullable_to_non_nullable
              as InternalOrderDto,
      internalOrderItems: null == internalOrderItems
          ? _value._internalOrderItems
          : internalOrderItems // ignore: cast_nullable_to_non_nullable
              as List<InternalOrderItemInfo>,
      rootOrder: null == rootOrder
          ? _value.rootOrder
          : rootOrder // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserDto,
      guest: freezed == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as GuestInfoDto?,
    ));
  }
}

/// @nodoc

class _$InternalOrderInfoImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderInfo {
  const _$InternalOrderInfoImpl(
      {required this.internalOrder,
      required final List<InternalOrderItemInfo> internalOrderItems,
      required this.rootOrder,
      required this.creator,
      this.guest})
      : _internalOrderItems = internalOrderItems;

  @override
  final InternalOrderDto internalOrder;
  final List<InternalOrderItemInfo> _internalOrderItems;
  @override
  List<InternalOrderItemInfo> get internalOrderItems {
    if (_internalOrderItems is EqualUnmodifiableListView)
      return _internalOrderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_internalOrderItems);
  }

  @override
  final OrderDto rootOrder;
  @override
  final UserDto creator;
  @override
  final GuestInfoDto? guest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderInfo(internalOrder: $internalOrder, internalOrderItems: $internalOrderItems, rootOrder: $rootOrder, creator: $creator, guest: $guest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderInfo'))
      ..add(DiagnosticsProperty('internalOrder', internalOrder))
      ..add(DiagnosticsProperty('internalOrderItems', internalOrderItems))
      ..add(DiagnosticsProperty('rootOrder', rootOrder))
      ..add(DiagnosticsProperty('creator', creator))
      ..add(DiagnosticsProperty('guest', guest));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderInfoImpl &&
            (identical(other.internalOrder, internalOrder) ||
                other.internalOrder == internalOrder) &&
            const DeepCollectionEquality()
                .equals(other._internalOrderItems, _internalOrderItems) &&
            (identical(other.rootOrder, rootOrder) ||
                other.rootOrder == rootOrder) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      internalOrder,
      const DeepCollectionEquality().hash(_internalOrderItems),
      rootOrder,
      creator,
      guest);

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
      {required final InternalOrderDto internalOrder,
      required final List<InternalOrderItemInfo> internalOrderItems,
      required final OrderDto rootOrder,
      required final UserDto creator,
      final GuestInfoDto? guest}) = _$InternalOrderInfoImpl;

  @override
  InternalOrderDto get internalOrder;
  @override
  List<InternalOrderItemInfo> get internalOrderItems;
  @override
  OrderDto get rootOrder;
  @override
  UserDto get creator;
  @override
  GuestInfoDto? get guest;

  /// Create a copy of InternalOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderInfoImplCopyWith<_$InternalOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

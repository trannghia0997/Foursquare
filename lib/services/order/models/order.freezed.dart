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

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  set creatorId(String value) => throw _privateConstructorUsedError;
  List<OrderProduct> get listOrderProduct => throw _privateConstructorUsedError;
  set listOrderProduct(List<OrderProduct> value) =>
      throw _privateConstructorUsedError;
  OrderType get type => throw _privateConstructorUsedError;
  set type(OrderType value) => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  set orderStatus(OrderStatus value) => throw _privateConstructorUsedError;
  String get addressId => throw _privateConstructorUsedError;
  set addressId(String value) => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  set paymentMethod(PaymentMethod value) => throw _privateConstructorUsedError;
  int get toltalCost => throw _privateConstructorUsedError;
  set toltalCost(int value) => throw _privateConstructorUsedError;
  WarehouseAssignmentStatus? get warehouseAssignmentStatus =>
      throw _privateConstructorUsedError;
  set warehouseAssignmentStatus(WarehouseAssignmentStatus? value) =>
      throw _privateConstructorUsedError;
  ShipmentAssignmentStatus? get shipmentAssignmentStatus =>
      throw _privateConstructorUsedError;
  set shipmentAssignmentStatus(ShipmentAssignmentStatus? value) =>
      throw _privateConstructorUsedError; // required String statusId,
  String? get customerId =>
      throw _privateConstructorUsedError; // required String statusId,
  set customerId(String? value) => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  set priority(int value) => throw _privateConstructorUsedError;
  bool get isInternal => throw _privateConstructorUsedError;
  set isInternal(bool value) => throw _privateConstructorUsedError;
  String? get parentOrderId => throw _privateConstructorUsedError;
  set parentOrderId(String? value) => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  set note(String? value) => throw _privateConstructorUsedError;
  String? get otherInfo => throw _privateConstructorUsedError;
  set otherInfo(String? value) => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      String creatorId,
      List<OrderProduct> listOrderProduct,
      OrderType type,
      OrderStatus orderStatus,
      String addressId,
      PaymentMethod paymentMethod,
      int toltalCost,
      WarehouseAssignmentStatus? warehouseAssignmentStatus,
      ShipmentAssignmentStatus? shipmentAssignmentStatus,
      String? customerId,
      int priority,
      bool isInternal,
      String? parentOrderId,
      String? note,
      String? otherInfo});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? listOrderProduct = null,
    Object? type = null,
    Object? orderStatus = null,
    Object? addressId = null,
    Object? paymentMethod = null,
    Object? toltalCost = null,
    Object? warehouseAssignmentStatus = freezed,
    Object? shipmentAssignmentStatus = freezed,
    Object? customerId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      listOrderProduct: null == listOrderProduct
          ? _value.listOrderProduct
          : listOrderProduct // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      toltalCost: null == toltalCost
          ? _value.toltalCost
          : toltalCost // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseAssignmentStatus: freezed == warehouseAssignmentStatus
          ? _value.warehouseAssignmentStatus
          : warehouseAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as WarehouseAssignmentStatus?,
      shipmentAssignmentStatus: freezed == shipmentAssignmentStatus
          ? _value.shipmentAssignmentStatus
          : shipmentAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as ShipmentAssignmentStatus?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String creatorId,
      List<OrderProduct> listOrderProduct,
      OrderType type,
      OrderStatus orderStatus,
      String addressId,
      PaymentMethod paymentMethod,
      int toltalCost,
      WarehouseAssignmentStatus? warehouseAssignmentStatus,
      ShipmentAssignmentStatus? shipmentAssignmentStatus,
      String? customerId,
      int priority,
      bool isInternal,
      String? parentOrderId,
      String? note,
      String? otherInfo});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? listOrderProduct = null,
    Object? type = null,
    Object? orderStatus = null,
    Object? addressId = null,
    Object? paymentMethod = null,
    Object? toltalCost = null,
    Object? warehouseAssignmentStatus = freezed,
    Object? shipmentAssignmentStatus = freezed,
    Object? customerId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      listOrderProduct: null == listOrderProduct
          ? _value.listOrderProduct
          : listOrderProduct // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      toltalCost: null == toltalCost
          ? _value.toltalCost
          : toltalCost // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseAssignmentStatus: freezed == warehouseAssignmentStatus
          ? _value.warehouseAssignmentStatus
          : warehouseAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as WarehouseAssignmentStatus?,
      shipmentAssignmentStatus: freezed == shipmentAssignmentStatus
          ? _value.shipmentAssignmentStatus
          : shipmentAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as ShipmentAssignmentStatus?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl extends _Order with DiagnosticableTreeMixin {
  _$OrderImpl(
      {required this.id,
      required this.creatorId,
      required this.listOrderProduct,
      required this.type,
      required this.orderStatus,
      required this.addressId,
      required this.paymentMethod,
      required this.toltalCost,
      this.warehouseAssignmentStatus,
      this.shipmentAssignmentStatus,
      this.customerId,
      this.priority = 0,
      this.isInternal = false,
      this.parentOrderId,
      this.note,
      this.otherInfo})
      : super._();

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  String id;
  @override
  String creatorId;
  @override
  List<OrderProduct> listOrderProduct;
  @override
  OrderType type;
  @override
  OrderStatus orderStatus;
  @override
  String addressId;
  @override
  PaymentMethod paymentMethod;
  @override
  int toltalCost;
  @override
  WarehouseAssignmentStatus? warehouseAssignmentStatus;
  @override
  ShipmentAssignmentStatus? shipmentAssignmentStatus;
// required String statusId,
  @override
  String? customerId;
  @override
  @JsonKey()
  int priority;
  @override
  @JsonKey()
  bool isInternal;
  @override
  String? parentOrderId;
  @override
  String? note;
  @override
  String? otherInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Order(id: $id, creatorId: $creatorId, listOrderProduct: $listOrderProduct, type: $type, orderStatus: $orderStatus, addressId: $addressId, paymentMethod: $paymentMethod, toltalCost: $toltalCost, warehouseAssignmentStatus: $warehouseAssignmentStatus, shipmentAssignmentStatus: $shipmentAssignmentStatus, customerId: $customerId, priority: $priority, isInternal: $isInternal, parentOrderId: $parentOrderId, note: $note, otherInfo: $otherInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Order'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('listOrderProduct', listOrderProduct))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('orderStatus', orderStatus))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod))
      ..add(DiagnosticsProperty('toltalCost', toltalCost))
      ..add(DiagnosticsProperty(
          'warehouseAssignmentStatus', warehouseAssignmentStatus))
      ..add(DiagnosticsProperty(
          'shipmentAssignmentStatus', shipmentAssignmentStatus))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('isInternal', isInternal))
      ..add(DiagnosticsProperty('parentOrderId', parentOrderId))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo));
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  factory _Order(
      {required String id,
      required String creatorId,
      required List<OrderProduct> listOrderProduct,
      required OrderType type,
      required OrderStatus orderStatus,
      required String addressId,
      required PaymentMethod paymentMethod,
      required int toltalCost,
      WarehouseAssignmentStatus? warehouseAssignmentStatus,
      ShipmentAssignmentStatus? shipmentAssignmentStatus,
      String? customerId,
      int priority,
      bool isInternal,
      String? parentOrderId,
      String? note,
      String? otherInfo}) = _$OrderImpl;
  _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get creatorId;
  set creatorId(String value);
  @override
  List<OrderProduct> get listOrderProduct;
  set listOrderProduct(List<OrderProduct> value);
  @override
  OrderType get type;
  set type(OrderType value);
  @override
  OrderStatus get orderStatus;
  set orderStatus(OrderStatus value);
  @override
  String get addressId;
  set addressId(String value);
  @override
  PaymentMethod get paymentMethod;
  set paymentMethod(PaymentMethod value);
  @override
  int get toltalCost;
  set toltalCost(int value);
  @override
  WarehouseAssignmentStatus? get warehouseAssignmentStatus;
  set warehouseAssignmentStatus(WarehouseAssignmentStatus? value);
  @override
  ShipmentAssignmentStatus? get shipmentAssignmentStatus;
  set shipmentAssignmentStatus(
      ShipmentAssignmentStatus? value); // required String statusId,
  @override
  String? get customerId; // required String statusId,
  set customerId(String? value);
  @override
  int get priority;
  set priority(int value);
  @override
  bool get isInternal;
  set isInternal(bool value);
  @override
  String? get parentOrderId;
  set parentOrderId(String? value);
  @override
  String? get note;
  set note(String? value);
  @override
  String? get otherInfo;
  set otherInfo(String? value);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderCreation _$OrderCreationFromJson(Map<String, dynamic> json) {
  return _OrderCreation.fromJson(json);
}

/// @nodoc
mixin _$OrderCreation {
  @JsonKey(name: 'creator_id')
  String get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  String? get customerId => throw _privateConstructorUsedError;
  OrderType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  String? get addressId => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  bool get isInternal => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_order_id')
  String? get parentOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String get statusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_order_product')
  List<OrderProduct> get listOrderProductId =>
      throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this OrderCreation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderCreation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCreationCopyWith<OrderCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreationCopyWith<$Res> {
  factory $OrderCreationCopyWith(
          OrderCreation value, $Res Function(OrderCreation) then) =
      _$OrderCreationCopyWithImpl<$Res, OrderCreation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') String statusId,
      @JsonKey(name: 'list_order_product')
      List<OrderProduct> listOrderProductId,
      String? note});
}

/// @nodoc
class _$OrderCreationCopyWithImpl<$Res, $Val extends OrderCreation>
    implements $OrderCreationCopyWith<$Res> {
  _$OrderCreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCreation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? customerId = freezed,
    Object? type = null,
    Object? addressId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? statusId = null,
    Object? listOrderProductId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      listOrderProductId: null == listOrderProductId
          ? _value.listOrderProductId
          : listOrderProductId // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCreationImplCopyWith<$Res>
    implements $OrderCreationCopyWith<$Res> {
  factory _$$OrderCreationImplCopyWith(
          _$OrderCreationImpl value, $Res Function(_$OrderCreationImpl) then) =
      __$$OrderCreationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') String statusId,
      @JsonKey(name: 'list_order_product')
      List<OrderProduct> listOrderProductId,
      String? note});
}

/// @nodoc
class __$$OrderCreationImplCopyWithImpl<$Res>
    extends _$OrderCreationCopyWithImpl<$Res, _$OrderCreationImpl>
    implements _$$OrderCreationImplCopyWith<$Res> {
  __$$OrderCreationImplCopyWithImpl(
      _$OrderCreationImpl _value, $Res Function(_$OrderCreationImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? customerId = freezed,
    Object? type = null,
    Object? addressId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? statusId = null,
    Object? listOrderProductId = null,
    Object? note = freezed,
  }) {
    return _then(_$OrderCreationImpl(
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      listOrderProductId: null == listOrderProductId
          ? _value._listOrderProductId
          : listOrderProductId // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCreationImpl
    with DiagnosticableTreeMixin
    implements _OrderCreation {
  _$OrderCreationImpl(
      {@JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'customer_id') this.customerId,
      this.type = OrderType.sale,
      @JsonKey(name: 'address_id') this.addressId,
      this.priority = 0,
      @JsonKey(name: 'is_internal') this.isInternal = false,
      @JsonKey(name: 'parent_order_id') this.parentOrderId,
      @JsonKey(name: 'status_id') required this.statusId,
      @JsonKey(name: 'list_order_product')
      required final List<OrderProduct> listOrderProductId,
      this.note})
      : _listOrderProductId = listOrderProductId;

  factory _$OrderCreationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreationImplFromJson(json);

  @override
  @JsonKey(name: 'creator_id')
  final String creatorId;
  @override
  @JsonKey(name: 'customer_id')
  final String? customerId;
  @override
  @JsonKey()
  final OrderType type;
  @override
  @JsonKey(name: 'address_id')
  final String? addressId;
  @override
  @JsonKey()
  final int priority;
  @override
  @JsonKey(name: 'is_internal')
  final bool isInternal;
  @override
  @JsonKey(name: 'parent_order_id')
  final String? parentOrderId;
  @override
  @JsonKey(name: 'status_id')
  final String statusId;
  final List<OrderProduct> _listOrderProductId;
  @override
  @JsonKey(name: 'list_order_product')
  List<OrderProduct> get listOrderProductId {
    if (_listOrderProductId is EqualUnmodifiableListView)
      return _listOrderProductId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOrderProductId);
  }

  @override
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderCreation(creatorId: $creatorId, customerId: $customerId, type: $type, addressId: $addressId, priority: $priority, isInternal: $isInternal, parentOrderId: $parentOrderId, statusId: $statusId, listOrderProductId: $listOrderProductId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderCreation'))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('isInternal', isInternal))
      ..add(DiagnosticsProperty('parentOrderId', parentOrderId))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('listOrderProductId', listOrderProductId))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreationImpl &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.parentOrderId, parentOrderId) ||
                other.parentOrderId == parentOrderId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            const DeepCollectionEquality()
                .equals(other._listOrderProductId, _listOrderProductId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      creatorId,
      customerId,
      type,
      addressId,
      priority,
      isInternal,
      parentOrderId,
      statusId,
      const DeepCollectionEquality().hash(_listOrderProductId),
      note);

  /// Create a copy of OrderCreation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreationImplCopyWith<_$OrderCreationImpl> get copyWith =>
      __$$OrderCreationImplCopyWithImpl<_$OrderCreationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreationImplToJson(
      this,
    );
  }
}

abstract class _OrderCreation implements OrderCreation {
  factory _OrderCreation(
      {@JsonKey(name: 'creator_id') required final String creatorId,
      @JsonKey(name: 'customer_id') final String? customerId,
      final OrderType type,
      @JsonKey(name: 'address_id') final String? addressId,
      final int priority,
      @JsonKey(name: 'is_internal') final bool isInternal,
      @JsonKey(name: 'parent_order_id') final String? parentOrderId,
      @JsonKey(name: 'status_id') required final String statusId,
      @JsonKey(name: 'list_order_product')
      required final List<OrderProduct> listOrderProductId,
      final String? note}) = _$OrderCreationImpl;

  factory _OrderCreation.fromJson(Map<String, dynamic> json) =
      _$OrderCreationImpl.fromJson;

  @override
  @JsonKey(name: 'creator_id')
  String get creatorId;
  @override
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @override
  OrderType get type;
  @override
  @JsonKey(name: 'address_id')
  String? get addressId;
  @override
  int get priority;
  @override
  @JsonKey(name: 'is_internal')
  bool get isInternal;
  @override
  @JsonKey(name: 'parent_order_id')
  String? get parentOrderId;
  @override
  @JsonKey(name: 'status_id')
  String get statusId;
  @override
  @JsonKey(name: 'list_order_product')
  List<OrderProduct> get listOrderProductId;
  @override
  String? get note;

  /// Create a copy of OrderCreation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCreationImplCopyWith<_$OrderCreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

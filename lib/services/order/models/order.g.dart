// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String,
      creatorId: json['creatorId'] as String,
      listOrderProduct: (json['listOrderProduct'] as List<dynamic>)
          .map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      orderStatus: $enumDecode(_$OrderStatusEnumMap, json['orderStatus']),
      addressId: json['addressId'] as String,
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      toltalCost: (json['toltalCost'] as num).toInt(),
      warehouseAssignmentStatus: $enumDecodeNullable(
          _$WarehouseAssignmentStatusEnumMap,
          json['warehouseAssignmentStatus']),
      shipmentAssignmentStatus: $enumDecodeNullable(
          _$ShipmentAssignmentStatusEnumMap, json['shipmentAssignmentStatus']),
      customerId: json['customerId'] as String?,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isInternal: json['isInternal'] as bool? ?? false,
      parentOrderId: json['parentOrderId'] as String?,
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'listOrderProduct': instance.listOrderProduct,
      'type': _$OrderTypeEnumMap[instance.type]!,
      'orderStatus': _$OrderStatusEnumMap[instance.orderStatus]!,
      'addressId': instance.addressId,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'toltalCost': instance.toltalCost,
      'warehouseAssignmentStatus': _$WarehouseAssignmentStatusEnumMap[
          instance.warehouseAssignmentStatus],
      'shipmentAssignmentStatus':
          _$ShipmentAssignmentStatusEnumMap[instance.shipmentAssignmentStatus],
      'customerId': instance.customerId,
      'priority': instance.priority,
      'isInternal': instance.isInternal,
      'parentOrderId': instance.parentOrderId,
      'note': instance.note,
      'otherInfo': instance.otherInfo,
    };

const _$OrderTypeEnumMap = {
  OrderType.sale: 'sale',
  OrderType.return_: 'return',
  OrderType.exchange: 'exchange',
  OrderType.transfer: 'transfer',
  OrderType.other: 'other',
};

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.inProgress: 'in_progress',
  OrderStatus.assigned: 'assigned',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.failed: 'failed',
  OrderStatus.other: 'other',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.electronicFundsTransfer: 'eft',
  PaymentMethod.giftCard: 'gift_card',
  PaymentMethod.creditCard: 'credit_card',
  PaymentMethod.debitCard: 'debit_card',
  PaymentMethod.prepaidCard: 'prepaid_card',
  PaymentMethod.check: 'check',
  PaymentMethod.other: 'other',
};

const _$WarehouseAssignmentStatusEnumMap = {
  WarehouseAssignmentStatus.pending: 'pending',
  WarehouseAssignmentStatus.assigned: 'assigned',
  WarehouseAssignmentStatus.inProgress: 'in_progress',
  WarehouseAssignmentStatus.completed: 'completed',
  WarehouseAssignmentStatus.cancelled: 'cancelled',
  WarehouseAssignmentStatus.failed: 'failed',
  WarehouseAssignmentStatus.other: 'other',
};

const _$ShipmentAssignmentStatusEnumMap = {
  ShipmentAssignmentStatus.pending: 'pending',
  ShipmentAssignmentStatus.assigned: 'assigned',
  ShipmentAssignmentStatus.inProgress: 'in_progress',
  ShipmentAssignmentStatus.completed: 'completed',
  ShipmentAssignmentStatus.cancelled: 'cancelled',
  ShipmentAssignmentStatus.failed: 'failed',
  ShipmentAssignmentStatus.other: 'other',
};

_$OrderCreationImpl _$$OrderCreationImplFromJson(Map<String, dynamic> json) =>
    _$OrderCreationImpl(
      creatorId: json['creator_id'] as String,
      customerId: json['customer_id'] as String?,
      type: $enumDecodeNullable(_$OrderTypeEnumMap, json['type']) ??
          OrderType.sale,
      addressId: json['address_id'] as String?,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isInternal: json['is_internal'] as bool? ?? false,
      parentOrderId: json['parent_order_id'] as String?,
      statusId: json['status_id'] as String,
      listOrderProductId: (json['list_order_product'] as List<dynamic>)
          .map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$OrderCreationImplToJson(_$OrderCreationImpl instance) =>
    <String, dynamic>{
      'creator_id': instance.creatorId,
      'customer_id': instance.customerId,
      'type': _$OrderTypeEnumMap[instance.type]!,
      'address_id': instance.addressId,
      'priority': instance.priority,
      'is_internal': instance.isInternal,
      'parent_order_id': instance.parentOrderId,
      'status_id': instance.statusId,
      'list_order_product': instance.listOrderProductId,
      'note': instance.note,
    };

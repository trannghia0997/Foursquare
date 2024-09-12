import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/internal_order.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:foursquare/shared/models/warehouse_assignment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../shared/models/shipment_assignment.dart';

part 'assignment.g.dart';
part 'assignment.freezed.dart';

@freezed
class WarehouseAssignmentInfo with _$WarehouseAssignmentInfo {
  const factory WarehouseAssignmentInfo({
    required WarehouseAssignmentDto warehouseAssignment,
    required InternalOrderDto internalOrder,
  }) = _WarehouseAssignmentInfo;
}

@freezed
class ShippingAssignmentInfo with _$ShippingAssignmentInfo {
  const factory ShippingAssignmentInfo({
    required ShipmentAssignmentDto shippingAssignment,
    required ShipmentDto shipment,
  }) = _ShippingAssignmentInfo;
}

@riverpod
Future<(List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)>
    assignmentInfoByOrder(AssignmentInfoByOrderRef ref, String orderId) async {
  // Cache for 1 hour
  ref.cacheFor(const Duration(hours: 1));
  // Get data
  final result = await Future.wait(
    [
      PBApp.instance
          .collection('warehouse_assignments')
          .getFullList(
            filter: 'rootOrderId = $orderId',
            expand: 'internal_orders_via_internalOrderId',
          )
          .then(
        (response) {
          return response.map(
            (e) {
              final warehouseAssignment = WarehouseAssignmentDto.fromRecord(e);
              final internalOrder = InternalOrderDto.fromRecord(
                  e.expand['internal_orders_via_internalOrderId']!.first);
              return WarehouseAssignmentInfo(
                warehouseAssignment: warehouseAssignment,
                internalOrder: internalOrder,
              );
            },
          ).toList();
        },
      ),
      PBApp.instance
          .collection('shipment_assignments')
          .getFullList(
            filter: 'shipmentId.orderId = $orderId',
            expand: 'shipments_via_shipmentId',
          )
          .then(
        (response) {
          return response.map(
            (e) {
              final shipmentAssignment = ShipmentAssignmentDto.fromRecord(e);
              final shipment = ShipmentDto.fromRecord(
                  e.expand['shipments_via_shipmentId']!.first);
              return ShippingAssignmentInfo(
                shippingAssignment: shipmentAssignment,
                shipment: shipment,
              );
            },
          ).toList();
        },
      ),
    ],
  );
  return (
    result.first as List<WarehouseAssignmentInfo>,
    result.last as List<ShippingAssignmentInfo>
  );
}

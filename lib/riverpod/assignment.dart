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
class ShipmentAssignmentInfo with _$ShipmentAssignmentInfo {
  const factory ShipmentAssignmentInfo({
    required ShipmentAssignmentDto shipmentAssignment,
    required ShipmentDto shipment,
  }) = _ShipmentAssignmentInfo;
}

@riverpod
Future<List<WarehouseAssignmentInfo>> warehouseAssignmentInfoByUser(
  WarehouseAssignmentInfoByUserRef ref,
  String userId,
) {
  // Refresh every 5 minutes
  ref.cacheFor(const Duration(minutes: 5));
  return PBApp.instance
      .collection('warehouse_assignments')
      .getFullList(
        filter: 'staffId.userId = $userId',
        expand: 'internalOrderId',
        sort: '-created',
      )
      .then(
        (response) => response.map(
          (e) {
            final warehouseAssignment = WarehouseAssignmentDto.fromRecord(e);
            final internalOrder =
                InternalOrderDto.fromRecord(e.expand['internalOrderId']!.first);
            return WarehouseAssignmentInfo(
              warehouseAssignment: warehouseAssignment,
              internalOrder: internalOrder,
            );
          },
        ).toList(),
      );
}

@riverpod
Future<List<ShipmentAssignmentInfo>> shipmentAssignmentInfoByUser(
  ShipmentAssignmentInfoByUserRef ref,
  String userId,
) {
  // We cache the result for 5 minutes.
  ref.cacheFor(const Duration(minutes: 5));
  return PBApp.instance
      .collection('shipment_assignments')
      .getFullList(
        filter: 'staffId.userId = $userId',
        expand: 'shipmentId',
        sort: '-created',
      )
      .then(
        (response) => response.map(
          (e) {
            final shipmentAssignment = ShipmentAssignmentDto.fromRecord(e);
            final internalOrder =
                ShipmentDto.fromRecord(e.expand['shipmentId']!.first);
            return ShipmentAssignmentInfo(
              shipmentAssignment: shipmentAssignment,
              shipment: internalOrder,
            );
          },
        ).toList(),
      );
}

@riverpod
Future<(List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)>
    assignmentInfoByOrder(AssignmentInfoByOrderRef ref, String orderId) async {
  // Cache for 5 minutes
  ref.cacheFor(const Duration(minutes: 5));
  // Get data
  final result = await Future.wait(
    [
      PBApp.instance
          .collection('warehouse_assignments')
          .getFullList(
            filter: 'internalOrderId.rootOrderId = $orderId',
            expand: 'internalOrderId',
          )
          .then(
        (response) {
          return response.map(
            (e) {
              final warehouseAssignment = WarehouseAssignmentDto.fromRecord(e);
              final internalOrder = InternalOrderDto.fromRecord(
                  e.expand['internalOrderId']!.first);
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
            expand: 'shipmentId',
          )
          .then(
        (response) {
          return response.map(
            (e) {
              final shipmentAssignment = ShipmentAssignmentDto.fromRecord(e);
              final shipment =
                  ShipmentDto.fromRecord(e.expand['shipmentId']!.first);
              return ShipmentAssignmentInfo(
                shipmentAssignment: shipmentAssignment,
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
    result.last as List<ShipmentAssignmentInfo>
  );
}

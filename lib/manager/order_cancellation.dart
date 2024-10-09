import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> cancelOrderAndRelatedEntities(
  WidgetRef ref,
  OrderDto order,
  String reason,
) async {
  // Set order to CANCELLED
  await PBApp.instance.collection('orders').update(
        order.id,
        body: order
            .copyWith(
              statusCodeId: OrderStatusCodeData.cancelled.id,
              otherInfo: reason,
            )
            .toJson(),
      );
  final invoiceInfo =
      await ref.read(invoiceInfoByOrderIdProvider(order.id).future);
  // Set all invoices related to the order to VOID
  await Future.wait(invoiceInfo.map((e) async {
    final allowedStatusCodes = [
      InvoiceStatusCodeData.draft.id,
      InvoiceStatusCodeData.active.id,
      InvoiceStatusCodeData.sent.id,
    ];
    if (!allowedStatusCodes.contains(e.invoice.statusCodeId)) {
      return;
    }
    await PBApp.instance.collection('invoices').update(
          e.invoice.id,
          body: e.invoice
              .copyWith(
                statusCodeId: InvoiceStatusCodeData.void_.id,
                note: "Invoice voided due to order cancellation",
              )
              .toJson(),
        );
  }));
  final (warehouseAssignmentInfo, shipmentAssignmentInfo) =
      await ref.read(assignmentInfoByOrderProvider(order.id).future);
  // Set all warehouse assignments and internal orders related to the order to CANCELLED
  await Future.wait(
    warehouseAssignmentInfo.map((e) async {
      final allowedStatusCodes = [
        OrderStatusCodeData.pending.id,
        OrderStatusCodeData.processing.id,
        OrderStatusCodeData.waitingForAction.id,
        OrderStatusCodeData.onHold.id,
      ];
      if (!allowedStatusCodes.contains(e.internalOrder.statusCodeId)) {
        return;
      }
      await PBApp.instance.collection('internal_orders').update(
            e.internalOrder.id,
            body: e.internalOrder
                .copyWith(
                  statusCodeId: OrderStatusCodeData.cancelled.id,
                )
                .toJson(),
          );
      await PBApp.instance.collection('warehouse_assignments').update(
            e.warehouseAssignment.id,
            body: e.warehouseAssignment
                .copyWith(
                  status: AssignmentStatus.cancelled,
                )
                .toJson(),
          );
    }),
  );
  // Set all shipment assignments and shipments related to the order to CANCELLED
  await Future.wait(
    shipmentAssignmentInfo.map((e) async {
      final allowedStatusCodes = [
        ShipmentStatusCodeData.pending.id,
        ShipmentStatusCodeData.processed.id,
        ShipmentStatusCodeData.failedDeliveryAttempt.id,
      ];
      if (!allowedStatusCodes.contains(e.shipment.statusCodeId)) {
        return;
      }
      await PBApp.instance.collection('shipments').update(
            e.shipment.id,
            body: e.shipment
                .copyWith(
                  statusCodeId: ShipmentStatusCodeData.cancelled.id,
                )
                .toJson(),
          );
      await PBApp.instance.collection('shipment_assignments').update(
            e.shipmentAssignment.id,
            body: e.shipmentAssignment
                .copyWith(
                  status: AssignmentStatus.cancelled,
                )
                .toJson(),
          );
    }),
  );
}

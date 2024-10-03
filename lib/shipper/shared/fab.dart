import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OutForDeliveryFAB extends ConsumerWidget {
  const OutForDeliveryFAB({super.key, required this.shipmentAssignmentInfo});

  final ShipmentAssignmentInfo shipmentAssignmentInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: FloatingActionButton.extended(
        onPressed: () async {
          await PBApp.instance.collection('shipments').update(
                shipmentAssignmentInfo.shipment.id,
                body: shipmentAssignmentInfo.shipment
                    .copyWith(
                      statusCodeId: ShipmentStatusCodeData.outForDelivery.id,
                    )
                    .toJson(),
              );
          await PBApp.instance.collection('shipment_assignments').update(
                shipmentAssignmentInfo.shipmentAssignment.id,
                body: shipmentAssignmentInfo.shipmentAssignment
                    .copyWith(
                      status: AssignmentStatus.inProgress,
                    )
                    .toJson(),
              );
          ref.invalidate(
              singleShipmentInfoProvider(shipmentAssignmentInfo.shipment.id));
          ref.invalidate(shipmentAssignmentInfoByUserProvider);
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Đã chuyển sang trạng thái "Đang giao hàng"'),
            ),
          );
        },
        icon: const Icon(Icons.check),
        label: const Text(
          'Sẵn sàng vận chuyển',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class SuccessDeliveryFAB extends ConsumerWidget {
  const SuccessDeliveryFAB({super.key, required this.shipmentAssignmentInfo});

  final ShipmentAssignmentInfo shipmentAssignmentInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: FloatingActionButton.extended(
        onPressed: () async {
          await PBApp.instance.collection('shipments').update(
                shipmentAssignmentInfo.shipment.id,
                body: shipmentAssignmentInfo.shipment
                    .copyWith(
                      statusCodeId: ShipmentStatusCodeData.delivered.id,
                    )
                    .toJson(),
              );

          final invoiceInfo = await ref.read(
            singleInvoiceInfoProvider(shipmentAssignmentInfo.shipment.invoiceId)
                .future,
          );
          await PBApp.instance.collection('invoices').update(
                invoiceInfo.invoice.id,
                body: invoiceInfo.invoice
                    .copyWith(
                      paidAmount: invoiceInfo.invoice.totalAmount,
                      statusCodeId: InvoiceStatusCodeData.paid.id,
                    )
                    .toJson(),
              );
          await PBApp.instance.collection('shipment_assignments').update(
                shipmentAssignmentInfo.shipmentAssignment.id,
                body: shipmentAssignmentInfo.shipmentAssignment
                    .copyWith(
                      status: AssignmentStatus.completed,
                    )
                    .toJson(),
              );
          ref.invalidate(
              singleShipmentInfoProvider(shipmentAssignmentInfo.shipment.id));
          ref.invalidate(shipmentAssignmentInfoByUserProvider);
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Đã chuyển sang trạng thái "Đã giao hàng"'),
            ),
          );
        },
        icon: const Icon(Icons.done),
        label: const Text(
          'Hoàn thành giao hàng (xác nhận đã thanh toán)',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

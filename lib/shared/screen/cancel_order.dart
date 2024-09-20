import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/shipment_assignment.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/warehouse_assignment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CancelOrderScreen extends HookConsumerWidget {
  const CancelOrderScreen({super.key, required this.order});

  final OrderDto order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reasonController = useTextEditingController();
    Future<void> cancelOrder() async {
      String reason = reasonController.text.trim();
      if (reason.isNotEmpty) {
        final orderEdit = OrderEditDto.fromJson(order.toJson())
          ..statusCodeId = OrderStatusCodeData.cancelled.id
          ..otherInfo = reason;
        // Update order status to cancelled
        await PBApp.instance
            .collection('orders')
            .update(order.id, body: orderEdit.toJson());
        final user = UserDto.fromRecord(PBApp.instance.authStore.model);
        if (user.role != UserRole.customer) {
          final warehouseAssignment = (await PBApp.instance
                  .collection('warehouse_assignments')
                  .getFullList(
                    filter: 'internalOrderId.rootOrderId = ${order.id}',
                  ))
              .map((e) => WarehouseAssignmentDto.fromRecord(e))
              .toList();
          final shipmentAssignment = (await PBApp.instance
                  .collection('shipment_assignments')
                  .getFullList(
                    filter: 'shipmentId.orderId = ${order.id}',
                  ))
              .map((e) => ShipmentAssignmentDto.fromRecord(e))
              .toList();
          final warehouseAssignmentEdit = warehouseAssignment.map(
            (e) => (
              e.id,
              WarehouseAssignmentEditDto.fromJson(e.toJson()).copyWith(
                status: AssignmentStatus.cancelled,
              ),
            ),
          );
          final shipmentAssignmentEdit = shipmentAssignment.map(
            (e) => (
              e.id,
              ShipmentAssignmentEditDto.fromJson(e.toJson()).copyWith(
                status: AssignmentStatus.cancelled,
              ),
            ),
          );
          // Update warehouse and shipment assignments status to cancelled
          await Future.wait([
            for (final e in warehouseAssignmentEdit)
              PBApp.instance
                  .collection('warehouse_assignments')
                  .update(e.$1, body: e.$2.toJson()),
            for (final e in shipmentAssignmentEdit)
              PBApp.instance
                  .collection('shipment_assignments')
                  .update(e.$1, body: e.$2.toJson()),
          ]);
        }
        if (!context.mounted) return;
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Đã hủy đơn hàng'),
              content: Text('Đơn hàng đã được hủy với lý do: $reason'),
              actions: [
                ElevatedButton(
                  onPressed: () async {
                    if (!context.mounted) return;
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Đóng'),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Lỗi'),
              content: const Text('Vui lòng nhập lý do hủy đơn hàng.'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Đóng'),
                ),
              ],
            );
          },
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hủy đơn hàng'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lý do hủy đơn hàng:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: reasonController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Nhập lý do hủy đơn hàng...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: cancelOrder,
                child: const Text(
                  'Hủy đơn hàng',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

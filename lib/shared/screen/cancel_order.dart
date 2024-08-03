import 'package:flutter/material.dart';
import 'package:foursquare/services/assignment/models/shipment_assignment.dart';
import 'package:foursquare/services/assignment/models/warehouse_assignment.dart';
import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/services/order/models/order_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CancelOrderScreen extends ConsumerStatefulWidget {
  final Order order;

  const CancelOrderScreen({super.key, required this.order});

  @override
  CancelOrderScreenState createState() => CancelOrderScreenState();
}

class CancelOrderScreenState extends ConsumerState<CancelOrderScreen> {
  final TextEditingController _reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              controller: _reasonController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Nhập lý do hủy đơn hàng...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: _cancelOrder,
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

  void _cancelOrder() {
    String reason = _reasonController.text.trim();
    final orderNotifier = ref.read(orderProvider.notifier);

    if (reason.isNotEmpty) {
      // Handle order cancellation logic here, e.g., sending a cancel request to the backend
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Đã hủy đơn hàng'),
            content: Text('Đơn hàng đã được hủy với lý do: $reason'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  orderNotifier.addNote(widget.order.id, reason);
                  orderNotifier.setOrderStatus(
                      widget.order.id, OrderStatus.cancelled);
                  orderNotifier.setWarehouseAssignmentStatus(
                      widget.order.id, WarehouseAssignmentStatus.cancelled);
                  orderNotifier.setShipmentAssignmentStatus(
                      widget.order.id, ShipmentAssignmentStatus.cancelled);
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
}

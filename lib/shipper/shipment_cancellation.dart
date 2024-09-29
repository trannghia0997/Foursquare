import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShipmentCancellationScreen extends HookConsumerWidget {
  const ShipmentCancellationScreen({super.key, required this.shipment});

  final ShipmentDto shipment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reasonController = useTextEditingController();
    Future<void> cancelOrder() async {
      String reason = reasonController.text.trim();
      if (reason.isNotEmpty) {
        final shipmentEdit = ShipmentEditDto.fromJson(shipment.toJson())
          ..statusCodeId = ShipmentStatusCodeData.cancelled.id
          ..note = reason;
        await PBApp.instance
            .collection('shipments')
            .update(shipment.id, body: shipmentEdit.toJson());
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

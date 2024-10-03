import 'package:foursquare/riverpod/transaction_history.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends HookConsumerWidget {
  const OrderHistoryScreen({super.key, required this.order});

  final OrderDto order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionHistory = ref.watch(transactionHistoryByEntityProvider(
      entityType: 'orders',
      entityId: order.id,
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử đơn hàng'),
      ),
      body: transactionHistory.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              final statusCode = OrderStatusCodeData.fromId(item.statusCodeId);
              return ListTile(
                leading: Icon(
                  statusCode.iconWithColor.$1,
                  color: statusCode.iconWithColor.$2,
                  size: 32,
                ),
                subtitle: Text(item.created.formattedDateTime),
                title: Text(statusCode.vietnameseLocalizationString),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

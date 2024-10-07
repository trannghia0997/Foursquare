import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/widgets/expansion_tile.dart';
import 'package:foursquare/shared/widgets/list/internal_order_item_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InternalOrderDetailsPage extends HookConsumerWidget {
  const InternalOrderDetailsPage({super.key, required this.internalOrderId});

  final String internalOrderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalOrderInfo =
        ref.watch(singleInternalOrderInfoProvider(internalOrderId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết đơn hàng nội bộ'),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(singleInternalOrderInfoProvider(internalOrderId));
        },
        child: internalOrderInfo.when(
          data: (internalOrderInfo) {
            final orderStatusCode = OrderStatusCodeData.fromId(
                internalOrderInfo.internalOrder.statusCodeId);
            final backgroundAndForegroundColor =
                orderStatusCode.backgroundAndForegroundColor;
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        tileColor: backgroundAndForegroundColor.$1,
                        title: Text(
                            'Trạng thái: ${orderStatusCode.vietnameseLocalizationString}',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: backgroundAndForegroundColor.$2,
                                )),
                        subtitle: Text(
                          'Cập nhật lần cuối: ${internalOrderInfo.internalOrder.updated.formattedDateTime}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: backgroundAndForegroundColor.$2,
                                  ),
                        ),
                      ),
                      if (internalOrderInfo.internalOrder.note?.isNotEmpty ==
                          true) ...[
                        const SizedBox(height: 8),
                        ListTile(
                          title: const Text('Ghi chú từ khách hàng'),
                          subtitle: Text(internalOrderInfo.internalOrder.note!),
                        ),
                      ],
                      WarehouseAssignmentInfoTile(
                        internalOrderId: internalOrderId,
                      ),
                      InternalOrderItemList(
                        internalOrderInfo: internalOrderInfo,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          error: (error, stackTrace) => Center(
            child: Column(
              children: [
                Text('Error: $error'),
              ],
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/shared/extension.dart';

class InternalOrderItemList extends HookConsumerWidget {
  const InternalOrderItemList({super.key, required this.internalOrderInfo});

  final InternalOrderInfo internalOrderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      internalOrderInfo.internalOrderItems
          .map((e) => e.rootOrderItem.productCategoryId)
          .toCustomList(),
    ));
    return productCategoryInfo.when(
      data: (productCategoryInfo) {
        return ExpansionTile(
          leading: const Icon(Icons.list),
          title: const Text('Danh sách sản phẩm'),
          subtitle: Text(
              'Tổng số sản phẩm: ${internalOrderInfo.internalOrderItems.length}'),
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: internalOrderInfo.internalOrderItems.length,
              itemBuilder: (context, index) {
                final item = internalOrderInfo.internalOrderItems[index];
                final categoryInfo = productCategoryInfo[index];
                return Consumer(
                  builder: (context, ref, child) {
                    final productQuantityInWarehouse = ref.watch(
                      productQuantityInfoByProductCategoryAndWorkingUnitProvider(
                        categoryInfo.category.id,
                        internalOrderInfo.internalOrder.srcWorkingUnitId,
                      ),
                    );
                    final qtyString = productQuantityInWarehouse.when(
                      data: (quantity) =>
                          quantity?.quantity.qty?.formattedNumber ?? '',
                      loading: () => 'Đang tải...',
                      error: (_, __) => 'Lỗi',
                    );
                    return Column(
                      children: [
                        ListTile(
                          leading:
                              Image.network(categoryInfo.images.first.imageUrl),
                          title: Text(categoryInfo.category.name ?? ''),
                          subtitle: Text(
                            'Mã sản phẩm: ${categoryInfo.category.id.toUpperCase()}',
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Số lượng (m): ${item.internalOrderItem.qty?.formattedNumber ?? 0} (Trong kho: $qtyString)',
                          ),
                          subtitle: Text(
                            'Số lượng (cuộn): ${item.internalOrderItem.rollQty?.formattedNumber ?? 0}',
                          ),
                        ),
                        if (item.internalOrderItem.note != null &&
                            item.internalOrderItem.note!.isNotEmpty)
                          ListTile(
                            title:
                                Text('Ghi chú: ${item.internalOrderItem.note}'),
                          ),
                        const Divider(),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}

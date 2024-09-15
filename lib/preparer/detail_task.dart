import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/preparer/order_cancellation.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/staff_info.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/internal_order.dart';
import 'package:foursquare/shared/models/internal_order_item.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/preparer/report_product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailTaskScreen extends HookConsumerWidget {
  const DetailTaskScreen({required this.internalOrder, super.key});
  final InternalOrderDto internalOrder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalOrderInfo =
        ref.watch(internalOrderInfoProvider(internalOrder.id)).when(
              data: (data) => data,
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(
                child: Text(
                  'Error: $error',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
    if (internalOrderInfo is! InternalOrderInfo) {
      return internalOrderInfo as Widget;
    }
    // Fetch all product category info from order items
    final categoryId =
        internalOrderInfo.items.map((e) => e.rootItem.productCategoryId);
    final productCategoryInfo =
        ref.watch(productCategoryInfoProvider(categoryId)).when(
              data: (data) => data,
              loading: () => const SizedBox.shrink(),
              error: (error, _) => Center(
                child: Text(
                  'Error: $error',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
    if (productCategoryInfo is! List<ProductCategoryInfoModel>) {
      return productCategoryInfo as Widget;
    }
    final staffInfo = ref
        .watch(staffInfoProvider(PBApp.instance.authStore.model.id))
        .requireValue;
    final productQty = ref.watch(ProductQuantityInfoByWarehouseProvider(
      staffInfo.staff.workingUnitId!,
    ));
    final productQtyValue = productQty
        .when(
          data: (data) => data,
          loading: () => <ProductQuantityInfoModel>[],
          error: (error, _) => <ProductQuantityInfoModel>[],
        )
        .where((item) => categoryId.contains(item.quantity.categoryId));
    if (productQtyValue.isEmpty) {
      return const SizedBox.shrink();
    }
    final selectedOrderedItem = useState<Set<InternalOrderItemInfo>>({});
    final expandedProduct = useState<InternalOrderItemInfo?>(null);

    final quantityEditController = useTextEditingController();
    final quantityChange = useState<int>(0);
    useEffect(() {
      quantityEditController.text = quantityChange.value.toString();
      return null;
    }, [quantityChange.value]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin đơn hàng', style: TextStyle(fontSize: 18)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: OrderDetails(internalOrderInfo: internalOrderInfo),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: internalOrderInfo.items.length,
              itemBuilder: (context, index) {
                final orderedItem = internalOrderInfo.items[index];
                final isSelected =
                    selectedOrderedItem.value.contains(orderedItem);
                final isExpanded = expandedProduct.value == orderedItem;
                final backgroundColor =
                    isSelected ? Colors.lightGreen : Colors.white;
                final categoryQuantity = productQtyValue
                    .where((item) =>
                        item.quantity.categoryId ==
                        orderedItem.rootItem.productCategoryId)
                    .firstOrNull;

                Widget productTile = Container(
                  color: backgroundColor,
                  child: Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 125,
                              child: ProductImage(
                                imageUrl: Uri.parse(
                                  productCategoryInfo[index]
                                      .images
                                      .first
                                      .imageUrl,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productCategoryInfo[index].category.name !=
                                            null
                                        ? "Tên sản phẩm: ${productCategoryInfo[index].category.name}"
                                        : "Tên sản phẩm: ${productCategoryInfo[index].product.name}",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                      "Số lượng: ${orderedItem.item.qty ?? 0}m"),
                                  Text(
                                    "Số lượng trong kho: ${categoryQuantity?.quantity.qty ?? 0}m",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          expandedProduct.value =
                              isExpanded ? null : orderedItem;
                        },
                      ),
                      if (isExpanded &&
                          internalOrder.statusCodeId ==
                              OrderStatusCodeData.processing.id)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.check,
                                    color: Colors.green),
                                onPressed: () {
                                  selectedOrderedItem.value = {
                                    ...selectedOrderedItem.value,
                                    orderedItem
                                  };
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  quantityChange.value =
                                      orderedItem.item.qty ?? 0;
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Sửa số lượng'),
                                        content: TextField(
                                          controller: quantityEditController,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            hintText: 'Nhập số lượng',
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Hủy'),
                                          ),
                                          TextButton(
                                            onPressed: () async {
                                              final newQty = int.tryParse(
                                                      quantityEditController
                                                          .text) ??
                                                  0;
                                              final internalOrderItemEdit =
                                                  InternalOrderItemEditDto
                                                      .fromJson(
                                                orderedItem.item.toJson(),
                                              )..qty = newQty;
                                              await PBApp.instance
                                                  .collection(
                                                      'internal_order_items')
                                                  .update(
                                                    orderedItem.item.id,
                                                    body: internalOrderItemEdit
                                                        .toJson(),
                                                  );
                                              ref.invalidate(
                                                  internalOrderInfoProvider(
                                                      internalOrder.id));
                                              if (!context.mounted) return;
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Lưu'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.close, color: Colors.red),
                                onPressed: () {
                                  selectedOrderedItem.value =
                                      Set.from(selectedOrderedItem.value)
                                        ..remove(orderedItem);
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ReportProductScreen(
                                        internalOrderItem: orderedItem.item,
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                );

                if (internalOrder.statusCodeId ==
                    OrderStatusCodeData.processing.id) {
                  return Dismissible(
                    key: Key(orderedItem.toString()),
                    background: Container(
                      color: Colors.green,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 20.0),
                      child: const Icon(Icons.check, color: Colors.white),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20.0),
                      child: const Icon(Icons.close, color: Colors.white),
                    ),
                    confirmDismiss: (direction) async {
                      if (direction == DismissDirection.startToEnd) {
                        selectedOrderedItem.value = {
                          ...selectedOrderedItem.value,
                          orderedItem
                        };
                        return false; // Prevent actual dismissal
                      } else if (direction == DismissDirection.endToStart) {
                        selectedOrderedItem.value =
                            Set.from(selectedOrderedItem.value)
                              ..remove(orderedItem);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ReportProductScreen(
                              internalOrderItem: orderedItem.item,
                            );
                          },
                        );
                        return false; // Prevent actual dismissal
                      }
                      return false;
                    },
                    child: productTile,
                  );
                } else {
                  return productTile;
                }
              },
            ),
          ),
          if (internalOrder.statusCodeId == OrderStatusCodeData.processing.id)
            ProcessingActions(
              onComplete: () async {
                final internalOrderEdit = InternalOrderEditDto.fromJson(
                  internalOrder.toJson(),
                )..statusCodeId = OrderStatusCodeData.shipped.id;
                await PBApp.instance
                    .collection('internal_orders')
                    .update(internalOrder.id, body: internalOrderEdit.toJson());
                if (!context.mounted) return;
                Navigator.of(context).pop();
              },
              onCancel: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InternalOrderCancellationScreen(
                      internalOrder: internalOrder,
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

class OrderDetails extends ConsumerWidget {
  const OrderDetails({super.key, required this.internalOrderInfo});
  final InternalOrderInfo internalOrderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rootOrderInfo =
        ref.watch(singleOrderInfoProvider(internalOrderInfo.rootOrder.id));
    return rootOrderInfo.when(
      data: (data) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ID: ${internalOrderInfo.order.id}",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text("Tên khách hàng: ${internalOrderInfo.rootOrder.customerId}",
              style: const TextStyle(fontSize: 16)),
          Text("Địa chỉ giao hàng: ${data.address.fullAddress}",
              style: const TextStyle(fontSize: 16)),
          if (internalOrderInfo.rootOrder.note != null)
            Text(
              "Lưu ý của khách: ${internalOrderInfo.rootOrder.note}",
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          if (internalOrderInfo.order.statusCodeId ==
              OrderStatusCodeData.cancelled.id)
            Text(
              "Lý do hủy đơn: ${internalOrderInfo.order.note}",
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(
        child: Text(
          'Error: $error',
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class OrderActionButton extends StatelessWidget {
  const OrderActionButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class ProcessingActions extends StatelessWidget {
  const ProcessingActions(
      {super.key, required this.onComplete, required this.onCancel});
  final VoidCallback onComplete;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
            ),
            onPressed: onCancel,
            child: const Text(
              'Hủy đơn hàng',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
            ),
            onPressed: onComplete,
            child: const Text(
              'Hoàn thành đơn hàng',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

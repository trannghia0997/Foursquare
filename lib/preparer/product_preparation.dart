import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/internal_order_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductPreparationScreen extends HookConsumerWidget {
  final WarehouseAssignmentInfo warehouseAssignmentInfo;
  final InternalOrderInfo internalOrderInfo;

  const ProductPreparationScreen({
    super.key,
    required this.warehouseAssignmentInfo,
    required this.internalOrderInfo,
  });

  Future<void> _onCancelled({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return HookBuilder(
          builder: (context) {
            final reasonController = useTextEditingController();
            return AlertDialog(
              title: const Text('Lý do hủy đơn hàng'),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: reasonController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    hintText: 'Nhập lý do hủy',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Hủy'),
                ),
                TextButton(
                  onPressed: () async {
                    final reason = reasonController.text.isEmpty
                        ? 'Không có'
                        : reasonController.text;
                    await PBApp.instance.collection('internal_orders').update(
                          warehouseAssignmentInfo.internalOrder.id,
                          body: warehouseAssignmentInfo.internalOrder
                              .copyWith(
                                statusCodeId: OrderStatusCodeData.cancelled.id,
                                shipmentId: null,
                              )
                              .toJson(),
                        );
                    await PBApp.instance
                        .collection('warehouse_assignments')
                        .update(
                          warehouseAssignmentInfo.warehouseAssignment.id,
                          body: warehouseAssignmentInfo.warehouseAssignment
                              .copyWith(
                                status: AssignmentStatus.cancelled,
                                note: reason,
                              )
                              .toJson(),
                        );
                    ref.invalidate(
                      singleInternalOrderInfoProvider(
                          warehouseAssignmentInfo.internalOrder.id),
                    );
                    if (!context.mounted) {
                      return;
                    }
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Xác nhận'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _onCompleted({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Xác nhận hoàn thành'),
          content: const Text('Bạn có chắc chắn muốn hoàn thành đơn hàng này?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Hủy'),
            ),
            TextButton(
              onPressed: () async {
                await PBApp.instance.collection('internal_orders').update(
                      warehouseAssignmentInfo.internalOrder.id,
                      body: warehouseAssignmentInfo.internalOrder
                          .copyWith(
                            statusCodeId: OrderStatusCodeData.shipped.id,
                          )
                          .toJson(),
                    );
                await PBApp.instance.collection('warehouse_assignments').update(
                      warehouseAssignmentInfo.warehouseAssignment.id,
                      body: warehouseAssignmentInfo.warehouseAssignment
                          .copyWith(
                            status: AssignmentStatus.completed,
                          )
                          .toJson(),
                    );
                ref.invalidate(
                  singleInternalOrderInfoProvider(
                      warehouseAssignmentInfo.internalOrder.id),
                );
                if (!context.mounted) {
                  return;
                }
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Xác nhận'),
            ),
          ],
        );
      },
    );
  }

  Future<void> onPressedInternalOrderItemButton({
    required BuildContext context,
    required WidgetRef ref,
    required bool isCancelled,
    required InternalOrderItemDto internalOrderItem,
    required ValueNotifier<List<bool>> completedItem,
    required int index,
    int? initialQty,
    int? initialRollQty,
    String? initialNote,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return HookBuilder(
          builder: (context) {
            final qtyController = useTextEditingController.fromValue(
              TextEditingValue(
                text: initialQty?.toString() ?? '0',
              ),
            );
            final rollQtyController = useTextEditingController.fromValue(
              TextEditingValue(
                text: initialRollQty?.toString() ?? '0',
              ),
            );
            final noteController = useTextEditingController.fromValue(
              TextEditingValue(
                text: initialNote ?? '',
              ),
            );

            final formKey = useMemoized(() => GlobalKey<FormState>());

            if (isCancelled) {
              qtyController.text = '0';
              rollQtyController.text = '0';
            }

            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 16,
                right: 16,
                top: 16,
              ),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      isCancelled ? 'Hủy sản phẩm' : 'Hoàn thành sản phẩm',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: qtyController,
                      readOnly: isCancelled,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Số lượng (m)',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập số lượng';
                        }
                        if (int.tryParse(value) == null ||
                            int.tryParse(value)! < 0) {
                          return 'Số lượng không hợp lệ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: rollQtyController,
                      readOnly: isCancelled,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Số lượng (cuộn)',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập số lượng cuộn';
                        }
                        if (int.tryParse(value) == null ||
                            int.tryParse(value)! < 0) {
                          return 'Số lượng cuộn không hợp lệ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: noteController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        labelText: 'Ghi chú',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Hủy'),
                        ),
                        const SizedBox(width: 16),
                        FilledButton(
                          onPressed: () async {
                            await PBApp.instance
                                .collection('internal_order_items')
                                .update(
                                  internalOrderItem.id,
                                  body: internalOrderItem
                                      .copyWith(
                                        qty: int.tryParse(qtyController.text),
                                        rollQty: int.tryParse(
                                            rollQtyController.text),
                                        note: noteController.text,
                                      )
                                      .toJson(),
                                );
                            completedItem.value = List.from(completedItem.value)
                              ..[index] = !completedItem.value[index];
                            if (!context.mounted) {
                              return;
                            }
                            Navigator.of(context).pop();
                          },
                          child: const Text('Xác nhận'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      internalOrderInfo.internalOrderItems
          .map((e) => e.rootOrderItem.productCategoryId)
          .toCustomList(),
    ));
    final completedItem = useState<List<bool>>(
      List.generate(
          internalOrderInfo.internalOrderItems.length, (index) => false),
    );
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () => _onCompleted(context: context, ref: ref),
          label: const Text(
            'Xác nhận hoàn thành',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          icon: const Icon(Icons.check, color: Colors.white),
          backgroundColor: Colors.green,
        ),
      ),
      appBar: AppBar(
        title: const Text('Chuẩn bị sản phẩm'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'cancel') {
                _onCancelled(context: context, ref: ref);
              }
            },
            menuPadding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'cancel',
                  child: ListTile(
                    leading: Icon(Icons.cancel),
                    title: Text('Hủy đơn hàng'),
                  ),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: productCategoryInfo.when(
        data: (productCategoryInfo) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: internalOrderInfo.internalOrderItems.length,
            itemBuilder: (context, index) {
              final item = internalOrderInfo.internalOrderItems[index];
              final categoryInfo = productCategoryInfo[index];
              return ExpansionTile(
                title: Text(
                  categoryInfo.category.name ?? '',
                  style: completedItem.value[index]
                      ? const TextStyle(decoration: TextDecoration.lineThrough)
                      : null,
                ),
                leading: Image.network(categoryInfo.images.first.imageUrl),
                subtitle: Row(
                  children: [
                    const Text('Màu: '),
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: categoryInfo.colour.hexCode.tryParseColor(),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(categoryInfo.colour.hexCode),
                  ],
                ),
                children: [
                  ListTile(
                    title: Text(
                      'Số lượng (m): ${item.internalOrderItem.qty?.formattedNumber ?? 0}',
                    ),
                    subtitle: Text(
                      'Số lượng (cuộn): ${item.internalOrderItem.rollQty?.formattedNumber ?? 0}',
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Ghi chú: ${item.internalOrderItem.note?.isEmpty ?? true ? 'Không có' : item.internalOrderItem.note}',
                    ),
                  ),
                  OverflowBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          onPressedInternalOrderItemButton(
                            context: context,
                            ref: ref,
                            internalOrderItem: item.internalOrderItem,
                            isCancelled: false,
                            initialQty: item.internalOrderItem.qty,
                            initialRollQty: item.internalOrderItem.rollQty,
                            index: index,
                            completedItem: completedItem,
                          );
                        },
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        tooltip: 'Chỉnh sửa',
                      ),
                      IconButton(
                        onPressed: () {
                          onPressedInternalOrderItemButton(
                            context: context,
                            ref: ref,
                            internalOrderItem: item.internalOrderItem,
                            isCancelled: true,
                            initialQty: item.internalOrderItem.qty,
                            initialRollQty: item.internalOrderItem.rollQty,
                            initialNote: item.internalOrderItem.note,
                            index: index,
                            completedItem: completedItem,
                          );
                        },
                        icon: const Icon(Icons.cancel, color: Colors.red),
                        tooltip: 'Hủy',
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

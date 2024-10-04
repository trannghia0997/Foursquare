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
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;

class ProductPreparationScreen extends HookConsumerWidget {
  final WarehouseAssignmentInfo warehouseAssignmentInfo;

  final String internalOrderId;

  const ProductPreparationScreen({
    super.key,
    required this.warehouseAssignmentInfo,
    required this.internalOrderId,
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
    required ValueNotifier<List<bool>> completedItem,
  }) async {
    if (completedItem.value.contains(false)) {
      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Chưa hoàn thành'),
            content:
                const Text('Vui lòng kiểm tra lại sản phẩm chưa hoàn thành'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Đã hiểu'),
              ),
            ],
          );
        },
      );
      return;
    }
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
    required InternalOrderInfo internalOrderInfo,
    required InternalOrderItemInfo internalOrderItemInfo,
    required ValueNotifier<List<bool>> completedItem,
    required int index,
    int? initialQty,
    int? initialRollQty,
    String? initialNote,
  }) async {
    return await showModalBottomSheet(
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
                    Consumer(builder: (context, ref, child) {
                      final productQuantityInWarehouse = ref.watch(
                        productQuantityInfoByProductCategoryAndWorkingUnitProvider(
                          internalOrderItemInfo.rootOrderItem.productCategoryId,
                          internalOrderInfo.internalOrder.srcWorkingUnitId,
                        ),
                      );
                      final availableQty = productQuantityInWarehouse.when(
                        data: (data) => data?.quantity.qty ?? 0,
                        loading: () => 0,
                        error: (_, __) => 0,
                      );
                      final remainingQty = math.min(
                        internalOrderItemInfo.rootOrderItem.orderedQty -
                            (internalOrderItemInfo.rootOrderItem.assignedQty ??
                                0),
                        availableQty,
                      );
                      return Text(
                        'Có thể thêm: $remainingQty (Trong kho: $availableQty)',
                      );
                    }),
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
                            if (!formKey.currentState!.validate()) {
                              return;
                            }
                            final productQuantityInWarehouse = ref.read(
                                productQuantityInfoByProductCategoryAndWorkingUnitProvider(
                              internalOrderItemInfo
                                  .rootOrderItem.productCategoryId,
                              internalOrderInfo.internalOrder.srcWorkingUnitId,
                            ));
                            final availableQty =
                                productQuantityInWarehouse.when(
                              data: (data) => data?.quantity.qty ?? 0,
                              loading: () => 0,
                              error: (_, __) => 0,
                            );
                            final remainingQty = math.min(
                              internalOrderItemInfo.rootOrderItem.orderedQty -
                                  (internalOrderItemInfo
                                          .rootOrderItem.assignedQty ??
                                      0),
                              availableQty,
                            );
                            // Check if the quantity is valid
                            final amountOfChange =
                                (int.tryParse(qtyController.text) ?? 0) -
                                    (internalOrderItemInfo
                                            .internalOrderItem.qty ??
                                        0);
                            if (amountOfChange > remainingQty) {
                              await showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Số lượng không hợp lệ'),
                                    content: const Text(
                                        'Số lượng sản phẩm đã thay đổi vượt quá số lượng đã đặt hay số lượng còn lại trong kho'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Đã hiểu'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              return;
                            }
                            await PBApp.instance
                                .collection('internal_order_items')
                                .update(
                                  internalOrderItemInfo.internalOrderItem.id,
                                  body: internalOrderItemInfo.internalOrderItem
                                      .copyWith(
                                        qty: int.tryParse(qtyController.text),
                                        rollQty: int.tryParse(
                                            rollQtyController.text),
                                        note: noteController.text,
                                      )
                                      .toJson(),
                                );
                            final _ = ref.refresh(
                              singleInternalOrderInfoProvider(
                                  warehouseAssignmentInfo.internalOrder.id),
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
    final internalOrderInfoState = ref.watch(
      singleInternalOrderInfoProvider(warehouseAssignmentInfo.internalOrder.id),
    );
    final state = internalOrderInfoState.when(
      data: (data) => data,
      loading: () => Scaffold(
        appBar: AppBar(
          title: const Text('Chuẩn bị sản phẩm'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, _) => Scaffold(
        appBar: AppBar(
          title: const Text('Chuẩn bị sản phẩm'),
        ),
        body: Center(
          child: Text('Error: $error'),
        ),
      ),
    );
    if (state is Widget) {
      return state;
    }
    final internalOrderInfo = state as InternalOrderInfo;
    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      internalOrderInfo.internalOrderItems
          .map((e) => e.rootOrderItem.productCategoryId)
          .toCustomList(),
    ));
    final completedItem = useState<List<bool>>(
      List.generate(
          internalOrderInfo.internalOrderItems.length, (index) => false),
    );
    final completedItemCount = completedItem.value.where((e) => e).length;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () => _onCompleted(
              context: context, ref: ref, completedItem: completedItem),
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
        title: Text(
          'Chuẩn bị sản phẩm ($completedItemCount/${internalOrderInfo.internalOrderItems.length})',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
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
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(singleInternalOrderInfoProvider(
              warehouseAssignmentInfo.internalOrder.id));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: productCategoryInfo.when(
              data: (productCategoryInfo) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: internalOrderInfo.internalOrderItems.length,
                  itemBuilder: (context, index) {
                    final item = internalOrderInfo.internalOrderItems[index];
                    final categoryInfo = productCategoryInfo[index];
                    return Dismissible(
                        key: Key(item.internalOrderItem.id),
                        background: Container(
                          color: Colors.blue,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(Icons.edit, color: Colors.white),
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(Icons.cancel, color: Colors.white),
                        ),
                        confirmDismiss: (direction) async {
                          if (direction == DismissDirection.startToEnd) {
                            onPressedInternalOrderItemButton(
                              context: context,
                              ref: ref,
                              internalOrderInfo: internalOrderInfo,
                              internalOrderItemInfo: item,
                              isCancelled: false,
                              initialQty: item.internalOrderItem.qty,
                              initialRollQty: item.internalOrderItem.rollQty,
                              initialNote: item.internalOrderItem.note,
                              index: index,
                              completedItem: completedItem,
                            );
                            return false;
                          } else if (direction == DismissDirection.endToStart) {
                            onPressedInternalOrderItemButton(
                              context: context,
                              ref: ref,
                              internalOrderInfo: internalOrderInfo,
                              internalOrderItemInfo: item,
                              isCancelled: true,
                              initialQty: item.internalOrderItem.qty,
                              initialRollQty: item.internalOrderItem.rollQty,
                              initialNote: item.internalOrderItem.note,
                              index: index,
                              completedItem: completedItem,
                            );
                            return false;
                          }
                          return false;
                        },
                        child: ExpansionTile(
                          title: Text(
                            categoryInfo.category.name ?? '',
                            style: completedItem.value[index]
                                ? const TextStyle(
                                    decoration: TextDecoration.lineThrough)
                                : null,
                          ),
                          leading: SizedBox(
                            width: 64,
                            height: 64,
                            child: Image.network(
                                categoryInfo.images.first.imageUrl),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categoryInfo.category.id.toUpperCase(),
                                style: completedItem.value[index]
                                    ? const TextStyle(
                                        decoration: TextDecoration.lineThrough)
                                    : null,
                              ),
                              Row(
                                children: [
                                  const Text('Màu: '),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: categoryInfo.colour.hexCode
                                          .tryParseColor(),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(categoryInfo.colour.hexCode),
                                ],
                              ),
                            ],
                          ),
                          children: [
                            ListTile(
                              title: Consumer(builder: (context, ref, child) {
                                final productQuantityInWarehouse = ref.watch(
                                  productQuantityInfoByProductCategoryAndWorkingUnitProvider(
                                    categoryInfo.category.id,
                                    internalOrderInfo
                                        .internalOrder.srcWorkingUnitId,
                                  ),
                                );
                                final qtyString =
                                    productQuantityInWarehouse.when(
                                  data: (quantity) =>
                                      quantity?.quantity.qty?.formattedNumber ??
                                      '',
                                  loading: () => 'Đang tải...',
                                  error: (_, __) => 'Lỗi',
                                );
                                return Text(
                                  'Số lượng (m): ${item.internalOrderItem.qty?.formattedNumber ?? 0} (Trong kho: $qtyString)',
                                );
                              }),
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
                                      internalOrderInfo: internalOrderInfo,
                                      internalOrderItemInfo: item,
                                      isCancelled: false,
                                      initialQty: item.internalOrderItem.qty,
                                      initialRollQty:
                                          item.internalOrderItem.rollQty,
                                      index: index,
                                      completedItem: completedItem,
                                      initialNote: item.internalOrderItem.note,
                                    );
                                  },
                                  icon: const Icon(Icons.edit,
                                      color: Colors.blue),
                                  tooltip: 'Chỉnh sửa',
                                ),
                                IconButton(
                                  onPressed: () {
                                    onPressedInternalOrderItemButton(
                                      context: context,
                                      ref: ref,
                                      internalOrderInfo: internalOrderInfo,
                                      internalOrderItemInfo: item,
                                      isCancelled: true,
                                      initialQty: item.internalOrderItem.qty,
                                      initialRollQty:
                                          item.internalOrderItem.rollQty,
                                      initialNote: item.internalOrderItem.note,
                                      index: index,
                                      completedItem: completedItem,
                                    );
                                  },
                                  icon: const Icon(Icons.cancel,
                                      color: Colors.red),
                                  tooltip: 'Hủy',
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ));
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) =>
                  Center(child: Text('Error: $error')),
            ),
          ),
        ),
      ),
    );
  }
}

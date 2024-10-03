import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/enums/shipment_type.dart';
import 'package:foursquare/shared/screen/invoice_details.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShipmentDetailsPage extends HookConsumerWidget {
  const ShipmentDetailsPage({
    required this.shipmentId,
    super.key,
  });

  final String shipmentId;

  Widget _buildBaseWidget(Widget? child, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin lô hàng'),
        ),
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            ref.invalidate(singleShipmentInfoProvider(shipmentId));
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: child,
          ),
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final ShipmentInfo shipmentInfo;
    final shipmentInfoAsync = ref.watch(singleShipmentInfoProvider(shipmentId));
    switch (shipmentInfoAsync) {
      case AsyncLoading():
        return _buildBaseWidget(
          const Center(
            child: CircularProgressIndicator(),
          ),
          ref,
        );
      case AsyncData(value: final value):
        shipmentInfo = value;
      case AsyncError(:final error):
        return _buildBaseWidget(
          Center(
            child: Text('Error: $error'),
          ),
          ref,
        );
    }

    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      shipmentInfo.orderInfo.orderItems
          .map((e) => e.productCategoryId)
          .toCustomList(),
    ));
    var productCategoryList = <ProductCategoryInfo>[];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return _buildBaseWidget(
          const Center(child: CircularProgressIndicator()),
          ref,
        );
      case AsyncData(:final value):
        productCategoryList = value;
      case AsyncError(:final error):
        return _buildBaseWidget(
          Center(child: Text('Error: $error')),
          ref,
        );
    }
    final shipmentStatus = ShipmentStatusCodeData.fromId(
      shipmentInfo.shipment.statusCodeId,
    );
    late final String shipmentDate;
    if (shipmentInfo.shipment.shipmentDate != null &&
        shipmentInfo.shipment.shipmentDate!.millisecondsSinceEpoch == 0) {
      shipmentDate = 'Chưa xác định';
    } else {
      shipmentDate = shipmentInfo.shipment.shipmentDate?.formatDateTime() ??
          'Chưa xác định';
    }
    late final String deliveryDate;
    if (shipmentInfo.shipment.deliveryDate != null &&
        shipmentInfo.shipment.deliveryDate!.millisecondsSinceEpoch == 0) {
      deliveryDate = 'Chưa xác định';
    } else {
      deliveryDate = shipmentInfo.shipment.deliveryDate?.formatDateTime() ??
          'Chưa xác định';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin lô hàng'),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(singleShipmentInfoProvider(shipmentId));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ListTile(
                tileColor: shipmentStatus.backgroundAndForegroundColor.$1,
                title: Text(
                  'Trạng thái: ${shipmentStatus.vietnameseLocalizationString}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: shipmentStatus.backgroundAndForegroundColor.$2,
                      ),
                ),
                subtitle: Text(
                  'Cập nhật lần cuối: ${shipmentInfo.shipment.updated.formatDateTime()}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: shipmentStatus.backgroundAndForegroundColor.$2,
                      ),
                ),
              ),
              ListTile(
                subtitle: Text(
                  'Ngày giao hàng dự kiến:\n$deliveryDate',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              ShipmentAssignmentInfoTile(shipmentId: shipmentId),
              ExpansionTile(
                leading: const Icon(Icons.info),
                title: Text(
                  'Thông tin lô hàng',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                children: [
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: Text(
                      'ID lô hàng: ${shipmentInfo.shipment.id.toUpperCase()}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID đơn hàng: ${shipmentInfo.orderInfo.order.id.toUpperCase()}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Loại lô hàng: ${shipmentInfo.shipment.type.vietnameseLocalizationString}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.date_range),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ngày tạo: ${shipmentInfo.shipment.created.formatDateTime()}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Ngày rời kho: $shipmentDate',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: const Icon(Icons.receipt),
                    title: Text(
                        'Hóa đơn ${shipmentInfo.invoice.id.toUpperCase()}'),
                    subtitle: const Text('Chi tiết hóa đơn'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InvoiceInfoPage(
                              invoiceId: shipmentInfo.invoice.id),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: const Icon(Icons.local_shipping),
                title: Text(
                  'Thông tin vận chuyển',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(
                      'Khách hàng: ${shipmentInfo.orderInfo.guest?.name ?? shipmentInfo.orderInfo.creator.name}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Text(
                      'Số điện thoại: ${shipmentInfo.orderInfo.guest?.phone ?? shipmentInfo.orderInfo.creator.phone}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text(
                      'Địa chỉ: ${shipmentInfo.orderInfo.address.fullAddress}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Ghi chú: ${shipmentInfo.shipment.note}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(
                  'Các mặt hàng:',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 8),
              if (shipmentInfo.items.isNotEmpty)
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: shipmentInfo.items.length,
                    itemBuilder: (context, index) {
                      final shipmentItem = shipmentInfo.items[index].$1;
                      return Column(
                        children: [
                          ListTile(
                            leading: Image.network(
                              productCategoryList[index]
                                      .images
                                      .firstOrNull
                                      ?.imageUrl ??
                                  generatePlaceholderImage().toString(),
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              productCategoryList[index].category.name ?? '',
                            ),
                            subtitle: Text(
                                'Lượng: ${shipmentItem.qty.formattedNumber} m, Cuộn: ${shipmentItem.rollQty?.formattedNumber ?? '0'}'),
                          ),
                        ],
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShipmentAssignmentInfoTile extends HookConsumerWidget {
  const ShipmentAssignmentInfoTile({super.key, required this.shipmentId});

  final String shipmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shipmentAssignmentInfoState =
        ref.watch(shipmentAssignmentInfoByShipmentIdProvider(shipmentId));
    final shipmentAssignmentInfo = shipmentAssignmentInfoState
        .maybeWhen(
          data: (shipmentAssignmentInfo) => shipmentAssignmentInfo,
          orElse: () => null,
        )
        ?.firstOrNull;
    if (shipmentAssignmentInfo == null) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        ExpansionTile(
          leading: const Icon(Icons.assignment_ind),
          title: const Text('Chi tiết phân công'),
          subtitle: Text(
              'Trạng thái: ${shipmentAssignmentInfo.shipmentAssignment.status.vietnameseLocalizationString}'),
          children: [
            ListTile(
              title: Text(
                  'Nhân viên: ${shipmentAssignmentInfo.staffInfo?.user.name ?? ''}'),
              subtitle: Text(
                  'Mã nhân viên: ${shipmentAssignmentInfo.staffInfo?.staff.id.toUpperCase()}'),
            ),
            ListTile(
              title: Text(
                  'Đơn vị làm việc: ${shipmentAssignmentInfo.staffInfo?.workingUnit.name ?? ''}'),
            ),
            ListTile(
              title: Text(
                'Ngày phân công: ${shipmentAssignmentInfo.shipmentAssignment.created.formatDateTime()}',
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
        ExpansionTile(
          leading: const Icon(Icons.note),
          title: const Text('Ghi chú'),
          subtitle: shipmentAssignmentInfo.shipment.note?.isNotEmpty == true
              ? Text(
                  shipmentAssignmentInfo.shipment.note!.excerpt(maxLength: 16),
                )
              : const Text('Không có ghi chú'),
          children: [
            ListTile(
              title: Text(
                shipmentAssignmentInfo.shipment.note?.isNotEmpty == true
                    ? shipmentAssignmentInfo.shipment.note!
                    : 'Không có ghi chú',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

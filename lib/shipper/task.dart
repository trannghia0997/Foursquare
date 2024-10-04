import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/staff_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shipper/task_details.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key, required this.staffInfo});

  final StaffInfoDto staffInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);

    const initialShipmentStatusCode = [
      ShipmentStatusCodeData.shipped,
      ShipmentStatusCodeData.onHold,
      ShipmentStatusCodeData.failedDeliveryAttempt,
    ];
    const onDeliveryShipmentStatusCode = [
      ShipmentStatusCodeData.inTransit,
      ShipmentStatusCodeData.outForDelivery,
    ];
    const completedShipmentStatusCode = [
      ShipmentStatusCodeData.delivered,
      ShipmentStatusCodeData.returned,
    ];
    const cancelledShipmentStatusCode = [
      ShipmentStatusCodeData.cancelled,
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.shopping_bag_outlined),
              text: 'Chưa Vận Chuyển',
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle_outlined),
              text: 'Đang vận chuyển',
            ),
            Tab(
              icon: Icon(Icons.playlist_add_check_outlined),
              text: 'Hoàn thành',
            ),
            Tab(
              icon: Icon(Icons.cancel_presentation_outlined),
              text: 'Hủy',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          buildOrderList(
            context,
            ref,
            status: initialShipmentStatusCode,
          ),
          buildOrderList(
            context,
            ref,
            status: onDeliveryShipmentStatusCode,
          ),
          buildOrderList(
            context,
            ref,
            status: completedShipmentStatusCode,
          ),
          buildOrderList(
            context,
            ref,
            status: cancelledShipmentStatusCode,
          ),
        ],
      ),
    );
  }

  Widget buildOrderList(
    BuildContext context,
    WidgetRef ref, {
    required List<ShipmentStatusCodeData> status,
  }) {
    final user = PBApp.instance.authStore.model != null
        ? UserDto.fromRecord(PBApp.instance.authStore.model)
        : null;
    final assignmentByUserId = ref.watch(
      shipmentAssignmentInfoByUserProvider(
        user?.id ?? '',
      ),
    );
    late final List<ShipmentAssignmentInfo> assignmentList;
    switch (assignmentByUserId) {
      case AsyncLoading():
        return const Center(
          child: CircularProgressIndicator(),
        );
      case AsyncError(:final error):
        return Center(
          child: Text('Error: $error'),
        );
      case AsyncData(:final value):
        assignmentList = value;
        break;
    }
    final filteredAssignment = assignmentList.where((element) {
      final statusCode =
          ShipmentStatusCodeData.fromId(element.shipment.statusCodeId);
      return status.contains(statusCode);
    }).toList();

    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(shipmentAssignmentInfoByUserProvider);
      },
      child: ListView.builder(
          itemCount: filteredAssignment.length,
          itemBuilder: (context, index) {
            final shipmentAssignmentInfo = filteredAssignment[index];
            return Column(
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 125,
                    child: Image.network(
                      getPicsumImageUrlById(
                        id: shipmentAssignmentInfo.shipment.id.hashCode,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "ID: ${shipmentAssignmentInfo.shipment.id.toUpperCase()}",
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ID đơn hàng: ${shipmentAssignmentInfo.shipment.orderId.toUpperCase()}",
                      ),
                      Text(
                        "Ngày giao việc: ${shipmentAssignmentInfo.shipmentAssignment.created.formattedDateTime}",
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DeliveryTaskDetailsPage(
                          shipmentId: shipmentAssignmentInfo.shipment.id,
                          shipmentAssignmentInfo: shipmentAssignmentInfo,
                        ),
                      ),
                    );
                  },
                ),
                const Divider(),
              ],
            );
          }),
    );
  }
}

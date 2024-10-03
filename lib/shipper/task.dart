import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/staff_info.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key, required this.staffInfo});

  final StaffInfoDto staffInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    final userId = useState(PBApp.instance.authStore.model?.id as String?);
    final assignmentByUserId = ref.watch(
      shipmentAssignmentInfoByUserProvider(
        userId.value ?? "",
      ),
    );

    List<ShipmentAssignmentInfo> assignmentList = [];

    useEffect(() {
      final sub = PBApp.instance.authStore.onChange.listen((event) {
        userId.value = event.model?.id;
      });
      return sub.cancel;
    }, [PBApp.instance.authStore.onChange]);
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
            assignmentList,
            status: ShipmentStatusCodeData.shipped,
            deliveringStatus: AssignmentStatus.assigned,
          ),
          buildOrderList(
            context,
            ref,
            assignmentList,
            status: ShipmentStatusCodeData.shipped,
            deliveringStatus: AssignmentStatus.inProgress,
          ),
          buildOrderList(
            context,
            ref,
            assignmentList,
            status: ShipmentStatusCodeData.shipped,
            deliveringStatus: AssignmentStatus.completed,
          ),
          buildOrderList(
            context,
            ref,
            assignmentList,
            status: ShipmentStatusCodeData.shipped,
            deliveringStatus: AssignmentStatus.cancelled,
          ),
        ],
      ),
    );
  }

  Widget buildOrderList(
    BuildContext context,
    WidgetRef ref,
    List<ShipmentAssignmentInfo> assignmentList, {
    required ShipmentStatusCodeData status,
    required AssignmentStatus deliveringStatus,
  }) {
    final filteredAssignment = assignmentList
        .where(
          (item) => item.shipmentAssignment.status == deliveringStatus,
        )
        .toList();

    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(shipmentAssignmentInfoByUserProvider(
          UserDto.fromRecord(PBApp.instance.authStore.model).id,
        ));
      },
      child: ListView.builder(
          itemCount: filteredAssignment.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                generateRandomImageUrl(
                  seed: filteredAssignment[index].shipment.id,
                ),
              ),
              title: Text(
                "ID: ${filteredAssignment[index].shipment.id}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "ID đơn hàng: ${filteredAssignment[index].shipment.orderId}",
              ),
            );
          }),
    );
  }
}

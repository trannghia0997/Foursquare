import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/preparer/task.dart";
import "package:foursquare/preparer/warehouse.dart";
import "package:foursquare/profile/profile_page.dart";
import "package:foursquare/riverpod/staff_info.dart";
import "package:foursquare/services/pb.dart";
import "package:foursquare/shared/screen/chat_list_screen.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class WarehouseHomepage extends HookConsumerWidget {
  const WarehouseHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = useState<int>(0);
    final staffInfoProvider = ref.watch(staffInfoByUserProvider(
      PBApp.instance.authStore.model?.id ?? "",
    ));
    late final StaffInfo staffInfo;
    final result = staffInfoProvider.when(
      data: (data) {
        staffInfo = data;
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, _) => Scaffold(
        body: Center(
          child: Text('Error: $error'),
        ),
      ),
    );
    if (result != null) {
      return result;
    }
    var containerList = <Widget>[
      Container(
        alignment: Alignment.center,
        child: TaskScreen(
          staffInfo: staffInfo.staff,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: WarehousePage(
          staffInfo: staffInfo,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: ChatListScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ProfileScreen(),
      ),
    ];

    var appBarConfigurations = [
      AppBar(
        title: const Text('Nhiệm vụ'),
        centerTitle: true,
      ),
      AppBar(
        title: const Text('Kho bãi'),
        centerTitle: true,
      ),
      AppBar(
        title: const Text('Thông báo'),
        centerTitle: true,
      ),
      AppBar(
        title: const Text('Hồ sơ'),
        centerTitle: true,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: appBarConfigurations[currentPageIndex.value].title,
        centerTitle: appBarConfigurations[currentPageIndex.value].centerTitle,
        actions: appBarConfigurations[currentPageIndex.value].actions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Nhiệm vụ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Kho bãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Nhắn tin',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Hồ sơ',
          ),
        ],
        currentIndex: currentPageIndex.value,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          currentPageIndex.value = index;
        },
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: containerList[currentPageIndex.value],
      ),
    );
  }
}

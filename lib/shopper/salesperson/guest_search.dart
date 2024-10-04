import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/guest_info.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GuestSearchPage extends HookConsumerWidget {
  const GuestSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final searchResults = useState<List<GuestInfo>>([]);
    final selectedGuest = useState<GuestInfo?>(null);

    Future<void> performSearch(String query) async {
      if (query.isEmpty) {
        searchResults.value = [];
        return;
      }
      final results = await ref.read(guestInfoSearchProvider(query).future);
      searchResults.value = results;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tìm kiếm khách hàng'),
      ),
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            ref.invalidate(guestInfoSearchProvider);
            performSearch(searchController.text);
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      performSearch(value);
                    }
                  },
                  controller: searchController,
                  decoration: InputDecoration(
                    labelText: 'Tìm kiếm',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        searchController.clear();
                        searchResults.value = [];
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    child: ListView.builder(
                      itemCount: searchResults.value.length,
                      itemBuilder: (context, index) {
                        final guestInfo = searchResults.value[index];
                        return RadioListTile<GuestInfo>(
                          value: guestInfo,
                          groupValue: selectedGuest.value,
                          onChanged: (GuestInfo? value) {
                            selectedGuest.value = value;
                          },
                          title: Text(
                            "${guestInfo.guest.name} (${guestInfo.guest.phone})",
                          ),
                          subtitle: Text(guestInfo.address.fullAddress),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () {
            if (selectedGuest.value == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Vui lòng chọn thông tin khách hàng'),
                ),
              );
              return;
            }
            ref.read(cartNotifierProvider.notifier).updateOrder(
                  ref.read(cartNotifierProvider).order.copyWith(
                        guestId: selectedGuest.value!.guest.id,
                        addressId: selectedGuest.value!.address.id,
                      ),
                );
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.check),
          label: const Text(
            'Xác nhận',
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

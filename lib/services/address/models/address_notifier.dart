import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/services/address/models/address.dart';

class AddressNotifier extends StateNotifier<Address?> {
  AddressNotifier() : super(null);

  void selectAddress(Address address) {
    state = address;
  }
}

final addressProvider = StateNotifierProvider<AddressNotifier, Address?>((ref) {
  return AddressNotifier();
});

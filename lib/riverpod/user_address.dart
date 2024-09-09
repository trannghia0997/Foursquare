import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/user_address.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_address.g.dart';

@riverpod
Future<List<(UserAddressDto, AddressDto)>> userAddressWithAddress(
    UserAddressWithAddressRef ref) async {
  return PBApp.instance
      .collection('user_addresses')
      .getFullList(
        filter: "userId = '${PBApp.instance.authStore.model.id}'",
        expand: "addressId",
        sort: '-created',
      )
      .then((value) => value
          .map((obj) => (
                UserAddressDto.fromRecord(obj),
                AddressDto.fromRecord(obj.expand["addressId"]!.first)
              ))
          .toList());
}

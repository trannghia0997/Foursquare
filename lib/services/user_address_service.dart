import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/user_address.dart';

class UserAddressService with BaseService<UserAddress> {
  @override
  String get resourceName => 'user_addresses';
}

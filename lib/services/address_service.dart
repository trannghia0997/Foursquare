import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/address.dart';

class AddressService with BaseService<Address> {
  @override
  String get resourceName => 'addresses';
}

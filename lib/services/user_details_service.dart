import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/user_details.dart';

class UserDetailsService with BaseService<UserDetails> {
  @override
  String get resourceName => 'user_details';
}

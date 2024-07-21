import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/tag.dart';

class TagService with BaseService<Tag> {
  @override
  String get resourceName => 'tags';
}

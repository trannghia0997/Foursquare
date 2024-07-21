import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/colour.dart';

class ColourService with BaseService<Colour> {
  @override
  String get resourceName => 'colours';
}

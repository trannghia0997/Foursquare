import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/product.dart';

class ProductService with BaseService<Product> {
  @override
  String get resourceName => 'products';
}

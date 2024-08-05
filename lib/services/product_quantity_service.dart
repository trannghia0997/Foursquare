import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/product_quantity.dart';

class ProductQuantityService with BaseService<ProductQuantity> {
  @override
  String get resourceName => 'product-quantities';
}

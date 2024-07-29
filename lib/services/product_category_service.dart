import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/product_category.dart';

class ProductCategoryService with BaseService<ProductCategory> {
  @override
  String get resourceName => 'product_categories';
}

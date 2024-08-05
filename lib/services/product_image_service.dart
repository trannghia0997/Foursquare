import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/product_image.dart';

class ProductImageService with BaseService<ProductImage> {
  @override
  String get resourceName => 'product-images';
}

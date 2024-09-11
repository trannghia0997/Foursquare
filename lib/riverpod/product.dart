import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/colour.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:foursquare/shared/models/product_category.dart';
import 'package:foursquare/shared/models/product_image.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class ProductInfoModel with _$ProductInfoModel {
  const factory ProductInfoModel({
    required ProductDto product,
    required List<ProductImageDto> images,
    required List<(ProductCategoryDto, ColourDto)> categories,
  }) = _ProductInfoModel;
}

@freezed
class ProductCategoryInfoModel with _$ProductCategoryInfoModel {
  const factory ProductCategoryInfoModel({
    required ProductDto product,
    required ProductCategoryDto category,
    required List<ProductImageDto> images,
    required ColourDto colour,
  }) = _ProductCategoryInfoModel;
}

@riverpod
Future<List<ProductInfoModel>> productInfo(ProductInfoRef ref) async {
  // Cache for 1 hour
  ref.cacheFor(const Duration(hours: 1));

  final response = await PBApp.instance.collection('products').getFullList(
        sort: '-created',
        expand:
            'product_images_via_productId,product_categories_via_productId,product_categories_via_productId.colourId',
      );
  return response.map((e) {
    final product = ProductDto.fromRecord(e);
    final images = e.expand['product_images_via_productId']
            ?.map((e) => ProductImageDto.fromRecord(e)) ??
        [];
    final categories = e.expand['product_categories_via_productId']?.map((e) {
          final category = ProductCategoryDto.fromRecord(e);
          final colour = ColourDto.fromRecord(e.expand['colourId']!.first);
          return (category, colour);
        }) ??
        [];
    return ProductInfoModel(
      product: product,
      images: images.toList(),
      categories: categories.toList(),
    );
  }).toList();
}

@riverpod
Future<ProductCategoryInfoModel> _singleProductCategoryInfo(
    _SingleProductCategoryInfoRef ref, String categoryId) async {
  final productList = await ref.watch(productInfoProvider.future);
  final product = productList.firstWhere((element) {
    final categories = element.categories.map((e) => e.$1.id);
    return categories.contains(categoryId);
  });
  final (category, colour) =
      product.categories.where((element) => element.$1.id == categoryId).first;
  final images = product.images;
  return ProductCategoryInfoModel(
    product: product.product,
    category: category,
    images: images,
    colour: colour,
  );
}

@riverpod
Future<List<ProductCategoryInfoModel>> productCategoryInfo(
    ProductCategoryInfoRef ref, Iterable<String> categoryIds) async {
  final productList = await Future.wait(categoryIds.map((e) async {
    return await ref.watch(_singleProductCategoryInfoProvider(e).future);
  }));
  return productList;
}

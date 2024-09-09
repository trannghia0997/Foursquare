import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/colour.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:foursquare/shared/models/product_category.dart';
import 'package:foursquare/shared/models/product_image.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class ProductWithImagesAndCategories with _$ProductWithImagesAndCategories {
  const factory ProductWithImagesAndCategories({
    required ProductDto product,
    required List<ProductImageDto> images,
    required List<(ProductCategoryDto, ColourDto)> categories,
  }) = _ProductWithImagesAndCategories;
}

@freezed
class ProductCategoryWithImagesAndColour
    with _$ProductCategoryWithImagesAndColour {
  const factory ProductCategoryWithImagesAndColour({
    required ProductDto product,
    required ProductCategoryDto category,
    required List<ProductImageDto> images,
    required ColourDto colour,
  }) = _ProductCategoryWithImagesAndColour;
}

@riverpod
Future<List<ProductWithImagesAndCategories>> productWithImagesAndCategories(
    ProductWithImagesAndCategoriesRef ref) async {
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
    return ProductWithImagesAndCategories(
      product: product,
      images: images.toList(),
      categories: categories.toList(),
    );
  }).toList();
}

@riverpod
Future<List<ProductCategoryWithImagesAndColour>>
    productCategoryWithImagesAndColour(
        ProductCategoryWithImagesAndColourRef ref,
        Iterable<String> categoryIds) async {
  final productList =
      await ref.watch(productWithImagesAndCategoriesProvider.future);
  final filteredList = productList.where((element) {
    final categories = element.categories.map((e) => e.$1.id);
    return categories.any((element) => categoryIds.contains(element));
  });
  return filteredList.map((e) {
    final (category, colour) = e.categories
        .where((element) => categoryIds.contains(element.$1.id))
        .first;
    final images = e.images;
    return ProductCategoryWithImagesAndColour(
      product: e.product,
      category: category,
      images: images,
      colour: colour,
    );
  }).toList();
}

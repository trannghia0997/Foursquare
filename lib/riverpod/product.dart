import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/colour.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:foursquare/shared/models/product_category.dart';
import 'package:foursquare/shared/models/product_image.dart';
import 'package:foursquare/shared/models/product_quantity.dart';
import 'package:foursquare/shared/models/views/product_quantity_summary.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class ProductInfo with _$ProductInfo {
  const factory ProductInfo({
    required ProductDto product,
    required List<ProductImageDto> images,
    required List<(ProductCategoryDto, ColourDto)> categories,
  }) = _ProductInfo;
}

@freezed
class ProductCategoryInfo with _$ProductCategoryInfo {
  const factory ProductCategoryInfo({
    required ProductDto product,
    required ProductCategoryDto category,
    required List<ProductImageDto> images,
    required ColourDto colour,
  }) = _ProductCategoryInfo;
}

@freezed
class ProductQuantityInfo with _$ProductQuantityInfo {
  const factory ProductQuantityInfo({
    required ProductCategoryInfo categoryInfo,
    required ProductQuantityDto quantity,
    required WorkingUnitDto workingUnit,
  }) = _ProductQuantityInfo;
}

@riverpod
Future<List<ProductInfo>> allProductInfo(AllProductInfoRef ref) async {
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
    return ProductInfo(
      product: product,
      images: images.toList(),
      categories: categories.toList(),
    );
  }).toList();
}

@riverpod
Future<ProductCategoryInfo> singleProductCategoryInfo(
    SingleProductCategoryInfoRef ref, String categoryId) async {
  final productList = await ref.watch(allProductInfoProvider.future);
  final product = productList.firstWhere((element) {
    final categories = element.categories.map((e) => e.$1.id);
    return categories.contains(categoryId);
  });
  final (category, colour) =
      product.categories.where((element) => element.$1.id == categoryId).first;
  final images = product.images;
  return ProductCategoryInfo(
    product: product.product,
    category: category,
    images: images,
    colour: colour,
  );
}

@riverpod
Future<List<ProductCategoryInfo>> batchProductCategoryInfo(
    BatchProductCategoryInfoRef ref, Iterable<String> categoryIds) async {
  final productList = await Future.wait(categoryIds.map((e) async {
    return await ref.read(singleProductCategoryInfoProvider(e).future);
  }));
  return productList;
}

@riverpod
Future<List<ProductCategoryInfo>> productCategoryInfoByWorkingUnitId(
    ProductCategoryInfoByWorkingUnitIdRef ref, String workingUnitId) async {
  final categoryIds =
      (await PBApp.instance.collection('product_quantities').getFullList(
                filter: 'workingUnitId = $workingUnitId',
                fields: 'categoryId',
              ))
          .map((e) => e.data['categoryId'] as String);
  final productList = await Future.wait(categoryIds.map((e) async {
    return await ref.watch(singleProductCategoryInfoProvider(e).future);
  }));
  return productList;
}

@riverpod
Future<List<ProductQuantityInfo>> allProductQuantityInfo(
    AllProductQuantityInfoRef ref) async {
  final response =
      await PBApp.instance.collection('product_quantities').getFullList(
            sort: '-created',
            expand: 'workingUnitId',
          );
  final productCategoryInfo = response.map((e) async {
    final productQuantity = ProductQuantityDto.fromRecord(e);
    final category = await ref.watch(
        singleProductCategoryInfoProvider(productQuantity.categoryId).future);
    final workingUnit =
        WorkingUnitDto.fromRecord(e.expand['workingUnitId']!.first);
    return ProductQuantityInfo(
      categoryInfo: category,
      quantity: productQuantity,
      workingUnit: workingUnit,
    );
  });
  return await Future.wait(productCategoryInfo);
}

@riverpod
Future<List<ProductQuantityInfo>> productQuantityInfoByWorkingUnit(
    ProductQuantityInfoByWorkingUnitRef ref, String workingUnitId) async {
  final productList = await ref.watch(allProductQuantityInfoProvider.future);
  final filteredList = productList
      .where((element) => element.workingUnit.id == workingUnitId)
      .toList();
  return filteredList;
}

@riverpod
Future<List<ProductQuantityInfo>> productQuantityInfoByProductCategory(
    ProductQuantityInfoByProductCategoryRef ref, String categoryId) async {
  final productList = await ref.watch(allProductQuantityInfoProvider.future);

  final filteredList = productList
      .where((element) => element.categoryInfo.category.id == categoryId)
      .toList();
  return filteredList;
}

@riverpod
Future<ProductQuantitySummaryView?> productQuantitySummaryViewByProductCategory(
    ProductQuantitySummaryViewByProductCategoryRef ref,
    String productCategoryId) async {
  final records =
      await PBApp.instance.collection('product_quantity_summary').getFullList(
            filter: 'categoryId = $productCategoryId',
          );
  if (records.isEmpty) {
    return null;
  }
  final record = records.first;
  return ProductQuantitySummaryView.fromRecord(record);
}

@riverpod
Future<List<ProductQuantitySummaryView?>>
    batchProductQuantitySummaryViewByProductCategory(
        BatchProductQuantitySummaryViewByProductCategoryRef ref,
        Iterable<String> productCategoryIds) async {
  final records = await Future.wait(productCategoryIds.map((e) async {
    return await ref
        .read(productQuantitySummaryViewByProductCategoryProvider(e).future);
  }));
  return records;
}

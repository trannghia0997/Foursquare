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

@freezed
class ProductQuantityInfoModel with _$ProductQuantityInfoModel {
  const factory ProductQuantityInfoModel({
    required ProductCategoryInfoModel categoryInfo,
    required ProductQuantityDto quantity,
    required WorkingUnitDto workingUnit,
  }) = _ProductQuantityInfoModel;
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

@riverpod
Future<List<ProductCategoryInfoModel>> productCategoryInfoByWorkingUnitId(
    ProductCategoryInfoByWorkingUnitIdRef ref, String workingUnitId) async {
  final categoryIds =
      (await PBApp.instance.collection('product_quantities').getFullList(
                filter: 'workingUnitId = $workingUnitId',
                fields: 'categoryId',
              ))
          .map((e) => e.data['categoryId'] as String);
  final productList = await Future.wait(categoryIds.map((e) async {
    return await ref.watch(_singleProductCategoryInfoProvider(e).future);
  }));
  return productList;
}

@riverpod
Future<List<ProductQuantityInfoModel>> productQuantityInfo(
    ProductQuantityInfoRef ref) async {
  final response =
      await PBApp.instance.collection('product_quantities').getFullList(
            sort: '-created',
            expand: 'workingUnitId',
          );
  final productCategoryInfo = response.map((e) async {
    final productQuantity = ProductQuantityDto.fromRecord(e);
    final category = await ref.watch(
        _singleProductCategoryInfoProvider(productQuantity.categoryId).future);
    final workingUnit =
        WorkingUnitDto.fromRecord(e.expand['workingUnitId']!.first);
    return ProductQuantityInfoModel(
      categoryInfo: category,
      quantity: productQuantity,
      workingUnit: workingUnit,
    );
  });
  return await Future.wait(productCategoryInfo);
}

@riverpod
Future<List<ProductQuantityInfoModel>> productQuantityInfoByWarehouse(
    ProductQuantityInfoByWarehouseRef ref, String workingUnitId) async {
  final productList = await ref.watch(productQuantityInfoProvider.future);
  final filteredList = productList
      .where((element) => element.workingUnit.id == workingUnitId)
      .toList();
  return filteredList;
}

@riverpod
Future<List<ProductQuantityInfoModel>> productQuantityInfoByProductCategory(
    ProductQuantityInfoByProductCategoryRef ref, String categoryId) async {
  final productList = await ref.watch(productQuantityInfoProvider.future);

  final filteredList = productList
      .where((element) => element.categoryInfo.category.id == categoryId)
      .toList();
  return filteredList;
}

@riverpod
Future<ProductQuantitySummaryView?> productQuantitySummaryViewByProduct(
    ProductQuantitySummaryViewByProductRef ref,
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
    batchProductQuantitySummaryViewByProduct(
        BatchProductQuantitySummaryViewByProductRef ref,
        Iterable<String> productCategoryIds) async {
  final records = await Future.wait(productCategoryIds.map((e) async {
    return await ref
        .watch(productQuantitySummaryViewByProductProvider(e).future);
  }));
  return records;
}

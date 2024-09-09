// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productWithImagesAndCategoriesHash() =>
    r'0b11a7a543e00c870f16eafa8fc3a3ec6ce611cc';

/// See also [productWithImagesAndCategories].
@ProviderFor(productWithImagesAndCategories)
final productWithImagesAndCategoriesProvider =
    AutoDisposeFutureProvider<List<ProductWithImagesAndCategories>>.internal(
  productWithImagesAndCategories,
  name: r'productWithImagesAndCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productWithImagesAndCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductWithImagesAndCategoriesRef
    = AutoDisposeFutureProviderRef<List<ProductWithImagesAndCategories>>;
String _$productCategoryWithImagesAndColourHash() =>
    r'328e135e6535278097074ac32e9eada0dcd669c6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [productCategoryWithImagesAndColour].
@ProviderFor(productCategoryWithImagesAndColour)
const productCategoryWithImagesAndColourProvider =
    ProductCategoryWithImagesAndColourFamily();

/// See also [productCategoryWithImagesAndColour].
class ProductCategoryWithImagesAndColourFamily
    extends Family<AsyncValue<List<ProductCategoryWithImagesAndColour>>> {
  /// See also [productCategoryWithImagesAndColour].
  const ProductCategoryWithImagesAndColourFamily();

  /// See also [productCategoryWithImagesAndColour].
  ProductCategoryWithImagesAndColourProvider call(
    Iterable<String> categoryIds,
  ) {
    return ProductCategoryWithImagesAndColourProvider(
      categoryIds,
    );
  }

  @override
  ProductCategoryWithImagesAndColourProvider getProviderOverride(
    covariant ProductCategoryWithImagesAndColourProvider provider,
  ) {
    return call(
      provider.categoryIds,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productCategoryWithImagesAndColourProvider';
}

/// See also [productCategoryWithImagesAndColour].
class ProductCategoryWithImagesAndColourProvider
    extends AutoDisposeFutureProvider<
        List<ProductCategoryWithImagesAndColour>> {
  /// See also [productCategoryWithImagesAndColour].
  ProductCategoryWithImagesAndColourProvider(
    Iterable<String> categoryIds,
  ) : this._internal(
          (ref) => productCategoryWithImagesAndColour(
            ref as ProductCategoryWithImagesAndColourRef,
            categoryIds,
          ),
          from: productCategoryWithImagesAndColourProvider,
          name: r'productCategoryWithImagesAndColourProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productCategoryWithImagesAndColourHash,
          dependencies: ProductCategoryWithImagesAndColourFamily._dependencies,
          allTransitiveDependencies: ProductCategoryWithImagesAndColourFamily
              ._allTransitiveDependencies,
          categoryIds: categoryIds,
        );

  ProductCategoryWithImagesAndColourProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryIds,
  }) : super.internal();

  final Iterable<String> categoryIds;

  @override
  Override overrideWith(
    FutureOr<List<ProductCategoryWithImagesAndColour>> Function(
            ProductCategoryWithImagesAndColourRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductCategoryWithImagesAndColourProvider._internal(
        (ref) => create(ref as ProductCategoryWithImagesAndColourRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryIds: categoryIds,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ProductCategoryWithImagesAndColour>>
      createElement() {
    return _ProductCategoryWithImagesAndColourProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductCategoryWithImagesAndColourProvider &&
        other.categoryIds == categoryIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductCategoryWithImagesAndColourRef
    on AutoDisposeFutureProviderRef<List<ProductCategoryWithImagesAndColour>> {
  /// The parameter `categoryIds` of this provider.
  Iterable<String> get categoryIds;
}

class _ProductCategoryWithImagesAndColourProviderElement
    extends AutoDisposeFutureProviderElement<
        List<ProductCategoryWithImagesAndColour>>
    with ProductCategoryWithImagesAndColourRef {
  _ProductCategoryWithImagesAndColourProviderElement(super.provider);

  @override
  Iterable<String> get categoryIds =>
      (origin as ProductCategoryWithImagesAndColourProvider).categoryIds;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

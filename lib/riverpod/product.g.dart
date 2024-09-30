// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allProductInfoHash() => r'b2f10a8ffd2e4efd991c8c1820f3a7082927d5db';

/// See also [allProductInfo].
@ProviderFor(allProductInfo)
final allProductInfoProvider =
    AutoDisposeFutureProvider<List<ProductInfo>>.internal(
  allProductInfo,
  name: r'allProductInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allProductInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllProductInfoRef = AutoDisposeFutureProviderRef<List<ProductInfo>>;
String _$commentInfoByProductIdHash() =>
    r'0e5b41c15ead94eb09f621acc90b03b0a6f4bf6c';

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

/// See also [commentInfoByProductId].
@ProviderFor(commentInfoByProductId)
const commentInfoByProductIdProvider = CommentInfoByProductIdFamily();

/// See also [commentInfoByProductId].
class CommentInfoByProductIdFamily
    extends Family<AsyncValue<List<CommentInfo>>> {
  /// See also [commentInfoByProductId].
  const CommentInfoByProductIdFamily();

  /// See also [commentInfoByProductId].
  CommentInfoByProductIdProvider call(
    String productId,
  ) {
    return CommentInfoByProductIdProvider(
      productId,
    );
  }

  @override
  CommentInfoByProductIdProvider getProviderOverride(
    covariant CommentInfoByProductIdProvider provider,
  ) {
    return call(
      provider.productId,
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
  String? get name => r'commentInfoByProductIdProvider';
}

/// See also [commentInfoByProductId].
class CommentInfoByProductIdProvider
    extends AutoDisposeFutureProvider<List<CommentInfo>> {
  /// See also [commentInfoByProductId].
  CommentInfoByProductIdProvider(
    String productId,
  ) : this._internal(
          (ref) => commentInfoByProductId(
            ref as CommentInfoByProductIdRef,
            productId,
          ),
          from: commentInfoByProductIdProvider,
          name: r'commentInfoByProductIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentInfoByProductIdHash,
          dependencies: CommentInfoByProductIdFamily._dependencies,
          allTransitiveDependencies:
              CommentInfoByProductIdFamily._allTransitiveDependencies,
          productId: productId,
        );

  CommentInfoByProductIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    FutureOr<List<CommentInfo>> Function(CommentInfoByProductIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CommentInfoByProductIdProvider._internal(
        (ref) => create(ref as CommentInfoByProductIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CommentInfo>> createElement() {
    return _CommentInfoByProductIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentInfoByProductIdProvider &&
        other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentInfoByProductIdRef
    on AutoDisposeFutureProviderRef<List<CommentInfo>> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _CommentInfoByProductIdProviderElement
    extends AutoDisposeFutureProviderElement<List<CommentInfo>>
    with CommentInfoByProductIdRef {
  _CommentInfoByProductIdProviderElement(super.provider);

  @override
  String get productId => (origin as CommentInfoByProductIdProvider).productId;
}

String _$singleProductCategoryInfoHash() =>
    r'f1d7c3e13cb1991cf9183c05c3f7a6f28334c5cf';

/// See also [singleProductCategoryInfo].
@ProviderFor(singleProductCategoryInfo)
const singleProductCategoryInfoProvider = SingleProductCategoryInfoFamily();

/// See also [singleProductCategoryInfo].
class SingleProductCategoryInfoFamily
    extends Family<AsyncValue<ProductCategoryInfo>> {
  /// See also [singleProductCategoryInfo].
  const SingleProductCategoryInfoFamily();

  /// See also [singleProductCategoryInfo].
  SingleProductCategoryInfoProvider call(
    String categoryId,
  ) {
    return SingleProductCategoryInfoProvider(
      categoryId,
    );
  }

  @override
  SingleProductCategoryInfoProvider getProviderOverride(
    covariant SingleProductCategoryInfoProvider provider,
  ) {
    return call(
      provider.categoryId,
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
  String? get name => r'singleProductCategoryInfoProvider';
}

/// See also [singleProductCategoryInfo].
class SingleProductCategoryInfoProvider
    extends AutoDisposeFutureProvider<ProductCategoryInfo> {
  /// See also [singleProductCategoryInfo].
  SingleProductCategoryInfoProvider(
    String categoryId,
  ) : this._internal(
          (ref) => singleProductCategoryInfo(
            ref as SingleProductCategoryInfoRef,
            categoryId,
          ),
          from: singleProductCategoryInfoProvider,
          name: r'singleProductCategoryInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleProductCategoryInfoHash,
          dependencies: SingleProductCategoryInfoFamily._dependencies,
          allTransitiveDependencies:
              SingleProductCategoryInfoFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  SingleProductCategoryInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<ProductCategoryInfo> Function(
            SingleProductCategoryInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleProductCategoryInfoProvider._internal(
        (ref) => create(ref as SingleProductCategoryInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductCategoryInfo> createElement() {
    return _SingleProductCategoryInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleProductCategoryInfoProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleProductCategoryInfoRef
    on AutoDisposeFutureProviderRef<ProductCategoryInfo> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _SingleProductCategoryInfoProviderElement
    extends AutoDisposeFutureProviderElement<ProductCategoryInfo>
    with SingleProductCategoryInfoRef {
  _SingleProductCategoryInfoProviderElement(super.provider);

  @override
  String get categoryId =>
      (origin as SingleProductCategoryInfoProvider).categoryId;
}

String _$batchProductCategoryInfoHash() =>
    r'd19a5985bf384221cfa3661cf0b69a80c2a3b9d5';

/// See also [batchProductCategoryInfo].
@ProviderFor(batchProductCategoryInfo)
const batchProductCategoryInfoProvider = BatchProductCategoryInfoFamily();

/// See also [batchProductCategoryInfo].
class BatchProductCategoryInfoFamily
    extends Family<AsyncValue<List<ProductCategoryInfo>>> {
  /// See also [batchProductCategoryInfo].
  const BatchProductCategoryInfoFamily();

  /// See also [batchProductCategoryInfo].
  BatchProductCategoryInfoProvider call(
    CustomList<String> categoryIds,
  ) {
    return BatchProductCategoryInfoProvider(
      categoryIds,
    );
  }

  @override
  BatchProductCategoryInfoProvider getProviderOverride(
    covariant BatchProductCategoryInfoProvider provider,
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
  String? get name => r'batchProductCategoryInfoProvider';
}

/// See also [batchProductCategoryInfo].
class BatchProductCategoryInfoProvider
    extends AutoDisposeFutureProvider<List<ProductCategoryInfo>> {
  /// See also [batchProductCategoryInfo].
  BatchProductCategoryInfoProvider(
    CustomList<String> categoryIds,
  ) : this._internal(
          (ref) => batchProductCategoryInfo(
            ref as BatchProductCategoryInfoRef,
            categoryIds,
          ),
          from: batchProductCategoryInfoProvider,
          name: r'batchProductCategoryInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$batchProductCategoryInfoHash,
          dependencies: BatchProductCategoryInfoFamily._dependencies,
          allTransitiveDependencies:
              BatchProductCategoryInfoFamily._allTransitiveDependencies,
          categoryIds: categoryIds,
        );

  BatchProductCategoryInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryIds,
  }) : super.internal();

  final CustomList<String> categoryIds;

  @override
  Override overrideWith(
    FutureOr<List<ProductCategoryInfo>> Function(
            BatchProductCategoryInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BatchProductCategoryInfoProvider._internal(
        (ref) => create(ref as BatchProductCategoryInfoRef),
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
  AutoDisposeFutureProviderElement<List<ProductCategoryInfo>> createElement() {
    return _BatchProductCategoryInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BatchProductCategoryInfoProvider &&
        other.categoryIds == categoryIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BatchProductCategoryInfoRef
    on AutoDisposeFutureProviderRef<List<ProductCategoryInfo>> {
  /// The parameter `categoryIds` of this provider.
  CustomList<String> get categoryIds;
}

class _BatchProductCategoryInfoProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductCategoryInfo>>
    with BatchProductCategoryInfoRef {
  _BatchProductCategoryInfoProviderElement(super.provider);

  @override
  CustomList<String> get categoryIds =>
      (origin as BatchProductCategoryInfoProvider).categoryIds;
}

String _$productCategoryInfoByWorkingUnitIdHash() =>
    r'84f07cea2050c6b0f2c02c7646b362f448d58153';

/// See also [productCategoryInfoByWorkingUnitId].
@ProviderFor(productCategoryInfoByWorkingUnitId)
const productCategoryInfoByWorkingUnitIdProvider =
    ProductCategoryInfoByWorkingUnitIdFamily();

/// See also [productCategoryInfoByWorkingUnitId].
class ProductCategoryInfoByWorkingUnitIdFamily
    extends Family<AsyncValue<List<ProductCategoryInfo>>> {
  /// See also [productCategoryInfoByWorkingUnitId].
  const ProductCategoryInfoByWorkingUnitIdFamily();

  /// See also [productCategoryInfoByWorkingUnitId].
  ProductCategoryInfoByWorkingUnitIdProvider call(
    String workingUnitId,
  ) {
    return ProductCategoryInfoByWorkingUnitIdProvider(
      workingUnitId,
    );
  }

  @override
  ProductCategoryInfoByWorkingUnitIdProvider getProviderOverride(
    covariant ProductCategoryInfoByWorkingUnitIdProvider provider,
  ) {
    return call(
      provider.workingUnitId,
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
  String? get name => r'productCategoryInfoByWorkingUnitIdProvider';
}

/// See also [productCategoryInfoByWorkingUnitId].
class ProductCategoryInfoByWorkingUnitIdProvider
    extends AutoDisposeFutureProvider<List<ProductCategoryInfo>> {
  /// See also [productCategoryInfoByWorkingUnitId].
  ProductCategoryInfoByWorkingUnitIdProvider(
    String workingUnitId,
  ) : this._internal(
          (ref) => productCategoryInfoByWorkingUnitId(
            ref as ProductCategoryInfoByWorkingUnitIdRef,
            workingUnitId,
          ),
          from: productCategoryInfoByWorkingUnitIdProvider,
          name: r'productCategoryInfoByWorkingUnitIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productCategoryInfoByWorkingUnitIdHash,
          dependencies: ProductCategoryInfoByWorkingUnitIdFamily._dependencies,
          allTransitiveDependencies: ProductCategoryInfoByWorkingUnitIdFamily
              ._allTransitiveDependencies,
          workingUnitId: workingUnitId,
        );

  ProductCategoryInfoByWorkingUnitIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workingUnitId,
  }) : super.internal();

  final String workingUnitId;

  @override
  Override overrideWith(
    FutureOr<List<ProductCategoryInfo>> Function(
            ProductCategoryInfoByWorkingUnitIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductCategoryInfoByWorkingUnitIdProvider._internal(
        (ref) => create(ref as ProductCategoryInfoByWorkingUnitIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workingUnitId: workingUnitId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ProductCategoryInfo>> createElement() {
    return _ProductCategoryInfoByWorkingUnitIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductCategoryInfoByWorkingUnitIdProvider &&
        other.workingUnitId == workingUnitId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workingUnitId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductCategoryInfoByWorkingUnitIdRef
    on AutoDisposeFutureProviderRef<List<ProductCategoryInfo>> {
  /// The parameter `workingUnitId` of this provider.
  String get workingUnitId;
}

class _ProductCategoryInfoByWorkingUnitIdProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductCategoryInfo>>
    with ProductCategoryInfoByWorkingUnitIdRef {
  _ProductCategoryInfoByWorkingUnitIdProviderElement(super.provider);

  @override
  String get workingUnitId =>
      (origin as ProductCategoryInfoByWorkingUnitIdProvider).workingUnitId;
}

String _$allProductQuantityInfoHash() =>
    r'016c8ca268b97fa2c4ce54bf30b986d543a1a050';

/// See also [allProductQuantityInfo].
@ProviderFor(allProductQuantityInfo)
final allProductQuantityInfoProvider =
    AutoDisposeFutureProvider<List<ProductQuantityInfo>>.internal(
  allProductQuantityInfo,
  name: r'allProductQuantityInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allProductQuantityInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllProductQuantityInfoRef
    = AutoDisposeFutureProviderRef<List<ProductQuantityInfo>>;
String _$productQuantityInfoByWorkingUnitHash() =>
    r'2e677c88334c618aecb6f5fae89b3eac1f878788';

/// See also [productQuantityInfoByWorkingUnit].
@ProviderFor(productQuantityInfoByWorkingUnit)
const productQuantityInfoByWorkingUnitProvider =
    ProductQuantityInfoByWorkingUnitFamily();

/// See also [productQuantityInfoByWorkingUnit].
class ProductQuantityInfoByWorkingUnitFamily
    extends Family<AsyncValue<List<ProductQuantityInfo>>> {
  /// See also [productQuantityInfoByWorkingUnit].
  const ProductQuantityInfoByWorkingUnitFamily();

  /// See also [productQuantityInfoByWorkingUnit].
  ProductQuantityInfoByWorkingUnitProvider call(
    String workingUnitId,
  ) {
    return ProductQuantityInfoByWorkingUnitProvider(
      workingUnitId,
    );
  }

  @override
  ProductQuantityInfoByWorkingUnitProvider getProviderOverride(
    covariant ProductQuantityInfoByWorkingUnitProvider provider,
  ) {
    return call(
      provider.workingUnitId,
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
  String? get name => r'productQuantityInfoByWorkingUnitProvider';
}

/// See also [productQuantityInfoByWorkingUnit].
class ProductQuantityInfoByWorkingUnitProvider
    extends AutoDisposeFutureProvider<List<ProductQuantityInfo>> {
  /// See also [productQuantityInfoByWorkingUnit].
  ProductQuantityInfoByWorkingUnitProvider(
    String workingUnitId,
  ) : this._internal(
          (ref) => productQuantityInfoByWorkingUnit(
            ref as ProductQuantityInfoByWorkingUnitRef,
            workingUnitId,
          ),
          from: productQuantityInfoByWorkingUnitProvider,
          name: r'productQuantityInfoByWorkingUnitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productQuantityInfoByWorkingUnitHash,
          dependencies: ProductQuantityInfoByWorkingUnitFamily._dependencies,
          allTransitiveDependencies:
              ProductQuantityInfoByWorkingUnitFamily._allTransitiveDependencies,
          workingUnitId: workingUnitId,
        );

  ProductQuantityInfoByWorkingUnitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workingUnitId,
  }) : super.internal();

  final String workingUnitId;

  @override
  Override overrideWith(
    FutureOr<List<ProductQuantityInfo>> Function(
            ProductQuantityInfoByWorkingUnitRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductQuantityInfoByWorkingUnitProvider._internal(
        (ref) => create(ref as ProductQuantityInfoByWorkingUnitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workingUnitId: workingUnitId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ProductQuantityInfo>> createElement() {
    return _ProductQuantityInfoByWorkingUnitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductQuantityInfoByWorkingUnitProvider &&
        other.workingUnitId == workingUnitId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workingUnitId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductQuantityInfoByWorkingUnitRef
    on AutoDisposeFutureProviderRef<List<ProductQuantityInfo>> {
  /// The parameter `workingUnitId` of this provider.
  String get workingUnitId;
}

class _ProductQuantityInfoByWorkingUnitProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductQuantityInfo>>
    with ProductQuantityInfoByWorkingUnitRef {
  _ProductQuantityInfoByWorkingUnitProviderElement(super.provider);

  @override
  String get workingUnitId =>
      (origin as ProductQuantityInfoByWorkingUnitProvider).workingUnitId;
}

String _$productQuantityInfoByProductCategoryHash() =>
    r'446ab3c0f1c9a05e63771615d77f55e220705972';

/// See also [productQuantityInfoByProductCategory].
@ProviderFor(productQuantityInfoByProductCategory)
const productQuantityInfoByProductCategoryProvider =
    ProductQuantityInfoByProductCategoryFamily();

/// See also [productQuantityInfoByProductCategory].
class ProductQuantityInfoByProductCategoryFamily
    extends Family<AsyncValue<List<ProductQuantityInfo>>> {
  /// See also [productQuantityInfoByProductCategory].
  const ProductQuantityInfoByProductCategoryFamily();

  /// See also [productQuantityInfoByProductCategory].
  ProductQuantityInfoByProductCategoryProvider call(
    String categoryId,
  ) {
    return ProductQuantityInfoByProductCategoryProvider(
      categoryId,
    );
  }

  @override
  ProductQuantityInfoByProductCategoryProvider getProviderOverride(
    covariant ProductQuantityInfoByProductCategoryProvider provider,
  ) {
    return call(
      provider.categoryId,
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
  String? get name => r'productQuantityInfoByProductCategoryProvider';
}

/// See also [productQuantityInfoByProductCategory].
class ProductQuantityInfoByProductCategoryProvider
    extends AutoDisposeFutureProvider<List<ProductQuantityInfo>> {
  /// See also [productQuantityInfoByProductCategory].
  ProductQuantityInfoByProductCategoryProvider(
    String categoryId,
  ) : this._internal(
          (ref) => productQuantityInfoByProductCategory(
            ref as ProductQuantityInfoByProductCategoryRef,
            categoryId,
          ),
          from: productQuantityInfoByProductCategoryProvider,
          name: r'productQuantityInfoByProductCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productQuantityInfoByProductCategoryHash,
          dependencies:
              ProductQuantityInfoByProductCategoryFamily._dependencies,
          allTransitiveDependencies: ProductQuantityInfoByProductCategoryFamily
              ._allTransitiveDependencies,
          categoryId: categoryId,
        );

  ProductQuantityInfoByProductCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<List<ProductQuantityInfo>> Function(
            ProductQuantityInfoByProductCategoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductQuantityInfoByProductCategoryProvider._internal(
        (ref) => create(ref as ProductQuantityInfoByProductCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ProductQuantityInfo>> createElement() {
    return _ProductQuantityInfoByProductCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductQuantityInfoByProductCategoryProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductQuantityInfoByProductCategoryRef
    on AutoDisposeFutureProviderRef<List<ProductQuantityInfo>> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _ProductQuantityInfoByProductCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductQuantityInfo>>
    with ProductQuantityInfoByProductCategoryRef {
  _ProductQuantityInfoByProductCategoryProviderElement(super.provider);

  @override
  String get categoryId =>
      (origin as ProductQuantityInfoByProductCategoryProvider).categoryId;
}

String _$productQuantitySummaryViewByProductCategoryHash() =>
    r'c82b355632d51216240baddfd1f4b638c6b0e709';

/// See also [productQuantitySummaryViewByProductCategory].
@ProviderFor(productQuantitySummaryViewByProductCategory)
const productQuantitySummaryViewByProductCategoryProvider =
    ProductQuantitySummaryViewByProductCategoryFamily();

/// See also [productQuantitySummaryViewByProductCategory].
class ProductQuantitySummaryViewByProductCategoryFamily
    extends Family<AsyncValue<ProductQuantitySummaryView?>> {
  /// See also [productQuantitySummaryViewByProductCategory].
  const ProductQuantitySummaryViewByProductCategoryFamily();

  /// See also [productQuantitySummaryViewByProductCategory].
  ProductQuantitySummaryViewByProductCategoryProvider call(
    String productCategoryId,
  ) {
    return ProductQuantitySummaryViewByProductCategoryProvider(
      productCategoryId,
    );
  }

  @override
  ProductQuantitySummaryViewByProductCategoryProvider getProviderOverride(
    covariant ProductQuantitySummaryViewByProductCategoryProvider provider,
  ) {
    return call(
      provider.productCategoryId,
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
  String? get name => r'productQuantitySummaryViewByProductCategoryProvider';
}

/// See also [productQuantitySummaryViewByProductCategory].
class ProductQuantitySummaryViewByProductCategoryProvider
    extends AutoDisposeFutureProvider<ProductQuantitySummaryView?> {
  /// See also [productQuantitySummaryViewByProductCategory].
  ProductQuantitySummaryViewByProductCategoryProvider(
    String productCategoryId,
  ) : this._internal(
          (ref) => productQuantitySummaryViewByProductCategory(
            ref as ProductQuantitySummaryViewByProductCategoryRef,
            productCategoryId,
          ),
          from: productQuantitySummaryViewByProductCategoryProvider,
          name: r'productQuantitySummaryViewByProductCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productQuantitySummaryViewByProductCategoryHash,
          dependencies:
              ProductQuantitySummaryViewByProductCategoryFamily._dependencies,
          allTransitiveDependencies:
              ProductQuantitySummaryViewByProductCategoryFamily
                  ._allTransitiveDependencies,
          productCategoryId: productCategoryId,
        );

  ProductQuantitySummaryViewByProductCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productCategoryId,
  }) : super.internal();

  final String productCategoryId;

  @override
  Override overrideWith(
    FutureOr<ProductQuantitySummaryView?> Function(
            ProductQuantitySummaryViewByProductCategoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductQuantitySummaryViewByProductCategoryProvider._internal(
        (ref) => create(ref as ProductQuantitySummaryViewByProductCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productCategoryId: productCategoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductQuantitySummaryView?>
      createElement() {
    return _ProductQuantitySummaryViewByProductCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductQuantitySummaryViewByProductCategoryProvider &&
        other.productCategoryId == productCategoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productCategoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductQuantitySummaryViewByProductCategoryRef
    on AutoDisposeFutureProviderRef<ProductQuantitySummaryView?> {
  /// The parameter `productCategoryId` of this provider.
  String get productCategoryId;
}

class _ProductQuantitySummaryViewByProductCategoryProviderElement
    extends AutoDisposeFutureProviderElement<ProductQuantitySummaryView?>
    with ProductQuantitySummaryViewByProductCategoryRef {
  _ProductQuantitySummaryViewByProductCategoryProviderElement(super.provider);

  @override
  String get productCategoryId =>
      (origin as ProductQuantitySummaryViewByProductCategoryProvider)
          .productCategoryId;
}

String _$batchProductQuantitySummaryViewByProductCategoryHash() =>
    r'74de152cb1cbe0e30c653145cd6a9525180c3d53';

/// See also [batchProductQuantitySummaryViewByProductCategory].
@ProviderFor(batchProductQuantitySummaryViewByProductCategory)
const batchProductQuantitySummaryViewByProductCategoryProvider =
    BatchProductQuantitySummaryViewByProductCategoryFamily();

/// See also [batchProductQuantitySummaryViewByProductCategory].
class BatchProductQuantitySummaryViewByProductCategoryFamily
    extends Family<AsyncValue<List<ProductQuantitySummaryView?>>> {
  /// See also [batchProductQuantitySummaryViewByProductCategory].
  const BatchProductQuantitySummaryViewByProductCategoryFamily();

  /// See also [batchProductQuantitySummaryViewByProductCategory].
  BatchProductQuantitySummaryViewByProductCategoryProvider call(
    CustomList<String> productCategoryIds,
  ) {
    return BatchProductQuantitySummaryViewByProductCategoryProvider(
      productCategoryIds,
    );
  }

  @override
  BatchProductQuantitySummaryViewByProductCategoryProvider getProviderOverride(
    covariant BatchProductQuantitySummaryViewByProductCategoryProvider provider,
  ) {
    return call(
      provider.productCategoryIds,
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
  String? get name =>
      r'batchProductQuantitySummaryViewByProductCategoryProvider';
}

/// See also [batchProductQuantitySummaryViewByProductCategory].
class BatchProductQuantitySummaryViewByProductCategoryProvider
    extends AutoDisposeFutureProvider<List<ProductQuantitySummaryView?>> {
  /// See also [batchProductQuantitySummaryViewByProductCategory].
  BatchProductQuantitySummaryViewByProductCategoryProvider(
    CustomList<String> productCategoryIds,
  ) : this._internal(
          (ref) => batchProductQuantitySummaryViewByProductCategory(
            ref as BatchProductQuantitySummaryViewByProductCategoryRef,
            productCategoryIds,
          ),
          from: batchProductQuantitySummaryViewByProductCategoryProvider,
          name: r'batchProductQuantitySummaryViewByProductCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$batchProductQuantitySummaryViewByProductCategoryHash,
          dependencies: BatchProductQuantitySummaryViewByProductCategoryFamily
              ._dependencies,
          allTransitiveDependencies:
              BatchProductQuantitySummaryViewByProductCategoryFamily
                  ._allTransitiveDependencies,
          productCategoryIds: productCategoryIds,
        );

  BatchProductQuantitySummaryViewByProductCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productCategoryIds,
  }) : super.internal();

  final CustomList<String> productCategoryIds;

  @override
  Override overrideWith(
    FutureOr<List<ProductQuantitySummaryView?>> Function(
            BatchProductQuantitySummaryViewByProductCategoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override:
          BatchProductQuantitySummaryViewByProductCategoryProvider._internal(
        (ref) =>
            create(ref as BatchProductQuantitySummaryViewByProductCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productCategoryIds: productCategoryIds,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ProductQuantitySummaryView?>>
      createElement() {
    return _BatchProductQuantitySummaryViewByProductCategoryProviderElement(
        this);
  }

  @override
  bool operator ==(Object other) {
    return other is BatchProductQuantitySummaryViewByProductCategoryProvider &&
        other.productCategoryIds == productCategoryIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productCategoryIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BatchProductQuantitySummaryViewByProductCategoryRef
    on AutoDisposeFutureProviderRef<List<ProductQuantitySummaryView?>> {
  /// The parameter `productCategoryIds` of this provider.
  CustomList<String> get productCategoryIds;
}

class _BatchProductQuantitySummaryViewByProductCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductQuantitySummaryView?>>
    with BatchProductQuantitySummaryViewByProductCategoryRef {
  _BatchProductQuantitySummaryViewByProductCategoryProviderElement(
      super.provider);

  @override
  CustomList<String> get productCategoryIds =>
      (origin as BatchProductQuantitySummaryViewByProductCategoryProvider)
          .productCategoryIds;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

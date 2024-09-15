// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productInfoHash() => r'c7e11c4b7ab18c80df9d8f78cf5e0f76fadf726e';

/// See also [productInfo].
@ProviderFor(productInfo)
final productInfoProvider =
    AutoDisposeFutureProvider<List<ProductInfoModel>>.internal(
  productInfo,
  name: r'productInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductInfoRef = AutoDisposeFutureProviderRef<List<ProductInfoModel>>;
String _$singleProductCategoryInfoHash() =>
    r'5cf5117a990e8ffd3f88a680f5a4dbd81a1f12e9';

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

/// See also [_singleProductCategoryInfo].
@ProviderFor(_singleProductCategoryInfo)
const _singleProductCategoryInfoProvider = _SingleProductCategoryInfoFamily();

/// See also [_singleProductCategoryInfo].
class _SingleProductCategoryInfoFamily
    extends Family<AsyncValue<ProductCategoryInfoModel>> {
  /// See also [_singleProductCategoryInfo].
  const _SingleProductCategoryInfoFamily();

  /// See also [_singleProductCategoryInfo].
  _SingleProductCategoryInfoProvider call(
    String categoryId,
  ) {
    return _SingleProductCategoryInfoProvider(
      categoryId,
    );
  }

  @override
  _SingleProductCategoryInfoProvider getProviderOverride(
    covariant _SingleProductCategoryInfoProvider provider,
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
  String? get name => r'_singleProductCategoryInfoProvider';
}

/// See also [_singleProductCategoryInfo].
class _SingleProductCategoryInfoProvider
    extends AutoDisposeFutureProvider<ProductCategoryInfoModel> {
  /// See also [_singleProductCategoryInfo].
  _SingleProductCategoryInfoProvider(
    String categoryId,
  ) : this._internal(
          (ref) => _singleProductCategoryInfo(
            ref as _SingleProductCategoryInfoRef,
            categoryId,
          ),
          from: _singleProductCategoryInfoProvider,
          name: r'_singleProductCategoryInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleProductCategoryInfoHash,
          dependencies: _SingleProductCategoryInfoFamily._dependencies,
          allTransitiveDependencies:
              _SingleProductCategoryInfoFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  _SingleProductCategoryInfoProvider._internal(
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
    FutureOr<ProductCategoryInfoModel> Function(
            _SingleProductCategoryInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _SingleProductCategoryInfoProvider._internal(
        (ref) => create(ref as _SingleProductCategoryInfoRef),
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
  AutoDisposeFutureProviderElement<ProductCategoryInfoModel> createElement() {
    return _SingleProductCategoryInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _SingleProductCategoryInfoProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _SingleProductCategoryInfoRef
    on AutoDisposeFutureProviderRef<ProductCategoryInfoModel> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _SingleProductCategoryInfoProviderElement
    extends AutoDisposeFutureProviderElement<ProductCategoryInfoModel>
    with _SingleProductCategoryInfoRef {
  _SingleProductCategoryInfoProviderElement(super.provider);

  @override
  String get categoryId =>
      (origin as _SingleProductCategoryInfoProvider).categoryId;
}

String _$productCategoryInfoHash() =>
    r'f2569f6c600caa3c0a281a7691fc95ed518ea685';

/// See also [productCategoryInfo].
@ProviderFor(productCategoryInfo)
const productCategoryInfoProvider = ProductCategoryInfoFamily();

/// See also [productCategoryInfo].
class ProductCategoryInfoFamily
    extends Family<AsyncValue<List<ProductCategoryInfoModel>>> {
  /// See also [productCategoryInfo].
  const ProductCategoryInfoFamily();

  /// See also [productCategoryInfo].
  ProductCategoryInfoProvider call(
    Iterable<String> categoryIds,
  ) {
    return ProductCategoryInfoProvider(
      categoryIds,
    );
  }

  @override
  ProductCategoryInfoProvider getProviderOverride(
    covariant ProductCategoryInfoProvider provider,
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
  String? get name => r'productCategoryInfoProvider';
}

/// See also [productCategoryInfo].
class ProductCategoryInfoProvider
    extends AutoDisposeFutureProvider<List<ProductCategoryInfoModel>> {
  /// See also [productCategoryInfo].
  ProductCategoryInfoProvider(
    Iterable<String> categoryIds,
  ) : this._internal(
          (ref) => productCategoryInfo(
            ref as ProductCategoryInfoRef,
            categoryIds,
          ),
          from: productCategoryInfoProvider,
          name: r'productCategoryInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productCategoryInfoHash,
          dependencies: ProductCategoryInfoFamily._dependencies,
          allTransitiveDependencies:
              ProductCategoryInfoFamily._allTransitiveDependencies,
          categoryIds: categoryIds,
        );

  ProductCategoryInfoProvider._internal(
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
    FutureOr<List<ProductCategoryInfoModel>> Function(
            ProductCategoryInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductCategoryInfoProvider._internal(
        (ref) => create(ref as ProductCategoryInfoRef),
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
  AutoDisposeFutureProviderElement<List<ProductCategoryInfoModel>>
      createElement() {
    return _ProductCategoryInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductCategoryInfoProvider &&
        other.categoryIds == categoryIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductCategoryInfoRef
    on AutoDisposeFutureProviderRef<List<ProductCategoryInfoModel>> {
  /// The parameter `categoryIds` of this provider.
  Iterable<String> get categoryIds;
}

class _ProductCategoryInfoProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductCategoryInfoModel>>
    with ProductCategoryInfoRef {
  _ProductCategoryInfoProviderElement(super.provider);

  @override
  Iterable<String> get categoryIds =>
      (origin as ProductCategoryInfoProvider).categoryIds;
}

String _$productCategoryInfoByWorkingUnitIdHash() =>
    r'788685339a08d24be303b23350539a9cc65f7787';

/// See also [productCategoryInfoByWorkingUnitId].
@ProviderFor(productCategoryInfoByWorkingUnitId)
const productCategoryInfoByWorkingUnitIdProvider =
    ProductCategoryInfoByWorkingUnitIdFamily();

/// See also [productCategoryInfoByWorkingUnitId].
class ProductCategoryInfoByWorkingUnitIdFamily
    extends Family<AsyncValue<List<ProductCategoryInfoModel>>> {
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
    extends AutoDisposeFutureProvider<List<ProductCategoryInfoModel>> {
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
    FutureOr<List<ProductCategoryInfoModel>> Function(
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
  AutoDisposeFutureProviderElement<List<ProductCategoryInfoModel>>
      createElement() {
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
    on AutoDisposeFutureProviderRef<List<ProductCategoryInfoModel>> {
  /// The parameter `workingUnitId` of this provider.
  String get workingUnitId;
}

class _ProductCategoryInfoByWorkingUnitIdProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductCategoryInfoModel>>
    with ProductCategoryInfoByWorkingUnitIdRef {
  _ProductCategoryInfoByWorkingUnitIdProviderElement(super.provider);

  @override
  String get workingUnitId =>
      (origin as ProductCategoryInfoByWorkingUnitIdProvider).workingUnitId;
}

String _$productQuantityInfoHash() =>
    r'e209fceb482d292759df5ddaafb61f5f78144692';

/// See also [productQuantityInfo].
@ProviderFor(productQuantityInfo)
final productQuantityInfoProvider =
    AutoDisposeFutureProvider<List<ProductQuantityInfoModel>>.internal(
  productQuantityInfo,
  name: r'productQuantityInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productQuantityInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductQuantityInfoRef
    = AutoDisposeFutureProviderRef<List<ProductQuantityInfoModel>>;
String _$productQuantityInfoByWarehouseHash() =>
    r'4bc791fb13624858a6eba7bf5e3dbda2bd924c17';

/// See also [productQuantityInfoByWarehouse].
@ProviderFor(productQuantityInfoByWarehouse)
const productQuantityInfoByWarehouseProvider =
    ProductQuantityInfoByWarehouseFamily();

/// See also [productQuantityInfoByWarehouse].
class ProductQuantityInfoByWarehouseFamily
    extends Family<AsyncValue<List<ProductQuantityInfoModel>>> {
  /// See also [productQuantityInfoByWarehouse].
  const ProductQuantityInfoByWarehouseFamily();

  /// See also [productQuantityInfoByWarehouse].
  ProductQuantityInfoByWarehouseProvider call(
    String workingUnitId,
  ) {
    return ProductQuantityInfoByWarehouseProvider(
      workingUnitId,
    );
  }

  @override
  ProductQuantityInfoByWarehouseProvider getProviderOverride(
    covariant ProductQuantityInfoByWarehouseProvider provider,
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
  String? get name => r'productQuantityInfoByWarehouseProvider';
}

/// See also [productQuantityInfoByWarehouse].
class ProductQuantityInfoByWarehouseProvider
    extends AutoDisposeFutureProvider<List<ProductQuantityInfoModel>> {
  /// See also [productQuantityInfoByWarehouse].
  ProductQuantityInfoByWarehouseProvider(
    String workingUnitId,
  ) : this._internal(
          (ref) => productQuantityInfoByWarehouse(
            ref as ProductQuantityInfoByWarehouseRef,
            workingUnitId,
          ),
          from: productQuantityInfoByWarehouseProvider,
          name: r'productQuantityInfoByWarehouseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productQuantityInfoByWarehouseHash,
          dependencies: ProductQuantityInfoByWarehouseFamily._dependencies,
          allTransitiveDependencies:
              ProductQuantityInfoByWarehouseFamily._allTransitiveDependencies,
          workingUnitId: workingUnitId,
        );

  ProductQuantityInfoByWarehouseProvider._internal(
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
    FutureOr<List<ProductQuantityInfoModel>> Function(
            ProductQuantityInfoByWarehouseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductQuantityInfoByWarehouseProvider._internal(
        (ref) => create(ref as ProductQuantityInfoByWarehouseRef),
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
  AutoDisposeFutureProviderElement<List<ProductQuantityInfoModel>>
      createElement() {
    return _ProductQuantityInfoByWarehouseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductQuantityInfoByWarehouseProvider &&
        other.workingUnitId == workingUnitId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workingUnitId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductQuantityInfoByWarehouseRef
    on AutoDisposeFutureProviderRef<List<ProductQuantityInfoModel>> {
  /// The parameter `workingUnitId` of this provider.
  String get workingUnitId;
}

class _ProductQuantityInfoByWarehouseProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductQuantityInfoModel>>
    with ProductQuantityInfoByWarehouseRef {
  _ProductQuantityInfoByWarehouseProviderElement(super.provider);

  @override
  String get workingUnitId =>
      (origin as ProductQuantityInfoByWarehouseProvider).workingUnitId;
}

String _$productQuantityInfoByProductCategoryHash() =>
    r'871cf6760f3578d2fc2202a995ff728e9a265be5';

/// See also [productQuantityInfoByProductCategory].
@ProviderFor(productQuantityInfoByProductCategory)
const productQuantityInfoByProductCategoryProvider =
    ProductQuantityInfoByProductCategoryFamily();

/// See also [productQuantityInfoByProductCategory].
class ProductQuantityInfoByProductCategoryFamily
    extends Family<AsyncValue<List<ProductQuantityInfoModel>>> {
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
    extends AutoDisposeFutureProvider<List<ProductQuantityInfoModel>> {
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
    FutureOr<List<ProductQuantityInfoModel>> Function(
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
  AutoDisposeFutureProviderElement<List<ProductQuantityInfoModel>>
      createElement() {
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
    on AutoDisposeFutureProviderRef<List<ProductQuantityInfoModel>> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _ProductQuantityInfoByProductCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductQuantityInfoModel>>
    with ProductQuantityInfoByProductCategoryRef {
  _ProductQuantityInfoByProductCategoryProviderElement(super.provider);

  @override
  String get categoryId =>
      (origin as ProductQuantityInfoByProductCategoryProvider).categoryId;
}

String _$productQuantitySummaryViewByProductHash() =>
    r'e288e031e1622630603159fcc181f6c50118c2e5';

/// See also [productQuantitySummaryViewByProduct].
@ProviderFor(productQuantitySummaryViewByProduct)
const productQuantitySummaryViewByProductProvider =
    ProductQuantitySummaryViewByProductFamily();

/// See also [productQuantitySummaryViewByProduct].
class ProductQuantitySummaryViewByProductFamily
    extends Family<AsyncValue<ProductQuantitySummaryView?>> {
  /// See also [productQuantitySummaryViewByProduct].
  const ProductQuantitySummaryViewByProductFamily();

  /// See also [productQuantitySummaryViewByProduct].
  ProductQuantitySummaryViewByProductProvider call(
    String productCategoryId,
  ) {
    return ProductQuantitySummaryViewByProductProvider(
      productCategoryId,
    );
  }

  @override
  ProductQuantitySummaryViewByProductProvider getProviderOverride(
    covariant ProductQuantitySummaryViewByProductProvider provider,
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
  String? get name => r'productQuantitySummaryViewByProductProvider';
}

/// See also [productQuantitySummaryViewByProduct].
class ProductQuantitySummaryViewByProductProvider
    extends AutoDisposeFutureProvider<ProductQuantitySummaryView?> {
  /// See also [productQuantitySummaryViewByProduct].
  ProductQuantitySummaryViewByProductProvider(
    String productCategoryId,
  ) : this._internal(
          (ref) => productQuantitySummaryViewByProduct(
            ref as ProductQuantitySummaryViewByProductRef,
            productCategoryId,
          ),
          from: productQuantitySummaryViewByProductProvider,
          name: r'productQuantitySummaryViewByProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productQuantitySummaryViewByProductHash,
          dependencies: ProductQuantitySummaryViewByProductFamily._dependencies,
          allTransitiveDependencies: ProductQuantitySummaryViewByProductFamily
              ._allTransitiveDependencies,
          productCategoryId: productCategoryId,
        );

  ProductQuantitySummaryViewByProductProvider._internal(
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
            ProductQuantitySummaryViewByProductRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductQuantitySummaryViewByProductProvider._internal(
        (ref) => create(ref as ProductQuantitySummaryViewByProductRef),
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
    return _ProductQuantitySummaryViewByProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductQuantitySummaryViewByProductProvider &&
        other.productCategoryId == productCategoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productCategoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductQuantitySummaryViewByProductRef
    on AutoDisposeFutureProviderRef<ProductQuantitySummaryView?> {
  /// The parameter `productCategoryId` of this provider.
  String get productCategoryId;
}

class _ProductQuantitySummaryViewByProductProviderElement
    extends AutoDisposeFutureProviderElement<ProductQuantitySummaryView?>
    with ProductQuantitySummaryViewByProductRef {
  _ProductQuantitySummaryViewByProductProviderElement(super.provider);

  @override
  String get productCategoryId =>
      (origin as ProductQuantitySummaryViewByProductProvider).productCategoryId;
}

String _$batchProductQuantitySummaryViewByProductHash() =>
    r'a9d53677fb5d28624631aaf9181b8eec6b70c2e4';

/// See also [batchProductQuantitySummaryViewByProduct].
@ProviderFor(batchProductQuantitySummaryViewByProduct)
const batchProductQuantitySummaryViewByProductProvider =
    BatchProductQuantitySummaryViewByProductFamily();

/// See also [batchProductQuantitySummaryViewByProduct].
class BatchProductQuantitySummaryViewByProductFamily
    extends Family<AsyncValue<List<ProductQuantitySummaryView?>>> {
  /// See also [batchProductQuantitySummaryViewByProduct].
  const BatchProductQuantitySummaryViewByProductFamily();

  /// See also [batchProductQuantitySummaryViewByProduct].
  BatchProductQuantitySummaryViewByProductProvider call(
    Iterable<String> productCategoryIds,
  ) {
    return BatchProductQuantitySummaryViewByProductProvider(
      productCategoryIds,
    );
  }

  @override
  BatchProductQuantitySummaryViewByProductProvider getProviderOverride(
    covariant BatchProductQuantitySummaryViewByProductProvider provider,
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
  String? get name => r'batchProductQuantitySummaryViewByProductProvider';
}

/// See also [batchProductQuantitySummaryViewByProduct].
class BatchProductQuantitySummaryViewByProductProvider
    extends AutoDisposeFutureProvider<List<ProductQuantitySummaryView?>> {
  /// See also [batchProductQuantitySummaryViewByProduct].
  BatchProductQuantitySummaryViewByProductProvider(
    Iterable<String> productCategoryIds,
  ) : this._internal(
          (ref) => batchProductQuantitySummaryViewByProduct(
            ref as BatchProductQuantitySummaryViewByProductRef,
            productCategoryIds,
          ),
          from: batchProductQuantitySummaryViewByProductProvider,
          name: r'batchProductQuantitySummaryViewByProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$batchProductQuantitySummaryViewByProductHash,
          dependencies:
              BatchProductQuantitySummaryViewByProductFamily._dependencies,
          allTransitiveDependencies:
              BatchProductQuantitySummaryViewByProductFamily
                  ._allTransitiveDependencies,
          productCategoryIds: productCategoryIds,
        );

  BatchProductQuantitySummaryViewByProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productCategoryIds,
  }) : super.internal();

  final Iterable<String> productCategoryIds;

  @override
  Override overrideWith(
    FutureOr<List<ProductQuantitySummaryView?>> Function(
            BatchProductQuantitySummaryViewByProductRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BatchProductQuantitySummaryViewByProductProvider._internal(
        (ref) => create(ref as BatchProductQuantitySummaryViewByProductRef),
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
    return _BatchProductQuantitySummaryViewByProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BatchProductQuantitySummaryViewByProductProvider &&
        other.productCategoryIds == productCategoryIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productCategoryIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BatchProductQuantitySummaryViewByProductRef
    on AutoDisposeFutureProviderRef<List<ProductQuantitySummaryView?>> {
  /// The parameter `productCategoryIds` of this provider.
  Iterable<String> get productCategoryIds;
}

class _BatchProductQuantitySummaryViewByProductProviderElement
    extends AutoDisposeFutureProviderElement<List<ProductQuantitySummaryView?>>
    with BatchProductQuantitySummaryViewByProductRef {
  _BatchProductQuantitySummaryViewByProductProviderElement(super.provider);

  @override
  Iterable<String> get productCategoryIds =>
      (origin as BatchProductQuantitySummaryViewByProductProvider)
          .productCategoryIds;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

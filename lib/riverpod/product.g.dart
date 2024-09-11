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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

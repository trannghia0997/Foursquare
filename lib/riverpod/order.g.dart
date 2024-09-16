// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allOrdersHash() => r'9265523171b7ba1d70aba8354177a07eb849bfbf';

/// See also [allOrders].
@ProviderFor(allOrders)
final allOrdersProvider = AutoDisposeFutureProvider<List<OrderDto>>.internal(
  allOrders,
  name: r'allOrdersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allOrdersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllOrdersRef = AutoDisposeFutureProviderRef<List<OrderDto>>;
String _$allOrderInfoHash() => r'135de7abc27059f592a7161c060c8c62c2f1907b';

/// See also [allOrderInfo].
@ProviderFor(allOrderInfo)
final allOrderInfoProvider =
    AutoDisposeFutureProvider<List<OrderInfo>>.internal(
  allOrderInfo,
  name: r'allOrderInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allOrderInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllOrderInfoRef = AutoDisposeFutureProviderRef<List<OrderInfo>>;
String _$singleOrderInfoHash() => r'fbff043851d738c500154fe258d8fa6b4765d4cf';

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

/// See also [singleOrderInfo].
@ProviderFor(singleOrderInfo)
const singleOrderInfoProvider = SingleOrderInfoFamily();

/// See also [singleOrderInfo].
class SingleOrderInfoFamily extends Family<AsyncValue<OrderInfo>> {
  /// See also [singleOrderInfo].
  const SingleOrderInfoFamily();

  /// See also [singleOrderInfo].
  SingleOrderInfoProvider call(
    String orderId,
  ) {
    return SingleOrderInfoProvider(
      orderId,
    );
  }

  @override
  SingleOrderInfoProvider getProviderOverride(
    covariant SingleOrderInfoProvider provider,
  ) {
    return call(
      provider.orderId,
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
  String? get name => r'singleOrderInfoProvider';
}

/// See also [singleOrderInfo].
class SingleOrderInfoProvider extends AutoDisposeFutureProvider<OrderInfo> {
  /// See also [singleOrderInfo].
  SingleOrderInfoProvider(
    String orderId,
  ) : this._internal(
          (ref) => singleOrderInfo(
            ref as SingleOrderInfoRef,
            orderId,
          ),
          from: singleOrderInfoProvider,
          name: r'singleOrderInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleOrderInfoHash,
          dependencies: SingleOrderInfoFamily._dependencies,
          allTransitiveDependencies:
              SingleOrderInfoFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  SingleOrderInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final String orderId;

  @override
  Override overrideWith(
    FutureOr<OrderInfo> Function(SingleOrderInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleOrderInfoProvider._internal(
        (ref) => create(ref as SingleOrderInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OrderInfo> createElement() {
    return _SingleOrderInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleOrderInfoProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleOrderInfoRef on AutoDisposeFutureProviderRef<OrderInfo> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _SingleOrderInfoProviderElement
    extends AutoDisposeFutureProviderElement<OrderInfo>
    with SingleOrderInfoRef {
  _SingleOrderInfoProviderElement(super.provider);

  @override
  String get orderId => (origin as SingleOrderInfoProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderHash() => r'270c5cab96b9b2e1446d74dc06ec751dc95bbae4';

/// See also [order].
@ProviderFor(order)
final orderProvider = AutoDisposeFutureProvider<List<OrderDto>>.internal(
  order,
  name: r'orderProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$orderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OrderRef = AutoDisposeFutureProviderRef<List<OrderDto>>;
String _$orderInfoHash() => r'a781576c4e55cec8dd4a3e61c66551b438733739';

/// See also [orderInfo].
@ProviderFor(orderInfo)
final orderInfoProvider =
    AutoDisposeFutureProvider<List<OrderInfoModel>>.internal(
  orderInfo,
  name: r'orderInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$orderInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OrderInfoRef = AutoDisposeFutureProviderRef<List<OrderInfoModel>>;
String _$singleOrderInfoHash() => r'84e3a961da4419fb86c2b1e8397ef17af8237eaf';

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
class SingleOrderInfoFamily extends Family<AsyncValue<OrderInfoModel>> {
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
class SingleOrderInfoProvider
    extends AutoDisposeFutureProvider<OrderInfoModel> {
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
    FutureOr<OrderInfoModel> Function(SingleOrderInfoRef provider) create,
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
  AutoDisposeFutureProviderElement<OrderInfoModel> createElement() {
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

mixin SingleOrderInfoRef on AutoDisposeFutureProviderRef<OrderInfoModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _SingleOrderInfoProviderElement
    extends AutoDisposeFutureProviderElement<OrderInfoModel>
    with SingleOrderInfoRef {
  _SingleOrderInfoProviderElement(super.provider);

  @override
  String get orderId => (origin as SingleOrderInfoProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

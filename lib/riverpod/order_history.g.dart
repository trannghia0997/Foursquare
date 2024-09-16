// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderHistoryByOrderHash() =>
    r'5a4c53dcc9c636e0a91302c1980063acd6cf1332';

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

/// See also [orderHistoryByOrder].
@ProviderFor(orderHistoryByOrder)
const orderHistoryByOrderProvider = OrderHistoryByOrderFamily();

/// See also [orderHistoryByOrder].
class OrderHistoryByOrderFamily
    extends Family<AsyncValue<List<OrderHistoryDto>>> {
  /// See also [orderHistoryByOrder].
  const OrderHistoryByOrderFamily();

  /// See also [orderHistoryByOrder].
  OrderHistoryByOrderProvider call(
    String orderId,
  ) {
    return OrderHistoryByOrderProvider(
      orderId,
    );
  }

  @override
  OrderHistoryByOrderProvider getProviderOverride(
    covariant OrderHistoryByOrderProvider provider,
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
  String? get name => r'orderHistoryByOrderProvider';
}

/// See also [orderHistoryByOrder].
class OrderHistoryByOrderProvider
    extends AutoDisposeFutureProvider<List<OrderHistoryDto>> {
  /// See also [orderHistoryByOrder].
  OrderHistoryByOrderProvider(
    String orderId,
  ) : this._internal(
          (ref) => orderHistoryByOrder(
            ref as OrderHistoryByOrderRef,
            orderId,
          ),
          from: orderHistoryByOrderProvider,
          name: r'orderHistoryByOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderHistoryByOrderHash,
          dependencies: OrderHistoryByOrderFamily._dependencies,
          allTransitiveDependencies:
              OrderHistoryByOrderFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  OrderHistoryByOrderProvider._internal(
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
    FutureOr<List<OrderHistoryDto>> Function(OrderHistoryByOrderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OrderHistoryByOrderProvider._internal(
        (ref) => create(ref as OrderHistoryByOrderRef),
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
  AutoDisposeFutureProviderElement<List<OrderHistoryDto>> createElement() {
    return _OrderHistoryByOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderHistoryByOrderProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OrderHistoryByOrderRef
    on AutoDisposeFutureProviderRef<List<OrderHistoryDto>> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _OrderHistoryByOrderProviderElement
    extends AutoDisposeFutureProviderElement<List<OrderHistoryDto>>
    with OrderHistoryByOrderRef {
  _OrderHistoryByOrderProviderElement(super.provider);

  @override
  String get orderId => (origin as OrderHistoryByOrderProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

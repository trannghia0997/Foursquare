// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderHistoryHash() => r'bec8941e841ff3c0ad31a9841410feeeef3c0129';

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

/// See also [orderHistory].
@ProviderFor(orderHistory)
const orderHistoryProvider = OrderHistoryFamily();

/// See also [orderHistory].
class OrderHistoryFamily extends Family<AsyncValue<List<OrderHistoryDto>>> {
  /// See also [orderHistory].
  const OrderHistoryFamily();

  /// See also [orderHistory].
  OrderHistoryProvider call(
    String orderId,
  ) {
    return OrderHistoryProvider(
      orderId,
    );
  }

  @override
  OrderHistoryProvider getProviderOverride(
    covariant OrderHistoryProvider provider,
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
  String? get name => r'orderHistoryProvider';
}

/// See also [orderHistory].
class OrderHistoryProvider
    extends AutoDisposeFutureProvider<List<OrderHistoryDto>> {
  /// See also [orderHistory].
  OrderHistoryProvider(
    String orderId,
  ) : this._internal(
          (ref) => orderHistory(
            ref as OrderHistoryRef,
            orderId,
          ),
          from: orderHistoryProvider,
          name: r'orderHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderHistoryHash,
          dependencies: OrderHistoryFamily._dependencies,
          allTransitiveDependencies:
              OrderHistoryFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  OrderHistoryProvider._internal(
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
    FutureOr<List<OrderHistoryDto>> Function(OrderHistoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OrderHistoryProvider._internal(
        (ref) => create(ref as OrderHistoryRef),
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
    return _OrderHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderHistoryProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OrderHistoryRef on AutoDisposeFutureProviderRef<List<OrderHistoryDto>> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _OrderHistoryProviderElement
    extends AutoDisposeFutureProviderElement<List<OrderHistoryDto>>
    with OrderHistoryRef {
  _OrderHistoryProviderElement(super.provider);

  @override
  String get orderId => (origin as OrderHistoryProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

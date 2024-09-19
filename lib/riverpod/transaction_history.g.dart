// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderHistoryByOrderHash() =>
    r'8c428e380b395aa6a704803da9a54606616631de';

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
    extends Family<AsyncValue<List<TransactionHistoryDto>>> {
  /// See also [orderHistoryByOrder].
  const OrderHistoryByOrderFamily();

  /// See also [orderHistoryByOrder].
  OrderHistoryByOrderProvider call({
    required String entityType,
    required String entityId,
  }) {
    return OrderHistoryByOrderProvider(
      entityType: entityType,
      entityId: entityId,
    );
  }

  @override
  OrderHistoryByOrderProvider getProviderOverride(
    covariant OrderHistoryByOrderProvider provider,
  ) {
    return call(
      entityType: provider.entityType,
      entityId: provider.entityId,
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
    extends AutoDisposeFutureProvider<List<TransactionHistoryDto>> {
  /// See also [orderHistoryByOrder].
  OrderHistoryByOrderProvider({
    required String entityType,
    required String entityId,
  }) : this._internal(
          (ref) => orderHistoryByOrder(
            ref as OrderHistoryByOrderRef,
            entityType: entityType,
            entityId: entityId,
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
          entityType: entityType,
          entityId: entityId,
        );

  OrderHistoryByOrderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.entityType,
    required this.entityId,
  }) : super.internal();

  final String entityType;
  final String entityId;

  @override
  Override overrideWith(
    FutureOr<List<TransactionHistoryDto>> Function(
            OrderHistoryByOrderRef provider)
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
        entityType: entityType,
        entityId: entityId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TransactionHistoryDto>>
      createElement() {
    return _OrderHistoryByOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderHistoryByOrderProvider &&
        other.entityType == entityType &&
        other.entityId == entityId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, entityType.hashCode);
    hash = _SystemHash.combine(hash, entityId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OrderHistoryByOrderRef
    on AutoDisposeFutureProviderRef<List<TransactionHistoryDto>> {
  /// The parameter `entityType` of this provider.
  String get entityType;

  /// The parameter `entityId` of this provider.
  String get entityId;
}

class _OrderHistoryByOrderProviderElement
    extends AutoDisposeFutureProviderElement<List<TransactionHistoryDto>>
    with OrderHistoryByOrderRef {
  _OrderHistoryByOrderProviderElement(super.provider);

  @override
  String get entityType => (origin as OrderHistoryByOrderProvider).entityType;
  @override
  String get entityId => (origin as OrderHistoryByOrderProvider).entityId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

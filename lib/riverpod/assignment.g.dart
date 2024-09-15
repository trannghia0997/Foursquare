// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$warehouseAssignmentInfoByUserIdHash() =>
    r'227c43da2f0dede3cef377a68aada57deca8aab8';

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

/// See also [warehouseAssignmentInfoByUserId].
@ProviderFor(warehouseAssignmentInfoByUserId)
const warehouseAssignmentInfoByUserIdProvider =
    WarehouseAssignmentInfoByUserIdFamily();

/// See also [warehouseAssignmentInfoByUserId].
class WarehouseAssignmentInfoByUserIdFamily
    extends Family<AsyncValue<List<WarehouseAssignmentInfo>>> {
  /// See also [warehouseAssignmentInfoByUserId].
  const WarehouseAssignmentInfoByUserIdFamily();

  /// See also [warehouseAssignmentInfoByUserId].
  WarehouseAssignmentInfoByUserIdProvider call(
    String userId,
  ) {
    return WarehouseAssignmentInfoByUserIdProvider(
      userId,
    );
  }

  @override
  WarehouseAssignmentInfoByUserIdProvider getProviderOverride(
    covariant WarehouseAssignmentInfoByUserIdProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'warehouseAssignmentInfoByUserIdProvider';
}

/// See also [warehouseAssignmentInfoByUserId].
class WarehouseAssignmentInfoByUserIdProvider
    extends AutoDisposeFutureProvider<List<WarehouseAssignmentInfo>> {
  /// See also [warehouseAssignmentInfoByUserId].
  WarehouseAssignmentInfoByUserIdProvider(
    String userId,
  ) : this._internal(
          (ref) => warehouseAssignmentInfoByUserId(
            ref as WarehouseAssignmentInfoByUserIdRef,
            userId,
          ),
          from: warehouseAssignmentInfoByUserIdProvider,
          name: r'warehouseAssignmentInfoByUserIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$warehouseAssignmentInfoByUserIdHash,
          dependencies: WarehouseAssignmentInfoByUserIdFamily._dependencies,
          allTransitiveDependencies:
              WarehouseAssignmentInfoByUserIdFamily._allTransitiveDependencies,
          userId: userId,
        );

  WarehouseAssignmentInfoByUserIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<List<WarehouseAssignmentInfo>> Function(
            WarehouseAssignmentInfoByUserIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WarehouseAssignmentInfoByUserIdProvider._internal(
        (ref) => create(ref as WarehouseAssignmentInfoByUserIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<WarehouseAssignmentInfo>>
      createElement() {
    return _WarehouseAssignmentInfoByUserIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WarehouseAssignmentInfoByUserIdProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WarehouseAssignmentInfoByUserIdRef
    on AutoDisposeFutureProviderRef<List<WarehouseAssignmentInfo>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _WarehouseAssignmentInfoByUserIdProviderElement
    extends AutoDisposeFutureProviderElement<List<WarehouseAssignmentInfo>>
    with WarehouseAssignmentInfoByUserIdRef {
  _WarehouseAssignmentInfoByUserIdProviderElement(super.provider);

  @override
  String get userId =>
      (origin as WarehouseAssignmentInfoByUserIdProvider).userId;
}

String _$shipmentAssignmentInfoByUserIdHash() =>
    r'55c593ecbcbfed9bb4c94564d942fed627bc788b';

/// See also [shipmentAssignmentInfoByUserId].
@ProviderFor(shipmentAssignmentInfoByUserId)
const shipmentAssignmentInfoByUserIdProvider =
    ShipmentAssignmentInfoByUserIdFamily();

/// See also [shipmentAssignmentInfoByUserId].
class ShipmentAssignmentInfoByUserIdFamily
    extends Family<AsyncValue<List<ShipmentAssignmentInfo>>> {
  /// See also [shipmentAssignmentInfoByUserId].
  const ShipmentAssignmentInfoByUserIdFamily();

  /// See also [shipmentAssignmentInfoByUserId].
  ShipmentAssignmentInfoByUserIdProvider call(
    String userId,
  ) {
    return ShipmentAssignmentInfoByUserIdProvider(
      userId,
    );
  }

  @override
  ShipmentAssignmentInfoByUserIdProvider getProviderOverride(
    covariant ShipmentAssignmentInfoByUserIdProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'shipmentAssignmentInfoByUserIdProvider';
}

/// See also [shipmentAssignmentInfoByUserId].
class ShipmentAssignmentInfoByUserIdProvider
    extends AutoDisposeFutureProvider<List<ShipmentAssignmentInfo>> {
  /// See also [shipmentAssignmentInfoByUserId].
  ShipmentAssignmentInfoByUserIdProvider(
    String userId,
  ) : this._internal(
          (ref) => shipmentAssignmentInfoByUserId(
            ref as ShipmentAssignmentInfoByUserIdRef,
            userId,
          ),
          from: shipmentAssignmentInfoByUserIdProvider,
          name: r'shipmentAssignmentInfoByUserIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shipmentAssignmentInfoByUserIdHash,
          dependencies: ShipmentAssignmentInfoByUserIdFamily._dependencies,
          allTransitiveDependencies:
              ShipmentAssignmentInfoByUserIdFamily._allTransitiveDependencies,
          userId: userId,
        );

  ShipmentAssignmentInfoByUserIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<List<ShipmentAssignmentInfo>> Function(
            ShipmentAssignmentInfoByUserIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShipmentAssignmentInfoByUserIdProvider._internal(
        (ref) => create(ref as ShipmentAssignmentInfoByUserIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ShipmentAssignmentInfo>>
      createElement() {
    return _ShipmentAssignmentInfoByUserIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShipmentAssignmentInfoByUserIdProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShipmentAssignmentInfoByUserIdRef
    on AutoDisposeFutureProviderRef<List<ShipmentAssignmentInfo>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ShipmentAssignmentInfoByUserIdProviderElement
    extends AutoDisposeFutureProviderElement<List<ShipmentAssignmentInfo>>
    with ShipmentAssignmentInfoByUserIdRef {
  _ShipmentAssignmentInfoByUserIdProviderElement(super.provider);

  @override
  String get userId =>
      (origin as ShipmentAssignmentInfoByUserIdProvider).userId;
}

String _$assignmentInfoByOrderHash() =>
    r'9dd51bb6a512f2fe7ce99d9ece0ceeb1ec88c038';

/// See also [assignmentInfoByOrder].
@ProviderFor(assignmentInfoByOrder)
const assignmentInfoByOrderProvider = AssignmentInfoByOrderFamily();

/// See also [assignmentInfoByOrder].
class AssignmentInfoByOrderFamily extends Family<
    AsyncValue<(List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)>> {
  /// See also [assignmentInfoByOrder].
  const AssignmentInfoByOrderFamily();

  /// See also [assignmentInfoByOrder].
  AssignmentInfoByOrderProvider call(
    String orderId,
  ) {
    return AssignmentInfoByOrderProvider(
      orderId,
    );
  }

  @override
  AssignmentInfoByOrderProvider getProviderOverride(
    covariant AssignmentInfoByOrderProvider provider,
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
  String? get name => r'assignmentInfoByOrderProvider';
}

/// See also [assignmentInfoByOrder].
class AssignmentInfoByOrderProvider extends AutoDisposeFutureProvider<
    (List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)> {
  /// See also [assignmentInfoByOrder].
  AssignmentInfoByOrderProvider(
    String orderId,
  ) : this._internal(
          (ref) => assignmentInfoByOrder(
            ref as AssignmentInfoByOrderRef,
            orderId,
          ),
          from: assignmentInfoByOrderProvider,
          name: r'assignmentInfoByOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assignmentInfoByOrderHash,
          dependencies: AssignmentInfoByOrderFamily._dependencies,
          allTransitiveDependencies:
              AssignmentInfoByOrderFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  AssignmentInfoByOrderProvider._internal(
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
    FutureOr<(List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)>
            Function(AssignmentInfoByOrderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AssignmentInfoByOrderProvider._internal(
        (ref) => create(ref as AssignmentInfoByOrderRef),
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
  AutoDisposeFutureProviderElement<
          (List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)>
      createElement() {
    return _AssignmentInfoByOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssignmentInfoByOrderProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssignmentInfoByOrderRef on AutoDisposeFutureProviderRef<
    (List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _AssignmentInfoByOrderProviderElement
    extends AutoDisposeFutureProviderElement<
        (List<WarehouseAssignmentInfo>, List<ShipmentAssignmentInfo>)>
    with AssignmentInfoByOrderRef {
  _AssignmentInfoByOrderProviderElement(super.provider);

  @override
  String get orderId => (origin as AssignmentInfoByOrderProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

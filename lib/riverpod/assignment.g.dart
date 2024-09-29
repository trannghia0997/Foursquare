// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$warehouseAssignmentInfoByUserHash() =>
    r'c22038e96dea4d2e88d95d029b2b452f47bf2b45';

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

/// See also [warehouseAssignmentInfoByUser].
@ProviderFor(warehouseAssignmentInfoByUser)
const warehouseAssignmentInfoByUserProvider =
    WarehouseAssignmentInfoByUserFamily();

/// See also [warehouseAssignmentInfoByUser].
class WarehouseAssignmentInfoByUserFamily
    extends Family<AsyncValue<List<WarehouseAssignmentInfo>>> {
  /// See also [warehouseAssignmentInfoByUser].
  const WarehouseAssignmentInfoByUserFamily();

  /// See also [warehouseAssignmentInfoByUser].
  WarehouseAssignmentInfoByUserProvider call(
    String userId,
  ) {
    return WarehouseAssignmentInfoByUserProvider(
      userId,
    );
  }

  @override
  WarehouseAssignmentInfoByUserProvider getProviderOverride(
    covariant WarehouseAssignmentInfoByUserProvider provider,
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
  String? get name => r'warehouseAssignmentInfoByUserProvider';
}

/// See also [warehouseAssignmentInfoByUser].
class WarehouseAssignmentInfoByUserProvider
    extends AutoDisposeFutureProvider<List<WarehouseAssignmentInfo>> {
  /// See also [warehouseAssignmentInfoByUser].
  WarehouseAssignmentInfoByUserProvider(
    String userId,
  ) : this._internal(
          (ref) => warehouseAssignmentInfoByUser(
            ref as WarehouseAssignmentInfoByUserRef,
            userId,
          ),
          from: warehouseAssignmentInfoByUserProvider,
          name: r'warehouseAssignmentInfoByUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$warehouseAssignmentInfoByUserHash,
          dependencies: WarehouseAssignmentInfoByUserFamily._dependencies,
          allTransitiveDependencies:
              WarehouseAssignmentInfoByUserFamily._allTransitiveDependencies,
          userId: userId,
        );

  WarehouseAssignmentInfoByUserProvider._internal(
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
            WarehouseAssignmentInfoByUserRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WarehouseAssignmentInfoByUserProvider._internal(
        (ref) => create(ref as WarehouseAssignmentInfoByUserRef),
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
    return _WarehouseAssignmentInfoByUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WarehouseAssignmentInfoByUserProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WarehouseAssignmentInfoByUserRef
    on AutoDisposeFutureProviderRef<List<WarehouseAssignmentInfo>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _WarehouseAssignmentInfoByUserProviderElement
    extends AutoDisposeFutureProviderElement<List<WarehouseAssignmentInfo>>
    with WarehouseAssignmentInfoByUserRef {
  _WarehouseAssignmentInfoByUserProviderElement(super.provider);

  @override
  String get userId => (origin as WarehouseAssignmentInfoByUserProvider).userId;
}

String _$shipmentAssignmentInfoByUserHash() =>
    r'2ebb5673b3d6b3708f6807616e9daaad301c90ed';

/// See also [shipmentAssignmentInfoByUser].
@ProviderFor(shipmentAssignmentInfoByUser)
const shipmentAssignmentInfoByUserProvider =
    ShipmentAssignmentInfoByUserFamily();

/// See also [shipmentAssignmentInfoByUser].
class ShipmentAssignmentInfoByUserFamily
    extends Family<AsyncValue<List<ShipmentAssignmentInfo>>> {
  /// See also [shipmentAssignmentInfoByUser].
  const ShipmentAssignmentInfoByUserFamily();

  /// See also [shipmentAssignmentInfoByUser].
  ShipmentAssignmentInfoByUserProvider call(
    String userId,
  ) {
    return ShipmentAssignmentInfoByUserProvider(
      userId,
    );
  }

  @override
  ShipmentAssignmentInfoByUserProvider getProviderOverride(
    covariant ShipmentAssignmentInfoByUserProvider provider,
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
  String? get name => r'shipmentAssignmentInfoByUserProvider';
}

/// See also [shipmentAssignmentInfoByUser].
class ShipmentAssignmentInfoByUserProvider
    extends AutoDisposeFutureProvider<List<ShipmentAssignmentInfo>> {
  /// See also [shipmentAssignmentInfoByUser].
  ShipmentAssignmentInfoByUserProvider(
    String userId,
  ) : this._internal(
          (ref) => shipmentAssignmentInfoByUser(
            ref as ShipmentAssignmentInfoByUserRef,
            userId,
          ),
          from: shipmentAssignmentInfoByUserProvider,
          name: r'shipmentAssignmentInfoByUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shipmentAssignmentInfoByUserHash,
          dependencies: ShipmentAssignmentInfoByUserFamily._dependencies,
          allTransitiveDependencies:
              ShipmentAssignmentInfoByUserFamily._allTransitiveDependencies,
          userId: userId,
        );

  ShipmentAssignmentInfoByUserProvider._internal(
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
            ShipmentAssignmentInfoByUserRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShipmentAssignmentInfoByUserProvider._internal(
        (ref) => create(ref as ShipmentAssignmentInfoByUserRef),
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
    return _ShipmentAssignmentInfoByUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShipmentAssignmentInfoByUserProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShipmentAssignmentInfoByUserRef
    on AutoDisposeFutureProviderRef<List<ShipmentAssignmentInfo>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ShipmentAssignmentInfoByUserProviderElement
    extends AutoDisposeFutureProviderElement<List<ShipmentAssignmentInfo>>
    with ShipmentAssignmentInfoByUserRef {
  _ShipmentAssignmentInfoByUserProviderElement(super.provider);

  @override
  String get userId => (origin as ShipmentAssignmentInfoByUserProvider).userId;
}

String _$assignmentInfoByOrderHash() =>
    r'11e1a8303264d1d03e2925c0bd9507c5b633796b';

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

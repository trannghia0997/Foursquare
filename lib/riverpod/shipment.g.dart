// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$briefShipmentInfoByOrderIdHash() =>
    r'd00b865668bcdc38118937143cfd8e215bcb4d16';

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

/// See also [briefShipmentInfoByOrderId].
@ProviderFor(briefShipmentInfoByOrderId)
const briefShipmentInfoByOrderIdProvider = BriefShipmentInfoByOrderIdFamily();

/// See also [briefShipmentInfoByOrderId].
class BriefShipmentInfoByOrderIdFamily
    extends Family<AsyncValue<List<BriefShipmentInfo>>> {
  /// See also [briefShipmentInfoByOrderId].
  const BriefShipmentInfoByOrderIdFamily();

  /// See also [briefShipmentInfoByOrderId].
  BriefShipmentInfoByOrderIdProvider call(
    String orderId,
  ) {
    return BriefShipmentInfoByOrderIdProvider(
      orderId,
    );
  }

  @override
  BriefShipmentInfoByOrderIdProvider getProviderOverride(
    covariant BriefShipmentInfoByOrderIdProvider provider,
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
  String? get name => r'briefShipmentInfoByOrderIdProvider';
}

/// See also [briefShipmentInfoByOrderId].
class BriefShipmentInfoByOrderIdProvider
    extends AutoDisposeFutureProvider<List<BriefShipmentInfo>> {
  /// See also [briefShipmentInfoByOrderId].
  BriefShipmentInfoByOrderIdProvider(
    String orderId,
  ) : this._internal(
          (ref) => briefShipmentInfoByOrderId(
            ref as BriefShipmentInfoByOrderIdRef,
            orderId,
          ),
          from: briefShipmentInfoByOrderIdProvider,
          name: r'briefShipmentInfoByOrderIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$briefShipmentInfoByOrderIdHash,
          dependencies: BriefShipmentInfoByOrderIdFamily._dependencies,
          allTransitiveDependencies:
              BriefShipmentInfoByOrderIdFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  BriefShipmentInfoByOrderIdProvider._internal(
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
    FutureOr<List<BriefShipmentInfo>> Function(
            BriefShipmentInfoByOrderIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BriefShipmentInfoByOrderIdProvider._internal(
        (ref) => create(ref as BriefShipmentInfoByOrderIdRef),
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
  AutoDisposeFutureProviderElement<List<BriefShipmentInfo>> createElement() {
    return _BriefShipmentInfoByOrderIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BriefShipmentInfoByOrderIdProvider &&
        other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BriefShipmentInfoByOrderIdRef
    on AutoDisposeFutureProviderRef<List<BriefShipmentInfo>> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _BriefShipmentInfoByOrderIdProviderElement
    extends AutoDisposeFutureProviderElement<List<BriefShipmentInfo>>
    with BriefShipmentInfoByOrderIdRef {
  _BriefShipmentInfoByOrderIdProviderElement(super.provider);

  @override
  String get orderId => (origin as BriefShipmentInfoByOrderIdProvider).orderId;
}

String _$singleShipmentInfoHash() =>
    r'1e1c3130a4a91399dfbd3c854a3feaa3e3d50496';

/// See also [singleShipmentInfo].
@ProviderFor(singleShipmentInfo)
const singleShipmentInfoProvider = SingleShipmentInfoFamily();

/// See also [singleShipmentInfo].
class SingleShipmentInfoFamily extends Family<AsyncValue<ShipmentInfo>> {
  /// See also [singleShipmentInfo].
  const SingleShipmentInfoFamily();

  /// See also [singleShipmentInfo].
  SingleShipmentInfoProvider call(
    String shipmentId,
  ) {
    return SingleShipmentInfoProvider(
      shipmentId,
    );
  }

  @override
  SingleShipmentInfoProvider getProviderOverride(
    covariant SingleShipmentInfoProvider provider,
  ) {
    return call(
      provider.shipmentId,
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
  String? get name => r'singleShipmentInfoProvider';
}

/// See also [singleShipmentInfo].
class SingleShipmentInfoProvider
    extends AutoDisposeFutureProvider<ShipmentInfo> {
  /// See also [singleShipmentInfo].
  SingleShipmentInfoProvider(
    String shipmentId,
  ) : this._internal(
          (ref) => singleShipmentInfo(
            ref as SingleShipmentInfoRef,
            shipmentId,
          ),
          from: singleShipmentInfoProvider,
          name: r'singleShipmentInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleShipmentInfoHash,
          dependencies: SingleShipmentInfoFamily._dependencies,
          allTransitiveDependencies:
              SingleShipmentInfoFamily._allTransitiveDependencies,
          shipmentId: shipmentId,
        );

  SingleShipmentInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.shipmentId,
  }) : super.internal();

  final String shipmentId;

  @override
  Override overrideWith(
    FutureOr<ShipmentInfo> Function(SingleShipmentInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleShipmentInfoProvider._internal(
        (ref) => create(ref as SingleShipmentInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        shipmentId: shipmentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ShipmentInfo> createElement() {
    return _SingleShipmentInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleShipmentInfoProvider &&
        other.shipmentId == shipmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, shipmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleShipmentInfoRef on AutoDisposeFutureProviderRef<ShipmentInfo> {
  /// The parameter `shipmentId` of this provider.
  String get shipmentId;
}

class _SingleShipmentInfoProviderElement
    extends AutoDisposeFutureProviderElement<ShipmentInfo>
    with SingleShipmentInfoRef {
  _SingleShipmentInfoProviderElement(super.provider);

  @override
  String get shipmentId => (origin as SingleShipmentInfoProvider).shipmentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

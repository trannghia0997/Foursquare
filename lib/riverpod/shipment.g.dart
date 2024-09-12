// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shipmentInfoHash() => r'd00ce528645a9de7bc593a41e7f860e496d77ec5';

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

/// See also [shipmentInfo].
@ProviderFor(shipmentInfo)
const shipmentInfoProvider = ShipmentInfoFamily();

/// See also [shipmentInfo].
class ShipmentInfoFamily extends Family<AsyncValue<ShipmentInfoModel>> {
  /// See also [shipmentInfo].
  const ShipmentInfoFamily();

  /// See also [shipmentInfo].
  ShipmentInfoProvider call(
    String shipmentId,
  ) {
    return ShipmentInfoProvider(
      shipmentId,
    );
  }

  @override
  ShipmentInfoProvider getProviderOverride(
    covariant ShipmentInfoProvider provider,
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
  String? get name => r'shipmentInfoProvider';
}

/// See also [shipmentInfo].
class ShipmentInfoProvider
    extends AutoDisposeFutureProvider<ShipmentInfoModel> {
  /// See also [shipmentInfo].
  ShipmentInfoProvider(
    String shipmentId,
  ) : this._internal(
          (ref) => shipmentInfo(
            ref as ShipmentInfoRef,
            shipmentId,
          ),
          from: shipmentInfoProvider,
          name: r'shipmentInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shipmentInfoHash,
          dependencies: ShipmentInfoFamily._dependencies,
          allTransitiveDependencies:
              ShipmentInfoFamily._allTransitiveDependencies,
          shipmentId: shipmentId,
        );

  ShipmentInfoProvider._internal(
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
    FutureOr<ShipmentInfoModel> Function(ShipmentInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShipmentInfoProvider._internal(
        (ref) => create(ref as ShipmentInfoRef),
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
  AutoDisposeFutureProviderElement<ShipmentInfoModel> createElement() {
    return _ShipmentInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShipmentInfoProvider && other.shipmentId == shipmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, shipmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShipmentInfoRef on AutoDisposeFutureProviderRef<ShipmentInfoModel> {
  /// The parameter `shipmentId` of this provider.
  String get shipmentId;
}

class _ShipmentInfoProviderElement
    extends AutoDisposeFutureProviderElement<ShipmentInfoModel>
    with ShipmentInfoRef {
  _ShipmentInfoProviderElement(super.provider);

  @override
  String get shipmentId => (origin as ShipmentInfoProvider).shipmentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

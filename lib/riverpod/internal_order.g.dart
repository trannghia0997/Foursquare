// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$internalOrderInfoByOrderIdHash() =>
    r'24262aba40f118ea8e22a0f290095cf944a34695';

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

/// See also [internalOrderInfoByOrderId].
@ProviderFor(internalOrderInfoByOrderId)
const internalOrderInfoByOrderIdProvider = InternalOrderInfoByOrderIdFamily();

/// See also [internalOrderInfoByOrderId].
class InternalOrderInfoByOrderIdFamily
    extends Family<AsyncValue<List<InternalOrderInfo>>> {
  /// See also [internalOrderInfoByOrderId].
  const InternalOrderInfoByOrderIdFamily();

  /// See also [internalOrderInfoByOrderId].
  InternalOrderInfoByOrderIdProvider call(
    String orderId,
  ) {
    return InternalOrderInfoByOrderIdProvider(
      orderId,
    );
  }

  @override
  InternalOrderInfoByOrderIdProvider getProviderOverride(
    covariant InternalOrderInfoByOrderIdProvider provider,
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
  String? get name => r'internalOrderInfoByOrderIdProvider';
}

/// See also [internalOrderInfoByOrderId].
class InternalOrderInfoByOrderIdProvider
    extends AutoDisposeFutureProvider<List<InternalOrderInfo>> {
  /// See also [internalOrderInfoByOrderId].
  InternalOrderInfoByOrderIdProvider(
    String orderId,
  ) : this._internal(
          (ref) => internalOrderInfoByOrderId(
            ref as InternalOrderInfoByOrderIdRef,
            orderId,
          ),
          from: internalOrderInfoByOrderIdProvider,
          name: r'internalOrderInfoByOrderIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$internalOrderInfoByOrderIdHash,
          dependencies: InternalOrderInfoByOrderIdFamily._dependencies,
          allTransitiveDependencies:
              InternalOrderInfoByOrderIdFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  InternalOrderInfoByOrderIdProvider._internal(
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
    FutureOr<List<InternalOrderInfo>> Function(
            InternalOrderInfoByOrderIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InternalOrderInfoByOrderIdProvider._internal(
        (ref) => create(ref as InternalOrderInfoByOrderIdRef),
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
  AutoDisposeFutureProviderElement<List<InternalOrderInfo>> createElement() {
    return _InternalOrderInfoByOrderIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InternalOrderInfoByOrderIdProvider &&
        other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InternalOrderInfoByOrderIdRef
    on AutoDisposeFutureProviderRef<List<InternalOrderInfo>> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _InternalOrderInfoByOrderIdProviderElement
    extends AutoDisposeFutureProviderElement<List<InternalOrderInfo>>
    with InternalOrderInfoByOrderIdRef {
  _InternalOrderInfoByOrderIdProviderElement(super.provider);

  @override
  String get orderId => (origin as InternalOrderInfoByOrderIdProvider).orderId;
}

String _$singleInternalOrderInfoHash() =>
    r'045f94ec699a37a6f6ab080a3f794a476aec5670';

/// See also [singleInternalOrderInfo].
@ProviderFor(singleInternalOrderInfo)
const singleInternalOrderInfoProvider = SingleInternalOrderInfoFamily();

/// See also [singleInternalOrderInfo].
class SingleInternalOrderInfoFamily
    extends Family<AsyncValue<InternalOrderInfo>> {
  /// See also [singleInternalOrderInfo].
  const SingleInternalOrderInfoFamily();

  /// See also [singleInternalOrderInfo].
  SingleInternalOrderInfoProvider call(
    String internalOrderId,
  ) {
    return SingleInternalOrderInfoProvider(
      internalOrderId,
    );
  }

  @override
  SingleInternalOrderInfoProvider getProviderOverride(
    covariant SingleInternalOrderInfoProvider provider,
  ) {
    return call(
      provider.internalOrderId,
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
  String? get name => r'singleInternalOrderInfoProvider';
}

/// See also [singleInternalOrderInfo].
class SingleInternalOrderInfoProvider
    extends AutoDisposeFutureProvider<InternalOrderInfo> {
  /// See also [singleInternalOrderInfo].
  SingleInternalOrderInfoProvider(
    String internalOrderId,
  ) : this._internal(
          (ref) => singleInternalOrderInfo(
            ref as SingleInternalOrderInfoRef,
            internalOrderId,
          ),
          from: singleInternalOrderInfoProvider,
          name: r'singleInternalOrderInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleInternalOrderInfoHash,
          dependencies: SingleInternalOrderInfoFamily._dependencies,
          allTransitiveDependencies:
              SingleInternalOrderInfoFamily._allTransitiveDependencies,
          internalOrderId: internalOrderId,
        );

  SingleInternalOrderInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.internalOrderId,
  }) : super.internal();

  final String internalOrderId;

  @override
  Override overrideWith(
    FutureOr<InternalOrderInfo> Function(SingleInternalOrderInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleInternalOrderInfoProvider._internal(
        (ref) => create(ref as SingleInternalOrderInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        internalOrderId: internalOrderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<InternalOrderInfo> createElement() {
    return _SingleInternalOrderInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleInternalOrderInfoProvider &&
        other.internalOrderId == internalOrderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, internalOrderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleInternalOrderInfoRef
    on AutoDisposeFutureProviderRef<InternalOrderInfo> {
  /// The parameter `internalOrderId` of this provider.
  String get internalOrderId;
}

class _SingleInternalOrderInfoProviderElement
    extends AutoDisposeFutureProviderElement<InternalOrderInfo>
    with SingleInternalOrderInfoRef {
  _SingleInternalOrderInfoProviderElement(super.provider);

  @override
  String get internalOrderId =>
      (origin as SingleInternalOrderInfoProvider).internalOrderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

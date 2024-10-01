// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$invoiceInfoByOrderIdHash() =>
    r'098929e0b645f2a9c067c1aa85e767f22ce8ccd2';

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

/// See also [invoiceInfoByOrderId].
@ProviderFor(invoiceInfoByOrderId)
const invoiceInfoByOrderIdProvider = InvoiceInfoByOrderIdFamily();

/// See also [invoiceInfoByOrderId].
class InvoiceInfoByOrderIdFamily extends Family<AsyncValue<List<InvoiceInfo>>> {
  /// See also [invoiceInfoByOrderId].
  const InvoiceInfoByOrderIdFamily();

  /// See also [invoiceInfoByOrderId].
  InvoiceInfoByOrderIdProvider call(
    String orderId,
  ) {
    return InvoiceInfoByOrderIdProvider(
      orderId,
    );
  }

  @override
  InvoiceInfoByOrderIdProvider getProviderOverride(
    covariant InvoiceInfoByOrderIdProvider provider,
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
  String? get name => r'invoiceInfoByOrderIdProvider';
}

/// See also [invoiceInfoByOrderId].
class InvoiceInfoByOrderIdProvider
    extends AutoDisposeFutureProvider<List<InvoiceInfo>> {
  /// See also [invoiceInfoByOrderId].
  InvoiceInfoByOrderIdProvider(
    String orderId,
  ) : this._internal(
          (ref) => invoiceInfoByOrderId(
            ref as InvoiceInfoByOrderIdRef,
            orderId,
          ),
          from: invoiceInfoByOrderIdProvider,
          name: r'invoiceInfoByOrderIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$invoiceInfoByOrderIdHash,
          dependencies: InvoiceInfoByOrderIdFamily._dependencies,
          allTransitiveDependencies:
              InvoiceInfoByOrderIdFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  InvoiceInfoByOrderIdProvider._internal(
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
    FutureOr<List<InvoiceInfo>> Function(InvoiceInfoByOrderIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InvoiceInfoByOrderIdProvider._internal(
        (ref) => create(ref as InvoiceInfoByOrderIdRef),
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
  AutoDisposeFutureProviderElement<List<InvoiceInfo>> createElement() {
    return _InvoiceInfoByOrderIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InvoiceInfoByOrderIdProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InvoiceInfoByOrderIdRef
    on AutoDisposeFutureProviderRef<List<InvoiceInfo>> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _InvoiceInfoByOrderIdProviderElement
    extends AutoDisposeFutureProviderElement<List<InvoiceInfo>>
    with InvoiceInfoByOrderIdRef {
  _InvoiceInfoByOrderIdProviderElement(super.provider);

  @override
  String get orderId => (origin as InvoiceInfoByOrderIdProvider).orderId;
}

String _$singleInvoiceInfoHash() => r'4fd29999bf031500a9628e049a516a67245154d3';

/// See also [singleInvoiceInfo].
@ProviderFor(singleInvoiceInfo)
const singleInvoiceInfoProvider = SingleInvoiceInfoFamily();

/// See also [singleInvoiceInfo].
class SingleInvoiceInfoFamily extends Family<AsyncValue<InvoiceInfo>> {
  /// See also [singleInvoiceInfo].
  const SingleInvoiceInfoFamily();

  /// See also [singleInvoiceInfo].
  SingleInvoiceInfoProvider call(
    String id,
  ) {
    return SingleInvoiceInfoProvider(
      id,
    );
  }

  @override
  SingleInvoiceInfoProvider getProviderOverride(
    covariant SingleInvoiceInfoProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'singleInvoiceInfoProvider';
}

/// See also [singleInvoiceInfo].
class SingleInvoiceInfoProvider extends AutoDisposeFutureProvider<InvoiceInfo> {
  /// See also [singleInvoiceInfo].
  SingleInvoiceInfoProvider(
    String id,
  ) : this._internal(
          (ref) => singleInvoiceInfo(
            ref as SingleInvoiceInfoRef,
            id,
          ),
          from: singleInvoiceInfoProvider,
          name: r'singleInvoiceInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleInvoiceInfoHash,
          dependencies: SingleInvoiceInfoFamily._dependencies,
          allTransitiveDependencies:
              SingleInvoiceInfoFamily._allTransitiveDependencies,
          id: id,
        );

  SingleInvoiceInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<InvoiceInfo> Function(SingleInvoiceInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleInvoiceInfoProvider._internal(
        (ref) => create(ref as SingleInvoiceInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<InvoiceInfo> createElement() {
    return _SingleInvoiceInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleInvoiceInfoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleInvoiceInfoRef on AutoDisposeFutureProviderRef<InvoiceInfo> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SingleInvoiceInfoProviderElement
    extends AutoDisposeFutureProviderElement<InvoiceInfo>
    with SingleInvoiceInfoRef {
  _SingleInvoiceInfoProviderElement(super.provider);

  @override
  String get id => (origin as SingleInvoiceInfoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

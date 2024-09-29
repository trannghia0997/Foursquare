// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$singleInternalOrderInfoHash() =>
    r'65431b2bf46b99bb865b0691a73068c100ebb79b';

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

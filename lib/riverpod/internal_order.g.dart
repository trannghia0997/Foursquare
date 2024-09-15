// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$internalOrderInfoHash() => r'c7c0a2ca6f31cfe80918009bc893b19225d89b73';

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

/// See also [internalOrderInfo].
@ProviderFor(internalOrderInfo)
const internalOrderInfoProvider = InternalOrderInfoFamily();

/// See also [internalOrderInfo].
class InternalOrderInfoFamily extends Family<AsyncValue<InternalOrderInfo>> {
  /// See also [internalOrderInfo].
  const InternalOrderInfoFamily();

  /// See also [internalOrderInfo].
  InternalOrderInfoProvider call(
    String internalOrderId,
  ) {
    return InternalOrderInfoProvider(
      internalOrderId,
    );
  }

  @override
  InternalOrderInfoProvider getProviderOverride(
    covariant InternalOrderInfoProvider provider,
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
  String? get name => r'internalOrderInfoProvider';
}

/// See also [internalOrderInfo].
class InternalOrderInfoProvider
    extends AutoDisposeFutureProvider<InternalOrderInfo> {
  /// See also [internalOrderInfo].
  InternalOrderInfoProvider(
    String internalOrderId,
  ) : this._internal(
          (ref) => internalOrderInfo(
            ref as InternalOrderInfoRef,
            internalOrderId,
          ),
          from: internalOrderInfoProvider,
          name: r'internalOrderInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$internalOrderInfoHash,
          dependencies: InternalOrderInfoFamily._dependencies,
          allTransitiveDependencies:
              InternalOrderInfoFamily._allTransitiveDependencies,
          internalOrderId: internalOrderId,
        );

  InternalOrderInfoProvider._internal(
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
    FutureOr<InternalOrderInfo> Function(InternalOrderInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InternalOrderInfoProvider._internal(
        (ref) => create(ref as InternalOrderInfoRef),
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
    return _InternalOrderInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InternalOrderInfoProvider &&
        other.internalOrderId == internalOrderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, internalOrderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InternalOrderInfoRef on AutoDisposeFutureProviderRef<InternalOrderInfo> {
  /// The parameter `internalOrderId` of this provider.
  String get internalOrderId;
}

class _InternalOrderInfoProviderElement
    extends AutoDisposeFutureProviderElement<InternalOrderInfo>
    with InternalOrderInfoRef {
  _InternalOrderInfoProviderElement(super.provider);

  @override
  String get internalOrderId =>
      (origin as InternalOrderInfoProvider).internalOrderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

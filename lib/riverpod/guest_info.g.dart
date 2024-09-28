// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$guestInfoSearchHash() => r'3bc3d02c658724e1e5443954df1e806d05993028';

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

/// See also [guestInfoSearch].
@ProviderFor(guestInfoSearch)
const guestInfoSearchProvider = GuestInfoSearchFamily();

/// See also [guestInfoSearch].
class GuestInfoSearchFamily extends Family<AsyncValue<List<GuestInfo>>> {
  /// See also [guestInfoSearch].
  const GuestInfoSearchFamily();

  /// See also [guestInfoSearch].
  GuestInfoSearchProvider call(
    String query,
  ) {
    return GuestInfoSearchProvider(
      query,
    );
  }

  @override
  GuestInfoSearchProvider getProviderOverride(
    covariant GuestInfoSearchProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'guestInfoSearchProvider';
}

/// See also [guestInfoSearch].
class GuestInfoSearchProvider
    extends AutoDisposeFutureProvider<List<GuestInfo>> {
  /// See also [guestInfoSearch].
  GuestInfoSearchProvider(
    String query,
  ) : this._internal(
          (ref) => guestInfoSearch(
            ref as GuestInfoSearchRef,
            query,
          ),
          from: guestInfoSearchProvider,
          name: r'guestInfoSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$guestInfoSearchHash,
          dependencies: GuestInfoSearchFamily._dependencies,
          allTransitiveDependencies:
              GuestInfoSearchFamily._allTransitiveDependencies,
          query: query,
        );

  GuestInfoSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<GuestInfo>> Function(GuestInfoSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GuestInfoSearchProvider._internal(
        (ref) => create(ref as GuestInfoSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GuestInfo>> createElement() {
    return _GuestInfoSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GuestInfoSearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GuestInfoSearchRef on AutoDisposeFutureProviderRef<List<GuestInfo>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _GuestInfoSearchProviderElement
    extends AutoDisposeFutureProviderElement<List<GuestInfo>>
    with GuestInfoSearchRef {
  _GuestInfoSearchProviderElement(super.provider);

  @override
  String get query => (origin as GuestInfoSearchProvider).query;
}

String _$singleGuestInfoOrNullHash() =>
    r'3663eb1386d3aa7cfa0db5dabde84d82e7445374';

/// See also [singleGuestInfoOrNull].
@ProviderFor(singleGuestInfoOrNull)
const singleGuestInfoOrNullProvider = SingleGuestInfoOrNullFamily();

/// See also [singleGuestInfoOrNull].
class SingleGuestInfoOrNullFamily extends Family<AsyncValue<GuestInfo?>> {
  /// See also [singleGuestInfoOrNull].
  const SingleGuestInfoOrNullFamily();

  /// See also [singleGuestInfoOrNull].
  SingleGuestInfoOrNullProvider call(
    String id,
  ) {
    return SingleGuestInfoOrNullProvider(
      id,
    );
  }

  @override
  SingleGuestInfoOrNullProvider getProviderOverride(
    covariant SingleGuestInfoOrNullProvider provider,
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
  String? get name => r'singleGuestInfoOrNullProvider';
}

/// See also [singleGuestInfoOrNull].
class SingleGuestInfoOrNullProvider
    extends AutoDisposeFutureProvider<GuestInfo?> {
  /// See also [singleGuestInfoOrNull].
  SingleGuestInfoOrNullProvider(
    String id,
  ) : this._internal(
          (ref) => singleGuestInfoOrNull(
            ref as SingleGuestInfoOrNullRef,
            id,
          ),
          from: singleGuestInfoOrNullProvider,
          name: r'singleGuestInfoOrNullProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleGuestInfoOrNullHash,
          dependencies: SingleGuestInfoOrNullFamily._dependencies,
          allTransitiveDependencies:
              SingleGuestInfoOrNullFamily._allTransitiveDependencies,
          id: id,
        );

  SingleGuestInfoOrNullProvider._internal(
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
    FutureOr<GuestInfo?> Function(SingleGuestInfoOrNullRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleGuestInfoOrNullProvider._internal(
        (ref) => create(ref as SingleGuestInfoOrNullRef),
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
  AutoDisposeFutureProviderElement<GuestInfo?> createElement() {
    return _SingleGuestInfoOrNullProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleGuestInfoOrNullProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleGuestInfoOrNullRef on AutoDisposeFutureProviderRef<GuestInfo?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SingleGuestInfoOrNullProviderElement
    extends AutoDisposeFutureProviderElement<GuestInfo?>
    with SingleGuestInfoOrNullRef {
  _SingleGuestInfoOrNullProviderElement(super.provider);

  @override
  String get id => (origin as SingleGuestInfoOrNullProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

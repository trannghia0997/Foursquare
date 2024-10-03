// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$singleStaffInfoHash() => r'0e0ad81647e2b335d8afb0a0849879c1c477468b';

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

/// See also [singleStaffInfo].
@ProviderFor(singleStaffInfo)
const singleStaffInfoProvider = SingleStaffInfoFamily();

/// See also [singleStaffInfo].
class SingleStaffInfoFamily extends Family<AsyncValue<StaffInfo>> {
  /// See also [singleStaffInfo].
  const SingleStaffInfoFamily();

  /// See also [singleStaffInfo].
  SingleStaffInfoProvider call(
    String id,
  ) {
    return SingleStaffInfoProvider(
      id,
    );
  }

  @override
  SingleStaffInfoProvider getProviderOverride(
    covariant SingleStaffInfoProvider provider,
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
  String? get name => r'singleStaffInfoProvider';
}

/// See also [singleStaffInfo].
class SingleStaffInfoProvider extends AutoDisposeFutureProvider<StaffInfo> {
  /// See also [singleStaffInfo].
  SingleStaffInfoProvider(
    String id,
  ) : this._internal(
          (ref) => singleStaffInfo(
            ref as SingleStaffInfoRef,
            id,
          ),
          from: singleStaffInfoProvider,
          name: r'singleStaffInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleStaffInfoHash,
          dependencies: SingleStaffInfoFamily._dependencies,
          allTransitiveDependencies:
              SingleStaffInfoFamily._allTransitiveDependencies,
          id: id,
        );

  SingleStaffInfoProvider._internal(
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
    FutureOr<StaffInfo> Function(SingleStaffInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleStaffInfoProvider._internal(
        (ref) => create(ref as SingleStaffInfoRef),
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
  AutoDisposeFutureProviderElement<StaffInfo> createElement() {
    return _SingleStaffInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleStaffInfoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleStaffInfoRef on AutoDisposeFutureProviderRef<StaffInfo> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SingleStaffInfoProviderElement
    extends AutoDisposeFutureProviderElement<StaffInfo>
    with SingleStaffInfoRef {
  _SingleStaffInfoProviderElement(super.provider);

  @override
  String get id => (origin as SingleStaffInfoProvider).id;
}

String _$staffInfoByUserHash() => r'0b2df020a5c62168e6f9576ede0ae0c003834efb';

/// See also [staffInfoByUser].
@ProviderFor(staffInfoByUser)
const staffInfoByUserProvider = StaffInfoByUserFamily();

/// See also [staffInfoByUser].
class StaffInfoByUserFamily extends Family<AsyncValue<StaffInfo>> {
  /// See also [staffInfoByUser].
  const StaffInfoByUserFamily();

  /// See also [staffInfoByUser].
  StaffInfoByUserProvider call(
    String userId,
  ) {
    return StaffInfoByUserProvider(
      userId,
    );
  }

  @override
  StaffInfoByUserProvider getProviderOverride(
    covariant StaffInfoByUserProvider provider,
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
  String? get name => r'staffInfoByUserProvider';
}

/// See also [staffInfoByUser].
class StaffInfoByUserProvider extends AutoDisposeFutureProvider<StaffInfo> {
  /// See also [staffInfoByUser].
  StaffInfoByUserProvider(
    String userId,
  ) : this._internal(
          (ref) => staffInfoByUser(
            ref as StaffInfoByUserRef,
            userId,
          ),
          from: staffInfoByUserProvider,
          name: r'staffInfoByUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$staffInfoByUserHash,
          dependencies: StaffInfoByUserFamily._dependencies,
          allTransitiveDependencies:
              StaffInfoByUserFamily._allTransitiveDependencies,
          userId: userId,
        );

  StaffInfoByUserProvider._internal(
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
    FutureOr<StaffInfo> Function(StaffInfoByUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StaffInfoByUserProvider._internal(
        (ref) => create(ref as StaffInfoByUserRef),
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
  AutoDisposeFutureProviderElement<StaffInfo> createElement() {
    return _StaffInfoByUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StaffInfoByUserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StaffInfoByUserRef on AutoDisposeFutureProviderRef<StaffInfo> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _StaffInfoByUserProviderElement
    extends AutoDisposeFutureProviderElement<StaffInfo>
    with StaffInfoByUserRef {
  _StaffInfoByUserProviderElement(super.provider);

  @override
  String get userId => (origin as StaffInfoByUserProvider).userId;
}

String _$allWarehouseAndDeliveryStaffHash() =>
    r'40e38f3674831c3e809b04e51357037a58832c6f';

/// See also [allWarehouseAndDeliveryStaff].
@ProviderFor(allWarehouseAndDeliveryStaff)
final allWarehouseAndDeliveryStaffProvider =
    AutoDisposeFutureProvider<List<StaffInfo>>.internal(
  allWarehouseAndDeliveryStaff,
  name: r'allWarehouseAndDeliveryStaffProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allWarehouseAndDeliveryStaffHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllWarehouseAndDeliveryStaffRef
    = AutoDisposeFutureProviderRef<List<StaffInfo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

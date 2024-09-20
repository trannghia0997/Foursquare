// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$staffInfoByUserHash() => r'a714b86c05d900c3f0e794242a1b7fe0b6a1c058';

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
    r'bdc0734faf6ff527c8c45d04166ab97de438fba2';

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

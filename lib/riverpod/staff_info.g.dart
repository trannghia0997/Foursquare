// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$staffInfoHash() => r'f817ad2c34973e6e4bdcdbb6626997ac8377b086';

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

/// See also [staffInfo].
@ProviderFor(staffInfo)
const staffInfoProvider = StaffInfoFamily();

/// See also [staffInfo].
class StaffInfoFamily extends Family<AsyncValue<StaffInfoModel>> {
  /// See also [staffInfo].
  const StaffInfoFamily();

  /// See also [staffInfo].
  StaffInfoProvider call(
    String userId,
  ) {
    return StaffInfoProvider(
      userId,
    );
  }

  @override
  StaffInfoProvider getProviderOverride(
    covariant StaffInfoProvider provider,
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
  String? get name => r'staffInfoProvider';
}

/// See also [staffInfo].
class StaffInfoProvider extends AutoDisposeFutureProvider<StaffInfoModel> {
  /// See also [staffInfo].
  StaffInfoProvider(
    String userId,
  ) : this._internal(
          (ref) => staffInfo(
            ref as StaffInfoRef,
            userId,
          ),
          from: staffInfoProvider,
          name: r'staffInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$staffInfoHash,
          dependencies: StaffInfoFamily._dependencies,
          allTransitiveDependencies: StaffInfoFamily._allTransitiveDependencies,
          userId: userId,
        );

  StaffInfoProvider._internal(
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
    FutureOr<StaffInfoModel> Function(StaffInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StaffInfoProvider._internal(
        (ref) => create(ref as StaffInfoRef),
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
  AutoDisposeFutureProviderElement<StaffInfoModel> createElement() {
    return _StaffInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StaffInfoProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StaffInfoRef on AutoDisposeFutureProviderRef<StaffInfoModel> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _StaffInfoProviderElement
    extends AutoDisposeFutureProviderElement<StaffInfoModel> with StaffInfoRef {
  _StaffInfoProviderElement(super.provider);

  @override
  String get userId => (origin as StaffInfoProvider).userId;
}

String _$warehouseAndDeliveryStaffHash() =>
    r'ffa94a27f874670cc0b9045cfdac6de1216ffcbc';

/// See also [warehouseAndDeliveryStaff].
@ProviderFor(warehouseAndDeliveryStaff)
final warehouseAndDeliveryStaffProvider =
    AutoDisposeFutureProvider<List<StaffInfoModel>>.internal(
  warehouseAndDeliveryStaff,
  name: r'warehouseAndDeliveryStaffProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$warehouseAndDeliveryStaffHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WarehouseAndDeliveryStaffRef
    = AutoDisposeFutureProviderRef<List<StaffInfoModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

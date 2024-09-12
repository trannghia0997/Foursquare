// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assignmentInfoByOrderHash() =>
    r'805804ca417bd08f26eced417c79adc7b5e2d791';

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

/// See also [assignmentInfoByOrder].
@ProviderFor(assignmentInfoByOrder)
const assignmentInfoByOrderProvider = AssignmentInfoByOrderFamily();

/// See also [assignmentInfoByOrder].
class AssignmentInfoByOrderFamily extends Family<
    AsyncValue<(List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)>> {
  /// See also [assignmentInfoByOrder].
  const AssignmentInfoByOrderFamily();

  /// See also [assignmentInfoByOrder].
  AssignmentInfoByOrderProvider call(
    String orderId,
  ) {
    return AssignmentInfoByOrderProvider(
      orderId,
    );
  }

  @override
  AssignmentInfoByOrderProvider getProviderOverride(
    covariant AssignmentInfoByOrderProvider provider,
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
  String? get name => r'assignmentInfoByOrderProvider';
}

/// See also [assignmentInfoByOrder].
class AssignmentInfoByOrderProvider extends AutoDisposeFutureProvider<
    (List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)> {
  /// See also [assignmentInfoByOrder].
  AssignmentInfoByOrderProvider(
    String orderId,
  ) : this._internal(
          (ref) => assignmentInfoByOrder(
            ref as AssignmentInfoByOrderRef,
            orderId,
          ),
          from: assignmentInfoByOrderProvider,
          name: r'assignmentInfoByOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assignmentInfoByOrderHash,
          dependencies: AssignmentInfoByOrderFamily._dependencies,
          allTransitiveDependencies:
              AssignmentInfoByOrderFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  AssignmentInfoByOrderProvider._internal(
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
    FutureOr<(List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)>
            Function(AssignmentInfoByOrderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AssignmentInfoByOrderProvider._internal(
        (ref) => create(ref as AssignmentInfoByOrderRef),
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
  AutoDisposeFutureProviderElement<
          (List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)>
      createElement() {
    return _AssignmentInfoByOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssignmentInfoByOrderProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssignmentInfoByOrderRef on AutoDisposeFutureProviderRef<
    (List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _AssignmentInfoByOrderProviderElement
    extends AutoDisposeFutureProviderElement<
        (List<WarehouseAssignmentInfo>, List<ShippingAssignmentInfo>)>
    with AssignmentInfoByOrderRef {
  _AssignmentInfoByOrderProviderElement(super.provider);

  @override
  String get orderId => (origin as AssignmentInfoByOrderProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

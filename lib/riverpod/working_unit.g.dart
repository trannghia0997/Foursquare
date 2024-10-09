// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_unit.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allWorkingUnitInfoHash() =>
    r'6be090eef5f1c033f5f5302d239c482484a086b5';

/// See also [allWorkingUnitInfo].
@ProviderFor(allWorkingUnitInfo)
final allWorkingUnitInfoProvider =
    AutoDisposeFutureProvider<List<WorkingUnitInfo>>.internal(
  allWorkingUnitInfo,
  name: r'allWorkingUnitInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allWorkingUnitInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllWorkingUnitInfoRef
    = AutoDisposeFutureProviderRef<List<WorkingUnitInfo>>;
String _$workingUnitInfoByTypeHash() =>
    r'b386f41f6d844e58e7cdd470756a836681442c45';

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

/// See also [workingUnitInfoByType].
@ProviderFor(workingUnitInfoByType)
const workingUnitInfoByTypeProvider = WorkingUnitInfoByTypeFamily();

/// See also [workingUnitInfoByType].
class WorkingUnitInfoByTypeFamily
    extends Family<AsyncValue<List<WorkingUnitInfo>>> {
  /// See also [workingUnitInfoByType].
  const WorkingUnitInfoByTypeFamily();

  /// See also [workingUnitInfoByType].
  WorkingUnitInfoByTypeProvider call(
    WorkingUnitType type,
  ) {
    return WorkingUnitInfoByTypeProvider(
      type,
    );
  }

  @override
  WorkingUnitInfoByTypeProvider getProviderOverride(
    covariant WorkingUnitInfoByTypeProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'workingUnitInfoByTypeProvider';
}

/// See also [workingUnitInfoByType].
class WorkingUnitInfoByTypeProvider
    extends AutoDisposeFutureProvider<List<WorkingUnitInfo>> {
  /// See also [workingUnitInfoByType].
  WorkingUnitInfoByTypeProvider(
    WorkingUnitType type,
  ) : this._internal(
          (ref) => workingUnitInfoByType(
            ref as WorkingUnitInfoByTypeRef,
            type,
          ),
          from: workingUnitInfoByTypeProvider,
          name: r'workingUnitInfoByTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workingUnitInfoByTypeHash,
          dependencies: WorkingUnitInfoByTypeFamily._dependencies,
          allTransitiveDependencies:
              WorkingUnitInfoByTypeFamily._allTransitiveDependencies,
          type: type,
        );

  WorkingUnitInfoByTypeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final WorkingUnitType type;

  @override
  Override overrideWith(
    FutureOr<List<WorkingUnitInfo>> Function(WorkingUnitInfoByTypeRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WorkingUnitInfoByTypeProvider._internal(
        (ref) => create(ref as WorkingUnitInfoByTypeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<WorkingUnitInfo>> createElement() {
    return _WorkingUnitInfoByTypeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkingUnitInfoByTypeProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WorkingUnitInfoByTypeRef
    on AutoDisposeFutureProviderRef<List<WorkingUnitInfo>> {
  /// The parameter `type` of this provider.
  WorkingUnitType get type;
}

class _WorkingUnitInfoByTypeProviderElement
    extends AutoDisposeFutureProviderElement<List<WorkingUnitInfo>>
    with WorkingUnitInfoByTypeRef {
  _WorkingUnitInfoByTypeProviderElement(super.provider);

  @override
  WorkingUnitType get type => (origin as WorkingUnitInfoByTypeProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionHistoryByEntityHash() =>
    r'1a417ed16354f92509578b1af7b28447901863bc';

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

/// See also [transactionHistoryByEntity].
@ProviderFor(transactionHistoryByEntity)
const transactionHistoryByEntityProvider = TransactionHistoryByEntityFamily();

/// See also [transactionHistoryByEntity].
class TransactionHistoryByEntityFamily
    extends Family<AsyncValue<List<TransactionHistoryDto>>> {
  /// See also [transactionHistoryByEntity].
  const TransactionHistoryByEntityFamily();

  /// See also [transactionHistoryByEntity].
  TransactionHistoryByEntityProvider call({
    required String entityType,
    required String entityId,
  }) {
    return TransactionHistoryByEntityProvider(
      entityType: entityType,
      entityId: entityId,
    );
  }

  @override
  TransactionHistoryByEntityProvider getProviderOverride(
    covariant TransactionHistoryByEntityProvider provider,
  ) {
    return call(
      entityType: provider.entityType,
      entityId: provider.entityId,
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
  String? get name => r'transactionHistoryByEntityProvider';
}

/// See also [transactionHistoryByEntity].
class TransactionHistoryByEntityProvider
    extends AutoDisposeFutureProvider<List<TransactionHistoryDto>> {
  /// See also [transactionHistoryByEntity].
  TransactionHistoryByEntityProvider({
    required String entityType,
    required String entityId,
  }) : this._internal(
          (ref) => transactionHistoryByEntity(
            ref as TransactionHistoryByEntityRef,
            entityType: entityType,
            entityId: entityId,
          ),
          from: transactionHistoryByEntityProvider,
          name: r'transactionHistoryByEntityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionHistoryByEntityHash,
          dependencies: TransactionHistoryByEntityFamily._dependencies,
          allTransitiveDependencies:
              TransactionHistoryByEntityFamily._allTransitiveDependencies,
          entityType: entityType,
          entityId: entityId,
        );

  TransactionHistoryByEntityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.entityType,
    required this.entityId,
  }) : super.internal();

  final String entityType;
  final String entityId;

  @override
  Override overrideWith(
    FutureOr<List<TransactionHistoryDto>> Function(
            TransactionHistoryByEntityRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TransactionHistoryByEntityProvider._internal(
        (ref) => create(ref as TransactionHistoryByEntityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        entityType: entityType,
        entityId: entityId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TransactionHistoryDto>>
      createElement() {
    return _TransactionHistoryByEntityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionHistoryByEntityProvider &&
        other.entityType == entityType &&
        other.entityId == entityId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, entityType.hashCode);
    hash = _SystemHash.combine(hash, entityId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TransactionHistoryByEntityRef
    on AutoDisposeFutureProviderRef<List<TransactionHistoryDto>> {
  /// The parameter `entityType` of this provider.
  String get entityType;

  /// The parameter `entityId` of this provider.
  String get entityId;
}

class _TransactionHistoryByEntityProviderElement
    extends AutoDisposeFutureProviderElement<List<TransactionHistoryDto>>
    with TransactionHistoryByEntityRef {
  _TransactionHistoryByEntityProviderElement(super.provider);

  @override
  String get entityType =>
      (origin as TransactionHistoryByEntityProvider).entityType;
  @override
  String get entityId =>
      (origin as TransactionHistoryByEntityProvider).entityId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

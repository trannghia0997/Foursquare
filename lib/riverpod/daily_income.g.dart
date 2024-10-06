// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_income.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dailyIncomeByRangeHash() =>
    r'e8f6f29d28153b27b84547d60b33115591476498';

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

/// See also [dailyIncomeByRange].
@ProviderFor(dailyIncomeByRange)
const dailyIncomeByRangeProvider = DailyIncomeByRangeFamily();

/// See also [dailyIncomeByRange].
class DailyIncomeByRangeFamily
    extends Family<AsyncValue<List<DailyIncomeDto>>> {
  /// See also [dailyIncomeByRange].
  const DailyIncomeByRangeFamily();

  /// See also [dailyIncomeByRange].
  DailyIncomeByRangeProvider call(
    DateTime fromDate,
    DateTime toDate,
  ) {
    return DailyIncomeByRangeProvider(
      fromDate,
      toDate,
    );
  }

  @override
  DailyIncomeByRangeProvider getProviderOverride(
    covariant DailyIncomeByRangeProvider provider,
  ) {
    return call(
      provider.fromDate,
      provider.toDate,
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
  String? get name => r'dailyIncomeByRangeProvider';
}

/// See also [dailyIncomeByRange].
class DailyIncomeByRangeProvider
    extends AutoDisposeFutureProvider<List<DailyIncomeDto>> {
  /// See also [dailyIncomeByRange].
  DailyIncomeByRangeProvider(
    DateTime fromDate,
    DateTime toDate,
  ) : this._internal(
          (ref) => dailyIncomeByRange(
            ref as DailyIncomeByRangeRef,
            fromDate,
            toDate,
          ),
          from: dailyIncomeByRangeProvider,
          name: r'dailyIncomeByRangeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dailyIncomeByRangeHash,
          dependencies: DailyIncomeByRangeFamily._dependencies,
          allTransitiveDependencies:
              DailyIncomeByRangeFamily._allTransitiveDependencies,
          fromDate: fromDate,
          toDate: toDate,
        );

  DailyIncomeByRangeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fromDate,
    required this.toDate,
  }) : super.internal();

  final DateTime fromDate;
  final DateTime toDate;

  @override
  Override overrideWith(
    FutureOr<List<DailyIncomeDto>> Function(DailyIncomeByRangeRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DailyIncomeByRangeProvider._internal(
        (ref) => create(ref as DailyIncomeByRangeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fromDate: fromDate,
        toDate: toDate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<DailyIncomeDto>> createElement() {
    return _DailyIncomeByRangeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DailyIncomeByRangeProvider &&
        other.fromDate == fromDate &&
        other.toDate == toDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fromDate.hashCode);
    hash = _SystemHash.combine(hash, toDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DailyIncomeByRangeRef
    on AutoDisposeFutureProviderRef<List<DailyIncomeDto>> {
  /// The parameter `fromDate` of this provider.
  DateTime get fromDate;

  /// The parameter `toDate` of this provider.
  DateTime get toDate;
}

class _DailyIncomeByRangeProviderElement
    extends AutoDisposeFutureProviderElement<List<DailyIncomeDto>>
    with DailyIncomeByRangeRef {
  _DailyIncomeByRangeProviderElement(super.provider);

  @override
  DateTime get fromDate => (origin as DailyIncomeByRangeProvider).fromDate;
  @override
  DateTime get toDate => (origin as DailyIncomeByRangeProvider).toDate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

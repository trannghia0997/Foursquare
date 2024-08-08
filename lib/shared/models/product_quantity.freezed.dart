// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_quantity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductQuantity _$ProductQuantityFromJson(Map<String, dynamic> json) {
  return _ProductQuantity.fromJson(json);
}

/// @nodoc
mixin _$ProductQuantity {
  String? get id => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  WorkingUnit? get workingUnit => throw _privateConstructorUsedError;
  ProductCategory? get productCategory => throw _privateConstructorUsedError;

  /// Serializes this ProductQuantity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityCopyWith<ProductQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityCopyWith<$Res> {
  factory $ProductQuantityCopyWith(
          ProductQuantity value, $Res Function(ProductQuantity) then) =
      _$ProductQuantityCopyWithImpl<$Res, ProductQuantity>;
  @useResult
  $Res call(
      {String? id,
      int? qty,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      WorkingUnit? workingUnit,
      ProductCategory? productCategory});

  $WorkingUnitCopyWith<$Res>? get workingUnit;
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class _$ProductQuantityCopyWithImpl<$Res, $Val extends ProductQuantity>
    implements $ProductQuantityCopyWith<$Res> {
  _$ProductQuantityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? workingUnit = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workingUnit: freezed == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ) as $Val);
  }

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitCopyWith<$Res>? get workingUnit {
    if (_value.workingUnit == null) {
      return null;
    }

    return $WorkingUnitCopyWith<$Res>(_value.workingUnit!, (value) {
      return _then(_value.copyWith(workingUnit: value) as $Val);
    });
  }

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res>? get productCategory {
    if (_value.productCategory == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.productCategory!, (value) {
      return _then(_value.copyWith(productCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductQuantityImplCopyWith<$Res>
    implements $ProductQuantityCopyWith<$Res> {
  factory _$$ProductQuantityImplCopyWith(_$ProductQuantityImpl value,
          $Res Function(_$ProductQuantityImpl) then) =
      __$$ProductQuantityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? qty,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      WorkingUnit? workingUnit,
      ProductCategory? productCategory});

  @override
  $WorkingUnitCopyWith<$Res>? get workingUnit;
  @override
  $ProductCategoryCopyWith<$Res>? get productCategory;
}

/// @nodoc
class __$$ProductQuantityImplCopyWithImpl<$Res>
    extends _$ProductQuantityCopyWithImpl<$Res, _$ProductQuantityImpl>
    implements _$$ProductQuantityImplCopyWith<$Res> {
  __$$ProductQuantityImplCopyWithImpl(
      _$ProductQuantityImpl _value, $Res Function(_$ProductQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? qty = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? workingUnit = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_$ProductQuantityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workingUnit: freezed == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ProductQuantityImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantity {
  const _$ProductQuantityImpl(
      {this.id,
      this.qty,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.workingUnit,
      this.productCategory});

  factory _$ProductQuantityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityImplFromJson(json);

  @override
  final String? id;
  @override
  final int? qty;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  final WorkingUnit? workingUnit;
  @override
  final ProductCategory? productCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductQuantity(id: $id, qty: $qty, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, workingUnit: $workingUnit, productCategory: $productCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('workingUnit', workingUnit))
      ..add(DiagnosticsProperty('productCategory', productCategory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, qty, createdBy, createdDate,
      lastModifiedBy, lastModifiedDate, workingUnit, productCategory);

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityImplCopyWith<_$ProductQuantityImpl> get copyWith =>
      __$$ProductQuantityImplCopyWithImpl<_$ProductQuantityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQuantityImplToJson(
      this,
    );
  }
}

abstract class _ProductQuantity implements ProductQuantity {
  const factory _ProductQuantity(
      {final String? id,
      final int? qty,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      final WorkingUnit? workingUnit,
      final ProductCategory? productCategory}) = _$ProductQuantityImpl;

  factory _ProductQuantity.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityImpl.fromJson;

  @override
  String? get id;
  @override
  int? get qty;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  WorkingUnit? get workingUnit;
  @override
  ProductCategory? get productCategory;

  /// Create a copy of ProductQuantity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityImplCopyWith<_$ProductQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

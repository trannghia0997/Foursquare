// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_qty.dart';

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
  @JsonKey(name: 'work_unit_id')
  String get workUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variant_id')
  String get productVariantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  double get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'work_unit_id') String workUnitId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'qty') double quantity});
}

/// @nodoc
class _$ProductQuantityCopyWithImpl<$Res, $Val extends ProductQuantity>
    implements $ProductQuantityCopyWith<$Res> {
  _$ProductQuantityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workUnitId = null,
    Object? productVariantId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      workUnitId: null == workUnitId
          ? _value.workUnitId
          : workUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
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
      {@JsonKey(name: 'work_unit_id') String workUnitId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'qty') double quantity});
}

/// @nodoc
class __$$ProductQuantityImplCopyWithImpl<$Res>
    extends _$ProductQuantityCopyWithImpl<$Res, _$ProductQuantityImpl>
    implements _$$ProductQuantityImplCopyWith<$Res> {
  __$$ProductQuantityImplCopyWithImpl(
      _$ProductQuantityImpl _value, $Res Function(_$ProductQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workUnitId = null,
    Object? productVariantId = null,
    Object? quantity = null,
  }) {
    return _then(_$ProductQuantityImpl(
      workUnitId: null == workUnitId
          ? _value.workUnitId
          : workUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductQuantityImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantity {
  const _$ProductQuantityImpl(
      {@JsonKey(name: 'work_unit_id') required this.workUnitId,
      @JsonKey(name: 'product_variant_id') required this.productVariantId,
      @JsonKey(name: 'qty') required this.quantity});

  factory _$ProductQuantityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityImplFromJson(json);

  @override
  @JsonKey(name: 'work_unit_id')
  final String workUnitId;
  @override
  @JsonKey(name: 'product_variant_id')
  final String productVariantId;
  @override
  @JsonKey(name: 'qty')
  final double quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductQuantity(workUnitId: $workUnitId, productVariantId: $productVariantId, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantity'))
      ..add(DiagnosticsProperty('workUnitId', workUnitId))
      ..add(DiagnosticsProperty('productVariantId', productVariantId))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityImpl &&
            (identical(other.workUnitId, workUnitId) ||
                other.workUnitId == workUnitId) &&
            (identical(other.productVariantId, productVariantId) ||
                other.productVariantId == productVariantId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, workUnitId, productVariantId, quantity);

  @JsonKey(ignore: true)
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
          {@JsonKey(name: 'work_unit_id') required final String workUnitId,
          @JsonKey(name: 'product_variant_id')
          required final String productVariantId,
          @JsonKey(name: 'qty') required final double quantity}) =
      _$ProductQuantityImpl;

  factory _ProductQuantity.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityImpl.fromJson;

  @override
  @JsonKey(name: 'work_unit_id')
  String get workUnitId;
  @override
  @JsonKey(name: 'product_variant_id')
  String get productVariantId;
  @override
  @JsonKey(name: 'qty')
  double get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ProductQuantityImplCopyWith<_$ProductQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

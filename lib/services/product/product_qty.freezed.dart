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
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
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
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'work_unit_id') String workUnitId,
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
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? workUnitId = null,
    Object? productVariantId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'work_unit_id') String workUnitId,
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
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? workUnitId = null,
    Object? productVariantId = null,
    Object? quantity = null,
  }) {
    return _then(_$ProductQuantityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {required this.id,
      required this.created,
      required this.updated,
      @JsonKey(name: 'work_unit_id') required this.workUnitId,
      @JsonKey(name: 'product_variant_id') required this.productVariantId,
      @JsonKey(name: 'qty') required this.quantity});

  factory _$ProductQuantityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;
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
    return 'ProductQuantity(id: $id, created: $created, updated: $updated, workUnitId: $workUnitId, productVariantId: $productVariantId, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('workUnitId', workUnitId))
      ..add(DiagnosticsProperty('productVariantId', productVariantId))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.workUnitId, workUnitId) ||
                other.workUnitId == workUnitId) &&
            (identical(other.productVariantId, productVariantId) ||
                other.productVariantId == productVariantId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, workUnitId,
      productVariantId, quantity);

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
          {required final String id,
          required final DateTime created,
          required final DateTime updated,
          @JsonKey(name: 'work_unit_id') required final String workUnitId,
          @JsonKey(name: 'product_variant_id')
          required final String productVariantId,
          @JsonKey(name: 'qty') required final double quantity}) =
      _$ProductQuantityImpl;

  factory _ProductQuantity.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  DateTime get updated;
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

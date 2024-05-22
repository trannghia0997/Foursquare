// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) {
  return _ProductVariant.fromJson(json);
}

/// @nodoc
mixin _$ProductVariant {
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'colour_id')
  String get colourId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariantCopyWith<ProductVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantCopyWith<$Res> {
  factory $ProductVariantCopyWith(
          ProductVariant value, $Res Function(ProductVariant) then) =
      _$ProductVariantCopyWithImpl<$Res, ProductVariant>;
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'product_id') String productId,
      @JsonKey(name: 'colour_id') String colourId,
      double price,
      String image});
}

/// @nodoc
class _$ProductVariantCopyWithImpl<$Res, $Val extends ProductVariant>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._value, this._then);

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
    Object? productId = null,
    Object? colourId = null,
    Object? price = null,
    Object? image = null,
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
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      colourId: null == colourId
          ? _value.colourId
          : colourId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantImplCopyWith<$Res>
    implements $ProductVariantCopyWith<$Res> {
  factory _$$ProductVariantImplCopyWith(_$ProductVariantImpl value,
          $Res Function(_$ProductVariantImpl) then) =
      __$$ProductVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'product_id') String productId,
      @JsonKey(name: 'colour_id') String colourId,
      double price,
      String image});
}

/// @nodoc
class __$$ProductVariantImplCopyWithImpl<$Res>
    extends _$ProductVariantCopyWithImpl<$Res, _$ProductVariantImpl>
    implements _$$ProductVariantImplCopyWith<$Res> {
  __$$ProductVariantImplCopyWithImpl(
      _$ProductVariantImpl _value, $Res Function(_$ProductVariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? productId = null,
    Object? colourId = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_$ProductVariantImpl(
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
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      colourId: null == colourId
          ? _value.colourId
          : colourId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantImpl
    with DiagnosticableTreeMixin
    implements _ProductVariant {
  const _$ProductVariantImpl(
      {required this.id,
      required this.created,
      required this.updated,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'colour_id') required this.colourId,
      required this.price,
      required this.image});

  factory _$ProductVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey(name: 'colour_id')
  final String colourId;
  @override
  final double price;
  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductVariant(id: $id, created: $created, updated: $updated, productId: $productId, colourId: $colourId, price: $price, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductVariant'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('colourId', colourId))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.colourId, colourId) ||
                other.colourId == colourId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, created, updated, productId, colourId, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantImplCopyWith<_$ProductVariantImpl> get copyWith =>
      __$$ProductVariantImplCopyWithImpl<_$ProductVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantImplToJson(
      this,
    );
  }
}

abstract class _ProductVariant implements ProductVariant {
  const factory _ProductVariant(
      {required final String id,
      required final DateTime created,
      required final DateTime updated,
      @JsonKey(name: 'product_id') required final String productId,
      @JsonKey(name: 'colour_id') required final String colourId,
      required final double price,
      required final String image}) = _$ProductVariantImpl;

  factory _ProductVariant.fromJson(Map<String, dynamic> json) =
      _$ProductVariantImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  @JsonKey(name: 'colour_id')
  String get colourId;
  @override
  double get price;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$ProductVariantImplCopyWith<_$ProductVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

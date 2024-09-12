// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductInfoModel {
  ProductDto get product => throw _privateConstructorUsedError;
  List<ProductImageDto> get images => throw _privateConstructorUsedError;
  List<(ProductCategoryDto, ColourDto)> get categories =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductInfoModelCopyWith<ProductInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoModelCopyWith<$Res> {
  factory $ProductInfoModelCopyWith(
          ProductInfoModel value, $Res Function(ProductInfoModel) then) =
      _$ProductInfoModelCopyWithImpl<$Res, ProductInfoModel>;
  @useResult
  $Res call(
      {ProductDto product,
      List<ProductImageDto> images,
      List<(ProductCategoryDto, ColourDto)> categories});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductInfoModelCopyWithImpl<$Res, $Val extends ProductInfoModel>
    implements $ProductInfoModelCopyWith<$Res> {
  _$ProductInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? images = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageDto>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<(ProductCategoryDto, ColourDto)>,
    ) as $Val);
  }

  /// Create a copy of ProductInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductInfoModelImplCopyWith<$Res>
    implements $ProductInfoModelCopyWith<$Res> {
  factory _$$ProductInfoModelImplCopyWith(_$ProductInfoModelImpl value,
          $Res Function(_$ProductInfoModelImpl) then) =
      __$$ProductInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDto product,
      List<ProductImageDto> images,
      List<(ProductCategoryDto, ColourDto)> categories});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductInfoModelImplCopyWithImpl<$Res>
    extends _$ProductInfoModelCopyWithImpl<$Res, _$ProductInfoModelImpl>
    implements _$$ProductInfoModelImplCopyWith<$Res> {
  __$$ProductInfoModelImplCopyWithImpl(_$ProductInfoModelImpl _value,
      $Res Function(_$ProductInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? images = null,
    Object? categories = null,
  }) {
    return _then(_$ProductInfoModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageDto>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<(ProductCategoryDto, ColourDto)>,
    ));
  }
}

/// @nodoc

class _$ProductInfoModelImpl implements _ProductInfoModel {
  const _$ProductInfoModelImpl(
      {required this.product,
      required final List<ProductImageDto> images,
      required final List<(ProductCategoryDto, ColourDto)> categories})
      : _images = images,
        _categories = categories;

  @override
  final ProductDto product;
  final List<ProductImageDto> _images;
  @override
  List<ProductImageDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<(ProductCategoryDto, ColourDto)> _categories;
  @override
  List<(ProductCategoryDto, ColourDto)> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ProductInfoModel(product: $product, images: $images, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInfoModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of ProductInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInfoModelImplCopyWith<_$ProductInfoModelImpl> get copyWith =>
      __$$ProductInfoModelImplCopyWithImpl<_$ProductInfoModelImpl>(
          this, _$identity);
}

abstract class _ProductInfoModel implements ProductInfoModel {
  const factory _ProductInfoModel(
          {required final ProductDto product,
          required final List<ProductImageDto> images,
          required final List<(ProductCategoryDto, ColourDto)> categories}) =
      _$ProductInfoModelImpl;

  @override
  ProductDto get product;
  @override
  List<ProductImageDto> get images;
  @override
  List<(ProductCategoryDto, ColourDto)> get categories;

  /// Create a copy of ProductInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductInfoModelImplCopyWith<_$ProductInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductCategoryInfoModel {
  ProductDto get product => throw _privateConstructorUsedError;
  ProductCategoryDto get category => throw _privateConstructorUsedError;
  List<ProductImageDto> get images => throw _privateConstructorUsedError;
  ColourDto get colour => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryInfoModelCopyWith<ProductCategoryInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryInfoModelCopyWith<$Res> {
  factory $ProductCategoryInfoModelCopyWith(ProductCategoryInfoModel value,
          $Res Function(ProductCategoryInfoModel) then) =
      _$ProductCategoryInfoModelCopyWithImpl<$Res, ProductCategoryInfoModel>;
  @useResult
  $Res call(
      {ProductDto product,
      ProductCategoryDto category,
      List<ProductImageDto> images,
      ColourDto colour});

  $ProductDtoCopyWith<$Res> get product;
  $ProductCategoryDtoCopyWith<$Res> get category;
  $ColourDtoCopyWith<$Res> get colour;
}

/// @nodoc
class _$ProductCategoryInfoModelCopyWithImpl<$Res,
        $Val extends ProductCategoryInfoModel>
    implements $ProductCategoryInfoModelCopyWith<$Res> {
  _$ProductCategoryInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? category = null,
    Object? images = null,
    Object? colour = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategoryDto,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageDto>,
      colour: null == colour
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as ColourDto,
    ) as $Val);
  }

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryDtoCopyWith<$Res> get category {
    return $ProductCategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColourDtoCopyWith<$Res> get colour {
    return $ColourDtoCopyWith<$Res>(_value.colour, (value) {
      return _then(_value.copyWith(colour: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCategoryInfoModelImplCopyWith<$Res>
    implements $ProductCategoryInfoModelCopyWith<$Res> {
  factory _$$ProductCategoryInfoModelImplCopyWith(
          _$ProductCategoryInfoModelImpl value,
          $Res Function(_$ProductCategoryInfoModelImpl) then) =
      __$$ProductCategoryInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDto product,
      ProductCategoryDto category,
      List<ProductImageDto> images,
      ColourDto colour});

  @override
  $ProductDtoCopyWith<$Res> get product;
  @override
  $ProductCategoryDtoCopyWith<$Res> get category;
  @override
  $ColourDtoCopyWith<$Res> get colour;
}

/// @nodoc
class __$$ProductCategoryInfoModelImplCopyWithImpl<$Res>
    extends _$ProductCategoryInfoModelCopyWithImpl<$Res,
        _$ProductCategoryInfoModelImpl>
    implements _$$ProductCategoryInfoModelImplCopyWith<$Res> {
  __$$ProductCategoryInfoModelImplCopyWithImpl(
      _$ProductCategoryInfoModelImpl _value,
      $Res Function(_$ProductCategoryInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? category = null,
    Object? images = null,
    Object? colour = null,
  }) {
    return _then(_$ProductCategoryInfoModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategoryDto,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageDto>,
      colour: null == colour
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as ColourDto,
    ));
  }
}

/// @nodoc

class _$ProductCategoryInfoModelImpl implements _ProductCategoryInfoModel {
  const _$ProductCategoryInfoModelImpl(
      {required this.product,
      required this.category,
      required final List<ProductImageDto> images,
      required this.colour})
      : _images = images;

  @override
  final ProductDto product;
  @override
  final ProductCategoryDto category;
  final List<ProductImageDto> _images;
  @override
  List<ProductImageDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final ColourDto colour;

  @override
  String toString() {
    return 'ProductCategoryInfoModel(product: $product, category: $category, images: $images, colour: $colour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryInfoModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.colour, colour) || other.colour == colour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, category,
      const DeepCollectionEquality().hash(_images), colour);

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryInfoModelImplCopyWith<_$ProductCategoryInfoModelImpl>
      get copyWith => __$$ProductCategoryInfoModelImplCopyWithImpl<
          _$ProductCategoryInfoModelImpl>(this, _$identity);
}

abstract class _ProductCategoryInfoModel implements ProductCategoryInfoModel {
  const factory _ProductCategoryInfoModel(
      {required final ProductDto product,
      required final ProductCategoryDto category,
      required final List<ProductImageDto> images,
      required final ColourDto colour}) = _$ProductCategoryInfoModelImpl;

  @override
  ProductDto get product;
  @override
  ProductCategoryDto get category;
  @override
  List<ProductImageDto> get images;
  @override
  ColourDto get colour;

  /// Create a copy of ProductCategoryInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryInfoModelImplCopyWith<_$ProductCategoryInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductQuantityInfoModel {
  ProductCategoryInfoModel get category => throw _privateConstructorUsedError;
  ProductQuantityDto get quantity => throw _privateConstructorUsedError;
  WorkingUnitDto get workingUnit => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityInfoModelCopyWith<ProductQuantityInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityInfoModelCopyWith<$Res> {
  factory $ProductQuantityInfoModelCopyWith(ProductQuantityInfoModel value,
          $Res Function(ProductQuantityInfoModel) then) =
      _$ProductQuantityInfoModelCopyWithImpl<$Res, ProductQuantityInfoModel>;
  @useResult
  $Res call(
      {ProductCategoryInfoModel category,
      ProductQuantityDto quantity,
      WorkingUnitDto workingUnit});

  $ProductCategoryInfoModelCopyWith<$Res> get category;
  $ProductQuantityDtoCopyWith<$Res> get quantity;
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class _$ProductQuantityInfoModelCopyWithImpl<$Res,
        $Val extends ProductQuantityInfoModel>
    implements $ProductQuantityInfoModelCopyWith<$Res> {
  _$ProductQuantityInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? quantity = null,
    Object? workingUnit = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategoryInfoModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as ProductQuantityDto,
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
    ) as $Val);
  }

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryInfoModelCopyWith<$Res> get category {
    return $ProductCategoryInfoModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductQuantityDtoCopyWith<$Res> get quantity {
    return $ProductQuantityDtoCopyWith<$Res>(_value.quantity, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitDtoCopyWith<$Res> get workingUnit {
    return $WorkingUnitDtoCopyWith<$Res>(_value.workingUnit, (value) {
      return _then(_value.copyWith(workingUnit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductQuantityInfoModelImplCopyWith<$Res>
    implements $ProductQuantityInfoModelCopyWith<$Res> {
  factory _$$ProductQuantityInfoModelImplCopyWith(
          _$ProductQuantityInfoModelImpl value,
          $Res Function(_$ProductQuantityInfoModelImpl) then) =
      __$$ProductQuantityInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductCategoryInfoModel category,
      ProductQuantityDto quantity,
      WorkingUnitDto workingUnit});

  @override
  $ProductCategoryInfoModelCopyWith<$Res> get category;
  @override
  $ProductQuantityDtoCopyWith<$Res> get quantity;
  @override
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class __$$ProductQuantityInfoModelImplCopyWithImpl<$Res>
    extends _$ProductQuantityInfoModelCopyWithImpl<$Res,
        _$ProductQuantityInfoModelImpl>
    implements _$$ProductQuantityInfoModelImplCopyWith<$Res> {
  __$$ProductQuantityInfoModelImplCopyWithImpl(
      _$ProductQuantityInfoModelImpl _value,
      $Res Function(_$ProductQuantityInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? quantity = null,
    Object? workingUnit = null,
  }) {
    return _then(_$ProductQuantityInfoModelImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategoryInfoModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as ProductQuantityDto,
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
    ));
  }
}

/// @nodoc

class _$ProductQuantityInfoModelImpl implements _ProductQuantityInfoModel {
  const _$ProductQuantityInfoModelImpl(
      {required this.category,
      required this.quantity,
      required this.workingUnit});

  @override
  final ProductCategoryInfoModel category;
  @override
  final ProductQuantityDto quantity;
  @override
  final WorkingUnitDto workingUnit;

  @override
  String toString() {
    return 'ProductQuantityInfoModel(category: $category, quantity: $quantity, workingUnit: $workingUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityInfoModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, quantity, workingUnit);

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityInfoModelImplCopyWith<_$ProductQuantityInfoModelImpl>
      get copyWith => __$$ProductQuantityInfoModelImplCopyWithImpl<
          _$ProductQuantityInfoModelImpl>(this, _$identity);
}

abstract class _ProductQuantityInfoModel implements ProductQuantityInfoModel {
  const factory _ProductQuantityInfoModel(
          {required final ProductCategoryInfoModel category,
          required final ProductQuantityDto quantity,
          required final WorkingUnitDto workingUnit}) =
      _$ProductQuantityInfoModelImpl;

  @override
  ProductCategoryInfoModel get category;
  @override
  ProductQuantityDto get quantity;
  @override
  WorkingUnitDto get workingUnit;

  /// Create a copy of ProductQuantityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityInfoModelImplCopyWith<_$ProductQuantityInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

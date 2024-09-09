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
mixin _$ProductWithImagesAndCategories {
  ProductDto get product => throw _privateConstructorUsedError;
  List<ProductImageDto> get images => throw _privateConstructorUsedError;
  List<(ProductCategoryDto, ColourDto)> get categories =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductWithImagesAndCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductWithImagesAndCategoriesCopyWith<ProductWithImagesAndCategories>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWithImagesAndCategoriesCopyWith<$Res> {
  factory $ProductWithImagesAndCategoriesCopyWith(
          ProductWithImagesAndCategories value,
          $Res Function(ProductWithImagesAndCategories) then) =
      _$ProductWithImagesAndCategoriesCopyWithImpl<$Res,
          ProductWithImagesAndCategories>;
  @useResult
  $Res call(
      {ProductDto product,
      List<ProductImageDto> images,
      List<(ProductCategoryDto, ColourDto)> categories});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductWithImagesAndCategoriesCopyWithImpl<$Res,
        $Val extends ProductWithImagesAndCategories>
    implements $ProductWithImagesAndCategoriesCopyWith<$Res> {
  _$ProductWithImagesAndCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductWithImagesAndCategories
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

  /// Create a copy of ProductWithImagesAndCategories
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
abstract class _$$ProductWithImagesAndCategoriesImplCopyWith<$Res>
    implements $ProductWithImagesAndCategoriesCopyWith<$Res> {
  factory _$$ProductWithImagesAndCategoriesImplCopyWith(
          _$ProductWithImagesAndCategoriesImpl value,
          $Res Function(_$ProductWithImagesAndCategoriesImpl) then) =
      __$$ProductWithImagesAndCategoriesImplCopyWithImpl<$Res>;
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
class __$$ProductWithImagesAndCategoriesImplCopyWithImpl<$Res>
    extends _$ProductWithImagesAndCategoriesCopyWithImpl<$Res,
        _$ProductWithImagesAndCategoriesImpl>
    implements _$$ProductWithImagesAndCategoriesImplCopyWith<$Res> {
  __$$ProductWithImagesAndCategoriesImplCopyWithImpl(
      _$ProductWithImagesAndCategoriesImpl _value,
      $Res Function(_$ProductWithImagesAndCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductWithImagesAndCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? images = null,
    Object? categories = null,
  }) {
    return _then(_$ProductWithImagesAndCategoriesImpl(
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

class _$ProductWithImagesAndCategoriesImpl
    implements _ProductWithImagesAndCategories {
  const _$ProductWithImagesAndCategoriesImpl(
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
    return 'ProductWithImagesAndCategories(product: $product, images: $images, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductWithImagesAndCategoriesImpl &&
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

  /// Create a copy of ProductWithImagesAndCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductWithImagesAndCategoriesImplCopyWith<
          _$ProductWithImagesAndCategoriesImpl>
      get copyWith => __$$ProductWithImagesAndCategoriesImplCopyWithImpl<
          _$ProductWithImagesAndCategoriesImpl>(this, _$identity);
}

abstract class _ProductWithImagesAndCategories
    implements ProductWithImagesAndCategories {
  const factory _ProductWithImagesAndCategories(
          {required final ProductDto product,
          required final List<ProductImageDto> images,
          required final List<(ProductCategoryDto, ColourDto)> categories}) =
      _$ProductWithImagesAndCategoriesImpl;

  @override
  ProductDto get product;
  @override
  List<ProductImageDto> get images;
  @override
  List<(ProductCategoryDto, ColourDto)> get categories;

  /// Create a copy of ProductWithImagesAndCategories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductWithImagesAndCategoriesImplCopyWith<
          _$ProductWithImagesAndCategoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductCategoryWithImagesAndColour {
  ProductDto get product => throw _privateConstructorUsedError;
  ProductCategoryDto get category => throw _privateConstructorUsedError;
  List<ProductImageDto> get images => throw _privateConstructorUsedError;
  ColourDto get colour => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryWithImagesAndColour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryWithImagesAndColourCopyWith<
          ProductCategoryWithImagesAndColour>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryWithImagesAndColourCopyWith<$Res> {
  factory $ProductCategoryWithImagesAndColourCopyWith(
          ProductCategoryWithImagesAndColour value,
          $Res Function(ProductCategoryWithImagesAndColour) then) =
      _$ProductCategoryWithImagesAndColourCopyWithImpl<$Res,
          ProductCategoryWithImagesAndColour>;
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
class _$ProductCategoryWithImagesAndColourCopyWithImpl<$Res,
        $Val extends ProductCategoryWithImagesAndColour>
    implements $ProductCategoryWithImagesAndColourCopyWith<$Res> {
  _$ProductCategoryWithImagesAndColourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryWithImagesAndColour
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

  /// Create a copy of ProductCategoryWithImagesAndColour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ProductCategoryWithImagesAndColour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryDtoCopyWith<$Res> get category {
    return $ProductCategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductCategoryWithImagesAndColour
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
abstract class _$$ProductCategoryWithImagesAndColourImplCopyWith<$Res>
    implements $ProductCategoryWithImagesAndColourCopyWith<$Res> {
  factory _$$ProductCategoryWithImagesAndColourImplCopyWith(
          _$ProductCategoryWithImagesAndColourImpl value,
          $Res Function(_$ProductCategoryWithImagesAndColourImpl) then) =
      __$$ProductCategoryWithImagesAndColourImplCopyWithImpl<$Res>;
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
class __$$ProductCategoryWithImagesAndColourImplCopyWithImpl<$Res>
    extends _$ProductCategoryWithImagesAndColourCopyWithImpl<$Res,
        _$ProductCategoryWithImagesAndColourImpl>
    implements _$$ProductCategoryWithImagesAndColourImplCopyWith<$Res> {
  __$$ProductCategoryWithImagesAndColourImplCopyWithImpl(
      _$ProductCategoryWithImagesAndColourImpl _value,
      $Res Function(_$ProductCategoryWithImagesAndColourImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryWithImagesAndColour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? category = null,
    Object? images = null,
    Object? colour = null,
  }) {
    return _then(_$ProductCategoryWithImagesAndColourImpl(
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

class _$ProductCategoryWithImagesAndColourImpl
    implements _ProductCategoryWithImagesAndColour {
  const _$ProductCategoryWithImagesAndColourImpl(
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
    return 'ProductCategoryWithImagesAndColour(product: $product, category: $category, images: $images, colour: $colour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryWithImagesAndColourImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.colour, colour) || other.colour == colour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, category,
      const DeepCollectionEquality().hash(_images), colour);

  /// Create a copy of ProductCategoryWithImagesAndColour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryWithImagesAndColourImplCopyWith<
          _$ProductCategoryWithImagesAndColourImpl>
      get copyWith => __$$ProductCategoryWithImagesAndColourImplCopyWithImpl<
          _$ProductCategoryWithImagesAndColourImpl>(this, _$identity);
}

abstract class _ProductCategoryWithImagesAndColour
    implements ProductCategoryWithImagesAndColour {
  const factory _ProductCategoryWithImagesAndColour(
          {required final ProductDto product,
          required final ProductCategoryDto category,
          required final List<ProductImageDto> images,
          required final ColourDto colour}) =
      _$ProductCategoryWithImagesAndColourImpl;

  @override
  ProductDto get product;
  @override
  ProductCategoryDto get category;
  @override
  List<ProductImageDto> get images;
  @override
  ColourDto get colour;

  /// Create a copy of ProductCategoryWithImagesAndColour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryWithImagesAndColourImplCopyWith<
          _$ProductCategoryWithImagesAndColourImpl>
      get copyWith => throw _privateConstructorUsedError;
}

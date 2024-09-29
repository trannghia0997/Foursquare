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
mixin _$ProductInfo {
  ProductDto get product => throw _privateConstructorUsedError;
  List<ProductImageDto> get images => throw _privateConstructorUsedError;
  List<(ProductCategoryDto, ColourDto)> get categories =>
      throw _privateConstructorUsedError;
  List<TagDto> get tags => throw _privateConstructorUsedError;
  List<CommentInfo> get comments => throw _privateConstructorUsedError;

  /// Create a copy of ProductInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductInfoCopyWith<ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoCopyWith<$Res> {
  factory $ProductInfoCopyWith(
          ProductInfo value, $Res Function(ProductInfo) then) =
      _$ProductInfoCopyWithImpl<$Res, ProductInfo>;
  @useResult
  $Res call(
      {ProductDto product,
      List<ProductImageDto> images,
      List<(ProductCategoryDto, ColourDto)> categories,
      List<TagDto> tags,
      List<CommentInfo> comments});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductInfoCopyWithImpl<$Res, $Val extends ProductInfo>
    implements $ProductInfoCopyWith<$Res> {
  _$ProductInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? images = null,
    Object? categories = null,
    Object? tags = null,
    Object? comments = null,
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
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentInfo>,
    ) as $Val);
  }

  /// Create a copy of ProductInfo
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
abstract class _$$ProductInfoImplCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$$ProductInfoImplCopyWith(
          _$ProductInfoImpl value, $Res Function(_$ProductInfoImpl) then) =
      __$$ProductInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDto product,
      List<ProductImageDto> images,
      List<(ProductCategoryDto, ColourDto)> categories,
      List<TagDto> tags,
      List<CommentInfo> comments});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductInfoImplCopyWithImpl<$Res>
    extends _$ProductInfoCopyWithImpl<$Res, _$ProductInfoImpl>
    implements _$$ProductInfoImplCopyWith<$Res> {
  __$$ProductInfoImplCopyWithImpl(
      _$ProductInfoImpl _value, $Res Function(_$ProductInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? images = null,
    Object? categories = null,
    Object? tags = null,
    Object? comments = null,
  }) {
    return _then(_$ProductInfoImpl(
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
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentInfo>,
    ));
  }
}

/// @nodoc

class _$ProductInfoImpl implements _ProductInfo {
  const _$ProductInfoImpl(
      {required this.product,
      required final List<ProductImageDto> images,
      required final List<(ProductCategoryDto, ColourDto)> categories,
      required final List<TagDto> tags,
      required final List<CommentInfo> comments})
      : _images = images,
        _categories = categories,
        _tags = tags,
        _comments = comments;

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

  final List<TagDto> _tags;
  @override
  List<TagDto> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<CommentInfo> _comments;
  @override
  List<CommentInfo> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'ProductInfo(product: $product, images: $images, categories: $categories, tags: $tags, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInfoImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_comments));

  /// Create a copy of ProductInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInfoImplCopyWith<_$ProductInfoImpl> get copyWith =>
      __$$ProductInfoImplCopyWithImpl<_$ProductInfoImpl>(this, _$identity);
}

abstract class _ProductInfo implements ProductInfo {
  const factory _ProductInfo(
      {required final ProductDto product,
      required final List<ProductImageDto> images,
      required final List<(ProductCategoryDto, ColourDto)> categories,
      required final List<TagDto> tags,
      required final List<CommentInfo> comments}) = _$ProductInfoImpl;

  @override
  ProductDto get product;
  @override
  List<ProductImageDto> get images;
  @override
  List<(ProductCategoryDto, ColourDto)> get categories;
  @override
  List<TagDto> get tags;
  @override
  List<CommentInfo> get comments;

  /// Create a copy of ProductInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductInfoImplCopyWith<_$ProductInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentInfo {
  CommentDto get comment => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentInfoCopyWith<CommentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentInfoCopyWith<$Res> {
  factory $CommentInfoCopyWith(
          CommentInfo value, $Res Function(CommentInfo) then) =
      _$CommentInfoCopyWithImpl<$Res, CommentInfo>;
  @useResult
  $Res call({CommentDto comment, UserDto user});

  $CommentDtoCopyWith<$Res> get comment;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentInfoCopyWithImpl<$Res, $Val extends CommentInfo>
    implements $CommentInfoCopyWith<$Res> {
  _$CommentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ) as $Val);
  }

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentDtoCopyWith<$Res> get comment {
    return $CommentDtoCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentInfoImplCopyWith<$Res>
    implements $CommentInfoCopyWith<$Res> {
  factory _$$CommentInfoImplCopyWith(
          _$CommentInfoImpl value, $Res Function(_$CommentInfoImpl) then) =
      __$$CommentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentDto comment, UserDto user});

  @override
  $CommentDtoCopyWith<$Res> get comment;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$CommentInfoImplCopyWithImpl<$Res>
    extends _$CommentInfoCopyWithImpl<$Res, _$CommentInfoImpl>
    implements _$$CommentInfoImplCopyWith<$Res> {
  __$$CommentInfoImplCopyWithImpl(
      _$CommentInfoImpl _value, $Res Function(_$CommentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? user = null,
  }) {
    return _then(_$CommentInfoImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$CommentInfoImpl implements _CommentInfo {
  const _$CommentInfoImpl({required this.comment, required this.user});

  @override
  final CommentDto comment;
  @override
  final UserDto user;

  @override
  String toString() {
    return 'CommentInfo(comment: $comment, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentInfoImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment, user);

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentInfoImplCopyWith<_$CommentInfoImpl> get copyWith =>
      __$$CommentInfoImplCopyWithImpl<_$CommentInfoImpl>(this, _$identity);
}

abstract class _CommentInfo implements CommentInfo {
  const factory _CommentInfo(
      {required final CommentDto comment,
      required final UserDto user}) = _$CommentInfoImpl;

  @override
  CommentDto get comment;
  @override
  UserDto get user;

  /// Create a copy of CommentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentInfoImplCopyWith<_$CommentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductCategoryInfo {
  ProductDto get product => throw _privateConstructorUsedError;
  ProductCategoryDto get category => throw _privateConstructorUsedError;
  List<ProductImageDto> get images => throw _privateConstructorUsedError;
  ColourDto get colour => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryInfoCopyWith<ProductCategoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryInfoCopyWith<$Res> {
  factory $ProductCategoryInfoCopyWith(
          ProductCategoryInfo value, $Res Function(ProductCategoryInfo) then) =
      _$ProductCategoryInfoCopyWithImpl<$Res, ProductCategoryInfo>;
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
class _$ProductCategoryInfoCopyWithImpl<$Res, $Val extends ProductCategoryInfo>
    implements $ProductCategoryInfoCopyWith<$Res> {
  _$ProductCategoryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryInfo
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

  /// Create a copy of ProductCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ProductCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryDtoCopyWith<$Res> get category {
    return $ProductCategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductCategoryInfo
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
abstract class _$$ProductCategoryInfoImplCopyWith<$Res>
    implements $ProductCategoryInfoCopyWith<$Res> {
  factory _$$ProductCategoryInfoImplCopyWith(_$ProductCategoryInfoImpl value,
          $Res Function(_$ProductCategoryInfoImpl) then) =
      __$$ProductCategoryInfoImplCopyWithImpl<$Res>;
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
class __$$ProductCategoryInfoImplCopyWithImpl<$Res>
    extends _$ProductCategoryInfoCopyWithImpl<$Res, _$ProductCategoryInfoImpl>
    implements _$$ProductCategoryInfoImplCopyWith<$Res> {
  __$$ProductCategoryInfoImplCopyWithImpl(_$ProductCategoryInfoImpl _value,
      $Res Function(_$ProductCategoryInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? category = null,
    Object? images = null,
    Object? colour = null,
  }) {
    return _then(_$ProductCategoryInfoImpl(
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

class _$ProductCategoryInfoImpl implements _ProductCategoryInfo {
  const _$ProductCategoryInfoImpl(
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
    return 'ProductCategoryInfo(product: $product, category: $category, images: $images, colour: $colour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryInfoImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.colour, colour) || other.colour == colour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, category,
      const DeepCollectionEquality().hash(_images), colour);

  /// Create a copy of ProductCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryInfoImplCopyWith<_$ProductCategoryInfoImpl> get copyWith =>
      __$$ProductCategoryInfoImplCopyWithImpl<_$ProductCategoryInfoImpl>(
          this, _$identity);
}

abstract class _ProductCategoryInfo implements ProductCategoryInfo {
  const factory _ProductCategoryInfo(
      {required final ProductDto product,
      required final ProductCategoryDto category,
      required final List<ProductImageDto> images,
      required final ColourDto colour}) = _$ProductCategoryInfoImpl;

  @override
  ProductDto get product;
  @override
  ProductCategoryDto get category;
  @override
  List<ProductImageDto> get images;
  @override
  ColourDto get colour;

  /// Create a copy of ProductCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryInfoImplCopyWith<_$ProductCategoryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductQuantityInfo {
  ProductCategoryInfo get categoryInfo => throw _privateConstructorUsedError;
  ProductQuantityDto get quantity => throw _privateConstructorUsedError;
  WorkingUnitDto get workingUnit => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityInfoCopyWith<ProductQuantityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityInfoCopyWith<$Res> {
  factory $ProductQuantityInfoCopyWith(
          ProductQuantityInfo value, $Res Function(ProductQuantityInfo) then) =
      _$ProductQuantityInfoCopyWithImpl<$Res, ProductQuantityInfo>;
  @useResult
  $Res call(
      {ProductCategoryInfo categoryInfo,
      ProductQuantityDto quantity,
      WorkingUnitDto workingUnit});

  $ProductCategoryInfoCopyWith<$Res> get categoryInfo;
  $ProductQuantityDtoCopyWith<$Res> get quantity;
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class _$ProductQuantityInfoCopyWithImpl<$Res, $Val extends ProductQuantityInfo>
    implements $ProductQuantityInfoCopyWith<$Res> {
  _$ProductQuantityInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryInfo = null,
    Object? quantity = null,
    Object? workingUnit = null,
  }) {
    return _then(_value.copyWith(
      categoryInfo: null == categoryInfo
          ? _value.categoryInfo
          : categoryInfo // ignore: cast_nullable_to_non_nullable
              as ProductCategoryInfo,
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

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryInfoCopyWith<$Res> get categoryInfo {
    return $ProductCategoryInfoCopyWith<$Res>(_value.categoryInfo, (value) {
      return _then(_value.copyWith(categoryInfo: value) as $Val);
    });
  }

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductQuantityDtoCopyWith<$Res> get quantity {
    return $ProductQuantityDtoCopyWith<$Res>(_value.quantity, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  /// Create a copy of ProductQuantityInfo
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
abstract class _$$ProductQuantityInfoImplCopyWith<$Res>
    implements $ProductQuantityInfoCopyWith<$Res> {
  factory _$$ProductQuantityInfoImplCopyWith(_$ProductQuantityInfoImpl value,
          $Res Function(_$ProductQuantityInfoImpl) then) =
      __$$ProductQuantityInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductCategoryInfo categoryInfo,
      ProductQuantityDto quantity,
      WorkingUnitDto workingUnit});

  @override
  $ProductCategoryInfoCopyWith<$Res> get categoryInfo;
  @override
  $ProductQuantityDtoCopyWith<$Res> get quantity;
  @override
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class __$$ProductQuantityInfoImplCopyWithImpl<$Res>
    extends _$ProductQuantityInfoCopyWithImpl<$Res, _$ProductQuantityInfoImpl>
    implements _$$ProductQuantityInfoImplCopyWith<$Res> {
  __$$ProductQuantityInfoImplCopyWithImpl(_$ProductQuantityInfoImpl _value,
      $Res Function(_$ProductQuantityInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryInfo = null,
    Object? quantity = null,
    Object? workingUnit = null,
  }) {
    return _then(_$ProductQuantityInfoImpl(
      categoryInfo: null == categoryInfo
          ? _value.categoryInfo
          : categoryInfo // ignore: cast_nullable_to_non_nullable
              as ProductCategoryInfo,
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

class _$ProductQuantityInfoImpl implements _ProductQuantityInfo {
  const _$ProductQuantityInfoImpl(
      {required this.categoryInfo,
      required this.quantity,
      required this.workingUnit});

  @override
  final ProductCategoryInfo categoryInfo;
  @override
  final ProductQuantityDto quantity;
  @override
  final WorkingUnitDto workingUnit;

  @override
  String toString() {
    return 'ProductQuantityInfo(categoryInfo: $categoryInfo, quantity: $quantity, workingUnit: $workingUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityInfoImpl &&
            (identical(other.categoryInfo, categoryInfo) ||
                other.categoryInfo == categoryInfo) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryInfo, quantity, workingUnit);

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityInfoImplCopyWith<_$ProductQuantityInfoImpl> get copyWith =>
      __$$ProductQuantityInfoImplCopyWithImpl<_$ProductQuantityInfoImpl>(
          this, _$identity);
}

abstract class _ProductQuantityInfo implements ProductQuantityInfo {
  const factory _ProductQuantityInfo(
      {required final ProductCategoryInfo categoryInfo,
      required final ProductQuantityDto quantity,
      required final WorkingUnitDto workingUnit}) = _$ProductQuantityInfoImpl;

  @override
  ProductCategoryInfo get categoryInfo;
  @override
  ProductQuantityDto get quantity;
  @override
  WorkingUnitDto get workingUnit;

  /// Create a copy of ProductQuantityInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityInfoImplCopyWith<_$ProductQuantityInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

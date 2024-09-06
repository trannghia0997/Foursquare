// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductCategoryDTO _$ProductCategoryDTOFromJson(Map<String, dynamic> json) {
  return _ProductCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryDTO {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionId")
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "colour_id")
  String get colourId => throw _privateConstructorUsedError;

  /// Serializes this ProductCategoryDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryDTOCopyWith<ProductCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryDTOCopyWith<$Res> {
  factory $ProductCategoryDTOCopyWith(
          ProductCategoryDTO value, $Res Function(ProductCategoryDTO) then) =
      _$ProductCategoryDTOCopyWithImpl<$Res, ProductCategoryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "colour_id") String colourId});
}

/// @nodoc
class _$ProductCategoryDTOCopyWithImpl<$Res, $Val extends ProductCategoryDTO>
    implements $ProductCategoryDTOCopyWith<$Res> {
  _$ProductCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? name = freezed,
    Object? productId = null,
    Object? colourId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      colourId: null == colourId
          ? _value.colourId
          : colourId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryDTOImplCopyWith<$Res>
    implements $ProductCategoryDTOCopyWith<$Res> {
  factory _$$ProductCategoryDTOImplCopyWith(_$ProductCategoryDTOImpl value,
          $Res Function(_$ProductCategoryDTOImpl) then) =
      __$$ProductCategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "colour_id") String colourId});
}

/// @nodoc
class __$$ProductCategoryDTOImplCopyWithImpl<$Res>
    extends _$ProductCategoryDTOCopyWithImpl<$Res, _$ProductCategoryDTOImpl>
    implements _$$ProductCategoryDTOImplCopyWith<$Res> {
  __$$ProductCategoryDTOImplCopyWithImpl(_$ProductCategoryDTOImpl _value,
      $Res Function(_$ProductCategoryDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? name = freezed,
    Object? productId = null,
    Object? colourId = null,
  }) {
    return _then(_$ProductCategoryDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      colourId: null == colourId
          ? _value.colourId
          : colourId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryDTOImpl
    with DiagnosticableTreeMixin
    implements _ProductCategoryDTO {
  const _$ProductCategoryDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "colour_id") required this.colourId});

  factory _$ProductCategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryDTOImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "collectionId")
  final String collectionId;
  @override
  @JsonKey(name: "collectionName")
  final String collectionName;
  @override
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "updated")
  final DateTime updated;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "product_id")
  final String productId;
  @override
  @JsonKey(name: "colour_id")
  final String colourId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductCategoryDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, name: $name, productId: $productId, colourId: $colourId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductCategoryDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('colourId', colourId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.colourId, colourId) ||
                other.colourId == colourId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, name, productId, colourId);

  /// Create a copy of ProductCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryDTOImplCopyWith<_$ProductCategoryDTOImpl> get copyWith =>
      __$$ProductCategoryDTOImplCopyWithImpl<_$ProductCategoryDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryDTO implements ProductCategoryDTO {
  const factory _ProductCategoryDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "product_id") required final String productId,
          @JsonKey(name: "colour_id") required final String colourId}) =
      _$ProductCategoryDTOImpl;

  factory _ProductCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryDTOImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "collectionId")
  String get collectionId;
  @override
  @JsonKey(name: "collectionName")
  String get collectionName;
  @override
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "updated")
  DateTime get updated;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "product_id")
  String get productId;
  @override
  @JsonKey(name: "colour_id")
  String get colourId;

  /// Create a copy of ProductCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryDTOImplCopyWith<_$ProductCategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategoryEditDTO _$ProductCategoryEditDTOFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryEditDTO {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  set productId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "colour_id")
  String? get colourId => throw _privateConstructorUsedError;
  @JsonKey(name: "colour_id")
  set colourId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this ProductCategoryEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryEditDTOCopyWith<ProductCategoryEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryEditDTOCopyWith<$Res> {
  factory $ProductCategoryEditDTOCopyWith(ProductCategoryEditDTO value,
          $Res Function(ProductCategoryEditDTO) then) =
      _$ProductCategoryEditDTOCopyWithImpl<$Res, ProductCategoryEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "colour_id") String? colourId});
}

/// @nodoc
class _$ProductCategoryEditDTOCopyWithImpl<$Res,
        $Val extends ProductCategoryEditDTO>
    implements $ProductCategoryEditDTOCopyWith<$Res> {
  _$ProductCategoryEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? productId = freezed,
    Object? colourId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      colourId: freezed == colourId
          ? _value.colourId
          : colourId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryEditDTOImplCopyWith<$Res>
    implements $ProductCategoryEditDTOCopyWith<$Res> {
  factory _$$ProductCategoryEditDTOImplCopyWith(
          _$ProductCategoryEditDTOImpl value,
          $Res Function(_$ProductCategoryEditDTOImpl) then) =
      __$$ProductCategoryEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "colour_id") String? colourId});
}

/// @nodoc
class __$$ProductCategoryEditDTOImplCopyWithImpl<$Res>
    extends _$ProductCategoryEditDTOCopyWithImpl<$Res,
        _$ProductCategoryEditDTOImpl>
    implements _$$ProductCategoryEditDTOImplCopyWith<$Res> {
  __$$ProductCategoryEditDTOImplCopyWithImpl(
      _$ProductCategoryEditDTOImpl _value,
      $Res Function(_$ProductCategoryEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? productId = freezed,
    Object? colourId = freezed,
  }) {
    return _then(_$ProductCategoryEditDTOImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      colourId: freezed == colourId
          ? _value.colourId
          : colourId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ProductCategoryEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ProductCategoryEditDTO {
  _$ProductCategoryEditDTOImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "product_id") this.productId,
      @JsonKey(name: "colour_id") this.colourId});

  factory _$ProductCategoryEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String? name;
  @override
  @JsonKey(name: "product_id")
  String? productId;
  @override
  @JsonKey(name: "colour_id")
  String? colourId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductCategoryEditDTO(name: $name, productId: $productId, colourId: $colourId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductCategoryEditDTO'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('colourId', colourId));
  }

  /// Create a copy of ProductCategoryEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryEditDTOImplCopyWith<_$ProductCategoryEditDTOImpl>
      get copyWith => __$$ProductCategoryEditDTOImplCopyWithImpl<
          _$ProductCategoryEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryEditDTO implements ProductCategoryEditDTO {
  factory _ProductCategoryEditDTO(
          {@JsonKey(name: "name") String? name,
          @JsonKey(name: "product_id") String? productId,
          @JsonKey(name: "colour_id") String? colourId}) =
      _$ProductCategoryEditDTOImpl;

  factory _ProductCategoryEditDTO.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "name")
  set name(String? value);
  @override
  @JsonKey(name: "product_id")
  String? get productId;
  @JsonKey(name: "product_id")
  set productId(String? value);
  @override
  @JsonKey(name: "colour_id")
  String? get colourId;
  @JsonKey(name: "colour_id")
  set colourId(String? value);

  /// Create a copy of ProductCategoryEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryEditDTOImplCopyWith<_$ProductCategoryEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDTO {
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
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "expected_price")
  int? get expectedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "tag_ids")
  List<String>? get tagIds => throw _privateConstructorUsedError;

  /// Serializes this ProductDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res, ProductDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "expected_price") int? expectedPrice,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "tag_ids") List<String>? tagIds});
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res, $Val extends ProductDTO>
    implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? name = null,
    Object? description = freezed,
    Object? expectedPrice = freezed,
    Object? provider = freezed,
    Object? tagIds = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedPrice: freezed == expectedPrice
          ? _value.expectedPrice
          : expectedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDTOImplCopyWith<$Res>
    implements $ProductDTOCopyWith<$Res> {
  factory _$$ProductDTOImplCopyWith(
          _$ProductDTOImpl value, $Res Function(_$ProductDTOImpl) then) =
      __$$ProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "expected_price") int? expectedPrice,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "tag_ids") List<String>? tagIds});
}

/// @nodoc
class __$$ProductDTOImplCopyWithImpl<$Res>
    extends _$ProductDTOCopyWithImpl<$Res, _$ProductDTOImpl>
    implements _$$ProductDTOImplCopyWith<$Res> {
  __$$ProductDTOImplCopyWithImpl(
      _$ProductDTOImpl _value, $Res Function(_$ProductDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? name = null,
    Object? description = freezed,
    Object? expectedPrice = freezed,
    Object? provider = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_$ProductDTOImpl(
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedPrice: freezed == expectedPrice
          ? _value.expectedPrice
          : expectedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDTOImpl with DiagnosticableTreeMixin implements _ProductDTO {
  const _$ProductDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "expected_price") this.expectedPrice,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "tag_ids") final List<String>? tagIds})
      : _tagIds = tagIds;

  factory _$ProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDTOImplFromJson(json);

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
  final String name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "expected_price")
  final int? expectedPrice;
  @override
  @JsonKey(name: "provider")
  final String? provider;
  final List<String>? _tagIds;
  @override
  @JsonKey(name: "tag_ids")
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, name: $name, description: $description, expectedPrice: $expectedPrice, provider: $provider, tagIds: $tagIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('expectedPrice', expectedPrice))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('tagIds', tagIds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expectedPrice, expectedPrice) ||
                other.expectedPrice == expectedPrice) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      collectionName,
      created,
      updated,
      name,
      description,
      expectedPrice,
      provider,
      const DeepCollectionEquality().hash(_tagIds));

  /// Create a copy of ProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDTOImplCopyWith<_$ProductDTOImpl> get copyWith =>
      __$$ProductDTOImplCopyWithImpl<_$ProductDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductDTO implements ProductDTO {
  const factory _ProductDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "expected_price") final int? expectedPrice,
      @JsonKey(name: "provider") final String? provider,
      @JsonKey(name: "tag_ids") final List<String>? tagIds}) = _$ProductDTOImpl;

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$ProductDTOImpl.fromJson;

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
  String get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "expected_price")
  int? get expectedPrice;
  @override
  @JsonKey(name: "provider")
  String? get provider;
  @override
  @JsonKey(name: "tag_ids")
  List<String>? get tagIds;

  /// Create a copy of ProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDTOImplCopyWith<_$ProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductEditDTO _$ProductEditDTOFromJson(Map<String, dynamic> json) {
  return _ProductEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductEditDTO {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  set description(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "expected_price")
  int? get expectedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "expected_price")
  set expectedPrice(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "provider")
  set provider(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "tag_ids")
  List<String>? get tagIds => throw _privateConstructorUsedError;
  @JsonKey(name: "tag_ids")
  set tagIds(List<String>? value) => throw _privateConstructorUsedError;

  /// Serializes this ProductEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEditDTOCopyWith<ProductEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEditDTOCopyWith<$Res> {
  factory $ProductEditDTOCopyWith(
          ProductEditDTO value, $Res Function(ProductEditDTO) then) =
      _$ProductEditDTOCopyWithImpl<$Res, ProductEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "expected_price") int? expectedPrice,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "tag_ids") List<String>? tagIds});
}

/// @nodoc
class _$ProductEditDTOCopyWithImpl<$Res, $Val extends ProductEditDTO>
    implements $ProductEditDTOCopyWith<$Res> {
  _$ProductEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? expectedPrice = freezed,
    Object? provider = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedPrice: freezed == expectedPrice
          ? _value.expectedPrice
          : expectedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductEditDTOImplCopyWith<$Res>
    implements $ProductEditDTOCopyWith<$Res> {
  factory _$$ProductEditDTOImplCopyWith(_$ProductEditDTOImpl value,
          $Res Function(_$ProductEditDTOImpl) then) =
      __$$ProductEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "expected_price") int? expectedPrice,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "tag_ids") List<String>? tagIds});
}

/// @nodoc
class __$$ProductEditDTOImplCopyWithImpl<$Res>
    extends _$ProductEditDTOCopyWithImpl<$Res, _$ProductEditDTOImpl>
    implements _$$ProductEditDTOImplCopyWith<$Res> {
  __$$ProductEditDTOImplCopyWithImpl(
      _$ProductEditDTOImpl _value, $Res Function(_$ProductEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? expectedPrice = freezed,
    Object? provider = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_$ProductEditDTOImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedPrice: freezed == expectedPrice
          ? _value.expectedPrice
          : expectedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ProductEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ProductEditDTO {
  _$ProductEditDTOImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "expected_price") this.expectedPrice,
      @JsonKey(name: "provider") this.provider,
      @JsonKey(name: "tag_ids") this.tagIds});

  factory _$ProductEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String? name;
  @override
  @JsonKey(name: "description")
  String? description;
  @override
  @JsonKey(name: "expected_price")
  int? expectedPrice;
  @override
  @JsonKey(name: "provider")
  String? provider;
  @override
  @JsonKey(name: "tag_ids")
  List<String>? tagIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEditDTO(name: $name, description: $description, expectedPrice: $expectedPrice, provider: $provider, tagIds: $tagIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEditDTO'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('expectedPrice', expectedPrice))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('tagIds', tagIds));
  }

  /// Create a copy of ProductEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEditDTOImplCopyWith<_$ProductEditDTOImpl> get copyWith =>
      __$$ProductEditDTOImplCopyWithImpl<_$ProductEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductEditDTO implements ProductEditDTO {
  factory _ProductEditDTO(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "expected_price") int? expectedPrice,
      @JsonKey(name: "provider") String? provider,
      @JsonKey(name: "tag_ids") List<String>? tagIds}) = _$ProductEditDTOImpl;

  factory _ProductEditDTO.fromJson(Map<String, dynamic> json) =
      _$ProductEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "name")
  set name(String? value);
  @override
  @JsonKey(name: "description")
  String? get description;
  @JsonKey(name: "description")
  set description(String? value);
  @override
  @JsonKey(name: "expected_price")
  int? get expectedPrice;
  @JsonKey(name: "expected_price")
  set expectedPrice(int? value);
  @override
  @JsonKey(name: "provider")
  String? get provider;
  @JsonKey(name: "provider")
  set provider(String? value);
  @override
  @JsonKey(name: "tag_ids")
  List<String>? get tagIds;
  @JsonKey(name: "tag_ids")
  set tagIds(List<String>? value);

  /// Create a copy of ProductEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEditDTOImplCopyWith<_$ProductEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

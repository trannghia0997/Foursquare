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

ProductQuantityDTO _$ProductQuantityDTOFromJson(Map<String, dynamic> json) {
  return _ProductQuantityDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductQuantityDTO {
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
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  String get workingUnitId => throw _privateConstructorUsedError;

  /// Serializes this ProductQuantityDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantityDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityDTOCopyWith<ProductQuantityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityDTOCopyWith<$Res> {
  factory $ProductQuantityDTOCopyWith(
          ProductQuantityDTO value, $Res Function(ProductQuantityDTO) then) =
      _$ProductQuantityDTOCopyWithImpl<$Res, ProductQuantityDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class _$ProductQuantityDTOCopyWithImpl<$Res, $Val extends ProductQuantityDTO>
    implements $ProductQuantityDTOCopyWith<$Res> {
  _$ProductQuantityDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantityDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
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
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: null == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductQuantityDTOImplCopyWith<$Res>
    implements $ProductQuantityDTOCopyWith<$Res> {
  factory _$$ProductQuantityDTOImplCopyWith(_$ProductQuantityDTOImpl value,
          $Res Function(_$ProductQuantityDTOImpl) then) =
      __$$ProductQuantityDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class __$$ProductQuantityDTOImplCopyWithImpl<$Res>
    extends _$ProductQuantityDTOCopyWithImpl<$Res, _$ProductQuantityDTOImpl>
    implements _$$ProductQuantityDTOImplCopyWith<$Res> {
  __$$ProductQuantityDTOImplCopyWithImpl(_$ProductQuantityDTOImpl _value,
      $Res Function(_$ProductQuantityDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantityDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
  }) {
    return _then(_$ProductQuantityDTOImpl(
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
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: null == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductQuantityDTOImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantityDTO {
  const _$ProductQuantityDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "categoryId") required this.categoryId,
      @JsonKey(name: "workingUnitId") required this.workingUnitId});

  factory _$ProductQuantityDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityDTOImplFromJson(json);

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
  @JsonKey(name: "qty")
  final int? qty;
  @override
  @JsonKey(name: "categoryId")
  final String categoryId;
  @override
  @JsonKey(name: "workingUnitId")
  final String workingUnitId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductQuantityDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, qty: $qty, categoryId: $categoryId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantityDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.workingUnitId, workingUnitId) ||
                other.workingUnitId == workingUnitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, qty, categoryId, workingUnitId);

  /// Create a copy of ProductQuantityDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityDTOImplCopyWith<_$ProductQuantityDTOImpl> get copyWith =>
      __$$ProductQuantityDTOImplCopyWithImpl<_$ProductQuantityDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQuantityDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductQuantityDTO implements ProductQuantityDTO {
  const factory _ProductQuantityDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "qty") final int? qty,
      @JsonKey(name: "categoryId") required final String categoryId,
      @JsonKey(name: "workingUnitId")
      required final String workingUnitId}) = _$ProductQuantityDTOImpl;

  factory _ProductQuantityDTO.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityDTOImpl.fromJson;

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
  @JsonKey(name: "qty")
  int? get qty;
  @override
  @JsonKey(name: "categoryId")
  String get categoryId;
  @override
  @JsonKey(name: "workingUnitId")
  String get workingUnitId;

  /// Create a copy of ProductQuantityDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityDTOImplCopyWith<_$ProductQuantityDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductQuantityEditDTO _$ProductQuantityEditDTOFromJson(
    Map<String, dynamic> json) {
  return _ProductQuantityEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductQuantityEditDTO {
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  set qty(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  set categoryId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  String get workingUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  set workingUnitId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ProductQuantityEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantityEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityEditDTOCopyWith<ProductQuantityEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityEditDTOCopyWith<$Res> {
  factory $ProductQuantityEditDTOCopyWith(ProductQuantityEditDTO value,
          $Res Function(ProductQuantityEditDTO) then) =
      _$ProductQuantityEditDTOCopyWithImpl<$Res, ProductQuantityEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class _$ProductQuantityEditDTOCopyWithImpl<$Res,
        $Val extends ProductQuantityEditDTO>
    implements $ProductQuantityEditDTOCopyWith<$Res> {
  _$ProductQuantityEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantityEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
  }) {
    return _then(_value.copyWith(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: null == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductQuantityEditDTOImplCopyWith<$Res>
    implements $ProductQuantityEditDTOCopyWith<$Res> {
  factory _$$ProductQuantityEditDTOImplCopyWith(
          _$ProductQuantityEditDTOImpl value,
          $Res Function(_$ProductQuantityEditDTOImpl) then) =
      __$$ProductQuantityEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class __$$ProductQuantityEditDTOImplCopyWithImpl<$Res>
    extends _$ProductQuantityEditDTOCopyWithImpl<$Res,
        _$ProductQuantityEditDTOImpl>
    implements _$$ProductQuantityEditDTOImplCopyWith<$Res> {
  __$$ProductQuantityEditDTOImplCopyWithImpl(
      _$ProductQuantityEditDTOImpl _value,
      $Res Function(_$ProductQuantityEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantityEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
  }) {
    return _then(_$ProductQuantityEditDTOImpl(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      workingUnitId: null == workingUnitId
          ? _value.workingUnitId
          : workingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ProductQuantityEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantityEditDTO {
  _$ProductQuantityEditDTOImpl(
      {@JsonKey(name: "qty") this.qty,
      @JsonKey(name: "categoryId") required this.categoryId,
      @JsonKey(name: "workingUnitId") required this.workingUnitId});

  factory _$ProductQuantityEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "qty")
  int? qty;
  @override
  @JsonKey(name: "categoryId")
  String categoryId;
  @override
  @JsonKey(name: "workingUnitId")
  String workingUnitId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductQuantityEditDTO(qty: $qty, categoryId: $categoryId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantityEditDTO'))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  /// Create a copy of ProductQuantityEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityEditDTOImplCopyWith<_$ProductQuantityEditDTOImpl>
      get copyWith => __$$ProductQuantityEditDTOImplCopyWithImpl<
          _$ProductQuantityEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQuantityEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductQuantityEditDTO implements ProductQuantityEditDTO {
  factory _ProductQuantityEditDTO(
          {@JsonKey(name: "qty") int? qty,
          @JsonKey(name: "categoryId") required String categoryId,
          @JsonKey(name: "workingUnitId") required String workingUnitId}) =
      _$ProductQuantityEditDTOImpl;

  factory _ProductQuantityEditDTO.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "qty")
  int? get qty;
  @JsonKey(name: "qty")
  set qty(int? value);
  @override
  @JsonKey(name: "categoryId")
  String get categoryId;
  @JsonKey(name: "categoryId")
  set categoryId(String value);
  @override
  @JsonKey(name: "workingUnitId")
  String get workingUnitId;
  @JsonKey(name: "workingUnitId")
  set workingUnitId(String value);

  /// Create a copy of ProductQuantityEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityEditDTOImplCopyWith<_$ProductQuantityEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

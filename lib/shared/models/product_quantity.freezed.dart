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

ProductQuantityDto _$ProductQuantityDtoFromJson(Map<String, dynamic> json) {
  return _ProductQuantityDto.fromJson(json);
}

/// @nodoc
mixin _$ProductQuantityDto {
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
  @JsonKey(name: "priority")
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "workingUnitId")
  String get workingUnitId => throw _privateConstructorUsedError;

  /// Serializes this ProductQuantityDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityDtoCopyWith<ProductQuantityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityDtoCopyWith<$Res> {
  factory $ProductQuantityDtoCopyWith(
          ProductQuantityDto value, $Res Function(ProductQuantityDto) then) =
      _$ProductQuantityDtoCopyWithImpl<$Res, ProductQuantityDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "priority") int priority,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class _$ProductQuantityDtoCopyWithImpl<$Res, $Val extends ProductQuantityDto>
    implements $ProductQuantityDtoCopyWith<$Res> {
  _$ProductQuantityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? priority = null,
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
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ProductQuantityDtoImplCopyWith<$Res>
    implements $ProductQuantityDtoCopyWith<$Res> {
  factory _$$ProductQuantityDtoImplCopyWith(_$ProductQuantityDtoImpl value,
          $Res Function(_$ProductQuantityDtoImpl) then) =
      __$$ProductQuantityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "priority") int priority,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class __$$ProductQuantityDtoImplCopyWithImpl<$Res>
    extends _$ProductQuantityDtoCopyWithImpl<$Res, _$ProductQuantityDtoImpl>
    implements _$$ProductQuantityDtoImplCopyWith<$Res> {
  __$$ProductQuantityDtoImplCopyWithImpl(_$ProductQuantityDtoImpl _value,
      $Res Function(_$ProductQuantityDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? priority = null,
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
  }) {
    return _then(_$ProductQuantityDtoImpl(
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
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ProductQuantityDtoImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantityDto {
  const _$ProductQuantityDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "priority") required this.priority,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "categoryId") required this.categoryId,
      @JsonKey(name: "workingUnitId") required this.workingUnitId});

  factory _$ProductQuantityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityDtoImplFromJson(json);

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
  @JsonKey(name: "priority")
  final int priority;
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
    return 'ProductQuantityDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, priority: $priority, qty: $qty, categoryId: $categoryId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantityDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantityDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.workingUnitId, workingUnitId) ||
                other.workingUnitId == workingUnitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, priority, qty, categoryId, workingUnitId);

  /// Create a copy of ProductQuantityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityDtoImplCopyWith<_$ProductQuantityDtoImpl> get copyWith =>
      __$$ProductQuantityDtoImplCopyWithImpl<_$ProductQuantityDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQuantityDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductQuantityDto implements ProductQuantityDto {
  const factory _ProductQuantityDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "priority") required final int priority,
      @JsonKey(name: "qty") final int? qty,
      @JsonKey(name: "categoryId") required final String categoryId,
      @JsonKey(name: "workingUnitId")
      required final String workingUnitId}) = _$ProductQuantityDtoImpl;

  factory _ProductQuantityDto.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityDtoImpl.fromJson;

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
  @JsonKey(name: "priority")
  int get priority;
  @override
  @JsonKey(name: "qty")
  int? get qty;
  @override
  @JsonKey(name: "categoryId")
  String get categoryId;
  @override
  @JsonKey(name: "workingUnitId")
  String get workingUnitId;

  /// Create a copy of ProductQuantityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityDtoImplCopyWith<_$ProductQuantityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductQuantityEditDto _$ProductQuantityEditDtoFromJson(
    Map<String, dynamic> json) {
  return _ProductQuantityEditDto.fromJson(json);
}

/// @nodoc
mixin _$ProductQuantityEditDto {
  @JsonKey(name: "priority")
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  set priority(int value) => throw _privateConstructorUsedError;
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

  /// Serializes this ProductQuantityEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantityEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantityEditDtoCopyWith<ProductQuantityEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantityEditDtoCopyWith<$Res> {
  factory $ProductQuantityEditDtoCopyWith(ProductQuantityEditDto value,
          $Res Function(ProductQuantityEditDto) then) =
      _$ProductQuantityEditDtoCopyWithImpl<$Res, ProductQuantityEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "priority") int priority,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class _$ProductQuantityEditDtoCopyWithImpl<$Res,
        $Val extends ProductQuantityEditDto>
    implements $ProductQuantityEditDtoCopyWith<$Res> {
  _$ProductQuantityEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantityEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = null,
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
  }) {
    return _then(_value.copyWith(
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ProductQuantityEditDtoImplCopyWith<$Res>
    implements $ProductQuantityEditDtoCopyWith<$Res> {
  factory _$$ProductQuantityEditDtoImplCopyWith(
          _$ProductQuantityEditDtoImpl value,
          $Res Function(_$ProductQuantityEditDtoImpl) then) =
      __$$ProductQuantityEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "priority") int priority,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "categoryId") String categoryId,
      @JsonKey(name: "workingUnitId") String workingUnitId});
}

/// @nodoc
class __$$ProductQuantityEditDtoImplCopyWithImpl<$Res>
    extends _$ProductQuantityEditDtoCopyWithImpl<$Res,
        _$ProductQuantityEditDtoImpl>
    implements _$$ProductQuantityEditDtoImplCopyWith<$Res> {
  __$$ProductQuantityEditDtoImplCopyWithImpl(
      _$ProductQuantityEditDtoImpl _value,
      $Res Function(_$ProductQuantityEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantityEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = null,
    Object? qty = freezed,
    Object? categoryId = null,
    Object? workingUnitId = null,
  }) {
    return _then(_$ProductQuantityEditDtoImpl(
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ProductQuantityEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantityEditDto {
  _$ProductQuantityEditDtoImpl(
      {@JsonKey(name: "priority") required this.priority,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "categoryId") required this.categoryId,
      @JsonKey(name: "workingUnitId") required this.workingUnitId});

  factory _$ProductQuantityEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQuantityEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "priority")
  int priority;
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
    return 'ProductQuantityEditDto(priority: $priority, qty: $qty, categoryId: $categoryId, workingUnitId: $workingUnitId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantityEditDto'))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('workingUnitId', workingUnitId));
  }

  /// Create a copy of ProductQuantityEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantityEditDtoImplCopyWith<_$ProductQuantityEditDtoImpl>
      get copyWith => __$$ProductQuantityEditDtoImplCopyWithImpl<
          _$ProductQuantityEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQuantityEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductQuantityEditDto implements ProductQuantityEditDto {
  factory _ProductQuantityEditDto(
          {@JsonKey(name: "priority") required int priority,
          @JsonKey(name: "qty") int? qty,
          @JsonKey(name: "categoryId") required String categoryId,
          @JsonKey(name: "workingUnitId") required String workingUnitId}) =
      _$ProductQuantityEditDtoImpl;

  factory _ProductQuantityEditDto.fromJson(Map<String, dynamic> json) =
      _$ProductQuantityEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "priority")
  int get priority;
  @JsonKey(name: "priority")
  set priority(int value);
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

  /// Create a copy of ProductQuantityEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantityEditDtoImplCopyWith<_$ProductQuantityEditDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

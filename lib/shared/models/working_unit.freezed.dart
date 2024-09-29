// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkingUnitDto _$WorkingUnitDtoFromJson(Map<String, dynamic> json) {
  return _WorkingUnitDto.fromJson(json);
}

/// @nodoc
mixin _$WorkingUnitDto {
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
  @JsonKey(name: "type")
  WorkingUnitType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "imageUrl")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String? get addressId => throw _privateConstructorUsedError;

  /// Serializes this WorkingUnitDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkingUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkingUnitDtoCopyWith<WorkingUnitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingUnitDtoCopyWith<$Res> {
  factory $WorkingUnitDtoCopyWith(
          WorkingUnitDto value, $Res Function(WorkingUnitDto) then) =
      _$WorkingUnitDtoCopyWithImpl<$Res, WorkingUnitDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "type") WorkingUnitType type,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "addressId") String? addressId});
}

/// @nodoc
class _$WorkingUnitDtoCopyWithImpl<$Res, $Val extends WorkingUnitDto>
    implements $WorkingUnitDtoCopyWith<$Res> {
  _$WorkingUnitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkingUnitDto
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
    Object? type = null,
    Object? imageUrl = freezed,
    Object? addressId = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkingUnitType,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingUnitDtoImplCopyWith<$Res>
    implements $WorkingUnitDtoCopyWith<$Res> {
  factory _$$WorkingUnitDtoImplCopyWith(_$WorkingUnitDtoImpl value,
          $Res Function(_$WorkingUnitDtoImpl) then) =
      __$$WorkingUnitDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "type") WorkingUnitType type,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "addressId") String? addressId});
}

/// @nodoc
class __$$WorkingUnitDtoImplCopyWithImpl<$Res>
    extends _$WorkingUnitDtoCopyWithImpl<$Res, _$WorkingUnitDtoImpl>
    implements _$$WorkingUnitDtoImplCopyWith<$Res> {
  __$$WorkingUnitDtoImplCopyWithImpl(
      _$WorkingUnitDtoImpl _value, $Res Function(_$WorkingUnitDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkingUnitDto
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
    Object? type = null,
    Object? imageUrl = freezed,
    Object? addressId = freezed,
  }) {
    return _then(_$WorkingUnitDtoImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkingUnitType,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingUnitDtoImpl
    with DiagnosticableTreeMixin
    implements _WorkingUnitDto {
  const _$WorkingUnitDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "imageUrl") this.imageUrl,
      @JsonKey(name: "addressId") this.addressId});

  factory _$WorkingUnitDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingUnitDtoImplFromJson(json);

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
  @JsonKey(name: "type")
  final WorkingUnitType type;
  @override
  @JsonKey(name: "imageUrl")
  final String? imageUrl;
  @override
  @JsonKey(name: "addressId")
  final String? addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkingUnitDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, name: $name, type: $type, imageUrl: $imageUrl, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkingUnitDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingUnitDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, name, type, imageUrl, addressId);

  /// Create a copy of WorkingUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingUnitDtoImplCopyWith<_$WorkingUnitDtoImpl> get copyWith =>
      __$$WorkingUnitDtoImplCopyWithImpl<_$WorkingUnitDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingUnitDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkingUnitDto implements WorkingUnitDto {
  const factory _WorkingUnitDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "type") required final WorkingUnitType type,
          @JsonKey(name: "imageUrl") final String? imageUrl,
          @JsonKey(name: "addressId") final String? addressId}) =
      _$WorkingUnitDtoImpl;

  factory _WorkingUnitDto.fromJson(Map<String, dynamic> json) =
      _$WorkingUnitDtoImpl.fromJson;

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
  @JsonKey(name: "type")
  WorkingUnitType get type;
  @override
  @JsonKey(name: "imageUrl")
  String? get imageUrl;
  @override
  @JsonKey(name: "addressId")
  String? get addressId;

  /// Create a copy of WorkingUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkingUnitDtoImplCopyWith<_$WorkingUnitDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingUnitEditDto _$WorkingUnitEditDtoFromJson(Map<String, dynamic> json) {
  return _WorkingUnitEditDto.fromJson(json);
}

/// @nodoc
mixin _$WorkingUnitEditDto {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  WorkingUnitType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(WorkingUnitType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "imageUrl")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "imageUrl")
  set imageUrl(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String? get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  set addressId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this WorkingUnitEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkingUnitEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkingUnitEditDtoCopyWith<WorkingUnitEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingUnitEditDtoCopyWith<$Res> {
  factory $WorkingUnitEditDtoCopyWith(
          WorkingUnitEditDto value, $Res Function(WorkingUnitEditDto) then) =
      _$WorkingUnitEditDtoCopyWithImpl<$Res, WorkingUnitEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "type") WorkingUnitType type,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "addressId") String? addressId});
}

/// @nodoc
class _$WorkingUnitEditDtoCopyWithImpl<$Res, $Val extends WorkingUnitEditDto>
    implements $WorkingUnitEditDtoCopyWith<$Res> {
  _$WorkingUnitEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkingUnitEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? addressId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkingUnitType,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingUnitEditDtoImplCopyWith<$Res>
    implements $WorkingUnitEditDtoCopyWith<$Res> {
  factory _$$WorkingUnitEditDtoImplCopyWith(_$WorkingUnitEditDtoImpl value,
          $Res Function(_$WorkingUnitEditDtoImpl) then) =
      __$$WorkingUnitEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "type") WorkingUnitType type,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "addressId") String? addressId});
}

/// @nodoc
class __$$WorkingUnitEditDtoImplCopyWithImpl<$Res>
    extends _$WorkingUnitEditDtoCopyWithImpl<$Res, _$WorkingUnitEditDtoImpl>
    implements _$$WorkingUnitEditDtoImplCopyWith<$Res> {
  __$$WorkingUnitEditDtoImplCopyWithImpl(_$WorkingUnitEditDtoImpl _value,
      $Res Function(_$WorkingUnitEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkingUnitEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? addressId = freezed,
  }) {
    return _then(_$WorkingUnitEditDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkingUnitType,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WorkingUnitEditDtoImpl
    with DiagnosticableTreeMixin
    implements _WorkingUnitEditDto {
  _$WorkingUnitEditDtoImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "imageUrl") this.imageUrl,
      @JsonKey(name: "addressId") this.addressId});

  factory _$WorkingUnitEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingUnitEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String name;
  @override
  @JsonKey(name: "type")
  WorkingUnitType type;
  @override
  @JsonKey(name: "imageUrl")
  String? imageUrl;
  @override
  @JsonKey(name: "addressId")
  String? addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkingUnitEditDto(name: $name, type: $type, imageUrl: $imageUrl, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkingUnitEditDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  /// Create a copy of WorkingUnitEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingUnitEditDtoImplCopyWith<_$WorkingUnitEditDtoImpl> get copyWith =>
      __$$WorkingUnitEditDtoImplCopyWithImpl<_$WorkingUnitEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingUnitEditDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkingUnitEditDto implements WorkingUnitEditDto {
  factory _WorkingUnitEditDto(
          {@JsonKey(name: "name") required String name,
          @JsonKey(name: "type") required WorkingUnitType type,
          @JsonKey(name: "imageUrl") String? imageUrl,
          @JsonKey(name: "addressId") String? addressId}) =
      _$WorkingUnitEditDtoImpl;

  factory _WorkingUnitEditDto.fromJson(Map<String, dynamic> json) =
      _$WorkingUnitEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "name")
  set name(String value);
  @override
  @JsonKey(name: "type")
  WorkingUnitType get type;
  @JsonKey(name: "type")
  set type(WorkingUnitType value);
  @override
  @JsonKey(name: "imageUrl")
  String? get imageUrl;
  @JsonKey(name: "imageUrl")
  set imageUrl(String? value);
  @override
  @JsonKey(name: "addressId")
  String? get addressId;
  @JsonKey(name: "addressId")
  set addressId(String? value);

  /// Create a copy of WorkingUnitEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkingUnitEditDtoImplCopyWith<_$WorkingUnitEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

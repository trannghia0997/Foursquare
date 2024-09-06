// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagDTO _$TagDTOFromJson(Map<String, dynamic> json) {
  return _TagDTO.fromJson(json);
}

/// @nodoc
mixin _$TagDTO {
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

  /// Serializes this TagDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagDTOCopyWith<TagDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDTOCopyWith<$Res> {
  factory $TagDTOCopyWith(TagDTO value, $Res Function(TagDTO) then) =
      _$TagDTOCopyWithImpl<$Res, TagDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class _$TagDTOCopyWithImpl<$Res, $Val extends TagDTO>
    implements $TagDTOCopyWith<$Res> {
  _$TagDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagDTO
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagDTOImplCopyWith<$Res> implements $TagDTOCopyWith<$Res> {
  factory _$$TagDTOImplCopyWith(
          _$TagDTOImpl value, $Res Function(_$TagDTOImpl) then) =
      __$$TagDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$TagDTOImplCopyWithImpl<$Res>
    extends _$TagDTOCopyWithImpl<$Res, _$TagDTOImpl>
    implements _$$TagDTOImplCopyWith<$Res> {
  __$$TagDTOImplCopyWithImpl(
      _$TagDTOImpl _value, $Res Function(_$TagDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagDTO
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
  }) {
    return _then(_$TagDTOImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagDTOImpl with DiagnosticableTreeMixin implements _TagDTO {
  const _$TagDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") required this.name});

  factory _$TagDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagDTOImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TagDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TagDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, collectionId, collectionName, created, updated, name);

  /// Create a copy of TagDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagDTOImplCopyWith<_$TagDTOImpl> get copyWith =>
      __$$TagDTOImplCopyWithImpl<_$TagDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagDTOImplToJson(
      this,
    );
  }
}

abstract class _TagDTO implements TagDTO {
  const factory _TagDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "name") required final String name}) = _$TagDTOImpl;

  factory _TagDTO.fromJson(Map<String, dynamic> json) = _$TagDTOImpl.fromJson;

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

  /// Create a copy of TagDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagDTOImplCopyWith<_$TagDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagEditDTO _$TagEditDTOFromJson(Map<String, dynamic> json) {
  return _TagEditDTO.fromJson(json);
}

/// @nodoc
mixin _$TagEditDTO {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String? value) => throw _privateConstructorUsedError;

  /// Serializes this TagEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagEditDTOCopyWith<TagEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagEditDTOCopyWith<$Res> {
  factory $TagEditDTOCopyWith(
          TagEditDTO value, $Res Function(TagEditDTO) then) =
      _$TagEditDTOCopyWithImpl<$Res, TagEditDTO>;
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class _$TagEditDTOCopyWithImpl<$Res, $Val extends TagEditDTO>
    implements $TagEditDTOCopyWith<$Res> {
  _$TagEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagEditDTOImplCopyWith<$Res>
    implements $TagEditDTOCopyWith<$Res> {
  factory _$$TagEditDTOImplCopyWith(
          _$TagEditDTOImpl value, $Res Function(_$TagEditDTOImpl) then) =
      __$$TagEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$TagEditDTOImplCopyWithImpl<$Res>
    extends _$TagEditDTOCopyWithImpl<$Res, _$TagEditDTOImpl>
    implements _$$TagEditDTOImplCopyWith<$Res> {
  __$$TagEditDTOImplCopyWithImpl(
      _$TagEditDTOImpl _value, $Res Function(_$TagEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$TagEditDTOImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$TagEditDTOImpl with DiagnosticableTreeMixin implements _TagEditDTO {
  _$TagEditDTOImpl({@JsonKey(name: "name") this.name});

  factory _$TagEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TagEditDTO(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TagEditDTO'))
      ..add(DiagnosticsProperty('name', name));
  }

  /// Create a copy of TagEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagEditDTOImplCopyWith<_$TagEditDTOImpl> get copyWith =>
      __$$TagEditDTOImplCopyWithImpl<_$TagEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagEditDTOImplToJson(
      this,
    );
  }
}

abstract class _TagEditDTO implements TagEditDTO {
  factory _TagEditDTO({@JsonKey(name: "name") String? name}) = _$TagEditDTOImpl;

  factory _TagEditDTO.fromJson(Map<String, dynamic> json) =
      _$TagEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @JsonKey(name: "name")
  set name(String? value);

  /// Create a copy of TagEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagEditDTOImplCopyWith<_$TagEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

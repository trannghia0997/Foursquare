// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColourDTO _$ColourDTOFromJson(Map<String, dynamic> json) {
  return _ColourDTO.fromJson(json);
}

/// @nodoc
mixin _$ColourDTO {
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
  @JsonKey(name: "hexCode")
  String get hexCode => throw _privateConstructorUsedError;

  /// Serializes this ColourDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColourDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColourDTOCopyWith<ColourDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColourDTOCopyWith<$Res> {
  factory $ColourDTOCopyWith(ColourDTO value, $Res Function(ColourDTO) then) =
      _$ColourDTOCopyWithImpl<$Res, ColourDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "hexCode") String hexCode});
}

/// @nodoc
class _$ColourDTOCopyWithImpl<$Res, $Val extends ColourDTO>
    implements $ColourDTOCopyWith<$Res> {
  _$ColourDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColourDTO
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
    Object? hexCode = null,
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
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColourDTOImplCopyWith<$Res>
    implements $ColourDTOCopyWith<$Res> {
  factory _$$ColourDTOImplCopyWith(
          _$ColourDTOImpl value, $Res Function(_$ColourDTOImpl) then) =
      __$$ColourDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "hexCode") String hexCode});
}

/// @nodoc
class __$$ColourDTOImplCopyWithImpl<$Res>
    extends _$ColourDTOCopyWithImpl<$Res, _$ColourDTOImpl>
    implements _$$ColourDTOImplCopyWith<$Res> {
  __$$ColourDTOImplCopyWithImpl(
      _$ColourDTOImpl _value, $Res Function(_$ColourDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColourDTO
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
    Object? hexCode = null,
  }) {
    return _then(_$ColourDTOImpl(
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
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColourDTOImpl with DiagnosticableTreeMixin implements _ColourDTO {
  const _$ColourDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "hexCode") required this.hexCode});

  factory _$ColourDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColourDTOImplFromJson(json);

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
  @JsonKey(name: "hexCode")
  final String hexCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ColourDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, name: $name, hexCode: $hexCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ColourDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('hexCode', hexCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColourDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hexCode, hexCode) || other.hexCode == hexCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, name, hexCode);

  /// Create a copy of ColourDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColourDTOImplCopyWith<_$ColourDTOImpl> get copyWith =>
      __$$ColourDTOImplCopyWithImpl<_$ColourDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColourDTOImplToJson(
      this,
    );
  }
}

abstract class _ColourDTO implements ColourDTO {
  const factory _ColourDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "hexCode") required final String hexCode}) =
      _$ColourDTOImpl;

  factory _ColourDTO.fromJson(Map<String, dynamic> json) =
      _$ColourDTOImpl.fromJson;

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
  @JsonKey(name: "hexCode")
  String get hexCode;

  /// Create a copy of ColourDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColourDTOImplCopyWith<_$ColourDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColourEditDTO _$ColourEditDTOFromJson(Map<String, dynamic> json) {
  return _ColourEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ColourEditDTO {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "hexCode")
  String get hexCode => throw _privateConstructorUsedError;
  @JsonKey(name: "hexCode")
  set hexCode(String value) => throw _privateConstructorUsedError;

  /// Serializes this ColourEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColourEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColourEditDTOCopyWith<ColourEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColourEditDTOCopyWith<$Res> {
  factory $ColourEditDTOCopyWith(
          ColourEditDTO value, $Res Function(ColourEditDTO) then) =
      _$ColourEditDTOCopyWithImpl<$Res, ColourEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "hexCode") String hexCode});
}

/// @nodoc
class _$ColourEditDTOCopyWithImpl<$Res, $Val extends ColourEditDTO>
    implements $ColourEditDTOCopyWith<$Res> {
  _$ColourEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColourEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hexCode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColourEditDTOImplCopyWith<$Res>
    implements $ColourEditDTOCopyWith<$Res> {
  factory _$$ColourEditDTOImplCopyWith(
          _$ColourEditDTOImpl value, $Res Function(_$ColourEditDTOImpl) then) =
      __$$ColourEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "hexCode") String hexCode});
}

/// @nodoc
class __$$ColourEditDTOImplCopyWithImpl<$Res>
    extends _$ColourEditDTOCopyWithImpl<$Res, _$ColourEditDTOImpl>
    implements _$$ColourEditDTOImplCopyWith<$Res> {
  __$$ColourEditDTOImplCopyWithImpl(
      _$ColourEditDTOImpl _value, $Res Function(_$ColourEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColourEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hexCode = null,
  }) {
    return _then(_$ColourEditDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ColourEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ColourEditDTO {
  _$ColourEditDTOImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "hexCode") required this.hexCode});

  factory _$ColourEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColourEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String name;
  @override
  @JsonKey(name: "hexCode")
  String hexCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ColourEditDTO(name: $name, hexCode: $hexCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ColourEditDTO'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('hexCode', hexCode));
  }

  /// Create a copy of ColourEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColourEditDTOImplCopyWith<_$ColourEditDTOImpl> get copyWith =>
      __$$ColourEditDTOImplCopyWithImpl<_$ColourEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColourEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ColourEditDTO implements ColourEditDTO {
  factory _ColourEditDTO(
      {@JsonKey(name: "name") required String name,
      @JsonKey(name: "hexCode") required String hexCode}) = _$ColourEditDTOImpl;

  factory _ColourEditDTO.fromJson(Map<String, dynamic> json) =
      _$ColourEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "name")
  set name(String value);
  @override
  @JsonKey(name: "hexCode")
  String get hexCode;
  @JsonKey(name: "hexCode")
  set hexCode(String value);

  /// Create a copy of ColourEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColourEditDTOImplCopyWith<_$ColourEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

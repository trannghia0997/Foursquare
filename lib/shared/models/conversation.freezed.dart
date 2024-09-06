// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationDTO _$ConversationDTOFromJson(Map<String, dynamic> json) {
  return _ConversationDTO.fromJson(json);
}

/// @nodoc
mixin _$ConversationDTO {
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
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ConversationDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationDTOCopyWith<ConversationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDTOCopyWith<$Res> {
  factory $ConversationDTOCopyWith(
          ConversationDTO value, $Res Function(ConversationDTO) then) =
      _$ConversationDTOCopyWithImpl<$Res, ConversationDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$ConversationDTOCopyWithImpl<$Res, $Val extends ConversationDTO>
    implements $ConversationDTOCopyWith<$Res> {
  _$ConversationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationDTOImplCopyWith<$Res>
    implements $ConversationDTOCopyWith<$Res> {
  factory _$$ConversationDTOImplCopyWith(_$ConversationDTOImpl value,
          $Res Function(_$ConversationDTOImpl) then) =
      __$$ConversationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$ConversationDTOImplCopyWithImpl<$Res>
    extends _$ConversationDTOCopyWithImpl<$Res, _$ConversationDTOImpl>
    implements _$$ConversationDTOImplCopyWith<$Res> {
  __$$ConversationDTOImplCopyWithImpl(
      _$ConversationDTOImpl _value, $Res Function(_$ConversationDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? title = null,
  }) {
    return _then(_$ConversationDTOImpl(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationDTOImpl
    with DiagnosticableTreeMixin
    implements _ConversationDTO {
  const _$ConversationDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "title") required this.title});

  factory _$ConversationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDTOImplFromJson(json);

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
  @JsonKey(name: "title")
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, collectionId, collectionName, created, updated, title);

  /// Create a copy of ConversationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDTOImplCopyWith<_$ConversationDTOImpl> get copyWith =>
      __$$ConversationDTOImplCopyWithImpl<_$ConversationDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDTOImplToJson(
      this,
    );
  }
}

abstract class _ConversationDTO implements ConversationDTO {
  const factory _ConversationDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "title") required final String title}) =
      _$ConversationDTOImpl;

  factory _ConversationDTO.fromJson(Map<String, dynamic> json) =
      _$ConversationDTOImpl.fromJson;

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
  @JsonKey(name: "title")
  String get title;

  /// Create a copy of ConversationDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationDTOImplCopyWith<_$ConversationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationEditDTO _$ConversationEditDTOFromJson(Map<String, dynamic> json) {
  return _ConversationEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ConversationEditDTO {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  set title(String? value) => throw _privateConstructorUsedError;

  /// Serializes this ConversationEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationEditDTOCopyWith<ConversationEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEditDTOCopyWith<$Res> {
  factory $ConversationEditDTOCopyWith(
          ConversationEditDTO value, $Res Function(ConversationEditDTO) then) =
      _$ConversationEditDTOCopyWithImpl<$Res, ConversationEditDTO>;
  @useResult
  $Res call({@JsonKey(name: "title") String? title});
}

/// @nodoc
class _$ConversationEditDTOCopyWithImpl<$Res, $Val extends ConversationEditDTO>
    implements $ConversationEditDTOCopyWith<$Res> {
  _$ConversationEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationEditDTOImplCopyWith<$Res>
    implements $ConversationEditDTOCopyWith<$Res> {
  factory _$$ConversationEditDTOImplCopyWith(_$ConversationEditDTOImpl value,
          $Res Function(_$ConversationEditDTOImpl) then) =
      __$$ConversationEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$ConversationEditDTOImplCopyWithImpl<$Res>
    extends _$ConversationEditDTOCopyWithImpl<$Res, _$ConversationEditDTOImpl>
    implements _$$ConversationEditDTOImplCopyWith<$Res> {
  __$$ConversationEditDTOImplCopyWithImpl(_$ConversationEditDTOImpl _value,
      $Res Function(_$ConversationEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$ConversationEditDTOImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ConversationEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ConversationEditDTO {
  _$ConversationEditDTOImpl({@JsonKey(name: "title") this.title});

  factory _$ConversationEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "title")
  String? title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationEditDTO(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationEditDTO'))
      ..add(DiagnosticsProperty('title', title));
  }

  /// Create a copy of ConversationEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationEditDTOImplCopyWith<_$ConversationEditDTOImpl> get copyWith =>
      __$$ConversationEditDTOImplCopyWithImpl<_$ConversationEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ConversationEditDTO implements ConversationEditDTO {
  factory _ConversationEditDTO({@JsonKey(name: "title") String? title}) =
      _$ConversationEditDTOImpl;

  factory _ConversationEditDTO.fromJson(Map<String, dynamic> json) =
      _$ConversationEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @JsonKey(name: "title")
  set title(String? value);

  /// Create a copy of ConversationEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationEditDTOImplCopyWith<_$ConversationEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParticipantDTO _$ParticipantDTOFromJson(Map<String, dynamic> json) {
  return _ParticipantDTO.fromJson(json);
}

/// @nodoc
mixin _$ParticipantDTO {
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
  @JsonKey(name: "conversationId")
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this ParticipantDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantDTOCopyWith<ParticipantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantDTOCopyWith<$Res> {
  factory $ParticipantDTOCopyWith(
          ParticipantDTO value, $Res Function(ParticipantDTO) then) =
      _$ParticipantDTOCopyWithImpl<$Res, ParticipantDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class _$ParticipantDTOCopyWithImpl<$Res, $Val extends ParticipantDTO>
    implements $ParticipantDTOCopyWith<$Res> {
  _$ParticipantDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? conversationId = null,
    Object? userId = null,
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
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantDTOImplCopyWith<$Res>
    implements $ParticipantDTOCopyWith<$Res> {
  factory _$$ParticipantDTOImplCopyWith(_$ParticipantDTOImpl value,
          $Res Function(_$ParticipantDTOImpl) then) =
      __$$ParticipantDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class __$$ParticipantDTOImplCopyWithImpl<$Res>
    extends _$ParticipantDTOCopyWithImpl<$Res, _$ParticipantDTOImpl>
    implements _$$ParticipantDTOImplCopyWith<$Res> {
  __$$ParticipantDTOImplCopyWithImpl(
      _$ParticipantDTOImpl _value, $Res Function(_$ParticipantDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? conversationId = null,
    Object? userId = null,
  }) {
    return _then(_$ParticipantDTOImpl(
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
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantDTOImpl
    with DiagnosticableTreeMixin
    implements _ParticipantDTO {
  const _$ParticipantDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "conversationId") required this.conversationId,
      @JsonKey(name: "userId") required this.userId});

  factory _$ParticipantDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantDTOImplFromJson(json);

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
  @JsonKey(name: "conversationId")
  final String conversationId;
  @override
  @JsonKey(name: "userId")
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParticipantDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParticipantDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, conversationId, userId);

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantDTOImplCopyWith<_$ParticipantDTOImpl> get copyWith =>
      __$$ParticipantDTOImplCopyWithImpl<_$ParticipantDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantDTOImplToJson(
      this,
    );
  }
}

abstract class _ParticipantDTO implements ParticipantDTO {
  const factory _ParticipantDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "conversationId") required final String conversationId,
          @JsonKey(name: "userId") required final String userId}) =
      _$ParticipantDTOImpl;

  factory _ParticipantDTO.fromJson(Map<String, dynamic> json) =
      _$ParticipantDTOImpl.fromJson;

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
  @JsonKey(name: "conversationId")
  String get conversationId;
  @override
  @JsonKey(name: "userId")
  String get userId;

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantDTOImplCopyWith<_$ParticipantDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParticipantEditDTO _$ParticipantEditDTOFromJson(Map<String, dynamic> json) {
  return _ParticipantEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ParticipantEditDTO {
  @JsonKey(name: "conversationId")
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "conversationId")
  set conversationId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  set userId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ParticipantEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantEditDTOCopyWith<ParticipantEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantEditDTOCopyWith<$Res> {
  factory $ParticipantEditDTOCopyWith(
          ParticipantEditDTO value, $Res Function(ParticipantEditDTO) then) =
      _$ParticipantEditDTOCopyWithImpl<$Res, ParticipantEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class _$ParticipantEditDTOCopyWithImpl<$Res, $Val extends ParticipantEditDTO>
    implements $ParticipantEditDTOCopyWith<$Res> {
  _$ParticipantEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantEditDTOImplCopyWith<$Res>
    implements $ParticipantEditDTOCopyWith<$Res> {
  factory _$$ParticipantEditDTOImplCopyWith(_$ParticipantEditDTOImpl value,
          $Res Function(_$ParticipantEditDTOImpl) then) =
      __$$ParticipantEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class __$$ParticipantEditDTOImplCopyWithImpl<$Res>
    extends _$ParticipantEditDTOCopyWithImpl<$Res, _$ParticipantEditDTOImpl>
    implements _$$ParticipantEditDTOImplCopyWith<$Res> {
  __$$ParticipantEditDTOImplCopyWithImpl(_$ParticipantEditDTOImpl _value,
      $Res Function(_$ParticipantEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? userId = null,
  }) {
    return _then(_$ParticipantEditDTOImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ParticipantEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ParticipantEditDTO {
  _$ParticipantEditDTOImpl(
      {@JsonKey(name: "conversationId") required this.conversationId,
      @JsonKey(name: "userId") required this.userId});

  factory _$ParticipantEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "conversationId")
  String conversationId;
  @override
  @JsonKey(name: "userId")
  String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParticipantEditDTO(conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParticipantEditDTO'))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  /// Create a copy of ParticipantEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantEditDTOImplCopyWith<_$ParticipantEditDTOImpl> get copyWith =>
      __$$ParticipantEditDTOImplCopyWithImpl<_$ParticipantEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ParticipantEditDTO implements ParticipantEditDTO {
  factory _ParticipantEditDTO(
          {@JsonKey(name: "conversationId") required String conversationId,
          @JsonKey(name: "userId") required String userId}) =
      _$ParticipantEditDTOImpl;

  factory _ParticipantEditDTO.fromJson(Map<String, dynamic> json) =
      _$ParticipantEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "conversationId")
  String get conversationId;
  @JsonKey(name: "conversationId")
  set conversationId(String value);
  @override
  @JsonKey(name: "userId")
  String get userId;
  @JsonKey(name: "userId")
  set userId(String value);

  /// Create a copy of ParticipantEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantEditDTOImplCopyWith<_$ParticipantEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

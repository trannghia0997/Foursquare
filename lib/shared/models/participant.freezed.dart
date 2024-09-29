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

ParticipantDto _$ParticipantDtoFromJson(Map<String, dynamic> json) {
  return _ParticipantDto.fromJson(json);
}

/// @nodoc
mixin _$ParticipantDto {
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

  /// Serializes this ParticipantDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantDtoCopyWith<ParticipantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantDtoCopyWith<$Res> {
  factory $ParticipantDtoCopyWith(
          ParticipantDto value, $Res Function(ParticipantDto) then) =
      _$ParticipantDtoCopyWithImpl<$Res, ParticipantDto>;
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
class _$ParticipantDtoCopyWithImpl<$Res, $Val extends ParticipantDto>
    implements $ParticipantDtoCopyWith<$Res> {
  _$ParticipantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantDto
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
abstract class _$$ParticipantDtoImplCopyWith<$Res>
    implements $ParticipantDtoCopyWith<$Res> {
  factory _$$ParticipantDtoImplCopyWith(_$ParticipantDtoImpl value,
          $Res Function(_$ParticipantDtoImpl) then) =
      __$$ParticipantDtoImplCopyWithImpl<$Res>;
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
class __$$ParticipantDtoImplCopyWithImpl<$Res>
    extends _$ParticipantDtoCopyWithImpl<$Res, _$ParticipantDtoImpl>
    implements _$$ParticipantDtoImplCopyWith<$Res> {
  __$$ParticipantDtoImplCopyWithImpl(
      _$ParticipantDtoImpl _value, $Res Function(_$ParticipantDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantDto
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
    return _then(_$ParticipantDtoImpl(
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
class _$ParticipantDtoImpl
    with DiagnosticableTreeMixin
    implements _ParticipantDto {
  const _$ParticipantDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "conversationId") required this.conversationId,
      @JsonKey(name: "userId") required this.userId});

  factory _$ParticipantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantDtoImplFromJson(json);

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
    return 'ParticipantDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParticipantDto'))
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
            other is _$ParticipantDtoImpl &&
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

  /// Create a copy of ParticipantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantDtoImplCopyWith<_$ParticipantDtoImpl> get copyWith =>
      __$$ParticipantDtoImplCopyWithImpl<_$ParticipantDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantDtoImplToJson(
      this,
    );
  }
}

abstract class _ParticipantDto implements ParticipantDto {
  const factory _ParticipantDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "conversationId") required final String conversationId,
          @JsonKey(name: "userId") required final String userId}) =
      _$ParticipantDtoImpl;

  factory _ParticipantDto.fromJson(Map<String, dynamic> json) =
      _$ParticipantDtoImpl.fromJson;

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

  /// Create a copy of ParticipantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantDtoImplCopyWith<_$ParticipantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParticipantEditDto _$ParticipantEditDtoFromJson(Map<String, dynamic> json) {
  return _ParticipantEditDto.fromJson(json);
}

/// @nodoc
mixin _$ParticipantEditDto {
  @JsonKey(name: "conversationId")
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "conversationId")
  set conversationId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  set userId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ParticipantEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantEditDtoCopyWith<ParticipantEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantEditDtoCopyWith<$Res> {
  factory $ParticipantEditDtoCopyWith(
          ParticipantEditDto value, $Res Function(ParticipantEditDto) then) =
      _$ParticipantEditDtoCopyWithImpl<$Res, ParticipantEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class _$ParticipantEditDtoCopyWithImpl<$Res, $Val extends ParticipantEditDto>
    implements $ParticipantEditDtoCopyWith<$Res> {
  _$ParticipantEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantEditDto
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
abstract class _$$ParticipantEditDtoImplCopyWith<$Res>
    implements $ParticipantEditDtoCopyWith<$Res> {
  factory _$$ParticipantEditDtoImplCopyWith(_$ParticipantEditDtoImpl value,
          $Res Function(_$ParticipantEditDtoImpl) then) =
      __$$ParticipantEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class __$$ParticipantEditDtoImplCopyWithImpl<$Res>
    extends _$ParticipantEditDtoCopyWithImpl<$Res, _$ParticipantEditDtoImpl>
    implements _$$ParticipantEditDtoImplCopyWith<$Res> {
  __$$ParticipantEditDtoImplCopyWithImpl(_$ParticipantEditDtoImpl _value,
      $Res Function(_$ParticipantEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? userId = null,
  }) {
    return _then(_$ParticipantEditDtoImpl(
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
class _$ParticipantEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ParticipantEditDto {
  _$ParticipantEditDtoImpl(
      {@JsonKey(name: "conversationId") required this.conversationId,
      @JsonKey(name: "userId") required this.userId});

  factory _$ParticipantEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "conversationId")
  String conversationId;
  @override
  @JsonKey(name: "userId")
  String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParticipantEditDto(conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParticipantEditDto'))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  /// Create a copy of ParticipantEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantEditDtoImplCopyWith<_$ParticipantEditDtoImpl> get copyWith =>
      __$$ParticipantEditDtoImplCopyWithImpl<_$ParticipantEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ParticipantEditDto implements ParticipantEditDto {
  factory _ParticipantEditDto(
          {@JsonKey(name: "conversationId") required String conversationId,
          @JsonKey(name: "userId") required String userId}) =
      _$ParticipantEditDtoImpl;

  factory _ParticipantEditDto.fromJson(Map<String, dynamic> json) =
      _$ParticipantEditDtoImpl.fromJson;

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

  /// Create a copy of ParticipantEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantEditDtoImplCopyWith<_$ParticipantEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

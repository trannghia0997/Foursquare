// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_admin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationAdminDto _$ConversationAdminDtoFromJson(Map<String, dynamic> json) {
  return _ConversationAdminDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationAdminDto {
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

  /// Serializes this ConversationAdminDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationAdminDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationAdminDtoCopyWith<ConversationAdminDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationAdminDtoCopyWith<$Res> {
  factory $ConversationAdminDtoCopyWith(ConversationAdminDto value,
          $Res Function(ConversationAdminDto) then) =
      _$ConversationAdminDtoCopyWithImpl<$Res, ConversationAdminDto>;
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
class _$ConversationAdminDtoCopyWithImpl<$Res,
        $Val extends ConversationAdminDto>
    implements $ConversationAdminDtoCopyWith<$Res> {
  _$ConversationAdminDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationAdminDto
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
abstract class _$$ConversationAdminDtoImplCopyWith<$Res>
    implements $ConversationAdminDtoCopyWith<$Res> {
  factory _$$ConversationAdminDtoImplCopyWith(_$ConversationAdminDtoImpl value,
          $Res Function(_$ConversationAdminDtoImpl) then) =
      __$$ConversationAdminDtoImplCopyWithImpl<$Res>;
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
class __$$ConversationAdminDtoImplCopyWithImpl<$Res>
    extends _$ConversationAdminDtoCopyWithImpl<$Res, _$ConversationAdminDtoImpl>
    implements _$$ConversationAdminDtoImplCopyWith<$Res> {
  __$$ConversationAdminDtoImplCopyWithImpl(_$ConversationAdminDtoImpl _value,
      $Res Function(_$ConversationAdminDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationAdminDto
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
    return _then(_$ConversationAdminDtoImpl(
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
class _$ConversationAdminDtoImpl
    with DiagnosticableTreeMixin
    implements _ConversationAdminDto {
  const _$ConversationAdminDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "conversationId") required this.conversationId,
      @JsonKey(name: "userId") required this.userId});

  factory _$ConversationAdminDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationAdminDtoImplFromJson(json);

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
    return 'ConversationAdminDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationAdminDto'))
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
            other is _$ConversationAdminDtoImpl &&
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

  /// Create a copy of ConversationAdminDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationAdminDtoImplCopyWith<_$ConversationAdminDtoImpl>
      get copyWith =>
          __$$ConversationAdminDtoImplCopyWithImpl<_$ConversationAdminDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationAdminDtoImplToJson(
      this,
    );
  }
}

abstract class _ConversationAdminDto implements ConversationAdminDto {
  const factory _ConversationAdminDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "conversationId") required final String conversationId,
          @JsonKey(name: "userId") required final String userId}) =
      _$ConversationAdminDtoImpl;

  factory _ConversationAdminDto.fromJson(Map<String, dynamic> json) =
      _$ConversationAdminDtoImpl.fromJson;

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

  /// Create a copy of ConversationAdminDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationAdminDtoImplCopyWith<_$ConversationAdminDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConversationAdminEditDto _$ConversationAdminEditDtoFromJson(
    Map<String, dynamic> json) {
  return _ConversationAdminEditDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationAdminEditDto {
  @JsonKey(name: "conversationId")
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "conversationId")
  set conversationId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  set userId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ConversationAdminEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationAdminEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationAdminEditDtoCopyWith<ConversationAdminEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationAdminEditDtoCopyWith<$Res> {
  factory $ConversationAdminEditDtoCopyWith(ConversationAdminEditDto value,
          $Res Function(ConversationAdminEditDto) then) =
      _$ConversationAdminEditDtoCopyWithImpl<$Res, ConversationAdminEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class _$ConversationAdminEditDtoCopyWithImpl<$Res,
        $Val extends ConversationAdminEditDto>
    implements $ConversationAdminEditDtoCopyWith<$Res> {
  _$ConversationAdminEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationAdminEditDto
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
abstract class _$$ConversationAdminEditDtoImplCopyWith<$Res>
    implements $ConversationAdminEditDtoCopyWith<$Res> {
  factory _$$ConversationAdminEditDtoImplCopyWith(
          _$ConversationAdminEditDtoImpl value,
          $Res Function(_$ConversationAdminEditDtoImpl) then) =
      __$$ConversationAdminEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "conversationId") String conversationId,
      @JsonKey(name: "userId") String userId});
}

/// @nodoc
class __$$ConversationAdminEditDtoImplCopyWithImpl<$Res>
    extends _$ConversationAdminEditDtoCopyWithImpl<$Res,
        _$ConversationAdminEditDtoImpl>
    implements _$$ConversationAdminEditDtoImplCopyWith<$Res> {
  __$$ConversationAdminEditDtoImplCopyWithImpl(
      _$ConversationAdminEditDtoImpl _value,
      $Res Function(_$ConversationAdminEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationAdminEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? userId = null,
  }) {
    return _then(_$ConversationAdminEditDtoImpl(
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
class _$ConversationAdminEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ConversationAdminEditDto {
  _$ConversationAdminEditDtoImpl(
      {@JsonKey(name: "conversationId") required this.conversationId,
      @JsonKey(name: "userId") required this.userId});

  factory _$ConversationAdminEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationAdminEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "conversationId")
  String conversationId;
  @override
  @JsonKey(name: "userId")
  String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationAdminEditDto(conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationAdminEditDto'))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  /// Create a copy of ConversationAdminEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationAdminEditDtoImplCopyWith<_$ConversationAdminEditDtoImpl>
      get copyWith => __$$ConversationAdminEditDtoImplCopyWithImpl<
          _$ConversationAdminEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationAdminEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ConversationAdminEditDto implements ConversationAdminEditDto {
  factory _ConversationAdminEditDto(
          {@JsonKey(name: "conversationId") required String conversationId,
          @JsonKey(name: "userId") required String userId}) =
      _$ConversationAdminEditDtoImpl;

  factory _ConversationAdminEditDto.fromJson(Map<String, dynamic> json) =
      _$ConversationAdminEditDtoImpl.fromJson;

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

  /// Create a copy of ConversationAdminEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationAdminEditDtoImplCopyWith<_$ConversationAdminEditDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

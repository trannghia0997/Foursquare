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

ConversationAdminDTO _$ConversationAdminDTOFromJson(Map<String, dynamic> json) {
  return _ConversationAdminDTO.fromJson(json);
}

/// @nodoc
mixin _$ConversationAdminDTO {
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
  @JsonKey(name: "conversation_id")
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this ConversationAdminDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationAdminDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationAdminDTOCopyWith<ConversationAdminDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationAdminDTOCopyWith<$Res> {
  factory $ConversationAdminDTOCopyWith(ConversationAdminDTO value,
          $Res Function(ConversationAdminDTO) then) =
      _$ConversationAdminDTOCopyWithImpl<$Res, ConversationAdminDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "conversation_id") String conversationId,
      @JsonKey(name: "user_id") String userId});
}

/// @nodoc
class _$ConversationAdminDTOCopyWithImpl<$Res,
        $Val extends ConversationAdminDTO>
    implements $ConversationAdminDTOCopyWith<$Res> {
  _$ConversationAdminDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationAdminDTO
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
abstract class _$$ConversationAdminDTOImplCopyWith<$Res>
    implements $ConversationAdminDTOCopyWith<$Res> {
  factory _$$ConversationAdminDTOImplCopyWith(_$ConversationAdminDTOImpl value,
          $Res Function(_$ConversationAdminDTOImpl) then) =
      __$$ConversationAdminDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "conversation_id") String conversationId,
      @JsonKey(name: "user_id") String userId});
}

/// @nodoc
class __$$ConversationAdminDTOImplCopyWithImpl<$Res>
    extends _$ConversationAdminDTOCopyWithImpl<$Res, _$ConversationAdminDTOImpl>
    implements _$$ConversationAdminDTOImplCopyWith<$Res> {
  __$$ConversationAdminDTOImplCopyWithImpl(_$ConversationAdminDTOImpl _value,
      $Res Function(_$ConversationAdminDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationAdminDTO
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
    return _then(_$ConversationAdminDTOImpl(
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
class _$ConversationAdminDTOImpl
    with DiagnosticableTreeMixin
    implements _ConversationAdminDTO {
  const _$ConversationAdminDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "conversation_id") required this.conversationId,
      @JsonKey(name: "user_id") required this.userId});

  factory _$ConversationAdminDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationAdminDTOImplFromJson(json);

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
  @JsonKey(name: "conversation_id")
  final String conversationId;
  @override
  @JsonKey(name: "user_id")
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationAdminDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationAdminDTO'))
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
            other is _$ConversationAdminDTOImpl &&
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

  /// Create a copy of ConversationAdminDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationAdminDTOImplCopyWith<_$ConversationAdminDTOImpl>
      get copyWith =>
          __$$ConversationAdminDTOImplCopyWithImpl<_$ConversationAdminDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationAdminDTOImplToJson(
      this,
    );
  }
}

abstract class _ConversationAdminDTO implements ConversationAdminDTO {
  const factory _ConversationAdminDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "conversation_id") required final String conversationId,
      @JsonKey(name: "user_id")
      required final String userId}) = _$ConversationAdminDTOImpl;

  factory _ConversationAdminDTO.fromJson(Map<String, dynamic> json) =
      _$ConversationAdminDTOImpl.fromJson;

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
  @JsonKey(name: "conversation_id")
  String get conversationId;
  @override
  @JsonKey(name: "user_id")
  String get userId;

  /// Create a copy of ConversationAdminDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationAdminDTOImplCopyWith<_$ConversationAdminDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConversationAdminEditDTO _$ConversationAdminEditDTOFromJson(
    Map<String, dynamic> json) {
  return _ConversationAdminEditDTO.fromJson(json);
}

/// @nodoc
mixin _$ConversationAdminEditDTO {
  @JsonKey(name: "conversation_id")
  String? get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "conversation_id")
  set conversationId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  set userId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this ConversationAdminEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationAdminEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationAdminEditDTOCopyWith<ConversationAdminEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationAdminEditDTOCopyWith<$Res> {
  factory $ConversationAdminEditDTOCopyWith(ConversationAdminEditDTO value,
          $Res Function(ConversationAdminEditDTO) then) =
      _$ConversationAdminEditDTOCopyWithImpl<$Res, ConversationAdminEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "conversation_id") String? conversationId,
      @JsonKey(name: "user_id") String? userId});
}

/// @nodoc
class _$ConversationAdminEditDTOCopyWithImpl<$Res,
        $Val extends ConversationAdminEditDTO>
    implements $ConversationAdminEditDTOCopyWith<$Res> {
  _$ConversationAdminEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationAdminEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationAdminEditDTOImplCopyWith<$Res>
    implements $ConversationAdminEditDTOCopyWith<$Res> {
  factory _$$ConversationAdminEditDTOImplCopyWith(
          _$ConversationAdminEditDTOImpl value,
          $Res Function(_$ConversationAdminEditDTOImpl) then) =
      __$$ConversationAdminEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "conversation_id") String? conversationId,
      @JsonKey(name: "user_id") String? userId});
}

/// @nodoc
class __$$ConversationAdminEditDTOImplCopyWithImpl<$Res>
    extends _$ConversationAdminEditDTOCopyWithImpl<$Res,
        _$ConversationAdminEditDTOImpl>
    implements _$$ConversationAdminEditDTOImplCopyWith<$Res> {
  __$$ConversationAdminEditDTOImplCopyWithImpl(
      _$ConversationAdminEditDTOImpl _value,
      $Res Function(_$ConversationAdminEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationAdminEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ConversationAdminEditDTOImpl(
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ConversationAdminEditDTOImpl
    with DiagnosticableTreeMixin
    implements _ConversationAdminEditDTO {
  _$ConversationAdminEditDTOImpl(
      {@JsonKey(name: "conversation_id") this.conversationId,
      @JsonKey(name: "user_id") this.userId});

  factory _$ConversationAdminEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationAdminEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "conversation_id")
  String? conversationId;
  @override
  @JsonKey(name: "user_id")
  String? userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationAdminEditDTO(conversationId: $conversationId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationAdminEditDTO'))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  /// Create a copy of ConversationAdminEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationAdminEditDTOImplCopyWith<_$ConversationAdminEditDTOImpl>
      get copyWith => __$$ConversationAdminEditDTOImplCopyWithImpl<
          _$ConversationAdminEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationAdminEditDTOImplToJson(
      this,
    );
  }
}

abstract class _ConversationAdminEditDTO implements ConversationAdminEditDTO {
  factory _ConversationAdminEditDTO(
          {@JsonKey(name: "conversation_id") String? conversationId,
          @JsonKey(name: "user_id") String? userId}) =
      _$ConversationAdminEditDTOImpl;

  factory _ConversationAdminEditDTO.fromJson(Map<String, dynamic> json) =
      _$ConversationAdminEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "conversation_id")
  String? get conversationId;
  @JsonKey(name: "conversation_id")
  set conversationId(String? value);
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @JsonKey(name: "user_id")
  set userId(String? value);

  /// Create a copy of ConversationAdminEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationAdminEditDTOImplCopyWith<_$ConversationAdminEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

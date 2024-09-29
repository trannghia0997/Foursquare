// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
mixin _$MessageDto {
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
  @JsonKey(name: "type")
  MessageType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "participantId")
  String get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: "recipientIds")
  List<String>? get recipientIds => throw _privateConstructorUsedError;

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res, MessageDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") MessageType type,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "participantId") String participantId,
      @JsonKey(name: "recipientIds") List<String>? recipientIds});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res, $Val extends MessageDto>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? type = null,
    Object? content = null,
    Object? participantId = null,
    Object? recipientIds = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientIds: freezed == recipientIds
          ? _value.recipientIds
          : recipientIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDtoImplCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$MessageDtoImplCopyWith(
          _$MessageDtoImpl value, $Res Function(_$MessageDtoImpl) then) =
      __$$MessageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") MessageType type,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "participantId") String participantId,
      @JsonKey(name: "recipientIds") List<String>? recipientIds});
}

/// @nodoc
class __$$MessageDtoImplCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$MessageDtoImpl>
    implements _$$MessageDtoImplCopyWith<$Res> {
  __$$MessageDtoImplCopyWithImpl(
      _$MessageDtoImpl _value, $Res Function(_$MessageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? type = null,
    Object? content = null,
    Object? participantId = null,
    Object? recipientIds = freezed,
  }) {
    return _then(_$MessageDtoImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientIds: freezed == recipientIds
          ? _value._recipientIds
          : recipientIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDtoImpl with DiagnosticableTreeMixin implements _MessageDto {
  const _$MessageDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "content") required this.content,
      @JsonKey(name: "participantId") required this.participantId,
      @JsonKey(name: "recipientIds") final List<String>? recipientIds})
      : _recipientIds = recipientIds;

  factory _$MessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDtoImplFromJson(json);

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
  @JsonKey(name: "type")
  final MessageType type;
  @override
  @JsonKey(name: "content")
  final String content;
  @override
  @JsonKey(name: "participantId")
  final String participantId;
  final List<String>? _recipientIds;
  @override
  @JsonKey(name: "recipientIds")
  List<String>? get recipientIds {
    final value = _recipientIds;
    if (value == null) return null;
    if (_recipientIds is EqualUnmodifiableListView) return _recipientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, content: $content, participantId: $participantId, recipientIds: $recipientIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('participantId', participantId))
      ..add(DiagnosticsProperty('recipientIds', recipientIds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId) &&
            const DeepCollectionEquality()
                .equals(other._recipientIds, _recipientIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      collectionName,
      created,
      updated,
      type,
      content,
      participantId,
      const DeepCollectionEquality().hash(_recipientIds));

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      __$$MessageDtoImplCopyWithImpl<_$MessageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageDto implements MessageDto {
  const factory _MessageDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final MessageType type,
          @JsonKey(name: "content") required final String content,
          @JsonKey(name: "participantId") required final String participantId,
          @JsonKey(name: "recipientIds") final List<String>? recipientIds}) =
      _$MessageDtoImpl;

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$MessageDtoImpl.fromJson;

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
  @JsonKey(name: "type")
  MessageType get type;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(name: "participantId")
  String get participantId;
  @override
  @JsonKey(name: "recipientIds")
  List<String>? get recipientIds;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageEditDto _$MessageEditDtoFromJson(Map<String, dynamic> json) {
  return _MessageEditDto.fromJson(json);
}

/// @nodoc
mixin _$MessageEditDto {
  @JsonKey(name: "type")
  MessageType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(MessageType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  set content(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "participantId")
  String get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: "participantId")
  set participantId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recipientIds")
  List<String>? get recipientIds => throw _privateConstructorUsedError;
  @JsonKey(name: "recipientIds")
  set recipientIds(List<String>? value) => throw _privateConstructorUsedError;

  /// Serializes this MessageEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageEditDtoCopyWith<MessageEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEditDtoCopyWith<$Res> {
  factory $MessageEditDtoCopyWith(
          MessageEditDto value, $Res Function(MessageEditDto) then) =
      _$MessageEditDtoCopyWithImpl<$Res, MessageEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") MessageType type,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "participantId") String participantId,
      @JsonKey(name: "recipientIds") List<String>? recipientIds});
}

/// @nodoc
class _$MessageEditDtoCopyWithImpl<$Res, $Val extends MessageEditDto>
    implements $MessageEditDtoCopyWith<$Res> {
  _$MessageEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? participantId = null,
    Object? recipientIds = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientIds: freezed == recipientIds
          ? _value.recipientIds
          : recipientIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageEditDtoImplCopyWith<$Res>
    implements $MessageEditDtoCopyWith<$Res> {
  factory _$$MessageEditDtoImplCopyWith(_$MessageEditDtoImpl value,
          $Res Function(_$MessageEditDtoImpl) then) =
      __$$MessageEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") MessageType type,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "participantId") String participantId,
      @JsonKey(name: "recipientIds") List<String>? recipientIds});
}

/// @nodoc
class __$$MessageEditDtoImplCopyWithImpl<$Res>
    extends _$MessageEditDtoCopyWithImpl<$Res, _$MessageEditDtoImpl>
    implements _$$MessageEditDtoImplCopyWith<$Res> {
  __$$MessageEditDtoImplCopyWithImpl(
      _$MessageEditDtoImpl _value, $Res Function(_$MessageEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? participantId = null,
    Object? recipientIds = freezed,
  }) {
    return _then(_$MessageEditDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientIds: freezed == recipientIds
          ? _value.recipientIds
          : recipientIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$MessageEditDtoImpl
    with DiagnosticableTreeMixin
    implements _MessageEditDto {
  _$MessageEditDtoImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "content") required this.content,
      @JsonKey(name: "participantId") required this.participantId,
      @JsonKey(name: "recipientIds") this.recipientIds});

  factory _$MessageEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "type")
  MessageType type;
  @override
  @JsonKey(name: "content")
  String content;
  @override
  @JsonKey(name: "participantId")
  String participantId;
  @override
  @JsonKey(name: "recipientIds")
  List<String>? recipientIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageEditDto(type: $type, content: $content, participantId: $participantId, recipientIds: $recipientIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageEditDto'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('participantId', participantId))
      ..add(DiagnosticsProperty('recipientIds', recipientIds));
  }

  /// Create a copy of MessageEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEditDtoImplCopyWith<_$MessageEditDtoImpl> get copyWith =>
      __$$MessageEditDtoImplCopyWithImpl<_$MessageEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageEditDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageEditDto implements MessageEditDto {
  factory _MessageEditDto(
          {@JsonKey(name: "type") required MessageType type,
          @JsonKey(name: "content") required String content,
          @JsonKey(name: "participantId") required String participantId,
          @JsonKey(name: "recipientIds") List<String>? recipientIds}) =
      _$MessageEditDtoImpl;

  factory _MessageEditDto.fromJson(Map<String, dynamic> json) =
      _$MessageEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "type")
  MessageType get type;
  @JsonKey(name: "type")
  set type(MessageType value);
  @override
  @JsonKey(name: "content")
  String get content;
  @JsonKey(name: "content")
  set content(String value);
  @override
  @JsonKey(name: "participantId")
  String get participantId;
  @JsonKey(name: "participantId")
  set participantId(String value);
  @override
  @JsonKey(name: "recipientIds")
  List<String>? get recipientIds;
  @JsonKey(name: "recipientIds")
  set recipientIds(List<String>? value);

  /// Create a copy of MessageEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageEditDtoImplCopyWith<_$MessageEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

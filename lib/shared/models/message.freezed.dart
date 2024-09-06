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

MessageDTO _$MessageDTOFromJson(Map<String, dynamic> json) {
  return _MessageDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageDTO {
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
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "participant_id")
  String get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: "recipient_ids")
  List<String>? get recipientIds => throw _privateConstructorUsedError;

  /// Serializes this MessageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDTOCopyWith<MessageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDTOCopyWith<$Res> {
  factory $MessageDTOCopyWith(
          MessageDTO value, $Res Function(MessageDTO) then) =
      _$MessageDTOCopyWithImpl<$Res, MessageDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "participant_id") String participantId,
      @JsonKey(name: "recipient_ids") List<String>? recipientIds});
}

/// @nodoc
class _$MessageDTOCopyWithImpl<$Res, $Val extends MessageDTO>
    implements $MessageDTOCopyWith<$Res> {
  _$MessageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageDTO
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
              as String,
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
abstract class _$$MessageDTOImplCopyWith<$Res>
    implements $MessageDTOCopyWith<$Res> {
  factory _$$MessageDTOImplCopyWith(
          _$MessageDTOImpl value, $Res Function(_$MessageDTOImpl) then) =
      __$$MessageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "participant_id") String participantId,
      @JsonKey(name: "recipient_ids") List<String>? recipientIds});
}

/// @nodoc
class __$$MessageDTOImplCopyWithImpl<$Res>
    extends _$MessageDTOCopyWithImpl<$Res, _$MessageDTOImpl>
    implements _$$MessageDTOImplCopyWith<$Res> {
  __$$MessageDTOImplCopyWithImpl(
      _$MessageDTOImpl _value, $Res Function(_$MessageDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDTO
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
    return _then(_$MessageDTOImpl(
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
              as String,
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
class _$MessageDTOImpl with DiagnosticableTreeMixin implements _MessageDTO {
  const _$MessageDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "content") required this.content,
      @JsonKey(name: "participant_id") required this.participantId,
      @JsonKey(name: "recipient_ids") final List<String>? recipientIds})
      : _recipientIds = recipientIds;

  factory _$MessageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDTOImplFromJson(json);

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
  final String type;
  @override
  @JsonKey(name: "content")
  final String content;
  @override
  @JsonKey(name: "participant_id")
  final String participantId;
  final List<String>? _recipientIds;
  @override
  @JsonKey(name: "recipient_ids")
  List<String>? get recipientIds {
    final value = _recipientIds;
    if (value == null) return null;
    if (_recipientIds is EqualUnmodifiableListView) return _recipientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, content: $content, participantId: $participantId, recipientIds: $recipientIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageDTO'))
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
            other is _$MessageDTOImpl &&
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

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDTOImplCopyWith<_$MessageDTOImpl> get copyWith =>
      __$$MessageDTOImplCopyWithImpl<_$MessageDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDTOImplToJson(
      this,
    );
  }
}

abstract class _MessageDTO implements MessageDTO {
  const factory _MessageDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final String type,
          @JsonKey(name: "content") required final String content,
          @JsonKey(name: "participant_id") required final String participantId,
          @JsonKey(name: "recipient_ids") final List<String>? recipientIds}) =
      _$MessageDTOImpl;

  factory _MessageDTO.fromJson(Map<String, dynamic> json) =
      _$MessageDTOImpl.fromJson;

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
  String get type;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(name: "participant_id")
  String get participantId;
  @override
  @JsonKey(name: "recipient_ids")
  List<String>? get recipientIds;

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDTOImplCopyWith<_$MessageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageEditDTO _$MessageEditDTOFromJson(Map<String, dynamic> json) {
  return _MessageEditDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageEditDTO {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  set content(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "participant_id")
  String? get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: "participant_id")
  set participantId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recipient_ids")
  List<String>? get recipientIds => throw _privateConstructorUsedError;
  @JsonKey(name: "recipient_ids")
  set recipientIds(List<String>? value) => throw _privateConstructorUsedError;

  /// Serializes this MessageEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageEditDTOCopyWith<MessageEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEditDTOCopyWith<$Res> {
  factory $MessageEditDTOCopyWith(
          MessageEditDTO value, $Res Function(MessageEditDTO) then) =
      _$MessageEditDTOCopyWithImpl<$Res, MessageEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "participant_id") String? participantId,
      @JsonKey(name: "recipient_ids") List<String>? recipientIds});
}

/// @nodoc
class _$MessageEditDTOCopyWithImpl<$Res, $Val extends MessageEditDTO>
    implements $MessageEditDTOCopyWith<$Res> {
  _$MessageEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? content = freezed,
    Object? participantId = freezed,
    Object? recipientIds = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      participantId: freezed == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientIds: freezed == recipientIds
          ? _value.recipientIds
          : recipientIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageEditDTOImplCopyWith<$Res>
    implements $MessageEditDTOCopyWith<$Res> {
  factory _$$MessageEditDTOImplCopyWith(_$MessageEditDTOImpl value,
          $Res Function(_$MessageEditDTOImpl) then) =
      __$$MessageEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "participant_id") String? participantId,
      @JsonKey(name: "recipient_ids") List<String>? recipientIds});
}

/// @nodoc
class __$$MessageEditDTOImplCopyWithImpl<$Res>
    extends _$MessageEditDTOCopyWithImpl<$Res, _$MessageEditDTOImpl>
    implements _$$MessageEditDTOImplCopyWith<$Res> {
  __$$MessageEditDTOImplCopyWithImpl(
      _$MessageEditDTOImpl _value, $Res Function(_$MessageEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? content = freezed,
    Object? participantId = freezed,
    Object? recipientIds = freezed,
  }) {
    return _then(_$MessageEditDTOImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      participantId: freezed == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientIds: freezed == recipientIds
          ? _value.recipientIds
          : recipientIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$MessageEditDTOImpl
    with DiagnosticableTreeMixin
    implements _MessageEditDTO {
  _$MessageEditDTOImpl(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "participant_id") this.participantId,
      @JsonKey(name: "recipient_ids") this.recipientIds});

  factory _$MessageEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "type")
  String? type;
  @override
  @JsonKey(name: "content")
  String? content;
  @override
  @JsonKey(name: "participant_id")
  String? participantId;
  @override
  @JsonKey(name: "recipient_ids")
  List<String>? recipientIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageEditDTO(type: $type, content: $content, participantId: $participantId, recipientIds: $recipientIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageEditDTO'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('participantId', participantId))
      ..add(DiagnosticsProperty('recipientIds', recipientIds));
  }

  /// Create a copy of MessageEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEditDTOImplCopyWith<_$MessageEditDTOImpl> get copyWith =>
      __$$MessageEditDTOImplCopyWithImpl<_$MessageEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageEditDTOImplToJson(
      this,
    );
  }
}

abstract class _MessageEditDTO implements MessageEditDTO {
  factory _MessageEditDTO(
          {@JsonKey(name: "type") String? type,
          @JsonKey(name: "content") String? content,
          @JsonKey(name: "participant_id") String? participantId,
          @JsonKey(name: "recipient_ids") List<String>? recipientIds}) =
      _$MessageEditDTOImpl;

  factory _MessageEditDTO.fromJson(Map<String, dynamic> json) =
      _$MessageEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "type")
  set type(String? value);
  @override
  @JsonKey(name: "content")
  String? get content;
  @JsonKey(name: "content")
  set content(String? value);
  @override
  @JsonKey(name: "participant_id")
  String? get participantId;
  @JsonKey(name: "participant_id")
  set participantId(String? value);
  @override
  @JsonKey(name: "recipient_ids")
  List<String>? get recipientIds;
  @JsonKey(name: "recipient_ids")
  set recipientIds(List<String>? value);

  /// Create a copy of MessageEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageEditDTOImplCopyWith<_$MessageEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

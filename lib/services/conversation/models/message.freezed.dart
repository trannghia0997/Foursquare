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

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'conversation_id')
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  MessageType get type => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_seen')
  bool get isSeen => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'user_id') String userId,
      MessageType type,
      String? file,
      String? content,
      @JsonKey(name: 'is_seen') bool isSeen,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? userId = null,
    Object? type = null,
    Object? file = freezed,
    Object? content = freezed,
    Object? isSeen = null,
    Object? record = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: null == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'user_id') String userId,
      MessageType type,
      String? file,
      String? content,
      @JsonKey(name: 'is_seen') bool isSeen,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? userId = null,
    Object? type = null,
    Object? file = freezed,
    Object? content = freezed,
    Object? isSeen = null,
    Object? record = freezed,
  }) {
    return _then(_$MessageImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: null == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl with DiagnosticableTreeMixin implements _Message {
  const _$MessageImpl(
      {@JsonKey(name: 'conversation_id') required this.conversationId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.type,
      this.file,
      this.content,
      @JsonKey(name: 'is_seen') required this.isSeen,
      @JsonKey(includeFromJson: false, includeToJson: false) this.record});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  @JsonKey(name: 'conversation_id')
  final String conversationId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final MessageType type;
  @override
  final String? file;
  @override
  final String? content;
  @override
  @JsonKey(name: 'is_seen')
  final bool isSeen;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RecordModel? record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Message(conversationId: $conversationId, userId: $userId, type: $type, file: $file, content: $content, isSeen: $isSeen, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Message'))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('isSeen', isSeen))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, conversationId, userId, type, file, content, isSeen, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {@JsonKey(name: 'conversation_id') required final String conversationId,
      @JsonKey(name: 'user_id') required final String userId,
      required final MessageType type,
      final String? file,
      final String? content,
      @JsonKey(name: 'is_seen') required final bool isSeen,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RecordModel? record}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  @JsonKey(name: 'conversation_id')
  String get conversationId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  MessageType get type;
  @override
  String? get file;
  @override
  String? get content;
  @override
  @JsonKey(name: 'is_seen')
  bool get isSeen;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

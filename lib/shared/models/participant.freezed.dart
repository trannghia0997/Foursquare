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

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get isAdmin => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Conversation? get conversation => throw _privateConstructorUsedError;
  JsonNullableType<List<Message>>? get seenMessages =>
      throw _privateConstructorUsedError;

  /// Serializes this Participant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res, Participant>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(defaultValue: false) bool? isAdmin,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      User? user,
      Conversation? conversation,
      JsonNullableType<List<Message>>? seenMessages});

  $UserCopyWith<$Res>? get user;
  $ConversationCopyWith<$Res>? get conversation;
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res, $Val extends Participant>
    implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isAdmin = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? user = freezed,
    Object? conversation = freezed,
    Object? seenMessages = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      seenMessages: freezed == seenMessages
          ? _value.seenMessages
          : seenMessages // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<List<Message>>?,
    ) as $Val);
  }

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get conversation {
    if (_value.conversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_value.conversation!, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipantImplCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$ParticipantImplCopyWith(
          _$ParticipantImpl value, $Res Function(_$ParticipantImpl) then) =
      __$$ParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(defaultValue: false) bool? isAdmin,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      User? user,
      Conversation? conversation,
      JsonNullableType<List<Message>>? seenMessages});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ConversationCopyWith<$Res>? get conversation;
}

/// @nodoc
class __$$ParticipantImplCopyWithImpl<$Res>
    extends _$ParticipantCopyWithImpl<$Res, _$ParticipantImpl>
    implements _$$ParticipantImplCopyWith<$Res> {
  __$$ParticipantImplCopyWithImpl(
      _$ParticipantImpl _value, $Res Function(_$ParticipantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isAdmin = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? user = freezed,
    Object? conversation = freezed,
    Object? seenMessages = freezed,
  }) {
    return _then(_$ParticipantImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      seenMessages: freezed == seenMessages
          ? _value.seenMessages
          : seenMessages // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<List<Message>>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ParticipantImpl with DiagnosticableTreeMixin implements _Participant {
  const _$ParticipantImpl(
      {this.id,
      @JsonKey(defaultValue: false) this.isAdmin,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.user,
      this.conversation,
      this.seenMessages});

  factory _$ParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(defaultValue: false)
  final bool? isAdmin;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  final User? user;
  @override
  final Conversation? conversation;
  @override
  final JsonNullableType<List<Message>>? seenMessages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Participant(id: $id, isAdmin: $isAdmin, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, user: $user, conversation: $conversation, seenMessages: $seenMessages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Participant'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isAdmin', isAdmin))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('conversation', conversation))
      ..add(DiagnosticsProperty('seenMessages', seenMessages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            (identical(other.seenMessages, seenMessages) ||
                other.seenMessages == seenMessages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isAdmin,
      createdBy,
      createdDate,
      lastModifiedBy,
      lastModifiedDate,
      user,
      conversation,
      seenMessages);

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      __$$ParticipantImplCopyWithImpl<_$ParticipantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantImplToJson(
      this,
    );
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
      {final String? id,
      @JsonKey(defaultValue: false) final bool? isAdmin,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      final User? user,
      final Conversation? conversation,
      final JsonNullableType<List<Message>>? seenMessages}) = _$ParticipantImpl;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$ParticipantImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(defaultValue: false)
  bool? get isAdmin;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  User? get user;
  @override
  Conversation? get conversation;
  @override
  JsonNullableType<List<Message>>? get seenMessages;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

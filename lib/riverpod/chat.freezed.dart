// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationInfo {
  ConversationDto get conversation => throw _privateConstructorUsedError;
  List<ConversationAdminInfo> get adminList =>
      throw _privateConstructorUsedError;
  List<ParticipantInfo> get participantList =>
      throw _privateConstructorUsedError;

  /// Create a copy of ConversationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationInfoCopyWith<ConversationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationInfoCopyWith<$Res> {
  factory $ConversationInfoCopyWith(
          ConversationInfo value, $Res Function(ConversationInfo) then) =
      _$ConversationInfoCopyWithImpl<$Res, ConversationInfo>;
  @useResult
  $Res call(
      {ConversationDto conversation,
      List<ConversationAdminInfo> adminList,
      List<ParticipantInfo> participantList});

  $ConversationDtoCopyWith<$Res> get conversation;
}

/// @nodoc
class _$ConversationInfoCopyWithImpl<$Res, $Val extends ConversationInfo>
    implements $ConversationInfoCopyWith<$Res> {
  _$ConversationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? adminList = null,
    Object? participantList = null,
  }) {
    return _then(_value.copyWith(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationDto,
      adminList: null == adminList
          ? _value.adminList
          : adminList // ignore: cast_nullable_to_non_nullable
              as List<ConversationAdminInfo>,
      participantList: null == participantList
          ? _value.participantList
          : participantList // ignore: cast_nullable_to_non_nullable
              as List<ParticipantInfo>,
    ) as $Val);
  }

  /// Create a copy of ConversationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationDtoCopyWith<$Res> get conversation {
    return $ConversationDtoCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationInfoImplCopyWith<$Res>
    implements $ConversationInfoCopyWith<$Res> {
  factory _$$ConversationInfoImplCopyWith(_$ConversationInfoImpl value,
          $Res Function(_$ConversationInfoImpl) then) =
      __$$ConversationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConversationDto conversation,
      List<ConversationAdminInfo> adminList,
      List<ParticipantInfo> participantList});

  @override
  $ConversationDtoCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$ConversationInfoImplCopyWithImpl<$Res>
    extends _$ConversationInfoCopyWithImpl<$Res, _$ConversationInfoImpl>
    implements _$$ConversationInfoImplCopyWith<$Res> {
  __$$ConversationInfoImplCopyWithImpl(_$ConversationInfoImpl _value,
      $Res Function(_$ConversationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? adminList = null,
    Object? participantList = null,
  }) {
    return _then(_$ConversationInfoImpl(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationDto,
      adminList: null == adminList
          ? _value._adminList
          : adminList // ignore: cast_nullable_to_non_nullable
              as List<ConversationAdminInfo>,
      participantList: null == participantList
          ? _value._participantList
          : participantList // ignore: cast_nullable_to_non_nullable
              as List<ParticipantInfo>,
    ));
  }
}

/// @nodoc

class _$ConversationInfoImpl
    with DiagnosticableTreeMixin
    implements _ConversationInfo {
  const _$ConversationInfoImpl(
      {required this.conversation,
      required final List<ConversationAdminInfo> adminList,
      required final List<ParticipantInfo> participantList})
      : _adminList = adminList,
        _participantList = participantList;

  @override
  final ConversationDto conversation;
  final List<ConversationAdminInfo> _adminList;
  @override
  List<ConversationAdminInfo> get adminList {
    if (_adminList is EqualUnmodifiableListView) return _adminList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adminList);
  }

  final List<ParticipantInfo> _participantList;
  @override
  List<ParticipantInfo> get participantList {
    if (_participantList is EqualUnmodifiableListView) return _participantList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationInfo(conversation: $conversation, adminList: $adminList, participantList: $participantList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationInfo'))
      ..add(DiagnosticsProperty('conversation', conversation))
      ..add(DiagnosticsProperty('adminList', adminList))
      ..add(DiagnosticsProperty('participantList', participantList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationInfoImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            const DeepCollectionEquality()
                .equals(other._adminList, _adminList) &&
            const DeepCollectionEquality()
                .equals(other._participantList, _participantList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      conversation,
      const DeepCollectionEquality().hash(_adminList),
      const DeepCollectionEquality().hash(_participantList));

  /// Create a copy of ConversationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationInfoImplCopyWith<_$ConversationInfoImpl> get copyWith =>
      __$$ConversationInfoImplCopyWithImpl<_$ConversationInfoImpl>(
          this, _$identity);
}

abstract class _ConversationInfo implements ConversationInfo {
  const factory _ConversationInfo(
          {required final ConversationDto conversation,
          required final List<ConversationAdminInfo> adminList,
          required final List<ParticipantInfo> participantList}) =
      _$ConversationInfoImpl;

  @override
  ConversationDto get conversation;
  @override
  List<ConversationAdminInfo> get adminList;
  @override
  List<ParticipantInfo> get participantList;

  /// Create a copy of ConversationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationInfoImplCopyWith<_$ConversationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParticipantInfo {
  ParticipantDto get participant => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantInfoCopyWith<ParticipantInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantInfoCopyWith<$Res> {
  factory $ParticipantInfoCopyWith(
          ParticipantInfo value, $Res Function(ParticipantInfo) then) =
      _$ParticipantInfoCopyWithImpl<$Res, ParticipantInfo>;
  @useResult
  $Res call({ParticipantDto participant, UserDto user});

  $ParticipantDtoCopyWith<$Res> get participant;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$ParticipantInfoCopyWithImpl<$Res, $Val extends ParticipantInfo>
    implements $ParticipantInfoCopyWith<$Res> {
  _$ParticipantInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as ParticipantDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ) as $Val);
  }

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParticipantDtoCopyWith<$Res> get participant {
    return $ParticipantDtoCopyWith<$Res>(_value.participant, (value) {
      return _then(_value.copyWith(participant: value) as $Val);
    });
  }

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipantInfoImplCopyWith<$Res>
    implements $ParticipantInfoCopyWith<$Res> {
  factory _$$ParticipantInfoImplCopyWith(_$ParticipantInfoImpl value,
          $Res Function(_$ParticipantInfoImpl) then) =
      __$$ParticipantInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParticipantDto participant, UserDto user});

  @override
  $ParticipantDtoCopyWith<$Res> get participant;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$ParticipantInfoImplCopyWithImpl<$Res>
    extends _$ParticipantInfoCopyWithImpl<$Res, _$ParticipantInfoImpl>
    implements _$$ParticipantInfoImplCopyWith<$Res> {
  __$$ParticipantInfoImplCopyWithImpl(
      _$ParticipantInfoImpl _value, $Res Function(_$ParticipantInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = null,
    Object? user = null,
  }) {
    return _then(_$ParticipantInfoImpl(
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as ParticipantDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$ParticipantInfoImpl
    with DiagnosticableTreeMixin
    implements _ParticipantInfo {
  const _$ParticipantInfoImpl({required this.participant, required this.user});

  @override
  final ParticipantDto participant;
  @override
  final UserDto user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParticipantInfo(participant: $participant, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParticipantInfo'))
      ..add(DiagnosticsProperty('participant', participant))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantInfoImpl &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participant, user);

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantInfoImplCopyWith<_$ParticipantInfoImpl> get copyWith =>
      __$$ParticipantInfoImplCopyWithImpl<_$ParticipantInfoImpl>(
          this, _$identity);
}

abstract class _ParticipantInfo implements ParticipantInfo {
  const factory _ParticipantInfo(
      {required final ParticipantDto participant,
      required final UserDto user}) = _$ParticipantInfoImpl;

  @override
  ParticipantDto get participant;
  @override
  UserDto get user;

  /// Create a copy of ParticipantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantInfoImplCopyWith<_$ParticipantInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationAdminInfo {
  ConversationAdminDto get admin => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationAdminInfoCopyWith<ConversationAdminInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationAdminInfoCopyWith<$Res> {
  factory $ConversationAdminInfoCopyWith(ConversationAdminInfo value,
          $Res Function(ConversationAdminInfo) then) =
      _$ConversationAdminInfoCopyWithImpl<$Res, ConversationAdminInfo>;
  @useResult
  $Res call({ConversationAdminDto admin, UserDto user});

  $ConversationAdminDtoCopyWith<$Res> get admin;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$ConversationAdminInfoCopyWithImpl<$Res,
        $Val extends ConversationAdminInfo>
    implements $ConversationAdminInfoCopyWith<$Res> {
  _$ConversationAdminInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as ConversationAdminDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ) as $Val);
  }

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationAdminDtoCopyWith<$Res> get admin {
    return $ConversationAdminDtoCopyWith<$Res>(_value.admin, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationAdminInfoImplCopyWith<$Res>
    implements $ConversationAdminInfoCopyWith<$Res> {
  factory _$$ConversationAdminInfoImplCopyWith(
          _$ConversationAdminInfoImpl value,
          $Res Function(_$ConversationAdminInfoImpl) then) =
      __$$ConversationAdminInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationAdminDto admin, UserDto user});

  @override
  $ConversationAdminDtoCopyWith<$Res> get admin;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$ConversationAdminInfoImplCopyWithImpl<$Res>
    extends _$ConversationAdminInfoCopyWithImpl<$Res,
        _$ConversationAdminInfoImpl>
    implements _$$ConversationAdminInfoImplCopyWith<$Res> {
  __$$ConversationAdminInfoImplCopyWithImpl(_$ConversationAdminInfoImpl _value,
      $Res Function(_$ConversationAdminInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? user = null,
  }) {
    return _then(_$ConversationAdminInfoImpl(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as ConversationAdminDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$ConversationAdminInfoImpl
    with DiagnosticableTreeMixin
    implements _ConversationAdminInfo {
  const _$ConversationAdminInfoImpl({required this.admin, required this.user});

  @override
  final ConversationAdminDto admin;
  @override
  final UserDto user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationAdminInfo(admin: $admin, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationAdminInfo'))
      ..add(DiagnosticsProperty('admin', admin))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationAdminInfoImpl &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, admin, user);

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationAdminInfoImplCopyWith<_$ConversationAdminInfoImpl>
      get copyWith => __$$ConversationAdminInfoImplCopyWithImpl<
          _$ConversationAdminInfoImpl>(this, _$identity);
}

abstract class _ConversationAdminInfo implements ConversationAdminInfo {
  const factory _ConversationAdminInfo(
      {required final ConversationAdminDto admin,
      required final UserDto user}) = _$ConversationAdminInfoImpl;

  @override
  ConversationAdminDto get admin;
  @override
  UserDto get user;

  /// Create a copy of ConversationAdminInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationAdminInfoImplCopyWith<_$ConversationAdminInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageInfo {
  MessageDto get message => throw _privateConstructorUsedError;
  ParticipantInfo get sender => throw _privateConstructorUsedError;
  int get readCount => throw _privateConstructorUsedError;

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageInfoCopyWith<MessageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInfoCopyWith<$Res> {
  factory $MessageInfoCopyWith(
          MessageInfo value, $Res Function(MessageInfo) then) =
      _$MessageInfoCopyWithImpl<$Res, MessageInfo>;
  @useResult
  $Res call({MessageDto message, ParticipantInfo sender, int readCount});

  $MessageDtoCopyWith<$Res> get message;
  $ParticipantInfoCopyWith<$Res> get sender;
}

/// @nodoc
class _$MessageInfoCopyWithImpl<$Res, $Val extends MessageInfo>
    implements $MessageInfoCopyWith<$Res> {
  _$MessageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? sender = null,
    Object? readCount = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageDto,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ParticipantInfo,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageDtoCopyWith<$Res> get message {
    return $MessageDtoCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParticipantInfoCopyWith<$Res> get sender {
    return $ParticipantInfoCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageInfoImplCopyWith<$Res>
    implements $MessageInfoCopyWith<$Res> {
  factory _$$MessageInfoImplCopyWith(
          _$MessageInfoImpl value, $Res Function(_$MessageInfoImpl) then) =
      __$$MessageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageDto message, ParticipantInfo sender, int readCount});

  @override
  $MessageDtoCopyWith<$Res> get message;
  @override
  $ParticipantInfoCopyWith<$Res> get sender;
}

/// @nodoc
class __$$MessageInfoImplCopyWithImpl<$Res>
    extends _$MessageInfoCopyWithImpl<$Res, _$MessageInfoImpl>
    implements _$$MessageInfoImplCopyWith<$Res> {
  __$$MessageInfoImplCopyWithImpl(
      _$MessageInfoImpl _value, $Res Function(_$MessageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? sender = null,
    Object? readCount = null,
  }) {
    return _then(_$MessageInfoImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageDto,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ParticipantInfo,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MessageInfoImpl with DiagnosticableTreeMixin implements _MessageInfo {
  const _$MessageInfoImpl(
      {required this.message, required this.sender, required this.readCount});

  @override
  final MessageDto message;
  @override
  final ParticipantInfo sender;
  @override
  final int readCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageInfo(message: $message, sender: $sender, readCount: $readCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageInfo'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('sender', sender))
      ..add(DiagnosticsProperty('readCount', readCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageInfoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.readCount, readCount) ||
                other.readCount == readCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, sender, readCount);

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageInfoImplCopyWith<_$MessageInfoImpl> get copyWith =>
      __$$MessageInfoImplCopyWithImpl<_$MessageInfoImpl>(this, _$identity);
}

abstract class _MessageInfo implements MessageInfo {
  const factory _MessageInfo(
      {required final MessageDto message,
      required final ParticipantInfo sender,
      required final int readCount}) = _$MessageInfoImpl;

  @override
  MessageDto get message;
  @override
  ParticipantInfo get sender;
  @override
  int get readCount;

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageInfoImplCopyWith<_$MessageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

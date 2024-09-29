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

ConversationDto _$ConversationDtoFromJson(Map<String, dynamic> json) {
  return _ConversationDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationDto {
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

  /// Serializes this ConversationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationDtoCopyWith<ConversationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDtoCopyWith<$Res> {
  factory $ConversationDtoCopyWith(
          ConversationDto value, $Res Function(ConversationDto) then) =
      _$ConversationDtoCopyWithImpl<$Res, ConversationDto>;
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
class _$ConversationDtoCopyWithImpl<$Res, $Val extends ConversationDto>
    implements $ConversationDtoCopyWith<$Res> {
  _$ConversationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationDto
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
abstract class _$$ConversationDtoImplCopyWith<$Res>
    implements $ConversationDtoCopyWith<$Res> {
  factory _$$ConversationDtoImplCopyWith(_$ConversationDtoImpl value,
          $Res Function(_$ConversationDtoImpl) then) =
      __$$ConversationDtoImplCopyWithImpl<$Res>;
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
class __$$ConversationDtoImplCopyWithImpl<$Res>
    extends _$ConversationDtoCopyWithImpl<$Res, _$ConversationDtoImpl>
    implements _$$ConversationDtoImplCopyWith<$Res> {
  __$$ConversationDtoImplCopyWithImpl(
      _$ConversationDtoImpl _value, $Res Function(_$ConversationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationDto
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
    return _then(_$ConversationDtoImpl(
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
class _$ConversationDtoImpl
    with DiagnosticableTreeMixin
    implements _ConversationDto {
  const _$ConversationDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "title") required this.title});

  factory _$ConversationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDtoImplFromJson(json);

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
    return 'ConversationDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationDto'))
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
            other is _$ConversationDtoImpl &&
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

  /// Create a copy of ConversationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDtoImplCopyWith<_$ConversationDtoImpl> get copyWith =>
      __$$ConversationDtoImplCopyWithImpl<_$ConversationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDtoImplToJson(
      this,
    );
  }
}

abstract class _ConversationDto implements ConversationDto {
  const factory _ConversationDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "title") required final String title}) =
      _$ConversationDtoImpl;

  factory _ConversationDto.fromJson(Map<String, dynamic> json) =
      _$ConversationDtoImpl.fromJson;

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

  /// Create a copy of ConversationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationDtoImplCopyWith<_$ConversationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationEditDto _$ConversationEditDtoFromJson(Map<String, dynamic> json) {
  return _ConversationEditDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationEditDto {
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  set title(String value) => throw _privateConstructorUsedError;

  /// Serializes this ConversationEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationEditDtoCopyWith<ConversationEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEditDtoCopyWith<$Res> {
  factory $ConversationEditDtoCopyWith(
          ConversationEditDto value, $Res Function(ConversationEditDto) then) =
      _$ConversationEditDtoCopyWithImpl<$Res, ConversationEditDto>;
  @useResult
  $Res call({@JsonKey(name: "title") String title});
}

/// @nodoc
class _$ConversationEditDtoCopyWithImpl<$Res, $Val extends ConversationEditDto>
    implements $ConversationEditDtoCopyWith<$Res> {
  _$ConversationEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationEditDtoImplCopyWith<$Res>
    implements $ConversationEditDtoCopyWith<$Res> {
  factory _$$ConversationEditDtoImplCopyWith(_$ConversationEditDtoImpl value,
          $Res Function(_$ConversationEditDtoImpl) then) =
      __$$ConversationEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "title") String title});
}

/// @nodoc
class __$$ConversationEditDtoImplCopyWithImpl<$Res>
    extends _$ConversationEditDtoCopyWithImpl<$Res, _$ConversationEditDtoImpl>
    implements _$$ConversationEditDtoImplCopyWith<$Res> {
  __$$ConversationEditDtoImplCopyWithImpl(_$ConversationEditDtoImpl _value,
      $Res Function(_$ConversationEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ConversationEditDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ConversationEditDtoImpl
    with DiagnosticableTreeMixin
    implements _ConversationEditDto {
  _$ConversationEditDtoImpl({@JsonKey(name: "title") required this.title});

  factory _$ConversationEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "title")
  String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationEditDto(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationEditDto'))
      ..add(DiagnosticsProperty('title', title));
  }

  /// Create a copy of ConversationEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationEditDtoImplCopyWith<_$ConversationEditDtoImpl> get copyWith =>
      __$$ConversationEditDtoImplCopyWithImpl<_$ConversationEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationEditDtoImplToJson(
      this,
    );
  }
}

abstract class _ConversationEditDto implements ConversationEditDto {
  factory _ConversationEditDto(
          {@JsonKey(name: "title") required String title}) =
      _$ConversationEditDtoImpl;

  factory _ConversationEditDto.fromJson(Map<String, dynamic> json) =
      _$ConversationEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String get title;
  @JsonKey(name: "title")
  set title(String value);

  /// Create a copy of ConversationEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationEditDtoImplCopyWith<_$ConversationEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

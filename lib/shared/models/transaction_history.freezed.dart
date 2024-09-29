// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionHistoryDto _$TransactionHistoryDtoFromJson(
    Map<String, dynamic> json) {
  return _TransactionHistoryDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistoryDto {
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
  @JsonKey(name: "entityType")
  String get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: "entityId")
  String get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this TransactionHistoryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionHistoryDtoCopyWith<TransactionHistoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryDtoCopyWith<$Res> {
  factory $TransactionHistoryDtoCopyWith(TransactionHistoryDto value,
          $Res Function(TransactionHistoryDto) then) =
      _$TransactionHistoryDtoCopyWithImpl<$Res, TransactionHistoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "entityType") String entityType,
      @JsonKey(name: "entityId") String entityId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class _$TransactionHistoryDtoCopyWithImpl<$Res,
        $Val extends TransactionHistoryDto>
    implements $TransactionHistoryDtoCopyWith<$Res> {
  _$TransactionHistoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? statusCodeId = null,
    Object? note = freezed,
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
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryDtoImplCopyWith<$Res>
    implements $TransactionHistoryDtoCopyWith<$Res> {
  factory _$$TransactionHistoryDtoImplCopyWith(
          _$TransactionHistoryDtoImpl value,
          $Res Function(_$TransactionHistoryDtoImpl) then) =
      __$$TransactionHistoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "entityType") String entityType,
      @JsonKey(name: "entityId") String entityId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class __$$TransactionHistoryDtoImplCopyWithImpl<$Res>
    extends _$TransactionHistoryDtoCopyWithImpl<$Res,
        _$TransactionHistoryDtoImpl>
    implements _$$TransactionHistoryDtoImplCopyWith<$Res> {
  __$$TransactionHistoryDtoImplCopyWithImpl(_$TransactionHistoryDtoImpl _value,
      $Res Function(_$TransactionHistoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? statusCodeId = null,
    Object? note = freezed,
  }) {
    return _then(_$TransactionHistoryDtoImpl(
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
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionHistoryDtoImpl
    with DiagnosticableTreeMixin
    implements _TransactionHistoryDto {
  const _$TransactionHistoryDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "entityType") required this.entityType,
      @JsonKey(name: "entityId") required this.entityId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "note") this.note});

  factory _$TransactionHistoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionHistoryDtoImplFromJson(json);

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
  @JsonKey(name: "entityType")
  final String entityType;
  @override
  @JsonKey(name: "entityId")
  final String entityId;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;
  @override
  @JsonKey(name: "note")
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionHistoryDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, entityType: $entityType, entityId: $entityId, statusCodeId: $statusCodeId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionHistoryDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('entityType', entityType))
      ..add(DiagnosticsProperty('entityId', entityId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.statusCodeId, statusCodeId) ||
                other.statusCodeId == statusCodeId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, entityType, entityId, statusCodeId, note);

  /// Create a copy of TransactionHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryDtoImplCopyWith<_$TransactionHistoryDtoImpl>
      get copyWith => __$$TransactionHistoryDtoImplCopyWithImpl<
          _$TransactionHistoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionHistoryDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionHistoryDto implements TransactionHistoryDto {
  const factory _TransactionHistoryDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "entityType") required final String entityType,
      @JsonKey(name: "entityId") required final String entityId,
      @JsonKey(name: "statusCodeId") required final String statusCodeId,
      @JsonKey(name: "note") final String? note}) = _$TransactionHistoryDtoImpl;

  factory _TransactionHistoryDto.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryDtoImpl.fromJson;

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
  @JsonKey(name: "entityType")
  String get entityType;
  @override
  @JsonKey(name: "entityId")
  String get entityId;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @override
  @JsonKey(name: "note")
  String? get note;

  /// Create a copy of TransactionHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionHistoryDtoImplCopyWith<_$TransactionHistoryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

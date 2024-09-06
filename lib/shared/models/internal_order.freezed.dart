// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InternalOrderDTO _$InternalOrderDTOFromJson(Map<String, dynamic> json) {
  return _InternalOrderDTO.fromJson(json);
}

/// @nodoc
mixin _$InternalOrderDTO {
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
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  String get rootOrderId => throw _privateConstructorUsedError;

  /// Serializes this InternalOrderDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderDTOCopyWith<InternalOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderDTOCopyWith<$Res> {
  factory $InternalOrderDTOCopyWith(
          InternalOrderDTO value, $Res Function(InternalOrderDTO) then) =
      _$InternalOrderDTOCopyWithImpl<$Res, InternalOrderDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootOrderId") String rootOrderId});
}

/// @nodoc
class _$InternalOrderDTOCopyWithImpl<$Res, $Val extends InternalOrderDTO>
    implements $InternalOrderDTOCopyWith<$Res> {
  _$InternalOrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderDTO
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
    Object? note = freezed,
    Object? statusCodeId = null,
    Object? rootOrderId = null,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootOrderId: null == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalOrderDTOImplCopyWith<$Res>
    implements $InternalOrderDTOCopyWith<$Res> {
  factory _$$InternalOrderDTOImplCopyWith(_$InternalOrderDTOImpl value,
          $Res Function(_$InternalOrderDTOImpl) then) =
      __$$InternalOrderDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootOrderId") String rootOrderId});
}

/// @nodoc
class __$$InternalOrderDTOImplCopyWithImpl<$Res>
    extends _$InternalOrderDTOCopyWithImpl<$Res, _$InternalOrderDTOImpl>
    implements _$$InternalOrderDTOImplCopyWith<$Res> {
  __$$InternalOrderDTOImplCopyWithImpl(_$InternalOrderDTOImpl _value,
      $Res Function(_$InternalOrderDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderDTO
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
    Object? note = freezed,
    Object? statusCodeId = null,
    Object? rootOrderId = null,
  }) {
    return _then(_$InternalOrderDTOImpl(
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootOrderId: null == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternalOrderDTOImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderDTO {
  const _$InternalOrderDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "rootOrderId") required this.rootOrderId});

  factory _$InternalOrderDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOrderDTOImplFromJson(json);

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
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;
  @override
  @JsonKey(name: "rootOrderId")
  final String rootOrderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, note: $note, statusCodeId: $statusCodeId, rootOrderId: $rootOrderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('rootOrderId', rootOrderId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.statusCodeId, statusCodeId) ||
                other.statusCodeId == statusCodeId) &&
            (identical(other.rootOrderId, rootOrderId) ||
                other.rootOrderId == rootOrderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, type, note, statusCodeId, rootOrderId);

  /// Create a copy of InternalOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderDTOImplCopyWith<_$InternalOrderDTOImpl> get copyWith =>
      __$$InternalOrderDTOImplCopyWithImpl<_$InternalOrderDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOrderDTOImplToJson(
      this,
    );
  }
}

abstract class _InternalOrderDTO implements InternalOrderDTO {
  const factory _InternalOrderDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final String type,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "statusCodeId") required final String statusCodeId,
          @JsonKey(name: "rootOrderId") required final String rootOrderId}) =
      _$InternalOrderDTOImpl;

  factory _InternalOrderDTO.fromJson(Map<String, dynamic> json) =
      _$InternalOrderDTOImpl.fromJson;

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
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @override
  @JsonKey(name: "rootOrderId")
  String get rootOrderId;

  /// Create a copy of InternalOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderDTOImplCopyWith<_$InternalOrderDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InternalOrderEditDTO _$InternalOrderEditDTOFromJson(Map<String, dynamic> json) {
  return _InternalOrderEditDTO.fromJson(json);
}

/// @nodoc
mixin _$InternalOrderEditDTO {
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  String get rootOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  set rootOrderId(String value) => throw _privateConstructorUsedError;

  /// Serializes this InternalOrderEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderEditDTOCopyWith<InternalOrderEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderEditDTOCopyWith<$Res> {
  factory $InternalOrderEditDTOCopyWith(InternalOrderEditDTO value,
          $Res Function(InternalOrderEditDTO) then) =
      _$InternalOrderEditDTOCopyWithImpl<$Res, InternalOrderEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootOrderId") String rootOrderId});
}

/// @nodoc
class _$InternalOrderEditDTOCopyWithImpl<$Res,
        $Val extends InternalOrderEditDTO>
    implements $InternalOrderEditDTOCopyWith<$Res> {
  _$InternalOrderEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? note = freezed,
    Object? statusCodeId = null,
    Object? rootOrderId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootOrderId: null == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalOrderEditDTOImplCopyWith<$Res>
    implements $InternalOrderEditDTOCopyWith<$Res> {
  factory _$$InternalOrderEditDTOImplCopyWith(_$InternalOrderEditDTOImpl value,
          $Res Function(_$InternalOrderEditDTOImpl) then) =
      __$$InternalOrderEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootOrderId") String rootOrderId});
}

/// @nodoc
class __$$InternalOrderEditDTOImplCopyWithImpl<$Res>
    extends _$InternalOrderEditDTOCopyWithImpl<$Res, _$InternalOrderEditDTOImpl>
    implements _$$InternalOrderEditDTOImplCopyWith<$Res> {
  __$$InternalOrderEditDTOImplCopyWithImpl(_$InternalOrderEditDTOImpl _value,
      $Res Function(_$InternalOrderEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? note = freezed,
    Object? statusCodeId = null,
    Object? rootOrderId = null,
  }) {
    return _then(_$InternalOrderEditDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootOrderId: null == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InternalOrderEditDTOImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderEditDTO {
  _$InternalOrderEditDTOImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "rootOrderId") required this.rootOrderId});

  factory _$InternalOrderEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOrderEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "type")
  String type;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "statusCodeId")
  String statusCodeId;
  @override
  @JsonKey(name: "rootOrderId")
  String rootOrderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderEditDTO(type: $type, note: $note, statusCodeId: $statusCodeId, rootOrderId: $rootOrderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderEditDTO'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('rootOrderId', rootOrderId));
  }

  /// Create a copy of InternalOrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderEditDTOImplCopyWith<_$InternalOrderEditDTOImpl>
      get copyWith =>
          __$$InternalOrderEditDTOImplCopyWithImpl<_$InternalOrderEditDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOrderEditDTOImplToJson(
      this,
    );
  }
}

abstract class _InternalOrderEditDTO implements InternalOrderEditDTO {
  factory _InternalOrderEditDTO(
          {@JsonKey(name: "type") required String type,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "statusCodeId") required String statusCodeId,
          @JsonKey(name: "rootOrderId") required String rootOrderId}) =
      _$InternalOrderEditDTOImpl;

  factory _InternalOrderEditDTO.fromJson(Map<String, dynamic> json) =
      _$InternalOrderEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String get type;
  @JsonKey(name: "type")
  set type(String value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value);
  @override
  @JsonKey(name: "rootOrderId")
  String get rootOrderId;
  @JsonKey(name: "rootOrderId")
  set rootOrderId(String value);

  /// Create a copy of InternalOrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderEditDTOImplCopyWith<_$InternalOrderEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

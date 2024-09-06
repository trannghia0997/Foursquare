// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) {
  return _OrderDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderDTO {
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
  OrderType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  String? get rootOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;

  /// Serializes this OrderDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDTOCopyWith<OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDTOCopyWith<$Res> {
  factory $OrderDTOCopyWith(OrderDTO value, $Res Function(OrderDTO) then) =
      _$OrderDTOCopyWithImpl<$Res, OrderDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$OrderDTOCopyWithImpl<$Res, $Val extends OrderDTO>
    implements $OrderDTOCopyWith<$Res> {
  _$OrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDTO
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
    Object? priority = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? customerId = null,
    Object? statusCodeId = null,
    Object? addressId = null,
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
              as OrderType,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      rootOrderId: freezed == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDTOImplCopyWith<$Res>
    implements $OrderDTOCopyWith<$Res> {
  factory _$$OrderDTOImplCopyWith(
          _$OrderDTOImpl value, $Res Function(_$OrderDTOImpl) then) =
      __$$OrderDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$OrderDTOImplCopyWithImpl<$Res>
    extends _$OrderDTOCopyWithImpl<$Res, _$OrderDTOImpl>
    implements _$$OrderDTOImplCopyWith<$Res> {
  __$$OrderDTOImplCopyWithImpl(
      _$OrderDTOImpl _value, $Res Function(_$OrderDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDTO
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
    Object? priority = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? customerId = null,
    Object? statusCodeId = null,
    Object? addressId = null,
  }) {
    return _then(_$OrderDTOImpl(
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
              as OrderType,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      rootOrderId: freezed == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDTOImpl with DiagnosticableTreeMixin implements _OrderDTO {
  const _$OrderDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "rootOrderId") this.rootOrderId,
      @JsonKey(name: "customerId") required this.customerId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$OrderDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDTOImplFromJson(json);

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
  final OrderType type;
  @override
  @JsonKey(name: "priority")
  final int? priority;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "otherInfo")
  final String? otherInfo;
  @override
  @JsonKey(name: "rootOrderId")
  final String? rootOrderId;
  @override
  @JsonKey(name: "customerId")
  final String customerId;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;
  @override
  @JsonKey(name: "addressId")
  final String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, priority: $priority, note: $note, otherInfo: $otherInfo, rootOrderId: $rootOrderId, customerId: $customerId, statusCodeId: $statusCodeId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('rootOrderId', rootOrderId))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.rootOrderId, rootOrderId) ||
                other.rootOrderId == rootOrderId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.statusCodeId, statusCodeId) ||
                other.statusCodeId == statusCodeId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
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
      priority,
      note,
      otherInfo,
      rootOrderId,
      customerId,
      statusCodeId,
      addressId);

  /// Create a copy of OrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDTOImplCopyWith<_$OrderDTOImpl> get copyWith =>
      __$$OrderDTOImplCopyWithImpl<_$OrderDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDTOImplToJson(
      this,
    );
  }
}

abstract class _OrderDTO implements OrderDTO {
  const factory _OrderDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final OrderType type,
          @JsonKey(name: "priority") final int? priority,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "otherInfo") final String? otherInfo,
          @JsonKey(name: "rootOrderId") final String? rootOrderId,
          @JsonKey(name: "customerId") required final String customerId,
          @JsonKey(name: "statusCodeId") required final String statusCodeId,
          @JsonKey(name: "addressId") required final String addressId}) =
      _$OrderDTOImpl;

  factory _OrderDTO.fromJson(Map<String, dynamic> json) =
      _$OrderDTOImpl.fromJson;

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
  OrderType get type;
  @override
  @JsonKey(name: "priority")
  int? get priority;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "otherInfo")
  String? get otherInfo;
  @override
  @JsonKey(name: "rootOrderId")
  String? get rootOrderId;
  @override
  @JsonKey(name: "customerId")
  String get customerId;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @override
  @JsonKey(name: "addressId")
  String get addressId;

  /// Create a copy of OrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDTOImplCopyWith<_$OrderDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderEditDTO _$OrderEditDTOFromJson(Map<String, dynamic> json) {
  return _OrderEditDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderEditDTO {
  @JsonKey(name: "type")
  OrderType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(OrderType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  set priority(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  set otherInfo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  String? get rootOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  set rootOrderId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  set customerId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  set addressId(String value) => throw _privateConstructorUsedError;

  /// Serializes this OrderEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEditDTOCopyWith<OrderEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEditDTOCopyWith<$Res> {
  factory $OrderEditDTOCopyWith(
          OrderEditDTO value, $Res Function(OrderEditDTO) then) =
      _$OrderEditDTOCopyWithImpl<$Res, OrderEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$OrderEditDTOCopyWithImpl<$Res, $Val extends OrderEditDTO>
    implements $OrderEditDTOCopyWith<$Res> {
  _$OrderEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? priority = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? customerId = null,
    Object? statusCodeId = null,
    Object? addressId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      rootOrderId: freezed == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderEditDTOImplCopyWith<$Res>
    implements $OrderEditDTOCopyWith<$Res> {
  factory _$$OrderEditDTOImplCopyWith(
          _$OrderEditDTOImpl value, $Res Function(_$OrderEditDTOImpl) then) =
      __$$OrderEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$OrderEditDTOImplCopyWithImpl<$Res>
    extends _$OrderEditDTOCopyWithImpl<$Res, _$OrderEditDTOImpl>
    implements _$$OrderEditDTOImplCopyWith<$Res> {
  __$$OrderEditDTOImplCopyWithImpl(
      _$OrderEditDTOImpl _value, $Res Function(_$OrderEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? priority = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? customerId = null,
    Object? statusCodeId = null,
    Object? addressId = null,
  }) {
    return _then(_$OrderEditDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      rootOrderId: freezed == rootOrderId
          ? _value.rootOrderId
          : rootOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$OrderEditDTOImpl with DiagnosticableTreeMixin implements _OrderEditDTO {
  _$OrderEditDTOImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "rootOrderId") this.rootOrderId,
      @JsonKey(name: "customerId") required this.customerId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$OrderEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "type")
  OrderType type;
  @override
  @JsonKey(name: "priority")
  int? priority;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "otherInfo")
  String? otherInfo;
  @override
  @JsonKey(name: "rootOrderId")
  String? rootOrderId;
  @override
  @JsonKey(name: "customerId")
  String customerId;
  @override
  @JsonKey(name: "statusCodeId")
  String statusCodeId;
  @override
  @JsonKey(name: "addressId")
  String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEditDTO(type: $type, priority: $priority, note: $note, otherInfo: $otherInfo, rootOrderId: $rootOrderId, customerId: $customerId, statusCodeId: $statusCodeId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEditDTO'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('rootOrderId', rootOrderId))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  /// Create a copy of OrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEditDTOImplCopyWith<_$OrderEditDTOImpl> get copyWith =>
      __$$OrderEditDTOImplCopyWithImpl<_$OrderEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEditDTOImplToJson(
      this,
    );
  }
}

abstract class _OrderEditDTO implements OrderEditDTO {
  factory _OrderEditDTO(
          {@JsonKey(name: "type") required OrderType type,
          @JsonKey(name: "priority") int? priority,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "otherInfo") String? otherInfo,
          @JsonKey(name: "rootOrderId") String? rootOrderId,
          @JsonKey(name: "customerId") required String customerId,
          @JsonKey(name: "statusCodeId") required String statusCodeId,
          @JsonKey(name: "addressId") required String addressId}) =
      _$OrderEditDTOImpl;

  factory _OrderEditDTO.fromJson(Map<String, dynamic> json) =
      _$OrderEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "type")
  OrderType get type;
  @JsonKey(name: "type")
  set type(OrderType value);
  @override
  @JsonKey(name: "priority")
  int? get priority;
  @JsonKey(name: "priority")
  set priority(int? value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "otherInfo")
  String? get otherInfo;
  @JsonKey(name: "otherInfo")
  set otherInfo(String? value);
  @override
  @JsonKey(name: "rootOrderId")
  String? get rootOrderId;
  @JsonKey(name: "rootOrderId")
  set rootOrderId(String? value);
  @override
  @JsonKey(name: "customerId")
  String get customerId;
  @JsonKey(name: "customerId")
  set customerId(String value);
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value);
  @override
  @JsonKey(name: "addressId")
  String get addressId;
  @JsonKey(name: "addressId")
  set addressId(String value);

  /// Create a copy of OrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEditDTOImplCopyWith<_$OrderEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

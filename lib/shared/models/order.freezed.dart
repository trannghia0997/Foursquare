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
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "other_info")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "root_order_id")
  String? get rootOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code_id")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "address_id")
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
      @JsonKey(name: "type") String type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "root_order_id") String? rootOrderId,
      @JsonKey(name: "customer_id") String customerId,
      @JsonKey(name: "status_code_id") String statusCodeId,
      @JsonKey(name: "address_id") String addressId});
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
              as String,
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
      @JsonKey(name: "type") String type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "root_order_id") String? rootOrderId,
      @JsonKey(name: "customer_id") String customerId,
      @JsonKey(name: "status_code_id") String statusCodeId,
      @JsonKey(name: "address_id") String addressId});
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
              as String,
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
      @JsonKey(name: "other_info") this.otherInfo,
      @JsonKey(name: "root_order_id") this.rootOrderId,
      @JsonKey(name: "customer_id") required this.customerId,
      @JsonKey(name: "status_code_id") required this.statusCodeId,
      @JsonKey(name: "address_id") required this.addressId});

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
  final String type;
  @override
  @JsonKey(name: "priority")
  final int? priority;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "other_info")
  final String? otherInfo;
  @override
  @JsonKey(name: "root_order_id")
  final String? rootOrderId;
  @override
  @JsonKey(name: "customer_id")
  final String customerId;
  @override
  @JsonKey(name: "status_code_id")
  final String statusCodeId;
  @override
  @JsonKey(name: "address_id")
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
          @JsonKey(name: "type") required final String type,
          @JsonKey(name: "priority") final int? priority,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "other_info") final String? otherInfo,
          @JsonKey(name: "root_order_id") final String? rootOrderId,
          @JsonKey(name: "customer_id") required final String customerId,
          @JsonKey(name: "status_code_id") required final String statusCodeId,
          @JsonKey(name: "address_id") required final String addressId}) =
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
  String get type;
  @override
  @JsonKey(name: "priority")
  int? get priority;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "other_info")
  String? get otherInfo;
  @override
  @JsonKey(name: "root_order_id")
  String? get rootOrderId;
  @override
  @JsonKey(name: "customer_id")
  String get customerId;
  @override
  @JsonKey(name: "status_code_id")
  String get statusCodeId;
  @override
  @JsonKey(name: "address_id")
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
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  set priority(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "other_info")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "other_info")
  set otherInfo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "root_order_id")
  String? get rootOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "root_order_id")
  set rootOrderId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  set customerId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code_id")
  String? get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code_id")
  set statusCodeId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "address_id")
  String? get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "address_id")
  set addressId(String? value) => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "root_order_id") String? rootOrderId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "status_code_id") String? statusCodeId,
      @JsonKey(name: "address_id") String? addressId});
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
    Object? type = freezed,
    Object? priority = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? customerId = freezed,
    Object? statusCodeId = freezed,
    Object? addressId = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCodeId: freezed == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "root_order_id") String? rootOrderId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "status_code_id") String? statusCodeId,
      @JsonKey(name: "address_id") String? addressId});
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
    Object? type = freezed,
    Object? priority = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? customerId = freezed,
    Object? statusCodeId = freezed,
    Object? addressId = freezed,
  }) {
    return _then(_$OrderEditDTOImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCodeId: freezed == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$OrderEditDTOImpl with DiagnosticableTreeMixin implements _OrderEditDTO {
  _$OrderEditDTOImpl(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "other_info") this.otherInfo,
      @JsonKey(name: "root_order_id") this.rootOrderId,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "status_code_id") this.statusCodeId,
      @JsonKey(name: "address_id") this.addressId});

  factory _$OrderEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "type")
  String? type;
  @override
  @JsonKey(name: "priority")
  int? priority;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "other_info")
  String? otherInfo;
  @override
  @JsonKey(name: "root_order_id")
  String? rootOrderId;
  @override
  @JsonKey(name: "customer_id")
  String? customerId;
  @override
  @JsonKey(name: "status_code_id")
  String? statusCodeId;
  @override
  @JsonKey(name: "address_id")
  String? addressId;

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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "other_info") String? otherInfo,
      @JsonKey(name: "root_order_id") String? rootOrderId,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "status_code_id") String? statusCodeId,
      @JsonKey(name: "address_id") String? addressId}) = _$OrderEditDTOImpl;

  factory _OrderEditDTO.fromJson(Map<String, dynamic> json) =
      _$OrderEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @JsonKey(name: "type")
  set type(String? value);
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
  @JsonKey(name: "other_info")
  String? get otherInfo;
  @JsonKey(name: "other_info")
  set otherInfo(String? value);
  @override
  @JsonKey(name: "root_order_id")
  String? get rootOrderId;
  @JsonKey(name: "root_order_id")
  set rootOrderId(String? value);
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @JsonKey(name: "customer_id")
  set customerId(String? value);
  @override
  @JsonKey(name: "status_code_id")
  String? get statusCodeId;
  @JsonKey(name: "status_code_id")
  set statusCodeId(String? value);
  @override
  @JsonKey(name: "address_id")
  String? get addressId;
  @JsonKey(name: "address_id")
  set addressId(String? value);

  /// Create a copy of OrderEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEditDTOImplCopyWith<_$OrderEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

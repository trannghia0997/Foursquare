// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceDTO _$InvoiceDTOFromJson(Map<String, dynamic> json) {
  return _InvoiceDTO.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDTO {
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
  @JsonKey(name: "totalAmount")
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "rootInvoiceId")
  String? get rootInvoiceId => throw _privateConstructorUsedError;

  /// Serializes this InvoiceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceDTOCopyWith<InvoiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDTOCopyWith<$Res> {
  factory $InvoiceDTOCopyWith(
          InvoiceDTO value, $Res Function(InvoiceDTO) then) =
      _$InvoiceDTOCopyWithImpl<$Res, InvoiceDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "paymentMethod") String paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId});
}

/// @nodoc
class _$InvoiceDTOCopyWithImpl<$Res, $Val extends InvoiceDTO>
    implements $InvoiceDTOCopyWith<$Res> {
  _$InvoiceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? totalAmount = null,
    Object? type = null,
    Object? paymentMethod = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? statusCodeId = null,
    Object? rootInvoiceId = freezed,
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootInvoiceId: freezed == rootInvoiceId
          ? _value.rootInvoiceId
          : rootInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDTOImplCopyWith<$Res>
    implements $InvoiceDTOCopyWith<$Res> {
  factory _$$InvoiceDTOImplCopyWith(
          _$InvoiceDTOImpl value, $Res Function(_$InvoiceDTOImpl) then) =
      __$$InvoiceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "paymentMethod") String paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId});
}

/// @nodoc
class __$$InvoiceDTOImplCopyWithImpl<$Res>
    extends _$InvoiceDTOCopyWithImpl<$Res, _$InvoiceDTOImpl>
    implements _$$InvoiceDTOImplCopyWith<$Res> {
  __$$InvoiceDTOImplCopyWithImpl(
      _$InvoiceDTOImpl _value, $Res Function(_$InvoiceDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? totalAmount = null,
    Object? type = null,
    Object? paymentMethod = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? statusCodeId = null,
    Object? rootInvoiceId = freezed,
  }) {
    return _then(_$InvoiceDTOImpl(
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootInvoiceId: freezed == rootInvoiceId
          ? _value.rootInvoiceId
          : rootInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceDTOImpl with DiagnosticableTreeMixin implements _InvoiceDTO {
  const _$InvoiceDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "totalAmount") required this.totalAmount,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "paymentMethod") required this.paymentMethod,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "orderId") required this.orderId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "rootInvoiceId") this.rootInvoiceId});

  factory _$InvoiceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceDTOImplFromJson(json);

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
  @JsonKey(name: "totalAmount")
  final int totalAmount;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "paymentMethod")
  final String paymentMethod;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "orderId")
  final String orderId;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;
  @override
  @JsonKey(name: "rootInvoiceId")
  final String? rootInvoiceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, totalAmount: $totalAmount, type: $type, paymentMethod: $paymentMethod, note: $note, orderId: $orderId, statusCodeId: $statusCodeId, rootInvoiceId: $rootInvoiceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('rootInvoiceId', rootInvoiceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.statusCodeId, statusCodeId) ||
                other.statusCodeId == statusCodeId) &&
            (identical(other.rootInvoiceId, rootInvoiceId) ||
                other.rootInvoiceId == rootInvoiceId));
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
      totalAmount,
      type,
      paymentMethod,
      note,
      orderId,
      statusCodeId,
      rootInvoiceId);

  /// Create a copy of InvoiceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDTOImplCopyWith<_$InvoiceDTOImpl> get copyWith =>
      __$$InvoiceDTOImplCopyWithImpl<_$InvoiceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceDTOImplToJson(
      this,
    );
  }
}

abstract class _InvoiceDTO implements InvoiceDTO {
  const factory _InvoiceDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "totalAmount") required final int totalAmount,
          @JsonKey(name: "type") required final String type,
          @JsonKey(name: "paymentMethod") required final String paymentMethod,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "orderId") required final String orderId,
          @JsonKey(name: "statusCodeId") required final String statusCodeId,
          @JsonKey(name: "rootInvoiceId") final String? rootInvoiceId}) =
      _$InvoiceDTOImpl;

  factory _InvoiceDTO.fromJson(Map<String, dynamic> json) =
      _$InvoiceDTOImpl.fromJson;

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
  @JsonKey(name: "totalAmount")
  int get totalAmount;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "paymentMethod")
  String get paymentMethod;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "orderId")
  String get orderId;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @override
  @JsonKey(name: "rootInvoiceId")
  String? get rootInvoiceId;

  /// Create a copy of InvoiceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceDTOImplCopyWith<_$InvoiceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceEditDTO _$InvoiceEditDTOFromJson(Map<String, dynamic> json) {
  return _InvoiceEditDTO.fromJson(json);
}

/// @nodoc
mixin _$InvoiceEditDTO {
  @JsonKey(name: "totalAmount")
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalAmount")
  set totalAmount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  set paymentMethod(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  set orderId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rootInvoiceId")
  String? get rootInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "rootInvoiceId")
  set rootInvoiceId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this InvoiceEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceEditDTOCopyWith<InvoiceEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceEditDTOCopyWith<$Res> {
  factory $InvoiceEditDTOCopyWith(
          InvoiceEditDTO value, $Res Function(InvoiceEditDTO) then) =
      _$InvoiceEditDTOCopyWithImpl<$Res, InvoiceEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "paymentMethod") String paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId});
}

/// @nodoc
class _$InvoiceEditDTOCopyWithImpl<$Res, $Val extends InvoiceEditDTO>
    implements $InvoiceEditDTOCopyWith<$Res> {
  _$InvoiceEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = null,
    Object? type = null,
    Object? paymentMethod = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? statusCodeId = null,
    Object? rootInvoiceId = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootInvoiceId: freezed == rootInvoiceId
          ? _value.rootInvoiceId
          : rootInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceEditDTOImplCopyWith<$Res>
    implements $InvoiceEditDTOCopyWith<$Res> {
  factory _$$InvoiceEditDTOImplCopyWith(_$InvoiceEditDTOImpl value,
          $Res Function(_$InvoiceEditDTOImpl) then) =
      __$$InvoiceEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "paymentMethod") String paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId});
}

/// @nodoc
class __$$InvoiceEditDTOImplCopyWithImpl<$Res>
    extends _$InvoiceEditDTOCopyWithImpl<$Res, _$InvoiceEditDTOImpl>
    implements _$$InvoiceEditDTOImplCopyWith<$Res> {
  __$$InvoiceEditDTOImplCopyWithImpl(
      _$InvoiceEditDTOImpl _value, $Res Function(_$InvoiceEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = null,
    Object? type = null,
    Object? paymentMethod = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? statusCodeId = null,
    Object? rootInvoiceId = freezed,
  }) {
    return _then(_$InvoiceEditDTOImpl(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
      rootInvoiceId: freezed == rootInvoiceId
          ? _value.rootInvoiceId
          : rootInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InvoiceEditDTOImpl
    with DiagnosticableTreeMixin
    implements _InvoiceEditDTO {
  _$InvoiceEditDTOImpl(
      {@JsonKey(name: "totalAmount") required this.totalAmount,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "paymentMethod") required this.paymentMethod,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "orderId") required this.orderId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "rootInvoiceId") this.rootInvoiceId});

  factory _$InvoiceEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "totalAmount")
  int totalAmount;
  @override
  @JsonKey(name: "type")
  String type;
  @override
  @JsonKey(name: "paymentMethod")
  String paymentMethod;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "orderId")
  String orderId;
  @override
  @JsonKey(name: "statusCodeId")
  String statusCodeId;
  @override
  @JsonKey(name: "rootInvoiceId")
  String? rootInvoiceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceEditDTO(totalAmount: $totalAmount, type: $type, paymentMethod: $paymentMethod, note: $note, orderId: $orderId, statusCodeId: $statusCodeId, rootInvoiceId: $rootInvoiceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceEditDTO'))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('rootInvoiceId', rootInvoiceId));
  }

  /// Create a copy of InvoiceEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceEditDTOImplCopyWith<_$InvoiceEditDTOImpl> get copyWith =>
      __$$InvoiceEditDTOImplCopyWithImpl<_$InvoiceEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceEditDTOImplToJson(
      this,
    );
  }
}

abstract class _InvoiceEditDTO implements InvoiceEditDTO {
  factory _InvoiceEditDTO(
          {@JsonKey(name: "totalAmount") required int totalAmount,
          @JsonKey(name: "type") required String type,
          @JsonKey(name: "paymentMethod") required String paymentMethod,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "orderId") required String orderId,
          @JsonKey(name: "statusCodeId") required String statusCodeId,
          @JsonKey(name: "rootInvoiceId") String? rootInvoiceId}) =
      _$InvoiceEditDTOImpl;

  factory _InvoiceEditDTO.fromJson(Map<String, dynamic> json) =
      _$InvoiceEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "totalAmount")
  int get totalAmount;
  @JsonKey(name: "totalAmount")
  set totalAmount(int value);
  @override
  @JsonKey(name: "type")
  String get type;
  @JsonKey(name: "type")
  set type(String value);
  @override
  @JsonKey(name: "paymentMethod")
  String get paymentMethod;
  @JsonKey(name: "paymentMethod")
  set paymentMethod(String value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "orderId")
  String get orderId;
  @JsonKey(name: "orderId")
  set orderId(String value);
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value);
  @override
  @JsonKey(name: "rootInvoiceId")
  String? get rootInvoiceId;
  @JsonKey(name: "rootInvoiceId")
  set rootInvoiceId(String? value);

  /// Create a copy of InvoiceEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceEditDTOImplCopyWith<_$InvoiceEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

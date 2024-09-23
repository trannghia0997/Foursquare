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

InvoiceDto _$InvoiceDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDto {
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
  InvoiceType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "rootInvoiceId")
  String? get rootInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;

  /// Serializes this InvoiceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceDtoCopyWith<InvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDtoCopyWith<$Res> {
  factory $InvoiceDtoCopyWith(
          InvoiceDto value, $Res Function(InvoiceDto) then) =
      _$InvoiceDtoCopyWithImpl<$Res, InvoiceDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") InvoiceType type,
      @JsonKey(name: "paymentMethod") PaymentMethod paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
      @JsonKey(name: "otherInfo") String? otherInfo});
}

/// @nodoc
class _$InvoiceDtoCopyWithImpl<$Res, $Val extends InvoiceDto>
    implements $InvoiceDtoCopyWith<$Res> {
  _$InvoiceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceDto
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
    Object? otherInfo = freezed,
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
              as InvoiceType,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
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
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDtoImplCopyWith<$Res>
    implements $InvoiceDtoCopyWith<$Res> {
  factory _$$InvoiceDtoImplCopyWith(
          _$InvoiceDtoImpl value, $Res Function(_$InvoiceDtoImpl) then) =
      __$$InvoiceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") InvoiceType type,
      @JsonKey(name: "paymentMethod") PaymentMethod paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
      @JsonKey(name: "otherInfo") String? otherInfo});
}

/// @nodoc
class __$$InvoiceDtoImplCopyWithImpl<$Res>
    extends _$InvoiceDtoCopyWithImpl<$Res, _$InvoiceDtoImpl>
    implements _$$InvoiceDtoImplCopyWith<$Res> {
  __$$InvoiceDtoImplCopyWithImpl(
      _$InvoiceDtoImpl _value, $Res Function(_$InvoiceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDto
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
    Object? otherInfo = freezed,
  }) {
    return _then(_$InvoiceDtoImpl(
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
              as InvoiceType,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
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
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceDtoImpl with DiagnosticableTreeMixin implements _InvoiceDto {
  const _$InvoiceDtoImpl(
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
      @JsonKey(name: "rootInvoiceId") this.rootInvoiceId,
      @JsonKey(name: "otherInfo") this.otherInfo});

  factory _$InvoiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceDtoImplFromJson(json);

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
  final InvoiceType type;
  @override
  @JsonKey(name: "paymentMethod")
  final PaymentMethod paymentMethod;
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
  @JsonKey(name: "otherInfo")
  final String? otherInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, totalAmount: $totalAmount, type: $type, paymentMethod: $paymentMethod, note: $note, orderId: $orderId, statusCodeId: $statusCodeId, rootInvoiceId: $rootInvoiceId, otherInfo: $otherInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceDto'))
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
      ..add(DiagnosticsProperty('rootInvoiceId', rootInvoiceId))
      ..add(DiagnosticsProperty('otherInfo', otherInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDtoImpl &&
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
                other.rootInvoiceId == rootInvoiceId) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo));
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
      rootInvoiceId,
      otherInfo);

  /// Create a copy of InvoiceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDtoImplCopyWith<_$InvoiceDtoImpl> get copyWith =>
      __$$InvoiceDtoImplCopyWithImpl<_$InvoiceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceDto implements InvoiceDto {
  const factory _InvoiceDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "totalAmount") required final int totalAmount,
      @JsonKey(name: "type") required final InvoiceType type,
      @JsonKey(name: "paymentMethod")
      required final PaymentMethod paymentMethod,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "orderId") required final String orderId,
      @JsonKey(name: "statusCodeId") required final String statusCodeId,
      @JsonKey(name: "rootInvoiceId") final String? rootInvoiceId,
      @JsonKey(name: "otherInfo") final String? otherInfo}) = _$InvoiceDtoImpl;

  factory _InvoiceDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceDtoImpl.fromJson;

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
  InvoiceType get type;
  @override
  @JsonKey(name: "paymentMethod")
  PaymentMethod get paymentMethod;
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
  @override
  @JsonKey(name: "otherInfo")
  String? get otherInfo;

  /// Create a copy of InvoiceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceDtoImplCopyWith<_$InvoiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceEditDto _$InvoiceEditDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceEditDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceEditDto {
  @JsonKey(name: "totalAmount")
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalAmount")
  set totalAmount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  InvoiceType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(InvoiceType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  set paymentMethod(PaymentMethod value) => throw _privateConstructorUsedError;
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
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  set otherInfo(String? value) => throw _privateConstructorUsedError;

  /// Serializes this InvoiceEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceEditDtoCopyWith<InvoiceEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceEditDtoCopyWith<$Res> {
  factory $InvoiceEditDtoCopyWith(
          InvoiceEditDto value, $Res Function(InvoiceEditDto) then) =
      _$InvoiceEditDtoCopyWithImpl<$Res, InvoiceEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") InvoiceType type,
      @JsonKey(name: "paymentMethod") PaymentMethod paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
      @JsonKey(name: "otherInfo") String? otherInfo});
}

/// @nodoc
class _$InvoiceEditDtoCopyWithImpl<$Res, $Val extends InvoiceEditDto>
    implements $InvoiceEditDtoCopyWith<$Res> {
  _$InvoiceEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceEditDto
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
    Object? otherInfo = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InvoiceType,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
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
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceEditDtoImplCopyWith<$Res>
    implements $InvoiceEditDtoCopyWith<$Res> {
  factory _$$InvoiceEditDtoImplCopyWith(_$InvoiceEditDtoImpl value,
          $Res Function(_$InvoiceEditDtoImpl) then) =
      __$$InvoiceEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalAmount") int totalAmount,
      @JsonKey(name: "type") InvoiceType type,
      @JsonKey(name: "paymentMethod") PaymentMethod paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
      @JsonKey(name: "otherInfo") String? otherInfo});
}

/// @nodoc
class __$$InvoiceEditDtoImplCopyWithImpl<$Res>
    extends _$InvoiceEditDtoCopyWithImpl<$Res, _$InvoiceEditDtoImpl>
    implements _$$InvoiceEditDtoImplCopyWith<$Res> {
  __$$InvoiceEditDtoImplCopyWithImpl(
      _$InvoiceEditDtoImpl _value, $Res Function(_$InvoiceEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEditDto
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
    Object? otherInfo = freezed,
  }) {
    return _then(_$InvoiceEditDtoImpl(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InvoiceType,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
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
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InvoiceEditDtoImpl
    with DiagnosticableTreeMixin
    implements _InvoiceEditDto {
  _$InvoiceEditDtoImpl(
      {@JsonKey(name: "totalAmount") required this.totalAmount,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "paymentMethod") required this.paymentMethod,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "orderId") required this.orderId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "rootInvoiceId") this.rootInvoiceId,
      @JsonKey(name: "otherInfo") this.otherInfo});

  factory _$InvoiceEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "totalAmount")
  int totalAmount;
  @override
  @JsonKey(name: "type")
  InvoiceType type;
  @override
  @JsonKey(name: "paymentMethod")
  PaymentMethod paymentMethod;
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
  @JsonKey(name: "otherInfo")
  String? otherInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceEditDto(totalAmount: $totalAmount, type: $type, paymentMethod: $paymentMethod, note: $note, orderId: $orderId, statusCodeId: $statusCodeId, rootInvoiceId: $rootInvoiceId, otherInfo: $otherInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceEditDto'))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('rootInvoiceId', rootInvoiceId))
      ..add(DiagnosticsProperty('otherInfo', otherInfo));
  }

  /// Create a copy of InvoiceEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceEditDtoImplCopyWith<_$InvoiceEditDtoImpl> get copyWith =>
      __$$InvoiceEditDtoImplCopyWithImpl<_$InvoiceEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceEditDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceEditDto implements InvoiceEditDto {
  factory _InvoiceEditDto(
      {@JsonKey(name: "totalAmount") required int totalAmount,
      @JsonKey(name: "type") required InvoiceType type,
      @JsonKey(name: "paymentMethod") required PaymentMethod paymentMethod,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") required String orderId,
      @JsonKey(name: "statusCodeId") required String statusCodeId,
      @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
      @JsonKey(name: "otherInfo") String? otherInfo}) = _$InvoiceEditDtoImpl;

  factory _InvoiceEditDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "totalAmount")
  int get totalAmount;
  @JsonKey(name: "totalAmount")
  set totalAmount(int value);
  @override
  @JsonKey(name: "type")
  InvoiceType get type;
  @JsonKey(name: "type")
  set type(InvoiceType value);
  @override
  @JsonKey(name: "paymentMethod")
  PaymentMethod get paymentMethod;
  @JsonKey(name: "paymentMethod")
  set paymentMethod(PaymentMethod value);
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
  @override
  @JsonKey(name: "otherInfo")
  String? get otherInfo;
  @JsonKey(name: "otherInfo")
  set otherInfo(String? value);

  /// Create a copy of InvoiceEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceEditDtoImplCopyWith<_$InvoiceEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

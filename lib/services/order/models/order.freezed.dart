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

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  String get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  String? get customerId => throw _privateConstructorUsedError;
  OrderType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  String? get addressId => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  bool get isInternal => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_order_id')
  String? get parentOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String get statusId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') String statusId,
      String? note});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? creatorId = null,
    Object? customerId = freezed,
    Object? type = null,
    Object? addressId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') String statusId,
      String? note});
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? creatorId = null,
    Object? customerId = freezed,
    Object? type = null,
    Object? addressId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isInternal: null == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
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
class _$InvoiceImpl with DiagnosticableTreeMixin implements _Invoice {
  const _$InvoiceImpl(
      {required this.id,
      required this.created,
      required this.updated,
      @JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'customer_id') this.customerId,
      required this.type,
      @JsonKey(name: 'address_id') this.addressId,
      this.priority = 0,
      @JsonKey(name: 'is_internal') this.isInternal = false,
      @JsonKey(name: 'parent_order_id') this.parentOrderId,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  @JsonKey(name: 'creator_id')
  final String creatorId;
  @override
  @JsonKey(name: 'customer_id')
  final String? customerId;
  @override
  final OrderType type;
  @override
  @JsonKey(name: 'address_id')
  final String? addressId;
  @override
  @JsonKey()
  final int priority;
  @override
  @JsonKey(name: 'is_internal')
  final bool isInternal;
  @override
  @JsonKey(name: 'parent_order_id')
  final String? parentOrderId;
  @override
  @JsonKey(name: 'status_id')
  final String statusId;
  @override
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Invoice(id: $id, created: $created, updated: $updated, creatorId: $creatorId, customerId: $customerId, type: $type, addressId: $addressId, priority: $priority, isInternal: $isInternal, parentOrderId: $parentOrderId, statusId: $statusId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Invoice'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('isInternal', isInternal))
      ..add(DiagnosticsProperty('parentOrderId', parentOrderId))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.parentOrderId, parentOrderId) ||
                other.parentOrderId == parentOrderId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      creatorId,
      customerId,
      type,
      addressId,
      priority,
      isInternal,
      parentOrderId,
      statusId,
      note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final String id,
      required final DateTime created,
      required final DateTime updated,
      @JsonKey(name: 'creator_id') required final String creatorId,
      @JsonKey(name: 'customer_id') final String? customerId,
      required final OrderType type,
      @JsonKey(name: 'address_id') final String? addressId,
      final int priority,
      @JsonKey(name: 'is_internal') final bool isInternal,
      @JsonKey(name: 'parent_order_id') final String? parentOrderId,
      @JsonKey(name: 'status_id') required final String statusId,
      final String? note}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  @JsonKey(name: 'creator_id')
  String get creatorId;
  @override
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @override
  OrderType get type;
  @override
  @JsonKey(name: 'address_id')
  String? get addressId;
  @override
  int get priority;
  @override
  @JsonKey(name: 'is_internal')
  bool get isInternal;
  @override
  @JsonKey(name: 'parent_order_id')
  String? get parentOrderId;
  @override
  @JsonKey(name: 'status_id')
  String get statusId;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

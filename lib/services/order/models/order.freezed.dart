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

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') String statusId,
      String? note,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? customerId = freezed,
    Object? type = null,
    Object? addressId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? statusId = null,
    Object? note = freezed,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
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
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') String statusId,
      String? note,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? customerId = freezed,
    Object? type = null,
    Object? addressId = freezed,
    Object? priority = null,
    Object? isInternal = null,
    Object? parentOrderId = freezed,
    Object? statusId = null,
    Object? note = freezed,
    Object? record = freezed,
  }) {
    return _then(_$OrderImpl(
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
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl with DiagnosticableTreeMixin implements _Order {
  const _$OrderImpl(
      {@JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'customer_id') this.customerId,
      required this.type,
      @JsonKey(name: 'address_id') this.addressId,
      this.priority = 0,
      @JsonKey(name: 'is_internal') this.isInternal = false,
      @JsonKey(name: 'parent_order_id') this.parentOrderId,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note,
      @JsonKey(includeFromJson: false, includeToJson: false) this.record});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

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
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RecordModel? record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Order(creatorId: $creatorId, customerId: $customerId, type: $type, addressId: $addressId, priority: $priority, isInternal: $isInternal, parentOrderId: $parentOrderId, statusId: $statusId, note: $note, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Order'))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('isInternal', isInternal))
      ..add(DiagnosticsProperty('parentOrderId', parentOrderId))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
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
            (identical(other.note, note) || other.note == note) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, creatorId, customerId, type,
      addressId, priority, isInternal, parentOrderId, statusId, note, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {@JsonKey(name: 'creator_id') required final String creatorId,
      @JsonKey(name: 'customer_id') final String? customerId,
      required final OrderType type,
      @JsonKey(name: 'address_id') final String? addressId,
      final int priority,
      @JsonKey(name: 'is_internal') final bool isInternal,
      @JsonKey(name: 'parent_order_id') final String? parentOrderId,
      @JsonKey(name: 'status_id') required final String statusId,
      final String? note,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RecordModel? record}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

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
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderCreation _$OrderCreationFromJson(Map<String, dynamic> json) {
  return _OrderCreation.fromJson(json);
}

/// @nodoc
mixin _$OrderCreation {
  @JsonKey(name: 'creator_id')
  String get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  set creatorId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  set customerId(String? value) => throw _privateConstructorUsedError;
  OrderType get type => throw _privateConstructorUsedError;
  set type(OrderType value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  String? get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  set addressId(String? value) => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  set priority(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  bool get isInternal => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal')
  set isInternal(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_order_id')
  String? get parentOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_order_id')
  set parentOrderId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String get statusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  set statusId(String value) => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  set note(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCreationCopyWith<OrderCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreationCopyWith<$Res> {
  factory $OrderCreationCopyWith(
          OrderCreation value, $Res Function(OrderCreation) then) =
      _$OrderCreationCopyWithImpl<$Res, OrderCreation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'creator_id') String creatorId,
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
class _$OrderCreationCopyWithImpl<$Res, $Val extends OrderCreation>
    implements $OrderCreationCopyWith<$Res> {
  _$OrderCreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
abstract class _$$OrderCreationImplCopyWith<$Res>
    implements $OrderCreationCopyWith<$Res> {
  factory _$$OrderCreationImplCopyWith(
          _$OrderCreationImpl value, $Res Function(_$OrderCreationImpl) then) =
      __$$OrderCreationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'creator_id') String creatorId,
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
class __$$OrderCreationImplCopyWithImpl<$Res>
    extends _$OrderCreationCopyWithImpl<$Res, _$OrderCreationImpl>
    implements _$$OrderCreationImplCopyWith<$Res> {
  __$$OrderCreationImplCopyWithImpl(
      _$OrderCreationImpl _value, $Res Function(_$OrderCreationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$OrderCreationImpl(
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
class _$OrderCreationImpl
    with DiagnosticableTreeMixin
    implements _OrderCreation {
  _$OrderCreationImpl(
      {@JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'customer_id') this.customerId,
      this.type = OrderType.sale,
      @JsonKey(name: 'address_id') this.addressId,
      this.priority = 0,
      @JsonKey(name: 'is_internal') this.isInternal = false,
      @JsonKey(name: 'parent_order_id') this.parentOrderId,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note});

  factory _$OrderCreationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreationImplFromJson(json);

  @override
  @JsonKey(name: 'creator_id')
  String creatorId;
  @override
  @JsonKey(name: 'customer_id')
  String? customerId;
  @override
  @JsonKey()
  OrderType type;
  @override
  @JsonKey(name: 'address_id')
  String? addressId;
  @override
  @JsonKey()
  int priority;
  @override
  @JsonKey(name: 'is_internal')
  bool isInternal;
  @override
  @JsonKey(name: 'parent_order_id')
  String? parentOrderId;
  @override
  @JsonKey(name: 'status_id')
  String statusId;
  @override
  String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderCreation(creatorId: $creatorId, customerId: $customerId, type: $type, addressId: $addressId, priority: $priority, isInternal: $isInternal, parentOrderId: $parentOrderId, statusId: $statusId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderCreation'))
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreationImplCopyWith<_$OrderCreationImpl> get copyWith =>
      __$$OrderCreationImplCopyWithImpl<_$OrderCreationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreationImplToJson(
      this,
    );
  }
}

abstract class _OrderCreation implements OrderCreation {
  factory _OrderCreation(
      {@JsonKey(name: 'creator_id') required String creatorId,
      @JsonKey(name: 'customer_id') String? customerId,
      OrderType type,
      @JsonKey(name: 'address_id') String? addressId,
      int priority,
      @JsonKey(name: 'is_internal') bool isInternal,
      @JsonKey(name: 'parent_order_id') String? parentOrderId,
      @JsonKey(name: 'status_id') required String statusId,
      String? note}) = _$OrderCreationImpl;

  factory _OrderCreation.fromJson(Map<String, dynamic> json) =
      _$OrderCreationImpl.fromJson;

  @override
  @JsonKey(name: 'creator_id')
  String get creatorId;
  @JsonKey(name: 'creator_id')
  set creatorId(String value);
  @override
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @JsonKey(name: 'customer_id')
  set customerId(String? value);
  @override
  OrderType get type;
  set type(OrderType value);
  @override
  @JsonKey(name: 'address_id')
  String? get addressId;
  @JsonKey(name: 'address_id')
  set addressId(String? value);
  @override
  int get priority;
  set priority(int value);
  @override
  @JsonKey(name: 'is_internal')
  bool get isInternal;
  @JsonKey(name: 'is_internal')
  set isInternal(bool value);
  @override
  @JsonKey(name: 'parent_order_id')
  String? get parentOrderId;
  @JsonKey(name: 'parent_order_id')
  set parentOrderId(String? value);
  @override
  @JsonKey(name: 'status_id')
  String get statusId;
  @JsonKey(name: 'status_id')
  set statusId(String value);
  @override
  String? get note;
  set note(String? value);
  @override
  @JsonKey(ignore: true)
  _$$OrderCreationImplCopyWith<_$OrderCreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

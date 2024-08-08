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
  String? get id => throw _privateConstructorUsedError;
  OrderType? get type => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true, defaultValue: 0)
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get isInternal => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get otherInfo => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  User? get customer => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  Order? get parentOrder => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String? id,
      OrderType? type,
      @JsonKey(includeIfNull: true, defaultValue: 0) int? priority,
      @JsonKey(defaultValue: false) bool? isInternal,
      @JsonKey(includeIfNull: true) String? note,
      @JsonKey(includeIfNull: true) String? otherInfo,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      User? customer,
      OrderStatus? status,
      @JsonKey(includeIfNull: true) Address? address,
      @JsonKey(includeIfNull: true) Order? parentOrder});

  $UserCopyWith<$Res>? get customer;
  $OrderStatusCopyWith<$Res>? get status;
  $AddressCopyWith<$Res>? get address;
  $OrderCopyWith<$Res>? get parentOrder;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? priority = freezed,
    Object? isInternal = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? customer = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? parentOrder = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      parentOrder: freezed == parentOrder
          ? _value.parentOrder
          : parentOrder // ignore: cast_nullable_to_non_nullable
              as Order?,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $OrderStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get parentOrder {
    if (_value.parentOrder == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.parentOrder!, (value) {
      return _then(_value.copyWith(parentOrder: value) as $Val);
    });
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
      {String? id,
      OrderType? type,
      @JsonKey(includeIfNull: true, defaultValue: 0) int? priority,
      @JsonKey(defaultValue: false) bool? isInternal,
      @JsonKey(includeIfNull: true) String? note,
      @JsonKey(includeIfNull: true) String? otherInfo,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      User? customer,
      OrderStatus? status,
      @JsonKey(includeIfNull: true) Address? address,
      @JsonKey(includeIfNull: true) Order? parentOrder});

  @override
  $UserCopyWith<$Res>? get customer;
  @override
  $OrderStatusCopyWith<$Res>? get status;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $OrderCopyWith<$Res>? get parentOrder;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? priority = freezed,
    Object? isInternal = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? customer = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? parentOrder = freezed,
  }) {
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      parentOrder: freezed == parentOrder
          ? _value.parentOrder
          : parentOrder // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$OrderImpl with DiagnosticableTreeMixin implements _Order {
  const _$OrderImpl(
      {this.id,
      this.type,
      @JsonKey(includeIfNull: true, defaultValue: 0) this.priority,
      @JsonKey(defaultValue: false) this.isInternal,
      @JsonKey(includeIfNull: true) this.note,
      @JsonKey(includeIfNull: true) this.otherInfo,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.customer,
      this.status,
      @JsonKey(includeIfNull: true) this.address,
      @JsonKey(includeIfNull: true) this.parentOrder});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String? id;
  @override
  final OrderType? type;
  @override
  @JsonKey(includeIfNull: true, defaultValue: 0)
  final int? priority;
  @override
  @JsonKey(defaultValue: false)
  final bool? isInternal;
  @override
  @JsonKey(includeIfNull: true)
  final String? note;
  @override
  @JsonKey(includeIfNull: true)
  final String? otherInfo;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  final User? customer;
  @override
  final OrderStatus? status;
  @override
  @JsonKey(includeIfNull: true)
  final Address? address;
  @override
  @JsonKey(includeIfNull: true)
  final Order? parentOrder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Order(id: $id, type: $type, priority: $priority, isInternal: $isInternal, note: $note, otherInfo: $otherInfo, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, customer: $customer, status: $status, address: $address, parentOrder: $parentOrder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Order'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('isInternal', isInternal))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('customer', customer))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('parentOrder', parentOrder));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.parentOrder, parentOrder) ||
                other.parentOrder == parentOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      priority,
      isInternal,
      note,
      otherInfo,
      createdBy,
      createdDate,
      lastModifiedBy,
      lastModifiedDate,
      customer,
      status,
      address,
      parentOrder);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {final String? id,
      final OrderType? type,
      @JsonKey(includeIfNull: true, defaultValue: 0) final int? priority,
      @JsonKey(defaultValue: false) final bool? isInternal,
      @JsonKey(includeIfNull: true) final String? note,
      @JsonKey(includeIfNull: true) final String? otherInfo,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      final User? customer,
      final OrderStatus? status,
      @JsonKey(includeIfNull: true) final Address? address,
      @JsonKey(includeIfNull: true) final Order? parentOrder}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String? get id;
  @override
  OrderType? get type;
  @override
  @JsonKey(includeIfNull: true, defaultValue: 0)
  int? get priority;
  @override
  @JsonKey(defaultValue: false)
  bool? get isInternal;
  @override
  @JsonKey(includeIfNull: true)
  String? get note;
  @override
  @JsonKey(includeIfNull: true)
  String? get otherInfo;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  User? get customer;
  @override
  OrderStatus? get status;
  @override
  @JsonKey(includeIfNull: true)
  Address? get address;
  @override
  @JsonKey(includeIfNull: true)
  Order? get parentOrder;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

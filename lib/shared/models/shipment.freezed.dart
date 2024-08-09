// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Shipment _$ShipmentFromJson(Map<String, dynamic> json) {
  return _Shipment.fromJson(json);
}

/// @nodoc
mixin _$Shipment {
  String? get id => throw _privateConstructorUsedError;
  ShipmentType? get type => throw _privateConstructorUsedError;
  DateTime? get shipmentDate => throw _privateConstructorUsedError;
  JsonNullableType<String>? get note => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  ShipmentStatus? get status => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;
  Invoice? get invoice => throw _privateConstructorUsedError;

  /// Serializes this Shipment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentCopyWith<Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentCopyWith<$Res> {
  factory $ShipmentCopyWith(Shipment value, $Res Function(Shipment) then) =
      _$ShipmentCopyWithImpl<$Res, Shipment>;
  @useResult
  $Res call(
      {String? id,
      ShipmentType? type,
      DateTime? shipmentDate,
      JsonNullableType<String>? note,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      ShipmentStatus? status,
      Order? order,
      Invoice? invoice});

  $ShipmentStatusCopyWith<$Res>? get status;
  $OrderCopyWith<$Res>? get order;
  $InvoiceCopyWith<$Res>? get invoice;
}

/// @nodoc
class _$ShipmentCopyWithImpl<$Res, $Val extends Shipment>
    implements $ShipmentCopyWith<$Res> {
  _$ShipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? shipmentDate = freezed,
    Object? note = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? status = freezed,
    Object? order = freezed,
    Object? invoice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentType?,
      shipmentDate: freezed == shipmentDate
          ? _value.shipmentDate
          : shipmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<String>?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShipmentStatus?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
    ) as $Val);
  }

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $ShipmentStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get invoice {
    if (_value.invoice == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.invoice!, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentImplCopyWith<$Res>
    implements $ShipmentCopyWith<$Res> {
  factory _$$ShipmentImplCopyWith(
          _$ShipmentImpl value, $Res Function(_$ShipmentImpl) then) =
      __$$ShipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      ShipmentType? type,
      DateTime? shipmentDate,
      JsonNullableType<String>? note,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      ShipmentStatus? status,
      Order? order,
      Invoice? invoice});

  @override
  $ShipmentStatusCopyWith<$Res>? get status;
  @override
  $OrderCopyWith<$Res>? get order;
  @override
  $InvoiceCopyWith<$Res>? get invoice;
}

/// @nodoc
class __$$ShipmentImplCopyWithImpl<$Res>
    extends _$ShipmentCopyWithImpl<$Res, _$ShipmentImpl>
    implements _$$ShipmentImplCopyWith<$Res> {
  __$$ShipmentImplCopyWithImpl(
      _$ShipmentImpl _value, $Res Function(_$ShipmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? shipmentDate = freezed,
    Object? note = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? status = freezed,
    Object? order = freezed,
    Object? invoice = freezed,
  }) {
    return _then(_$ShipmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentType?,
      shipmentDate: freezed == shipmentDate
          ? _value.shipmentDate
          : shipmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<String>?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShipmentStatus?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentImpl with DiagnosticableTreeMixin implements _Shipment {
  const _$ShipmentImpl(
      {this.id,
      this.type,
      this.shipmentDate,
      this.note,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.status,
      this.order,
      this.invoice});

  factory _$ShipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentImplFromJson(json);

  @override
  final String? id;
  @override
  final ShipmentType? type;
  @override
  final DateTime? shipmentDate;
  @override
  final JsonNullableType<String>? note;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  final ShipmentStatus? status;
  @override
  final Order? order;
  @override
  final Invoice? invoice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Shipment(id: $id, type: $type, shipmentDate: $shipmentDate, note: $note, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, status: $status, order: $order, invoice: $invoice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Shipment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('shipmentDate', shipmentDate))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('invoice', invoice));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.shipmentDate, shipmentDate) ||
                other.shipmentDate == shipmentDate) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      shipmentDate,
      note,
      createdBy,
      createdDate,
      lastModifiedBy,
      lastModifiedDate,
      status,
      order,
      invoice);

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentImplCopyWith<_$ShipmentImpl> get copyWith =>
      __$$ShipmentImplCopyWithImpl<_$ShipmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentImplToJson(
      this,
    );
  }
}

abstract class _Shipment implements Shipment {
  const factory _Shipment(
      {final String? id,
      final ShipmentType? type,
      final DateTime? shipmentDate,
      final JsonNullableType<String>? note,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      final ShipmentStatus? status,
      final Order? order,
      final Invoice? invoice}) = _$ShipmentImpl;

  factory _Shipment.fromJson(Map<String, dynamic> json) =
      _$ShipmentImpl.fromJson;

  @override
  String? get id;
  @override
  ShipmentType? get type;
  @override
  DateTime? get shipmentDate;
  @override
  JsonNullableType<String>? get note;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  ShipmentStatus? get status;
  @override
  Order? get order;
  @override
  Invoice? get invoice;

  /// Create a copy of Shipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentImplCopyWith<_$ShipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_line_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceLineItemDto _$InvoiceLineItemDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceLineItemDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceLineItemDto {
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
  @JsonKey(name: "invoiceId")
  String get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "unitPrice")
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this InvoiceLineItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceLineItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceLineItemDtoCopyWith<InvoiceLineItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceLineItemDtoCopyWith<$Res> {
  factory $InvoiceLineItemDtoCopyWith(
          InvoiceLineItemDto value, $Res Function(InvoiceLineItemDto) then) =
      _$InvoiceLineItemDtoCopyWithImpl<$Res, InvoiceLineItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "orderItemId") String orderItemId,
      @JsonKey(name: "unitPrice") int unitPrice,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class _$InvoiceLineItemDtoCopyWithImpl<$Res, $Val extends InvoiceLineItemDto>
    implements $InvoiceLineItemDtoCopyWith<$Res> {
  _$InvoiceLineItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceLineItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? invoiceId = null,
    Object? orderItemId = null,
    Object? unitPrice = null,
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceLineItemDtoImplCopyWith<$Res>
    implements $InvoiceLineItemDtoCopyWith<$Res> {
  factory _$$InvoiceLineItemDtoImplCopyWith(_$InvoiceLineItemDtoImpl value,
          $Res Function(_$InvoiceLineItemDtoImpl) then) =
      __$$InvoiceLineItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "orderItemId") String orderItemId,
      @JsonKey(name: "unitPrice") int unitPrice,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class __$$InvoiceLineItemDtoImplCopyWithImpl<$Res>
    extends _$InvoiceLineItemDtoCopyWithImpl<$Res, _$InvoiceLineItemDtoImpl>
    implements _$$InvoiceLineItemDtoImplCopyWith<$Res> {
  __$$InvoiceLineItemDtoImplCopyWithImpl(_$InvoiceLineItemDtoImpl _value,
      $Res Function(_$InvoiceLineItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceLineItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? invoiceId = null,
    Object? orderItemId = null,
    Object? unitPrice = null,
    Object? note = freezed,
  }) {
    return _then(_$InvoiceLineItemDtoImpl(
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceLineItemDtoImpl
    with DiagnosticableTreeMixin
    implements _InvoiceLineItemDto {
  const _$InvoiceLineItemDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "invoiceId") required this.invoiceId,
      @JsonKey(name: "orderItemId") required this.orderItemId,
      @JsonKey(name: "unitPrice") required this.unitPrice,
      @JsonKey(name: "note") this.note});

  factory _$InvoiceLineItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceLineItemDtoImplFromJson(json);

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
  @JsonKey(name: "invoiceId")
  final String invoiceId;
  @override
  @JsonKey(name: "orderItemId")
  final String orderItemId;
  @override
  @JsonKey(name: "unitPrice")
  final int unitPrice;
  @override
  @JsonKey(name: "note")
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceLineItemDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, invoiceId: $invoiceId, orderItemId: $orderItemId, unitPrice: $unitPrice, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceLineItemDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('invoiceId', invoiceId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceLineItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, invoiceId, orderItemId, unitPrice, note);

  /// Create a copy of InvoiceLineItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceLineItemDtoImplCopyWith<_$InvoiceLineItemDtoImpl> get copyWith =>
      __$$InvoiceLineItemDtoImplCopyWithImpl<_$InvoiceLineItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceLineItemDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceLineItemDto implements InvoiceLineItemDto {
  const factory _InvoiceLineItemDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "invoiceId") required final String invoiceId,
      @JsonKey(name: "orderItemId") required final String orderItemId,
      @JsonKey(name: "unitPrice") required final int unitPrice,
      @JsonKey(name: "note") final String? note}) = _$InvoiceLineItemDtoImpl;

  factory _InvoiceLineItemDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceLineItemDtoImpl.fromJson;

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
  @JsonKey(name: "invoiceId")
  String get invoiceId;
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;
  @override
  @JsonKey(name: "unitPrice")
  int get unitPrice;
  @override
  @JsonKey(name: "note")
  String? get note;

  /// Create a copy of InvoiceLineItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceLineItemDtoImplCopyWith<_$InvoiceLineItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceLineItemEditDto _$InvoiceLineItemEditDtoFromJson(
    Map<String, dynamic> json) {
  return _InvoiceLineItemEditDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceLineItemEditDto {
  @JsonKey(name: "invoiceId")
  String get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceId")
  set invoiceId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "unitPrice")
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "unitPrice")
  set unitPrice(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;

  /// Serializes this InvoiceLineItemEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceLineItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceLineItemEditDtoCopyWith<InvoiceLineItemEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceLineItemEditDtoCopyWith<$Res> {
  factory $InvoiceLineItemEditDtoCopyWith(InvoiceLineItemEditDto value,
          $Res Function(InvoiceLineItemEditDto) then) =
      _$InvoiceLineItemEditDtoCopyWithImpl<$Res, InvoiceLineItemEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "orderItemId") String orderItemId,
      @JsonKey(name: "unitPrice") int unitPrice,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class _$InvoiceLineItemEditDtoCopyWithImpl<$Res,
        $Val extends InvoiceLineItemEditDto>
    implements $InvoiceLineItemEditDtoCopyWith<$Res> {
  _$InvoiceLineItemEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceLineItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? orderItemId = null,
    Object? unitPrice = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceLineItemEditDtoImplCopyWith<$Res>
    implements $InvoiceLineItemEditDtoCopyWith<$Res> {
  factory _$$InvoiceLineItemEditDtoImplCopyWith(
          _$InvoiceLineItemEditDtoImpl value,
          $Res Function(_$InvoiceLineItemEditDtoImpl) then) =
      __$$InvoiceLineItemEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "invoiceId") String invoiceId,
      @JsonKey(name: "orderItemId") String orderItemId,
      @JsonKey(name: "unitPrice") int unitPrice,
      @JsonKey(name: "note") String? note});
}

/// @nodoc
class __$$InvoiceLineItemEditDtoImplCopyWithImpl<$Res>
    extends _$InvoiceLineItemEditDtoCopyWithImpl<$Res,
        _$InvoiceLineItemEditDtoImpl>
    implements _$$InvoiceLineItemEditDtoImplCopyWith<$Res> {
  __$$InvoiceLineItemEditDtoImplCopyWithImpl(
      _$InvoiceLineItemEditDtoImpl _value,
      $Res Function(_$InvoiceLineItemEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceLineItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? orderItemId = null,
    Object? unitPrice = null,
    Object? note = freezed,
  }) {
    return _then(_$InvoiceLineItemEditDtoImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InvoiceLineItemEditDtoImpl
    with DiagnosticableTreeMixin
    implements _InvoiceLineItemEditDto {
  _$InvoiceLineItemEditDtoImpl(
      {@JsonKey(name: "invoiceId") required this.invoiceId,
      @JsonKey(name: "orderItemId") required this.orderItemId,
      @JsonKey(name: "unitPrice") required this.unitPrice,
      @JsonKey(name: "note") this.note});

  factory _$InvoiceLineItemEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceLineItemEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "invoiceId")
  String invoiceId;
  @override
  @JsonKey(name: "orderItemId")
  String orderItemId;
  @override
  @JsonKey(name: "unitPrice")
  int unitPrice;
  @override
  @JsonKey(name: "note")
  String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceLineItemEditDto(invoiceId: $invoiceId, orderItemId: $orderItemId, unitPrice: $unitPrice, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceLineItemEditDto'))
      ..add(DiagnosticsProperty('invoiceId', invoiceId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('note', note));
  }

  /// Create a copy of InvoiceLineItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceLineItemEditDtoImplCopyWith<_$InvoiceLineItemEditDtoImpl>
      get copyWith => __$$InvoiceLineItemEditDtoImplCopyWithImpl<
          _$InvoiceLineItemEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceLineItemEditDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceLineItemEditDto implements InvoiceLineItemEditDto {
  factory _InvoiceLineItemEditDto(
      {@JsonKey(name: "invoiceId") required String invoiceId,
      @JsonKey(name: "orderItemId") required String orderItemId,
      @JsonKey(name: "unitPrice") required int unitPrice,
      @JsonKey(name: "note") String? note}) = _$InvoiceLineItemEditDtoImpl;

  factory _InvoiceLineItemEditDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceLineItemEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "invoiceId")
  String get invoiceId;
  @JsonKey(name: "invoiceId")
  set invoiceId(String value);
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value);
  @override
  @JsonKey(name: "unitPrice")
  int get unitPrice;
  @JsonKey(name: "unitPrice")
  set unitPrice(int value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);

  /// Create a copy of InvoiceLineItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceLineItemEditDtoImplCopyWith<_$InvoiceLineItemEditDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
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
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "otherInfo")
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "rootOrderId")
  String? get rootOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "creatorId")
  String get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "guestId")
  String? get guestId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;

  /// Serializes this OrderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "creatorId") String creatorId,
      @JsonKey(name: "guestId") String? guestId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDto
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
    Object? rating = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? creatorId = null,
    Object? guestId = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: freezed == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$OrderDtoImplCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$$OrderDtoImplCopyWith(
          _$OrderDtoImpl value, $Res Function(_$OrderDtoImpl) then) =
      __$$OrderDtoImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "creatorId") String creatorId,
      @JsonKey(name: "guestId") String? guestId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$OrderDtoImplCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$OrderDtoImpl>
    implements _$$OrderDtoImplCopyWith<$Res> {
  __$$OrderDtoImplCopyWithImpl(
      _$OrderDtoImpl _value, $Res Function(_$OrderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDto
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
    Object? rating = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? creatorId = null,
    Object? guestId = freezed,
    Object? statusCodeId = null,
    Object? addressId = null,
  }) {
    return _then(_$OrderDtoImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: freezed == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$OrderDtoImpl with DiagnosticableTreeMixin implements _OrderDto {
  const _$OrderDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "rootOrderId") this.rootOrderId,
      @JsonKey(name: "creatorId") required this.creatorId,
      @JsonKey(name: "guestId") this.guestId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

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
  @JsonKey(name: "rating")
  final int? rating;
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
  @JsonKey(name: "creatorId")
  final String creatorId;
  @override
  @JsonKey(name: "guestId")
  final String? guestId;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;
  @override
  @JsonKey(name: "addressId")
  final String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, priority: $priority, rating: $rating, note: $note, otherInfo: $otherInfo, rootOrderId: $rootOrderId, creatorId: $creatorId, guestId: $guestId, statusCodeId: $statusCodeId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('rootOrderId', rootOrderId))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('guestId', guestId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDtoImpl &&
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
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.rootOrderId, rootOrderId) ||
                other.rootOrderId == rootOrderId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.guestId, guestId) || other.guestId == guestId) &&
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
      rating,
      note,
      otherInfo,
      rootOrderId,
      creatorId,
      guestId,
      statusCodeId,
      addressId);

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      __$$OrderDtoImplCopyWithImpl<_$OrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderDto implements OrderDto {
  const factory _OrderDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final OrderType type,
          @JsonKey(name: "priority") final int? priority,
          @JsonKey(name: "rating") final int? rating,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "otherInfo") final String? otherInfo,
          @JsonKey(name: "rootOrderId") final String? rootOrderId,
          @JsonKey(name: "creatorId") required final String creatorId,
          @JsonKey(name: "guestId") final String? guestId,
          @JsonKey(name: "statusCodeId") required final String statusCodeId,
          @JsonKey(name: "addressId") required final String addressId}) =
      _$OrderDtoImpl;

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

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
  @JsonKey(name: "rating")
  int? get rating;
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
  @JsonKey(name: "creatorId")
  String get creatorId;
  @override
  @JsonKey(name: "guestId")
  String? get guestId;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;
  @override
  @JsonKey(name: "addressId")
  String get addressId;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderEditDto _$OrderEditDtoFromJson(Map<String, dynamic> json) {
  return _OrderEditDto.fromJson(json);
}

/// @nodoc
mixin _$OrderEditDto {
  @JsonKey(name: "type")
  OrderType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(OrderType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  set priority(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  set rating(int? value) => throw _privateConstructorUsedError;
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
  @JsonKey(name: "creatorId")
  String get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creatorId")
  set creatorId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "guestId")
  String? get guestId => throw _privateConstructorUsedError;
  @JsonKey(name: "guestId")
  set guestId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  set statusCodeId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  set addressId(String value) => throw _privateConstructorUsedError;

  /// Serializes this OrderEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEditDtoCopyWith<OrderEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEditDtoCopyWith<$Res> {
  factory $OrderEditDtoCopyWith(
          OrderEditDto value, $Res Function(OrderEditDto) then) =
      _$OrderEditDtoCopyWithImpl<$Res, OrderEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "creatorId") String creatorId,
      @JsonKey(name: "guestId") String? guestId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$OrderEditDtoCopyWithImpl<$Res, $Val extends OrderEditDto>
    implements $OrderEditDtoCopyWith<$Res> {
  _$OrderEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? priority = freezed,
    Object? rating = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? creatorId = null,
    Object? guestId = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: freezed == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$OrderEditDtoImplCopyWith<$Res>
    implements $OrderEditDtoCopyWith<$Res> {
  factory _$$OrderEditDtoImplCopyWith(
          _$OrderEditDtoImpl value, $Res Function(_$OrderEditDtoImpl) then) =
      __$$OrderEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") OrderType type,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "otherInfo") String? otherInfo,
      @JsonKey(name: "rootOrderId") String? rootOrderId,
      @JsonKey(name: "creatorId") String creatorId,
      @JsonKey(name: "guestId") String? guestId,
      @JsonKey(name: "statusCodeId") String statusCodeId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$OrderEditDtoImplCopyWithImpl<$Res>
    extends _$OrderEditDtoCopyWithImpl<$Res, _$OrderEditDtoImpl>
    implements _$$OrderEditDtoImplCopyWith<$Res> {
  __$$OrderEditDtoImplCopyWithImpl(
      _$OrderEditDtoImpl _value, $Res Function(_$OrderEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? priority = freezed,
    Object? rating = freezed,
    Object? note = freezed,
    Object? otherInfo = freezed,
    Object? rootOrderId = freezed,
    Object? creatorId = null,
    Object? guestId = freezed,
    Object? statusCodeId = null,
    Object? addressId = null,
  }) {
    return _then(_$OrderEditDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: freezed == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$OrderEditDtoImpl with DiagnosticableTreeMixin implements _OrderEditDto {
  _$OrderEditDtoImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "otherInfo") this.otherInfo,
      @JsonKey(name: "rootOrderId") this.rootOrderId,
      @JsonKey(name: "creatorId") required this.creatorId,
      @JsonKey(name: "guestId") this.guestId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$OrderEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "type")
  OrderType type;
  @override
  @JsonKey(name: "priority")
  int? priority;
  @override
  @JsonKey(name: "rating")
  int? rating;
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
  @JsonKey(name: "creatorId")
  String creatorId;
  @override
  @JsonKey(name: "guestId")
  String? guestId;
  @override
  @JsonKey(name: "statusCodeId")
  String statusCodeId;
  @override
  @JsonKey(name: "addressId")
  String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEditDto(type: $type, priority: $priority, rating: $rating, note: $note, otherInfo: $otherInfo, rootOrderId: $rootOrderId, creatorId: $creatorId, guestId: $guestId, statusCodeId: $statusCodeId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEditDto'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('otherInfo', otherInfo))
      ..add(DiagnosticsProperty('rootOrderId', rootOrderId))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('guestId', guestId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  /// Create a copy of OrderEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEditDtoImplCopyWith<_$OrderEditDtoImpl> get copyWith =>
      __$$OrderEditDtoImplCopyWithImpl<_$OrderEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEditDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderEditDto implements OrderEditDto {
  factory _OrderEditDto(
          {@JsonKey(name: "type") required OrderType type,
          @JsonKey(name: "priority") int? priority,
          @JsonKey(name: "rating") int? rating,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "otherInfo") String? otherInfo,
          @JsonKey(name: "rootOrderId") String? rootOrderId,
          @JsonKey(name: "creatorId") required String creatorId,
          @JsonKey(name: "guestId") String? guestId,
          @JsonKey(name: "statusCodeId") required String statusCodeId,
          @JsonKey(name: "addressId") required String addressId}) =
      _$OrderEditDtoImpl;

  factory _OrderEditDto.fromJson(Map<String, dynamic> json) =
      _$OrderEditDtoImpl.fromJson;

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
  @JsonKey(name: "rating")
  int? get rating;
  @JsonKey(name: "rating")
  set rating(int? value);
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
  @JsonKey(name: "creatorId")
  String get creatorId;
  @JsonKey(name: "creatorId")
  set creatorId(String value);
  @override
  @JsonKey(name: "guestId")
  String? get guestId;
  @JsonKey(name: "guestId")
  set guestId(String? value);
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

  /// Create a copy of OrderEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEditDtoImplCopyWith<_$OrderEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

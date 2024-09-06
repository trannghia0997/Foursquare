// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) {
  return _CommentDTO.fromJson(json);
}

/// @nodoc
mixin _$CommentDTO {
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
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CommentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentDTOCopyWith<CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDTOCopyWith<$Res> {
  factory $CommentDTOCopyWith(
          CommentDTO value, $Res Function(CommentDTO) then) =
      _$CommentDTOCopyWithImpl<$Res, CommentDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "user_id") String userId});
}

/// @nodoc
class _$CommentDTOCopyWithImpl<$Res, $Val extends CommentDTO>
    implements $CommentDTOCopyWith<$Res> {
  _$CommentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? rating = freezed,
    Object? content = freezed,
    Object? productId = null,
    Object? userId = null,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentDTOImplCopyWith<$Res>
    implements $CommentDTOCopyWith<$Res> {
  factory _$$CommentDTOImplCopyWith(
          _$CommentDTOImpl value, $Res Function(_$CommentDTOImpl) then) =
      __$$CommentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "user_id") String userId});
}

/// @nodoc
class __$$CommentDTOImplCopyWithImpl<$Res>
    extends _$CommentDTOCopyWithImpl<$Res, _$CommentDTOImpl>
    implements _$$CommentDTOImplCopyWith<$Res> {
  __$$CommentDTOImplCopyWithImpl(
      _$CommentDTOImpl _value, $Res Function(_$CommentDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? rating = freezed,
    Object? content = freezed,
    Object? productId = null,
    Object? userId = null,
  }) {
    return _then(_$CommentDTOImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentDTOImpl with DiagnosticableTreeMixin implements _CommentDTO {
  const _$CommentDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "user_id") required this.userId});

  factory _$CommentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDTOImplFromJson(json);

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
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "product_id")
  final String productId;
  @override
  @JsonKey(name: "user_id")
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, rating: $rating, content: $content, productId: $productId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, rating, content, productId, userId);

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDTOImplCopyWith<_$CommentDTOImpl> get copyWith =>
      __$$CommentDTOImplCopyWithImpl<_$CommentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDTOImplToJson(
      this,
    );
  }
}

abstract class _CommentDTO implements CommentDTO {
  const factory _CommentDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "rating") final int? rating,
          @JsonKey(name: "content") final String? content,
          @JsonKey(name: "product_id") required final String productId,
          @JsonKey(name: "user_id") required final String userId}) =
      _$CommentDTOImpl;

  factory _CommentDTO.fromJson(Map<String, dynamic> json) =
      _$CommentDTOImpl.fromJson;

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
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "product_id")
  String get productId;
  @override
  @JsonKey(name: "user_id")
  String get userId;

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentDTOImplCopyWith<_$CommentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentEditDTO _$CommentEditDTOFromJson(Map<String, dynamic> json) {
  return _CommentEditDTO.fromJson(json);
}

/// @nodoc
mixin _$CommentEditDTO {
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  set rating(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  set content(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  set productId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  set userId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this CommentEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentEditDTOCopyWith<CommentEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEditDTOCopyWith<$Res> {
  factory $CommentEditDTOCopyWith(
          CommentEditDTO value, $Res Function(CommentEditDTO) then) =
      _$CommentEditDTOCopyWithImpl<$Res, CommentEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "user_id") String? userId});
}

/// @nodoc
class _$CommentEditDTOCopyWithImpl<$Res, $Val extends CommentEditDTO>
    implements $CommentEditDTOCopyWith<$Res> {
  _$CommentEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? content = freezed,
    Object? productId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentEditDTOImplCopyWith<$Res>
    implements $CommentEditDTOCopyWith<$Res> {
  factory _$$CommentEditDTOImplCopyWith(_$CommentEditDTOImpl value,
          $Res Function(_$CommentEditDTOImpl) then) =
      __$$CommentEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "user_id") String? userId});
}

/// @nodoc
class __$$CommentEditDTOImplCopyWithImpl<$Res>
    extends _$CommentEditDTOCopyWithImpl<$Res, _$CommentEditDTOImpl>
    implements _$$CommentEditDTOImplCopyWith<$Res> {
  __$$CommentEditDTOImplCopyWithImpl(
      _$CommentEditDTOImpl _value, $Res Function(_$CommentEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? content = freezed,
    Object? productId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$CommentEditDTOImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$CommentEditDTOImpl
    with DiagnosticableTreeMixin
    implements _CommentEditDTO {
  _$CommentEditDTOImpl(
      {@JsonKey(name: "rating") this.rating,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "product_id") this.productId,
      @JsonKey(name: "user_id") this.userId});

  factory _$CommentEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "rating")
  int? rating;
  @override
  @JsonKey(name: "content")
  String? content;
  @override
  @JsonKey(name: "product_id")
  String? productId;
  @override
  @JsonKey(name: "user_id")
  String? userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentEditDTO(rating: $rating, content: $content, productId: $productId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentEditDTO'))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  /// Create a copy of CommentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEditDTOImplCopyWith<_$CommentEditDTOImpl> get copyWith =>
      __$$CommentEditDTOImplCopyWithImpl<_$CommentEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentEditDTOImplToJson(
      this,
    );
  }
}

abstract class _CommentEditDTO implements CommentEditDTO {
  factory _CommentEditDTO(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "user_id") String? userId}) = _$CommentEditDTOImpl;

  factory _CommentEditDTO.fromJson(Map<String, dynamic> json) =
      _$CommentEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "rating")
  int? get rating;
  @JsonKey(name: "rating")
  set rating(int? value);
  @override
  @JsonKey(name: "content")
  String? get content;
  @JsonKey(name: "content")
  set content(String? value);
  @override
  @JsonKey(name: "product_id")
  String? get productId;
  @JsonKey(name: "product_id")
  set productId(String? value);
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @JsonKey(name: "user_id")
  set userId(String? value);

  /// Create a copy of CommentEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentEditDTOImplCopyWith<_$CommentEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

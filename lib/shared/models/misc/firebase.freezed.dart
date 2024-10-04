// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StorageObjectResponse _$StorageObjectResponseFromJson(
    Map<String, dynamic> json) {
  return _StorageObjectResponse.fromJson(json);
}

/// @nodoc
mixin _$StorageObjectResponse {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket")
  String get bucket => throw _privateConstructorUsedError;
  @JsonKey(name: "generation")
  String get generation => throw _privateConstructorUsedError;
  @JsonKey(name: "metageneration")
  String get metageneration => throw _privateConstructorUsedError;
  @JsonKey(name: "contentType")
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "timeCreated")
  DateTime get timeCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "storageClass")
  String get storageClass => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  String get size => throw _privateConstructorUsedError;
  @JsonKey(name: "md5Hash")
  String get md5Hash => throw _privateConstructorUsedError;
  @JsonKey(name: "contentEncoding")
  String get contentEncoding => throw _privateConstructorUsedError;
  @JsonKey(name: "contentDisposition")
  String get contentDisposition => throw _privateConstructorUsedError;
  @JsonKey(name: "crc32c")
  String get crc32C => throw _privateConstructorUsedError;
  @JsonKey(name: "etag")
  String get etag => throw _privateConstructorUsedError;
  @JsonKey(name: "downloadTokens")
  String get downloadTokens => throw _privateConstructorUsedError;

  /// Serializes this StorageObjectResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StorageObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StorageObjectResponseCopyWith<StorageObjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageObjectResponseCopyWith<$Res> {
  factory $StorageObjectResponseCopyWith(StorageObjectResponse value,
          $Res Function(StorageObjectResponse) then) =
      _$StorageObjectResponseCopyWithImpl<$Res, StorageObjectResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "bucket") String bucket,
      @JsonKey(name: "generation") String generation,
      @JsonKey(name: "metageneration") String metageneration,
      @JsonKey(name: "contentType") String contentType,
      @JsonKey(name: "timeCreated") DateTime timeCreated,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "storageClass") String storageClass,
      @JsonKey(name: "size") String size,
      @JsonKey(name: "md5Hash") String md5Hash,
      @JsonKey(name: "contentEncoding") String contentEncoding,
      @JsonKey(name: "contentDisposition") String contentDisposition,
      @JsonKey(name: "crc32c") String crc32C,
      @JsonKey(name: "etag") String etag,
      @JsonKey(name: "downloadTokens") String downloadTokens});
}

/// @nodoc
class _$StorageObjectResponseCopyWithImpl<$Res,
        $Val extends StorageObjectResponse>
    implements $StorageObjectResponseCopyWith<$Res> {
  _$StorageObjectResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bucket = null,
    Object? generation = null,
    Object? metageneration = null,
    Object? contentType = null,
    Object? timeCreated = null,
    Object? updated = null,
    Object? storageClass = null,
    Object? size = null,
    Object? md5Hash = null,
    Object? contentEncoding = null,
    Object? contentDisposition = null,
    Object? crc32C = null,
    Object? etag = null,
    Object? downloadTokens = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bucket: null == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
      metageneration: null == metageneration
          ? _value.metageneration
          : metageneration // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      timeCreated: null == timeCreated
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storageClass: null == storageClass
          ? _value.storageClass
          : storageClass // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      md5Hash: null == md5Hash
          ? _value.md5Hash
          : md5Hash // ignore: cast_nullable_to_non_nullable
              as String,
      contentEncoding: null == contentEncoding
          ? _value.contentEncoding
          : contentEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      contentDisposition: null == contentDisposition
          ? _value.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as String,
      crc32C: null == crc32C
          ? _value.crc32C
          : crc32C // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      downloadTokens: null == downloadTokens
          ? _value.downloadTokens
          : downloadTokens // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageObjectResponseImplCopyWith<$Res>
    implements $StorageObjectResponseCopyWith<$Res> {
  factory _$$StorageObjectResponseImplCopyWith(
          _$StorageObjectResponseImpl value,
          $Res Function(_$StorageObjectResponseImpl) then) =
      __$$StorageObjectResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "bucket") String bucket,
      @JsonKey(name: "generation") String generation,
      @JsonKey(name: "metageneration") String metageneration,
      @JsonKey(name: "contentType") String contentType,
      @JsonKey(name: "timeCreated") DateTime timeCreated,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "storageClass") String storageClass,
      @JsonKey(name: "size") String size,
      @JsonKey(name: "md5Hash") String md5Hash,
      @JsonKey(name: "contentEncoding") String contentEncoding,
      @JsonKey(name: "contentDisposition") String contentDisposition,
      @JsonKey(name: "crc32c") String crc32C,
      @JsonKey(name: "etag") String etag,
      @JsonKey(name: "downloadTokens") String downloadTokens});
}

/// @nodoc
class __$$StorageObjectResponseImplCopyWithImpl<$Res>
    extends _$StorageObjectResponseCopyWithImpl<$Res,
        _$StorageObjectResponseImpl>
    implements _$$StorageObjectResponseImplCopyWith<$Res> {
  __$$StorageObjectResponseImplCopyWithImpl(_$StorageObjectResponseImpl _value,
      $Res Function(_$StorageObjectResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bucket = null,
    Object? generation = null,
    Object? metageneration = null,
    Object? contentType = null,
    Object? timeCreated = null,
    Object? updated = null,
    Object? storageClass = null,
    Object? size = null,
    Object? md5Hash = null,
    Object? contentEncoding = null,
    Object? contentDisposition = null,
    Object? crc32C = null,
    Object? etag = null,
    Object? downloadTokens = null,
  }) {
    return _then(_$StorageObjectResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bucket: null == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
      metageneration: null == metageneration
          ? _value.metageneration
          : metageneration // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      timeCreated: null == timeCreated
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storageClass: null == storageClass
          ? _value.storageClass
          : storageClass // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      md5Hash: null == md5Hash
          ? _value.md5Hash
          : md5Hash // ignore: cast_nullable_to_non_nullable
              as String,
      contentEncoding: null == contentEncoding
          ? _value.contentEncoding
          : contentEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      contentDisposition: null == contentDisposition
          ? _value.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as String,
      crc32C: null == crc32C
          ? _value.crc32C
          : crc32C // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      downloadTokens: null == downloadTokens
          ? _value.downloadTokens
          : downloadTokens // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageObjectResponseImpl implements _StorageObjectResponse {
  const _$StorageObjectResponseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "bucket") required this.bucket,
      @JsonKey(name: "generation") required this.generation,
      @JsonKey(name: "metageneration") required this.metageneration,
      @JsonKey(name: "contentType") required this.contentType,
      @JsonKey(name: "timeCreated") required this.timeCreated,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "storageClass") required this.storageClass,
      @JsonKey(name: "size") required this.size,
      @JsonKey(name: "md5Hash") required this.md5Hash,
      @JsonKey(name: "contentEncoding") required this.contentEncoding,
      @JsonKey(name: "contentDisposition") required this.contentDisposition,
      @JsonKey(name: "crc32c") required this.crc32C,
      @JsonKey(name: "etag") required this.etag,
      @JsonKey(name: "downloadTokens") required this.downloadTokens});

  factory _$StorageObjectResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageObjectResponseImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "bucket")
  final String bucket;
  @override
  @JsonKey(name: "generation")
  final String generation;
  @override
  @JsonKey(name: "metageneration")
  final String metageneration;
  @override
  @JsonKey(name: "contentType")
  final String contentType;
  @override
  @JsonKey(name: "timeCreated")
  final DateTime timeCreated;
  @override
  @JsonKey(name: "updated")
  final DateTime updated;
  @override
  @JsonKey(name: "storageClass")
  final String storageClass;
  @override
  @JsonKey(name: "size")
  final String size;
  @override
  @JsonKey(name: "md5Hash")
  final String md5Hash;
  @override
  @JsonKey(name: "contentEncoding")
  final String contentEncoding;
  @override
  @JsonKey(name: "contentDisposition")
  final String contentDisposition;
  @override
  @JsonKey(name: "crc32c")
  final String crc32C;
  @override
  @JsonKey(name: "etag")
  final String etag;
  @override
  @JsonKey(name: "downloadTokens")
  final String downloadTokens;

  @override
  String toString() {
    return 'StorageObjectResponse(name: $name, bucket: $bucket, generation: $generation, metageneration: $metageneration, contentType: $contentType, timeCreated: $timeCreated, updated: $updated, storageClass: $storageClass, size: $size, md5Hash: $md5Hash, contentEncoding: $contentEncoding, contentDisposition: $contentDisposition, crc32C: $crc32C, etag: $etag, downloadTokens: $downloadTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageObjectResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.metageneration, metageneration) ||
                other.metageneration == metageneration) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.timeCreated, timeCreated) ||
                other.timeCreated == timeCreated) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.storageClass, storageClass) ||
                other.storageClass == storageClass) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.md5Hash, md5Hash) || other.md5Hash == md5Hash) &&
            (identical(other.contentEncoding, contentEncoding) ||
                other.contentEncoding == contentEncoding) &&
            (identical(other.contentDisposition, contentDisposition) ||
                other.contentDisposition == contentDisposition) &&
            (identical(other.crc32C, crc32C) || other.crc32C == crc32C) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.downloadTokens, downloadTokens) ||
                other.downloadTokens == downloadTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      bucket,
      generation,
      metageneration,
      contentType,
      timeCreated,
      updated,
      storageClass,
      size,
      md5Hash,
      contentEncoding,
      contentDisposition,
      crc32C,
      etag,
      downloadTokens);

  /// Create a copy of StorageObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageObjectResponseImplCopyWith<_$StorageObjectResponseImpl>
      get copyWith => __$$StorageObjectResponseImplCopyWithImpl<
          _$StorageObjectResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageObjectResponseImplToJson(
      this,
    );
  }
}

abstract class _StorageObjectResponse implements StorageObjectResponse {
  const factory _StorageObjectResponse(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "bucket") required final String bucket,
      @JsonKey(name: "generation") required final String generation,
      @JsonKey(name: "metageneration") required final String metageneration,
      @JsonKey(name: "contentType") required final String contentType,
      @JsonKey(name: "timeCreated") required final DateTime timeCreated,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "storageClass") required final String storageClass,
      @JsonKey(name: "size") required final String size,
      @JsonKey(name: "md5Hash") required final String md5Hash,
      @JsonKey(name: "contentEncoding") required final String contentEncoding,
      @JsonKey(name: "contentDisposition")
      required final String contentDisposition,
      @JsonKey(name: "crc32c") required final String crc32C,
      @JsonKey(name: "etag") required final String etag,
      @JsonKey(name: "downloadTokens")
      required final String downloadTokens}) = _$StorageObjectResponseImpl;

  factory _StorageObjectResponse.fromJson(Map<String, dynamic> json) =
      _$StorageObjectResponseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "bucket")
  String get bucket;
  @override
  @JsonKey(name: "generation")
  String get generation;
  @override
  @JsonKey(name: "metageneration")
  String get metageneration;
  @override
  @JsonKey(name: "contentType")
  String get contentType;
  @override
  @JsonKey(name: "timeCreated")
  DateTime get timeCreated;
  @override
  @JsonKey(name: "updated")
  DateTime get updated;
  @override
  @JsonKey(name: "storageClass")
  String get storageClass;
  @override
  @JsonKey(name: "size")
  String get size;
  @override
  @JsonKey(name: "md5Hash")
  String get md5Hash;
  @override
  @JsonKey(name: "contentEncoding")
  String get contentEncoding;
  @override
  @JsonKey(name: "contentDisposition")
  String get contentDisposition;
  @override
  @JsonKey(name: "crc32c")
  String get crc32C;
  @override
  @JsonKey(name: "etag")
  String get etag;
  @override
  @JsonKey(name: "downloadTokens")
  String get downloadTokens;

  /// Create a copy of StorageObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageObjectResponseImplCopyWith<_$StorageObjectResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

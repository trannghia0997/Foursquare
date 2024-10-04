import 'package:foursquare/shared/image_upload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase.freezed.dart';
part 'firebase.g.dart';

@freezed
class StorageObjectResponse with _$StorageObjectResponse {
  const factory StorageObjectResponse({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "bucket") required String bucket,
    @JsonKey(name: "generation") required String generation,
    @JsonKey(name: "metageneration") required String metageneration,
    @JsonKey(name: "contentType") required String contentType,
    @JsonKey(name: "timeCreated") required DateTime timeCreated,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "storageClass") required String storageClass,
    @JsonKey(name: "size") required String size,
    @JsonKey(name: "md5Hash") required String md5Hash,
    @JsonKey(name: "contentEncoding") required String contentEncoding,
    @JsonKey(name: "contentDisposition") required String contentDisposition,
    @JsonKey(name: "crc32c") required String crc32C,
    @JsonKey(name: "etag") required String etag,
    @JsonKey(name: "downloadTokens") required String downloadTokens,
  }) = _StorageObjectResponse;

  factory StorageObjectResponse.fromJson(Map<String, dynamic> json) =>
      _$StorageObjectResponseFromJson(json);
}

extension ResourceUri on StorageObjectResponse {
  Uri get downloadUri => constructFirebaseStorageUrl(this);
}

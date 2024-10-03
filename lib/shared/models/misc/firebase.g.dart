// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageObjectResponseImpl _$$StorageObjectResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StorageObjectResponseImpl(
      name: json['name'] as String,
      bucket: json['bucket'] as String,
      generation: json['generation'] as String,
      metageneration: json['metageneration'] as String,
      contentType: json['contentType'] as String,
      timeCreated: DateTime.parse(json['timeCreated'] as String),
      updated: DateTime.parse(json['updated'] as String),
      storageClass: json['storageClass'] as String,
      size: json['size'] as String,
      md5Hash: json['md5Hash'] as String,
      contentEncoding: json['contentEncoding'] as String,
      contentDisposition: json['contentDisposition'] as String,
      crc32C: json['crc32c'] as String,
      etag: json['etag'] as String,
      downloadTokens: json['downloadTokens'] as String,
    );

Map<String, dynamic> _$$StorageObjectResponseImplToJson(
        _$StorageObjectResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bucket': instance.bucket,
      'generation': instance.generation,
      'metageneration': instance.metageneration,
      'contentType': instance.contentType,
      'timeCreated': instance.timeCreated.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'storageClass': instance.storageClass,
      'size': instance.size,
      'md5Hash': instance.md5Hash,
      'contentEncoding': instance.contentEncoding,
      'contentDisposition': instance.contentDisposition,
      'crc32c': instance.crc32C,
      'etag': instance.etag,
      'downloadTokens': instance.downloadTokens,
    };

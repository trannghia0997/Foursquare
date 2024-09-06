// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RealtimeResponseImpl<T> _$$RealtimeResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$RealtimeResponseImpl<T>(
      action: $enumDecode(_$RealtimeActionEnumMap, json['action']),
      record: fromJsonT(json['record']),
    );

Map<String, dynamic> _$$RealtimeResponseImplToJson<T>(
  _$RealtimeResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'action': _$RealtimeActionEnumMap[instance.action]!,
      'record': toJsonT(instance.record),
    };

const _$RealtimeActionEnumMap = {
  RealtimeAction.create: 'create',
  RealtimeAction.update: 'update',
  RealtimeAction.delete: 'delete',
};

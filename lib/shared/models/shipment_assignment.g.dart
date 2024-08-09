// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentAssignmentImpl _$$ShipmentAssignmentImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentAssignmentImpl(
      id: json['id'] as String?,
      status: $enumDecodeNullable(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      shipment: json['shipment'] == null
          ? null
          : Shipment.fromJson(json['shipment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShipmentAssignmentImplToJson(
    _$ShipmentAssignmentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('status', _$AssignmentStatusEnumMap[instance.status]);
  val['note'] = instance.note;
  val['otherInfo'] = instance.otherInfo;
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  val['user'] = instance.user;
  writeNotNull('shipment', instance.shipment);
  return val;
}

const _$AssignmentStatusEnumMap = {
  AssignmentStatus.pending: 'PENDING',
  AssignmentStatus.assigned: 'ASSIGNED',
  AssignmentStatus.inProgress: 'IN_PROGRESS',
  AssignmentStatus.completed: 'COMPLETED',
  AssignmentStatus.cancelled: 'CANCELLED',
  AssignmentStatus.failed: 'FAILED',
  AssignmentStatus.other: 'OTHER',
};

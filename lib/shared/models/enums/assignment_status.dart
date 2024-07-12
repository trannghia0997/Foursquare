import 'package:json_annotation/json_annotation.dart';

enum AssignmentStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('ASSIGNED')
  assigned,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('FAILED')
  failed,
  @JsonValue('OTHER')
  other,
}

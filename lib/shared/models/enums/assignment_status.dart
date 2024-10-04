import 'package:json_annotation/json_annotation.dart';

enum AssignmentStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('assigned')
  assigned,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('failed')
  failed,
  @JsonValue('other')
  other,
}

extension AssignmentStatusExtension on AssignmentStatus {
  String get vietnameseLocalizationString {
    switch (this) {
      case AssignmentStatus.pending:
        return 'Chờ phân công';
      case AssignmentStatus.assigned:
        return 'Đã phân công';
      case AssignmentStatus.inProgress:
        return 'Đang thực hiện';
      case AssignmentStatus.completed:
        return 'Hoàn thành';
      case AssignmentStatus.cancelled:
        return 'Đã hủy';
      case AssignmentStatus.failed:
        return 'Thất bại';
      case AssignmentStatus.other:
        return 'Khác';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum StaffStatus {
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
  @JsonValue('suspended')
  suspended,
  @JsonValue('terminated')
  terminated,
  @JsonValue('other')
  other,
}

extension Localization on StaffStatus {
  (Color, String) get localized {
    switch (this) {
      case StaffStatus.active:
        return (Colors.green, 'Hoạt động');
      case StaffStatus.inactive:
        return (Colors.grey, 'Không hoạt động');
      case StaffStatus.suspended:
        return (Colors.orange, 'Đã đình chỉ');
      case StaffStatus.terminated:
        return (Colors.red, 'Đã chấm dứt');
      case StaffStatus.other:
        return (Colors.blue, 'Khác');
    }
  }
}

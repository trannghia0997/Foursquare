import 'package:json_annotation/json_annotation.dart';

part 'general.g.dart';

@JsonSerializable()
class LoginVM {
  LoginVM({
    this.username = "",
    this.password = "",
    this.rememberMe = false,
  });

  String username = "";
  String password = "";
  bool rememberMe = false;

  factory LoginVM.fromJson(Map<String, dynamic> json) =>
      _$LoginVMFromJson(json);

  Map<String, dynamic> toJson() => _$LoginVMToJson(this);
}

@JsonSerializable()
class PasswordChange {
  PasswordChange({
    this.currentPassword = "",
    this.newPassword = "",
  });

  String currentPassword;
  String newPassword;

  factory PasswordChange.fromJson(Map<String, dynamic> json) =>
      _$PasswordChangeFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordChangeToJson(this);
}

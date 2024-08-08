// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginVM _$LoginVMFromJson(Map<String, dynamic> json) => LoginVM(
      username: json['username'] as String? ?? "",
      password: json['password'] as String? ?? "",
      rememberMe: json['rememberMe'] as bool? ?? false,
    );

Map<String, dynamic> _$LoginVMToJson(LoginVM instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
    };

PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) =>
    PasswordChange(
      currentPassword: json['currentPassword'] as String? ?? "",
      newPassword: json['newPassword'] as String? ?? "",
    );

Map<String, dynamic> _$PasswordChangeToJson(PasswordChange instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };

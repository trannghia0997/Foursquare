import 'package:foursquare/shared/models/auth/authority_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:foursquare/shared/abstract_model.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel extends AbstractResourceModel with _$AuthModel {
  @JsonSerializable(includeIfNull: false)
  const factory AuthModel({
    int? id,
    String? login,
    String? firstName,
    String? lastName,
    String? email,
    String? imageUrl,
    bool? activated,
    String? langKey,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    List<AuthorityType>? authorities,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, Object?> json) =>
      _$AuthModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role.freezed.dart';
part 'user_role.g.dart';

@freezed
class UserRole with _$UserRole{
  factory UserRole({
    String? id,
    String? name,
})=_UserRole;

  factory UserRole.fromJson(Map<String,dynamic> json)=>_$UserRoleFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';


@freezed
class User with _$User{
  factory User({
    String? id,
    String? login,
    String? password,
    String? token,
})=_User;

  factory User.fromJson(Map<String,dynamic> json)=>_$UserFromJson(json);
}
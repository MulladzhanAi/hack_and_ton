import 'package:freezed_annotation/freezed_annotation.dart';


part 'category.g.dart';
part 'category.freezed.dart';

@freezed
class Category with _$Category{
  factory Category({
   int? id,
    String? name,
})=_Category;

  factory Category.fromJson(Map<String,dynamic> json) => _$CategoryFromJson(json);
}
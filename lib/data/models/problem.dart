import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';

part 'problem.freezed.dart';
part 'problem.g.dart';

@freezed
class Problem with _$Problem{
  factory Problem({
    String? id,
    String? organizationId,
    String? districtId,
    DateTime? createdAt,
    DateTime? UpdatedAt,
    DateTime? Enddate,
    String? description,
    ReportStatus? repostStatus,
    District? district,
    Organization? organization,
})=_Problem;

  factory Problem.fromJson(Map<String,dynamic> json) => _$ProblemFromJson(json);

}
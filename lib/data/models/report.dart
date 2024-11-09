import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report{
  factory Report({
   String? id,
   String? user_id,
   String? description,
   DateTime? created_date,
   DateTime? finishedDate,
   String? address,
   ReportStatus? reportStatus,
   District? district,
   Organization? organization,
})=_Report;

  factory Report.fromJson(Map<String,dynamic> json) => _$ReportFromJson(json);

}
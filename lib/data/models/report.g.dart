// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      id: json['id'] as String?,
      user_id: json['user_id'] as String?,
      description: json['description'] as String?,
      created_date: json['created_date'] == null
          ? null
          : DateTime.parse(json['created_date'] as String),
      finishedDate: json['finishedDate'] == null
          ? null
          : DateTime.parse(json['finishedDate'] as String),
      address: json['address'] as String?,
      reportStatus:
          $enumDecodeNullable(_$ReportStatusEnumMap, json['reportStatus']),
      district: json['district'] == null
          ? null
          : District.fromJson(json['district'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'description': instance.description,
      'created_date': instance.created_date?.toIso8601String(),
      'finishedDate': instance.finishedDate?.toIso8601String(),
      'address': instance.address,
      'reportStatus': _$ReportStatusEnumMap[instance.reportStatus],
      'district': instance.district,
      'organization': instance.organization,
    };

const _$ReportStatusEnumMap = {
  ReportStatus.Created: 'Created',
  ReportStatus.InProgress: 'InProgress',
  ReportStatus.Resolved: 'Resolved',
  ReportStatus.Closed: 'Closed',
  ReportStatus.Rejected: 'Rejected',
  ReportStatus.another: 'another',
};

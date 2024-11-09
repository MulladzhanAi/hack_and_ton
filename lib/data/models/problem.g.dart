// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProblemImpl _$$ProblemImplFromJson(Map<String, dynamic> json) =>
    _$ProblemImpl(
      id: json['id'] as String?,
      organizationId: json['organizationId'] as String?,
      districtId: json['districtId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      UpdatedAt: json['UpdatedAt'] == null
          ? null
          : DateTime.parse(json['UpdatedAt'] as String),
      Enddate: json['Enddate'] == null
          ? null
          : DateTime.parse(json['Enddate'] as String),
      description: json['description'] as String?,
      repostStatus:
          $enumDecodeNullable(_$ReportStatusEnumMap, json['repostStatus']),
      district: json['district'] == null
          ? null
          : District.fromJson(json['district'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProblemImplToJson(_$ProblemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizationId': instance.organizationId,
      'districtId': instance.districtId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'UpdatedAt': instance.UpdatedAt?.toIso8601String(),
      'Enddate': instance.Enddate?.toIso8601String(),
      'description': instance.description,
      'repostStatus': _$ReportStatusEnumMap[instance.repostStatus],
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

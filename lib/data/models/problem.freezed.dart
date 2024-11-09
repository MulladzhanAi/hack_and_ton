// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Problem _$ProblemFromJson(Map<String, dynamic> json) {
  return _Problem.fromJson(json);
}

/// @nodoc
mixin _$Problem {
  String? get id => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  String? get districtId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get UpdatedAt => throw _privateConstructorUsedError;
  DateTime? get Enddate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ReportStatus? get repostStatus => throw _privateConstructorUsedError;
  District? get district => throw _privateConstructorUsedError;
  Organization? get organization => throw _privateConstructorUsedError;

  /// Serializes this Problem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProblemCopyWith<Problem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemCopyWith<$Res> {
  factory $ProblemCopyWith(Problem value, $Res Function(Problem) then) =
      _$ProblemCopyWithImpl<$Res, Problem>;
  @useResult
  $Res call(
      {String? id,
      String? organizationId,
      String? districtId,
      DateTime? createdAt,
      DateTime? UpdatedAt,
      DateTime? Enddate,
      String? description,
      ReportStatus? repostStatus,
      District? district,
      Organization? organization});

  $DistrictCopyWith<$Res>? get district;
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class _$ProblemCopyWithImpl<$Res, $Val extends Problem>
    implements $ProblemCopyWith<$Res> {
  _$ProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? districtId = freezed,
    Object? createdAt = freezed,
    Object? UpdatedAt = freezed,
    Object? Enddate = freezed,
    Object? description = freezed,
    Object? repostStatus = freezed,
    Object? district = freezed,
    Object? organization = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      UpdatedAt: freezed == UpdatedAt
          ? _value.UpdatedAt
          : UpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      Enddate: freezed == Enddate
          ? _value.Enddate
          : Enddate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repostStatus: freezed == repostStatus
          ? _value.repostStatus
          : repostStatus // ignore: cast_nullable_to_non_nullable
              as ReportStatus?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ) as $Val);
  }

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $DistrictCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProblemImplCopyWith<$Res> implements $ProblemCopyWith<$Res> {
  factory _$$ProblemImplCopyWith(
          _$ProblemImpl value, $Res Function(_$ProblemImpl) then) =
      __$$ProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? organizationId,
      String? districtId,
      DateTime? createdAt,
      DateTime? UpdatedAt,
      DateTime? Enddate,
      String? description,
      ReportStatus? repostStatus,
      District? district,
      Organization? organization});

  @override
  $DistrictCopyWith<$Res>? get district;
  @override
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$ProblemImplCopyWithImpl<$Res>
    extends _$ProblemCopyWithImpl<$Res, _$ProblemImpl>
    implements _$$ProblemImplCopyWith<$Res> {
  __$$ProblemImplCopyWithImpl(
      _$ProblemImpl _value, $Res Function(_$ProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? districtId = freezed,
    Object? createdAt = freezed,
    Object? UpdatedAt = freezed,
    Object? Enddate = freezed,
    Object? description = freezed,
    Object? repostStatus = freezed,
    Object? district = freezed,
    Object? organization = freezed,
  }) {
    return _then(_$ProblemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      UpdatedAt: freezed == UpdatedAt
          ? _value.UpdatedAt
          : UpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      Enddate: freezed == Enddate
          ? _value.Enddate
          : Enddate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repostStatus: freezed == repostStatus
          ? _value.repostStatus
          : repostStatus // ignore: cast_nullable_to_non_nullable
              as ReportStatus?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProblemImpl implements _Problem {
  _$ProblemImpl(
      {this.id,
      this.organizationId,
      this.districtId,
      this.createdAt,
      this.UpdatedAt,
      this.Enddate,
      this.description,
      this.repostStatus,
      this.district,
      this.organization});

  factory _$ProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProblemImplFromJson(json);

  @override
  final String? id;
  @override
  final String? organizationId;
  @override
  final String? districtId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? UpdatedAt;
  @override
  final DateTime? Enddate;
  @override
  final String? description;
  @override
  final ReportStatus? repostStatus;
  @override
  final District? district;
  @override
  final Organization? organization;

  @override
  String toString() {
    return 'Problem(id: $id, organizationId: $organizationId, districtId: $districtId, createdAt: $createdAt, UpdatedAt: $UpdatedAt, Enddate: $Enddate, description: $description, repostStatus: $repostStatus, district: $district, organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProblemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.UpdatedAt, UpdatedAt) ||
                other.UpdatedAt == UpdatedAt) &&
            (identical(other.Enddate, Enddate) || other.Enddate == Enddate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repostStatus, repostStatus) ||
                other.repostStatus == repostStatus) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organizationId,
      districtId,
      createdAt,
      UpdatedAt,
      Enddate,
      description,
      repostStatus,
      district,
      organization);

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProblemImplCopyWith<_$ProblemImpl> get copyWith =>
      __$$ProblemImplCopyWithImpl<_$ProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProblemImplToJson(
      this,
    );
  }
}

abstract class _Problem implements Problem {
  factory _Problem(
      {final String? id,
      final String? organizationId,
      final String? districtId,
      final DateTime? createdAt,
      final DateTime? UpdatedAt,
      final DateTime? Enddate,
      final String? description,
      final ReportStatus? repostStatus,
      final District? district,
      final Organization? organization}) = _$ProblemImpl;

  factory _Problem.fromJson(Map<String, dynamic> json) = _$ProblemImpl.fromJson;

  @override
  String? get id;
  @override
  String? get organizationId;
  @override
  String? get districtId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get UpdatedAt;
  @override
  DateTime? get Enddate;
  @override
  String? get description;
  @override
  ReportStatus? get repostStatus;
  @override
  District? get district;
  @override
  Organization? get organization;

  /// Create a copy of Problem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProblemImplCopyWith<_$ProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

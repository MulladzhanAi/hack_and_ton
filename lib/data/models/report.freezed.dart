// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  String? get id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get created_date => throw _privateConstructorUsedError;
  DateTime? get finishedDate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  ReportStatus? get reportStatus => throw _privateConstructorUsedError;
  District? get district => throw _privateConstructorUsedError;
  Organization? get organization => throw _privateConstructorUsedError;

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {String? id,
      String? user_id,
      String? description,
      DateTime? created_date,
      DateTime? finishedDate,
      String? address,
      ReportStatus? reportStatus,
      District? district,
      Organization? organization});

  $DistrictCopyWith<$Res>? get district;
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? description = freezed,
    Object? created_date = freezed,
    Object? finishedDate = freezed,
    Object? address = freezed,
    Object? reportStatus = freezed,
    Object? district = freezed,
    Object? organization = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_date: freezed == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedDate: freezed == finishedDate
          ? _value.finishedDate
          : finishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      reportStatus: freezed == reportStatus
          ? _value.reportStatus
          : reportStatus // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Report
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

  /// Create a copy of Report
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
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? user_id,
      String? description,
      DateTime? created_date,
      DateTime? finishedDate,
      String? address,
      ReportStatus? reportStatus,
      District? district,
      Organization? organization});

  @override
  $DistrictCopyWith<$Res>? get district;
  @override
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? description = freezed,
    Object? created_date = freezed,
    Object? finishedDate = freezed,
    Object? address = freezed,
    Object? reportStatus = freezed,
    Object? district = freezed,
    Object? organization = freezed,
  }) {
    return _then(_$ReportImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_date: freezed == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedDate: freezed == finishedDate
          ? _value.finishedDate
          : finishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      reportStatus: freezed == reportStatus
          ? _value.reportStatus
          : reportStatus // ignore: cast_nullable_to_non_nullable
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
class _$ReportImpl implements _Report {
  _$ReportImpl(
      {this.id,
      this.user_id,
      this.description,
      this.created_date,
      this.finishedDate,
      this.address,
      this.reportStatus,
      this.district,
      this.organization});

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

  @override
  final String? id;
  @override
  final String? user_id;
  @override
  final String? description;
  @override
  final DateTime? created_date;
  @override
  final DateTime? finishedDate;
  @override
  final String? address;
  @override
  final ReportStatus? reportStatus;
  @override
  final District? district;
  @override
  final Organization? organization;

  @override
  String toString() {
    return 'Report(id: $id, user_id: $user_id, description: $description, created_date: $created_date, finishedDate: $finishedDate, address: $address, reportStatus: $reportStatus, district: $district, organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.created_date, created_date) ||
                other.created_date == created_date) &&
            (identical(other.finishedDate, finishedDate) ||
                other.finishedDate == finishedDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.reportStatus, reportStatus) ||
                other.reportStatus == reportStatus) &&
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
      user_id,
      description,
      created_date,
      finishedDate,
      address,
      reportStatus,
      district,
      organization);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  factory _Report(
      {final String? id,
      final String? user_id,
      final String? description,
      final DateTime? created_date,
      final DateTime? finishedDate,
      final String? address,
      final ReportStatus? reportStatus,
      final District? district,
      final Organization? organization}) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

  @override
  String? get id;
  @override
  String? get user_id;
  @override
  String? get description;
  @override
  DateTime? get created_date;
  @override
  DateTime? get finishedDate;
  @override
  String? get address;
  @override
  ReportStatus? get reportStatus;
  @override
  District? get district;
  @override
  Organization? get organization;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Report> get reports => throw _privateConstructorUsedError;

  /// Create a copy of ReportsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportsStateCopyWith<ReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsStateCopyWith<$Res> {
  factory $ReportsStateCopyWith(
          ReportsState value, $Res Function(ReportsState) then) =
      _$ReportsStateCopyWithImpl<$Res, ReportsState>;
  @useResult
  $Res call({bool isLoading, List<Report> reports});
}

/// @nodoc
class _$ReportsStateCopyWithImpl<$Res, $Val extends ReportsState>
    implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reports = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportsStateImplCopyWith<$Res>
    implements $ReportsStateCopyWith<$Res> {
  factory _$$ReportsStateImplCopyWith(
          _$ReportsStateImpl value, $Res Function(_$ReportsStateImpl) then) =
      __$$ReportsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Report> reports});
}

/// @nodoc
class __$$ReportsStateImplCopyWithImpl<$Res>
    extends _$ReportsStateCopyWithImpl<$Res, _$ReportsStateImpl>
    implements _$$ReportsStateImplCopyWith<$Res> {
  __$$ReportsStateImplCopyWithImpl(
      _$ReportsStateImpl _value, $Res Function(_$ReportsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reports = null,
  }) {
    return _then(_$ReportsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ));
  }
}

/// @nodoc

class _$ReportsStateImpl implements _ReportsState {
  _$ReportsStateImpl(
      {this.isLoading = false, final List<Report> reports = const []})
      : _reports = reports;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Report> _reports;
  @override
  @JsonKey()
  List<Report> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'ReportsState(isLoading: $isLoading, reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_reports));

  /// Create a copy of ReportsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportsStateImplCopyWith<_$ReportsStateImpl> get copyWith =>
      __$$ReportsStateImplCopyWithImpl<_$ReportsStateImpl>(this, _$identity);
}

abstract class _ReportsState implements ReportsState {
  factory _ReportsState({final bool isLoading, final List<Report> reports}) =
      _$ReportsStateImpl;

  @override
  bool get isLoading;
  @override
  List<Report> get reports;

  /// Create a copy of ReportsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportsStateImplCopyWith<_$ReportsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moder_start_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModerStartState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Report> get reports => throw _privateConstructorUsedError;
  List<Report> get selectedReports => throw _privateConstructorUsedError;

  /// Create a copy of ModerStartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerStartStateCopyWith<ModerStartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerStartStateCopyWith<$Res> {
  factory $ModerStartStateCopyWith(
          ModerStartState value, $Res Function(ModerStartState) then) =
      _$ModerStartStateCopyWithImpl<$Res, ModerStartState>;
  @useResult
  $Res call(
      {bool isLoading, List<Report> reports, List<Report> selectedReports});
}

/// @nodoc
class _$ModerStartStateCopyWithImpl<$Res, $Val extends ModerStartState>
    implements $ModerStartStateCopyWith<$Res> {
  _$ModerStartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerStartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reports = null,
    Object? selectedReports = null,
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
      selectedReports: null == selectedReports
          ? _value.selectedReports
          : selectedReports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerStartStateImplCopyWith<$Res>
    implements $ModerStartStateCopyWith<$Res> {
  factory _$$ModerStartStateImplCopyWith(_$ModerStartStateImpl value,
          $Res Function(_$ModerStartStateImpl) then) =
      __$$ModerStartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<Report> reports, List<Report> selectedReports});
}

/// @nodoc
class __$$ModerStartStateImplCopyWithImpl<$Res>
    extends _$ModerStartStateCopyWithImpl<$Res, _$ModerStartStateImpl>
    implements _$$ModerStartStateImplCopyWith<$Res> {
  __$$ModerStartStateImplCopyWithImpl(
      _$ModerStartStateImpl _value, $Res Function(_$ModerStartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerStartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reports = null,
    Object? selectedReports = null,
  }) {
    return _then(_$ModerStartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
      selectedReports: null == selectedReports
          ? _value._selectedReports
          : selectedReports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ));
  }
}

/// @nodoc

class _$ModerStartStateImpl implements _ModerStartState {
  _$ModerStartStateImpl(
      {this.isLoading = false,
      final List<Report> reports = const [],
      final List<Report> selectedReports = const []})
      : _reports = reports,
        _selectedReports = selectedReports;

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

  final List<Report> _selectedReports;
  @override
  @JsonKey()
  List<Report> get selectedReports {
    if (_selectedReports is EqualUnmodifiableListView) return _selectedReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedReports);
  }

  @override
  String toString() {
    return 'ModerStartState(isLoading: $isLoading, reports: $reports, selectedReports: $selectedReports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerStartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            const DeepCollectionEquality()
                .equals(other._selectedReports, _selectedReports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_reports),
      const DeepCollectionEquality().hash(_selectedReports));

  /// Create a copy of ModerStartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerStartStateImplCopyWith<_$ModerStartStateImpl> get copyWith =>
      __$$ModerStartStateImplCopyWithImpl<_$ModerStartStateImpl>(
          this, _$identity);
}

abstract class _ModerStartState implements ModerStartState {
  factory _ModerStartState(
      {final bool isLoading,
      final List<Report> reports,
      final List<Report> selectedReports}) = _$ModerStartStateImpl;

  @override
  bool get isLoading;
  @override
  List<Report> get reports;
  @override
  List<Report> get selectedReports;

  /// Create a copy of ModerStartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerStartStateImplCopyWith<_$ModerStartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

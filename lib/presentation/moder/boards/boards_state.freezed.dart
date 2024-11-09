// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boards_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Problem> get todo => throw _privateConstructorUsedError;
  List<Problem> get in_progress => throw _privateConstructorUsedError;
  List<Problem> get closed => throw _privateConstructorUsedError;
  List<District> get districts => throw _privateConstructorUsedError;
  List<Organization> get organization => throw _privateConstructorUsedError;
  District? get selectedDistricts => throw _privateConstructorUsedError;
  Organization? get selectedOrganization => throw _privateConstructorUsedError;

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoardsStateCopyWith<BoardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardsStateCopyWith<$Res> {
  factory $BoardsStateCopyWith(
          BoardsState value, $Res Function(BoardsState) then) =
      _$BoardsStateCopyWithImpl<$Res, BoardsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Problem> todo,
      List<Problem> in_progress,
      List<Problem> closed,
      List<District> districts,
      List<Organization> organization,
      District? selectedDistricts,
      Organization? selectedOrganization});

  $DistrictCopyWith<$Res>? get selectedDistricts;
  $OrganizationCopyWith<$Res>? get selectedOrganization;
}

/// @nodoc
class _$BoardsStateCopyWithImpl<$Res, $Val extends BoardsState>
    implements $BoardsStateCopyWith<$Res> {
  _$BoardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todo = null,
    Object? in_progress = null,
    Object? closed = null,
    Object? districts = null,
    Object? organization = null,
    Object? selectedDistricts = freezed,
    Object? selectedOrganization = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
      in_progress: null == in_progress
          ? _value.in_progress
          : in_progress // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
      selectedDistricts: freezed == selectedDistricts
          ? _value.selectedDistricts
          : selectedDistricts // ignore: cast_nullable_to_non_nullable
              as District?,
      selectedOrganization: freezed == selectedOrganization
          ? _value.selectedOrganization
          : selectedOrganization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ) as $Val);
  }

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res>? get selectedDistricts {
    if (_value.selectedDistricts == null) {
      return null;
    }

    return $DistrictCopyWith<$Res>(_value.selectedDistricts!, (value) {
      return _then(_value.copyWith(selectedDistricts: value) as $Val);
    });
  }

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get selectedOrganization {
    if (_value.selectedOrganization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.selectedOrganization!, (value) {
      return _then(_value.copyWith(selectedOrganization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoardsStateImplCopyWith<$Res>
    implements $BoardsStateCopyWith<$Res> {
  factory _$$BoardsStateImplCopyWith(
          _$BoardsStateImpl value, $Res Function(_$BoardsStateImpl) then) =
      __$$BoardsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Problem> todo,
      List<Problem> in_progress,
      List<Problem> closed,
      List<District> districts,
      List<Organization> organization,
      District? selectedDistricts,
      Organization? selectedOrganization});

  @override
  $DistrictCopyWith<$Res>? get selectedDistricts;
  @override
  $OrganizationCopyWith<$Res>? get selectedOrganization;
}

/// @nodoc
class __$$BoardsStateImplCopyWithImpl<$Res>
    extends _$BoardsStateCopyWithImpl<$Res, _$BoardsStateImpl>
    implements _$$BoardsStateImplCopyWith<$Res> {
  __$$BoardsStateImplCopyWithImpl(
      _$BoardsStateImpl _value, $Res Function(_$BoardsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todo = null,
    Object? in_progress = null,
    Object? closed = null,
    Object? districts = null,
    Object? organization = null,
    Object? selectedDistricts = freezed,
    Object? selectedOrganization = freezed,
  }) {
    return _then(_$BoardsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todo: null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
      in_progress: null == in_progress
          ? _value._in_progress
          : in_progress // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
      closed: null == closed
          ? _value._closed
          : closed // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>,
      organization: null == organization
          ? _value._organization
          : organization // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
      selectedDistricts: freezed == selectedDistricts
          ? _value.selectedDistricts
          : selectedDistricts // ignore: cast_nullable_to_non_nullable
              as District?,
      selectedOrganization: freezed == selectedOrganization
          ? _value.selectedOrganization
          : selectedOrganization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ));
  }
}

/// @nodoc

class _$BoardsStateImpl implements _BoardsState {
  _$BoardsStateImpl(
      {this.isLoading = false,
      final List<Problem> todo = const [],
      final List<Problem> in_progress = const [],
      final List<Problem> closed = const [],
      final List<District> districts = const [],
      final List<Organization> organization = const [],
      this.selectedDistricts,
      this.selectedOrganization})
      : _todo = todo,
        _in_progress = in_progress,
        _closed = closed,
        _districts = districts,
        _organization = organization;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Problem> _todo;
  @override
  @JsonKey()
  List<Problem> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  final List<Problem> _in_progress;
  @override
  @JsonKey()
  List<Problem> get in_progress {
    if (_in_progress is EqualUnmodifiableListView) return _in_progress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_in_progress);
  }

  final List<Problem> _closed;
  @override
  @JsonKey()
  List<Problem> get closed {
    if (_closed is EqualUnmodifiableListView) return _closed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_closed);
  }

  final List<District> _districts;
  @override
  @JsonKey()
  List<District> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  final List<Organization> _organization;
  @override
  @JsonKey()
  List<Organization> get organization {
    if (_organization is EqualUnmodifiableListView) return _organization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organization);
  }

  @override
  final District? selectedDistricts;
  @override
  final Organization? selectedOrganization;

  @override
  String toString() {
    return 'BoardsState(isLoading: $isLoading, todo: $todo, in_progress: $in_progress, closed: $closed, districts: $districts, organization: $organization, selectedDistricts: $selectedDistricts, selectedOrganization: $selectedOrganization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._todo, _todo) &&
            const DeepCollectionEquality()
                .equals(other._in_progress, _in_progress) &&
            const DeepCollectionEquality().equals(other._closed, _closed) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            const DeepCollectionEquality()
                .equals(other._organization, _organization) &&
            (identical(other.selectedDistricts, selectedDistricts) ||
                other.selectedDistricts == selectedDistricts) &&
            (identical(other.selectedOrganization, selectedOrganization) ||
                other.selectedOrganization == selectedOrganization));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_todo),
      const DeepCollectionEquality().hash(_in_progress),
      const DeepCollectionEquality().hash(_closed),
      const DeepCollectionEquality().hash(_districts),
      const DeepCollectionEquality().hash(_organization),
      selectedDistricts,
      selectedOrganization);

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardsStateImplCopyWith<_$BoardsStateImpl> get copyWith =>
      __$$BoardsStateImplCopyWithImpl<_$BoardsStateImpl>(this, _$identity);
}

abstract class _BoardsState implements BoardsState {
  factory _BoardsState(
      {final bool isLoading,
      final List<Problem> todo,
      final List<Problem> in_progress,
      final List<Problem> closed,
      final List<District> districts,
      final List<Organization> organization,
      final District? selectedDistricts,
      final Organization? selectedOrganization}) = _$BoardsStateImpl;

  @override
  bool get isLoading;
  @override
  List<Problem> get todo;
  @override
  List<Problem> get in_progress;
  @override
  List<Problem> get closed;
  @override
  List<District> get districts;
  @override
  List<Organization> get organization;
  @override
  District? get selectedDistricts;
  @override
  Organization? get selectedOrganization;

  /// Create a copy of BoardsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoardsStateImplCopyWith<_$BoardsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

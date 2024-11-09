// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_problems_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllProblemsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<Problem> get problems => throw _privateConstructorUsedError;

  /// Create a copy of AllProblemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllProblemsStateCopyWith<AllProblemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProblemsStateCopyWith<$Res> {
  factory $AllProblemsStateCopyWith(
          AllProblemsState value, $Res Function(AllProblemsState) then) =
      _$AllProblemsStateCopyWithImpl<$Res, AllProblemsState>;
  @useResult
  $Res call({dynamic isLoading, List<Problem> problems});
}

/// @nodoc
class _$AllProblemsStateCopyWithImpl<$Res, $Val extends AllProblemsState>
    implements $AllProblemsStateCopyWith<$Res> {
  _$AllProblemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllProblemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problems = null,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      problems: null == problems
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllProblemsStateImplCopyWith<$Res>
    implements $AllProblemsStateCopyWith<$Res> {
  factory _$$AllProblemsStateImplCopyWith(_$AllProblemsStateImpl value,
          $Res Function(_$AllProblemsStateImpl) then) =
      __$$AllProblemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic isLoading, List<Problem> problems});
}

/// @nodoc
class __$$AllProblemsStateImplCopyWithImpl<$Res>
    extends _$AllProblemsStateCopyWithImpl<$Res, _$AllProblemsStateImpl>
    implements _$$AllProblemsStateImplCopyWith<$Res> {
  __$$AllProblemsStateImplCopyWithImpl(_$AllProblemsStateImpl _value,
      $Res Function(_$AllProblemsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllProblemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problems = null,
  }) {
    return _then(_$AllProblemsStateImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      problems: null == problems
          ? _value._problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc

class _$AllProblemsStateImpl implements _AllProblemsState {
  _$AllProblemsStateImpl(
      {this.isLoading = false, final List<Problem> problems = const []})
      : _problems = problems;

  @override
  @JsonKey()
  final dynamic isLoading;
  final List<Problem> _problems;
  @override
  @JsonKey()
  List<Problem> get problems {
    if (_problems is EqualUnmodifiableListView) return _problems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problems);
  }

  @override
  String toString() {
    return 'AllProblemsState(isLoading: $isLoading, problems: $problems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProblemsStateImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._problems, _problems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_problems));

  /// Create a copy of AllProblemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllProblemsStateImplCopyWith<_$AllProblemsStateImpl> get copyWith =>
      __$$AllProblemsStateImplCopyWithImpl<_$AllProblemsStateImpl>(
          this, _$identity);
}

abstract class _AllProblemsState implements AllProblemsState {
  factory _AllProblemsState(
      {final dynamic isLoading,
      final List<Problem> problems}) = _$AllProblemsStateImpl;

  @override
  dynamic get isLoading;
  @override
  List<Problem> get problems;

  /// Create a copy of AllProblemsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllProblemsStateImplCopyWith<_$AllProblemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

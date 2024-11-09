// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_problem_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateProblemState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of CreateProblemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProblemStateCopyWith<CreateProblemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemStateCopyWith<$Res> {
  factory $CreateProblemStateCopyWith(
          CreateProblemState value, $Res Function(CreateProblemState) then) =
      _$CreateProblemStateCopyWithImpl<$Res, CreateProblemState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$CreateProblemStateCopyWithImpl<$Res, $Val extends CreateProblemState>
    implements $CreateProblemStateCopyWith<$Res> {
  _$CreateProblemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProblemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProblemStateImplCopyWith<$Res>
    implements $CreateProblemStateCopyWith<$Res> {
  factory _$$CreateProblemStateImplCopyWith(_$CreateProblemStateImpl value,
          $Res Function(_$CreateProblemStateImpl) then) =
      __$$CreateProblemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$CreateProblemStateImplCopyWithImpl<$Res>
    extends _$CreateProblemStateCopyWithImpl<$Res, _$CreateProblemStateImpl>
    implements _$$CreateProblemStateImplCopyWith<$Res> {
  __$$CreateProblemStateImplCopyWithImpl(_$CreateProblemStateImpl _value,
      $Res Function(_$CreateProblemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProblemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$CreateProblemStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateProblemStateImpl implements _CreateProblemState {
  _$CreateProblemStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CreateProblemState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProblemStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of CreateProblemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProblemStateImplCopyWith<_$CreateProblemStateImpl> get copyWith =>
      __$$CreateProblemStateImplCopyWithImpl<_$CreateProblemStateImpl>(
          this, _$identity);
}

abstract class _CreateProblemState implements CreateProblemState {
  factory _CreateProblemState({final bool isLoading}) =
      _$CreateProblemStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of CreateProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProblemStateImplCopyWith<_$CreateProblemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

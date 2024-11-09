// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateStatusState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  ProblemStatus? get selectedProdblemStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of UpdateStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStatusStateCopyWith<UpdateStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusStateCopyWith<$Res> {
  factory $UpdateStatusStateCopyWith(
          UpdateStatusState value, $Res Function(UpdateStatusState) then) =
      _$UpdateStatusStateCopyWithImpl<$Res, UpdateStatusState>;
  @useResult
  $Res call({dynamic isLoading, ProblemStatus? selectedProdblemStatus});
}

/// @nodoc
class _$UpdateStatusStateCopyWithImpl<$Res, $Val extends UpdateStatusState>
    implements $UpdateStatusStateCopyWith<$Res> {
  _$UpdateStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedProdblemStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selectedProdblemStatus: freezed == selectedProdblemStatus
          ? _value.selectedProdblemStatus
          : selectedProdblemStatus // ignore: cast_nullable_to_non_nullable
              as ProblemStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStatusStateImplCopyWith<$Res>
    implements $UpdateStatusStateCopyWith<$Res> {
  factory _$$UpdateStatusStateImplCopyWith(_$UpdateStatusStateImpl value,
          $Res Function(_$UpdateStatusStateImpl) then) =
      __$$UpdateStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic isLoading, ProblemStatus? selectedProdblemStatus});
}

/// @nodoc
class __$$UpdateStatusStateImplCopyWithImpl<$Res>
    extends _$UpdateStatusStateCopyWithImpl<$Res, _$UpdateStatusStateImpl>
    implements _$$UpdateStatusStateImplCopyWith<$Res> {
  __$$UpdateStatusStateImplCopyWithImpl(_$UpdateStatusStateImpl _value,
      $Res Function(_$UpdateStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedProdblemStatus = freezed,
  }) {
    return _then(_$UpdateStatusStateImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      selectedProdblemStatus: freezed == selectedProdblemStatus
          ? _value.selectedProdblemStatus
          : selectedProdblemStatus // ignore: cast_nullable_to_non_nullable
              as ProblemStatus?,
    ));
  }
}

/// @nodoc

class _$UpdateStatusStateImpl implements _UpdateStatusState {
  _$UpdateStatusStateImpl(
      {this.isLoading = false, this.selectedProdblemStatus});

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  final ProblemStatus? selectedProdblemStatus;

  @override
  String toString() {
    return 'UpdateStatusState(isLoading: $isLoading, selectedProdblemStatus: $selectedProdblemStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusStateImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.selectedProdblemStatus, selectedProdblemStatus) ||
                other.selectedProdblemStatus == selectedProdblemStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(isLoading), selectedProdblemStatus);

  /// Create a copy of UpdateStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusStateImplCopyWith<_$UpdateStatusStateImpl> get copyWith =>
      __$$UpdateStatusStateImplCopyWithImpl<_$UpdateStatusStateImpl>(
          this, _$identity);
}

abstract class _UpdateStatusState implements UpdateStatusState {
  factory _UpdateStatusState(
      {final dynamic isLoading,
      final ProblemStatus? selectedProdblemStatus}) = _$UpdateStatusStateImpl;

  @override
  dynamic get isLoading;
  @override
  ProblemStatus? get selectedProdblemStatus;

  /// Create a copy of UpdateStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStatusStateImplCopyWith<_$UpdateStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

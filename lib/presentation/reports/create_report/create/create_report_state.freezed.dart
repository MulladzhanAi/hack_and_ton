// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateReportState {
  dynamic get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of CreateReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReportStateCopyWith<CreateReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportStateCopyWith<$Res> {
  factory $CreateReportStateCopyWith(
          CreateReportState value, $Res Function(CreateReportState) then) =
      _$CreateReportStateCopyWithImpl<$Res, CreateReportState>;
  @useResult
  $Res call({dynamic isLoading});
}

/// @nodoc
class _$CreateReportStateCopyWithImpl<$Res, $Val extends CreateReportState>
    implements $CreateReportStateCopyWith<$Res> {
  _$CreateReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReportStateImplCopyWith<$Res>
    implements $CreateReportStateCopyWith<$Res> {
  factory _$$CreateReportStateImplCopyWith(_$CreateReportStateImpl value,
          $Res Function(_$CreateReportStateImpl) then) =
      __$$CreateReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic isLoading});
}

/// @nodoc
class __$$CreateReportStateImplCopyWithImpl<$Res>
    extends _$CreateReportStateCopyWithImpl<$Res, _$CreateReportStateImpl>
    implements _$$CreateReportStateImplCopyWith<$Res> {
  __$$CreateReportStateImplCopyWithImpl(_$CreateReportStateImpl _value,
      $Res Function(_$CreateReportStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_$CreateReportStateImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
    ));
  }
}

/// @nodoc

class _$CreateReportStateImpl implements _CreateReportState {
  _$CreateReportStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final dynamic isLoading;

  @override
  String toString() {
    return 'CreateReportState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReportStateImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  /// Create a copy of CreateReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReportStateImplCopyWith<_$CreateReportStateImpl> get copyWith =>
      __$$CreateReportStateImplCopyWithImpl<_$CreateReportStateImpl>(
          this, _$identity);
}

abstract class _CreateReportState implements CreateReportState {
  factory _CreateReportState({final dynamic isLoading}) =
      _$CreateReportStateImpl;

  @override
  dynamic get isLoading;

  /// Create a copy of CreateReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReportStateImplCopyWith<_$CreateReportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

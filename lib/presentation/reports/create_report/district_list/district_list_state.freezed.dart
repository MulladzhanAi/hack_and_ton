// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DistrictListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<District> get districts => throw _privateConstructorUsedError;

  /// Create a copy of DistrictListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictListStateCopyWith<DistrictListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictListStateCopyWith<$Res> {
  factory $DistrictListStateCopyWith(
          DistrictListState value, $Res Function(DistrictListState) then) =
      _$DistrictListStateCopyWithImpl<$Res, DistrictListState>;
  @useResult
  $Res call({bool isLoading, List<District> districts});
}

/// @nodoc
class _$DistrictListStateCopyWithImpl<$Res, $Val extends DistrictListState>
    implements $DistrictListStateCopyWith<$Res> {
  _$DistrictListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistrictListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? districts = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictListStateImplCopyWith<$Res>
    implements $DistrictListStateCopyWith<$Res> {
  factory _$$DistrictListStateImplCopyWith(_$DistrictListStateImpl value,
          $Res Function(_$DistrictListStateImpl) then) =
      __$$DistrictListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<District> districts});
}

/// @nodoc
class __$$DistrictListStateImplCopyWithImpl<$Res>
    extends _$DistrictListStateCopyWithImpl<$Res, _$DistrictListStateImpl>
    implements _$$DistrictListStateImplCopyWith<$Res> {
  __$$DistrictListStateImplCopyWithImpl(_$DistrictListStateImpl _value,
      $Res Function(_$DistrictListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DistrictListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? districts = null,
  }) {
    return _then(_$DistrictListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>,
    ));
  }
}

/// @nodoc

class _$DistrictListStateImpl implements _DistrictListState {
  _$DistrictListStateImpl(
      {this.isLoading = false, final List<District> districts = const []})
      : _districts = districts;

  @override
  @JsonKey()
  final bool isLoading;
  final List<District> _districts;
  @override
  @JsonKey()
  List<District> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  @override
  String toString() {
    return 'DistrictListState(isLoading: $isLoading, districts: $districts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_districts));

  /// Create a copy of DistrictListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictListStateImplCopyWith<_$DistrictListStateImpl> get copyWith =>
      __$$DistrictListStateImplCopyWithImpl<_$DistrictListStateImpl>(
          this, _$identity);
}

abstract class _DistrictListState implements DistrictListState {
  factory _DistrictListState(
      {final bool isLoading,
      final List<District> districts}) = _$DistrictListStateImpl;

  @override
  bool get isLoading;
  @override
  List<District> get districts;

  /// Create a copy of DistrictListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictListStateImplCopyWith<_$DistrictListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

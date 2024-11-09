// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrganizationListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Organization> get organizations => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationListStateCopyWith<OrganizationListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationListStateCopyWith<$Res> {
  factory $OrganizationListStateCopyWith(OrganizationListState value,
          $Res Function(OrganizationListState) then) =
      _$OrganizationListStateCopyWithImpl<$Res, OrganizationListState>;
  @useResult
  $Res call({bool isLoading, List<Organization> organizations});
}

/// @nodoc
class _$OrganizationListStateCopyWithImpl<$Res,
        $Val extends OrganizationListState>
    implements $OrganizationListStateCopyWith<$Res> {
  _$OrganizationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? organizations = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      organizations: null == organizations
          ? _value.organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationListStateImplCopyWith<$Res>
    implements $OrganizationListStateCopyWith<$Res> {
  factory _$$OrganizationListStateImplCopyWith(
          _$OrganizationListStateImpl value,
          $Res Function(_$OrganizationListStateImpl) then) =
      __$$OrganizationListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Organization> organizations});
}

/// @nodoc
class __$$OrganizationListStateImplCopyWithImpl<$Res>
    extends _$OrganizationListStateCopyWithImpl<$Res,
        _$OrganizationListStateImpl>
    implements _$$OrganizationListStateImplCopyWith<$Res> {
  __$$OrganizationListStateImplCopyWithImpl(_$OrganizationListStateImpl _value,
      $Res Function(_$OrganizationListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? organizations = null,
  }) {
    return _then(_$OrganizationListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      organizations: null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
    ));
  }
}

/// @nodoc

class _$OrganizationListStateImpl implements _OrganizationListState {
  _$OrganizationListStateImpl(
      {this.isLoading = false,
      final List<Organization> organizations = const []})
      : _organizations = organizations;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Organization> _organizations;
  @override
  @JsonKey()
  List<Organization> get organizations {
    if (_organizations is EqualUnmodifiableListView) return _organizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  @override
  String toString() {
    return 'OrganizationListState(isLoading: $isLoading, organizations: $organizations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_organizations));

  /// Create a copy of OrganizationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationListStateImplCopyWith<_$OrganizationListStateImpl>
      get copyWith => __$$OrganizationListStateImplCopyWithImpl<
          _$OrganizationListStateImpl>(this, _$identity);
}

abstract class _OrganizationListState implements OrganizationListState {
  factory _OrganizationListState(
      {final bool isLoading,
      final List<Organization> organizations}) = _$OrganizationListStateImpl;

  @override
  bool get isLoading;
  @override
  List<Organization> get organizations;

  /// Create a copy of OrganizationListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationListStateImplCopyWith<_$OrganizationListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

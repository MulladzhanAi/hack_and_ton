import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';
import 'package:hack_and_ton/data/models/problem.dart';

part 'boards_state.freezed.dart';

@freezed
class BoardsState with _$BoardsState{
  factory BoardsState({
    @Default(false) bool isLoading,
    @Default([]) List<Problem> todo,
    @Default([]) List<Problem> in_progress,
    @Default([]) List<Problem> closed,
    @Default([]) List<District> districts,
    @Default([]) List<Organization> organization,
    District? selectedDistricts,
    Organization? selectedOrganization,
  })=_BoardsState;
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/problem.dart';

part 'all_problems_state.freezed.dart';

@freezed
class AllProblemsState with _$AllProblemsState{
  factory AllProblemsState({
    @Default(false) isLoading,
    @Default([]) List<Problem> problems,
})=_AllProblemsState;
}
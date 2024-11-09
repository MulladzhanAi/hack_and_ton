import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_problem_state.freezed.dart';

@freezed
class CreateProblemState with _$CreateProblemState{
  factory CreateProblemState({
    @Default(false) bool isLoading,
})=_CreateProblemState;
}
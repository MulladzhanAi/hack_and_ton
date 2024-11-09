import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/problem_status.dart';

part 'update_status_state.freezed.dart';

@freezed
class UpdateStatusState with _$UpdateStatusState{
  factory UpdateStatusState({
    @Default(false) isLoading,
    ProblemStatus? selectedProdblemStatus,
})=_UpdateStatusState;
}
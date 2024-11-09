import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/report.dart';

part 'moder_start_state.freezed.dart';

@freezed
class ModerStartState with _$ModerStartState{
  factory ModerStartState({
    @Default(false) bool isLoading,
    @Default([]) List<Report> reports,
    @Default([]) List<Report> selectedReports,
})=_ModerStartState;
}
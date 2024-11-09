import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/report.dart';

part 'reports_state.freezed.dart';

@freezed
class ReportsState with _$ReportsState{
  factory ReportsState({
    @Default(false) bool isLoading,
    @Default([]) List<Report> reports,
})=_ReportsState;
}
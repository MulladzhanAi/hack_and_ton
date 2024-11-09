import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_detail_state.freezed.dart';

@freezed
class ReportDetailState with _$ReportDetailState{
  factory ReportDetailState({
    @Default(false) bool isLoading,
})=_ReportDetailState;
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_report_state.freezed.dart';

@freezed
class CreateReportState with _$CreateReportState{
  factory CreateReportState({
    @Default(false) isLoading,
})=_CreateReportState;
}
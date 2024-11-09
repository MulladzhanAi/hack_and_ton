import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/district.dart';


part 'district_list_state.freezed.dart';

@freezed
class DistrictListState with _$DistrictListState{
  factory DistrictListState({
    @Default(false) bool isLoading,
    @Default([]) List<District> districts,
})=_DistrictListState;
}
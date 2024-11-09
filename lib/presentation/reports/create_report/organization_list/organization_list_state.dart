import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_and_ton/data/models/organization.dart';

part 'organization_list_state.freezed.dart';

@freezed
class OrganizationListState with _$OrganizationListState{
  factory OrganizationListState({
    @Default(false) bool isLoading,
    @Default([]) List<Organization> organizations,
})=_OrganizationListState;
}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/api_repository.dart';

import 'organization_list_state.dart';


class OrganizationListBloc extends Cubit<OrganizationListState>{
  OrganizationListBloc(): super(OrganizationListState()){
    getOrganization();
  }

  final ApiRepository apiRepository = ApiRepository();

  getOrganization()async{
    final result = await apiRepository.getOrganization();
    emit(state.copyWith(organizations: result));
  }


}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/api_repository.dart';

import 'district_list_state.dart';

class DistrictListBloc extends Cubit<DistrictListState>{
  DistrictListBloc() : super(DistrictListState()){
    getDistricts();
  }

  final ApiRepository _apiRepository = ApiRepository();
  getDistricts()async{
    final result = await _apiRepository.getDistricts();
    emit(state.copyWith(districts: result));
  }


}
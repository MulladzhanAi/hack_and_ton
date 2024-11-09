import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';
import 'package:hack_and_ton/domain/repository/api_repository.dart';
import 'package:hack_and_ton/domain/repository/moder_api_repository.dart';
import 'package:hack_and_ton/presentation/moder/boards/boards_state.dart';

class BoardsBloc extends Cubit<BoardsState>{
  BoardsBloc() : super(BoardsState()){
    getTodo();
    getInprogress();
    getSolved();
    getDistricts();
    getOrganization();
  }

  final ModerApiRepository _apiRepository = ModerApiRepository();
  final ApiRepository _baseApiRepository = ApiRepository();

  getTodo()async{
    final result = await _apiRepository.getProblems(
      status: 'Created',
      district: state.selectedDistricts?.name ?? "",
      organization: state.selectedOrganization?.name ?? "",
    );
    emit(state.copyWith(todo: result));
  }

  getInprogress()async{
    final result = await _apiRepository.getProblems(
        status: 'InProgress',
        district: state.selectedDistricts?.name ?? "",
        organization: state.selectedOrganization?.name ?? "",
    );
    emit(state.copyWith(in_progress: result));
  }

  getSolved()async{
    final result = await _apiRepository.getProblems(
        status: 'Resolved',
        district: state.selectedDistricts?.name ?? "",
        organization: state.selectedOrganization?.name ?? "",
    );
    emit(state.copyWith(closed: result));
  }

  getDistricts()async{
    final result = await _baseApiRepository.getDistricts();
    emit(state.copyWith(districts: result));
  }

  getOrganization()async{
    final result = await _baseApiRepository.getOrganization();
    emit(state.copyWith(organization: result));
  }

  selectDistrict(District? d){
    emit(state.copyWith(selectedDistricts: d));
    updateData();
  }

  selectOrganization(Organization? o){
    emit(state.copyWith(selectedOrganization: o));
    updateData();
  }

  updateData(){
    getTodo();
    getInprogress();
    getSolved();
  }

  removeDistricts(){
    emit(state.copyWith(selectedDistricts: null));
    updateData();
  }

  removeOrganization(){
    emit(state.copyWith(selectedOrganization: null));
    updateData();
  }

}
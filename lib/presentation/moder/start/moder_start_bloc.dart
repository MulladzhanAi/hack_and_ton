import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/moder_api_repository.dart';
import 'package:hack_and_ton/presentation/moder/start/moder_start_state.dart';

import '../../../data/models/report.dart';

class ModerStartBloc extends Cubit<ModerStartState>{
  ModerStartBloc() : super(ModerStartState()){
    getAllReports();
  }

  final ModerApiRepository _apiRepository = ModerApiRepository();

  getAllReports()async{
    final result = await _apiRepository.getModerReports();
    emit(state.copyWith(reports: result));
  }

  selectReport(Report report){
    List<Report> selectedReports = List.from(state.selectedReports);
    if(selectedReports.contains(report)){
      selectedReports.remove(report);
    }else{
      selectedReports.add(report);
    }
    emit(state.copyWith(selectedReports: selectedReports));
  }

}
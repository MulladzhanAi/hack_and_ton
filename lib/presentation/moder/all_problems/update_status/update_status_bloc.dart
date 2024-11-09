import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/models/problem.dart';
import 'package:hack_and_ton/data/models/problem_status.dart';
import 'package:hack_and_ton/domain/repository/moder_api_repository.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/update_status/update_status_state.dart';

class UpdateStatusBloc extends Cubit<UpdateStatusState>{
  UpdateStatusBloc() : super(UpdateStatusState()){

  }
  List<ProblemStatus> pStatus = [
    ProblemStatus('InProgres','В процессе'),
    ProblemStatus('Resolved','Завершен')
  ];

  final ModerApiRepository _apiRepository = ModerApiRepository();

  changeStatus(ProblemStatus? status){
    emit(state.copyWith(selectedProdblemStatus: status));
  }
  updateStatus({required Problem problem,required String status,required Function() onSucces}){
    _apiRepository.upgateProblemStatus(
        problemId: problem?.id ?? "",
        status: status,
    ).then((onValue){
      onSucces?.call();
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/models/report.dart';
import 'package:hack_and_ton/domain/repository/moder_api_repository.dart';
import 'package:hack_and_ton/presentation/moder/create_problem/create_problem_state.dart';

class CreateProblemBloc extends Cubit<CreateProblemState>{
  CreateProblemBloc() : super(CreateProblemState()){

  }

  final ModerApiRepository apiRepository = ModerApiRepository();

  createProblem({
    required List<Report> reports,
    required String description,
    required Function() onSucces,
  })async{
    final districtId = reports.first.district?.id;
    final organizationId = reports.first.organization?.id;
    apiRepository.createProblem(
        description: description,
        districtId: districtId ?? "",
        organizationId: organizationId ?? "",
        reports: reports,
    ).then((onValue){
      onSucces.call();
    });
  }

}
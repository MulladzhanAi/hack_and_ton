import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/moder_api_repository.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/all_problems_state.dart';


class AllProblemsBloc extends Cubit<AllProblemsState>{
  AllProblemsBloc() : super(AllProblemsState()){
    getAllProblems();
  }

  final ModerApiRepository _apiRepository = ModerApiRepository();

  getAllProblems()async{
    final result = await _apiRepository.getProblems(status: "");
    emit(state.copyWith.call(problems: result));
  }

}
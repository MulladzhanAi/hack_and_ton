import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/reports_api_repository.dart';
import 'package:hack_and_ton/presentation/reports/create_report/create/create_report_state.dart';

class CreateReportBloc extends Cubit<CreateReportState>{
  CreateReportBloc() : super(CreateReportState()){

  }

  final ReportsApiRepository _apiRepository = ReportsApiRepository();

  createReport({
    required String description,
    required String address,
    required String districtId,
    required String organizationId,
    Function()? onSucces,
  })async{

    _apiRepository.createReport(
        description: description,
        address: address,
        districtId: districtId,
        organizationId: organizationId,
    ).then((value){
      onSucces?.call();
    });




  }

}
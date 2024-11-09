import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/api_repository.dart';
import 'package:hack_and_ton/domain/repository/reports_api_repository.dart';
import 'package:hack_and_ton/domain/repository/storage_repository.dart';
import 'package:hack_and_ton/presentation/auth/auth_screen.dart';
import 'package:hack_and_ton/presentation/reports/reports_state.dart';

class ReportsBloc extends Cubit<ReportsState>{
  ReportsBloc() : super(ReportsState()){
    getUserReports();
  }

  final StorageRepository storageRepository = StorageRepository();
  final ReportsApiRepository _apiRepository = ReportsApiRepository();

  signOut(BuildContext context)async{
    await storageRepository.removeToken();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return AuthScreen();
    }));
  }


  getUserReports()async{
    final result = await _apiRepository.getUserReports();
    emit(state.copyWith(reports: result));
  }

}
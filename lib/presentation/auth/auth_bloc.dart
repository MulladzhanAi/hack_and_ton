import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/domain/repository/api_repository.dart';
import 'package:hack_and_ton/domain/repository/storage_repository.dart';
import 'package:hack_and_ton/presentation/auth/auth_state.dart';

class AuthBloc extends Cubit<AuthState>{
  AuthBloc() : super(AuthState()){

  }

  final ApiRepository apiRepository = ApiRepository();
  final StorageRepository storageRepository = StorageRepository();

  auth(String login,String password,Function() onSucces)async{
    final token = await apiRepository.auth(login: login, password: password,);
    if(token!=null){
      print('token is ${token}');
      await storageRepository.saveToken(token);
      onSucces.call();
    }
    else{
      print('token is empty');
    }
  }

  register(String login,String password,String email,Function() onSucces)async{
    final succes = await apiRepository.register(login: login, password: password, email: email);
    if(succes){
      print('id is ${succes}');
      onSucces.call();
    }else{
      print('id is empty');
    }
  }

}
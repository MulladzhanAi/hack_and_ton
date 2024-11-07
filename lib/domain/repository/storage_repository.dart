import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository{
  SharedPreferences? sharedPreferences;

  StorageRepository(){
    init();
  }
  Future<void> init()async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveData()async{

  }

  Future<String> getToken()async{
    return Future.value("");
  }

}
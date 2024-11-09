import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository{
  late SharedPreferences sharedPreferences;

  late Future<void> _initFuture;

  StorageRepository() {
    _initFuture = init();
  }
  Future<void> init()async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> ensureInitialized() async {
    await _initFuture;
  }

  Future<void> saveData(String key,String value)async{
    await sharedPreferences.setString(key, value);
  }

  Future<String?> getToken()async{
    final token = await sharedPreferences.getString('token');
    return token;
  }

  Future<void> saveToken(String token)async{
    await sharedPreferences.setString('token', token);
  }

  Future<void> removeToken()async{
    await sharedPreferences.setString('token', '');
  }

  Future<String?> getUserId()async{
    final userId = await sharedPreferences.getString('userId');
    return userId;
  }

  Future<String?> getRole()async{
    final role = await sharedPreferences.getString('role');
    return role;
  }

}
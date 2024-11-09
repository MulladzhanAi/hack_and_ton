import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';
import 'package:hack_and_ton/domain/helpers/token_interseptor.dart';
import 'package:hack_and_ton/domain/repository/storage_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiRepository{
  late Dio _dio;

  ApiRepository(){
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://localhost:7138/",
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      ),
    );
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));
    _dio.interceptors.add(TokenInterceptor());
  }

  final StorageRepository storageRepository = StorageRepository();

  Future<bool> register({required String login,required String password,required String email})async{
    var body = jsonEncode({
      'userName': login,
      'password': password,
      'email': email,
      'role' : 'user',
    });

    var url = Uri.parse('https://localhost:7138/api/Account/CreateUser');

    print(body);

    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: body,
    );

    if (response.statusCode == 200) {

      return Future.value(true);
    } else {
      // Обработка ошибки
      print('Ошибка: ${response.statusCode}');
      print('Сообщение: ${response.body}');
      return false;
    }

  }

  Future<String?> auth({required String login,required String password,})async{
    var body = jsonEncode({
      'username': login,
      'password': password,
    });
    var url = Uri.parse('https://localhost:7138/api/Account/Login');
    //var url = Uri.parse('https://192.168.4.228:7138/api/Account/Login');
    print(body);
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: body,
    );
    if (response.statusCode == 200) {
      // Декодируем JSON и извлекаем токен
      var data = jsonDecode(response.body);
      String? token = data['token']; // Здесь 'token' — ключ в JSON-ответе сервера
      String? userId = data['userId'];
      String? role = data['role'];
      storageRepository.saveData('userId', userId ?? "");
      storageRepository.saveData('role', role ?? "");
      print('Сохранине userId ${userId}');
      return Future.value(token);
    } else {
      // Обработка ошибки
      print('Ошибка: ${response.statusCode}');
      print('Сообщение: ${response.body}');
      return null;
    }
  }


  Future<List<Organization>> getOrganization()async{
    try{
      final response = await _dio.get(
        'api/Organization/GetAllOrganization/All',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      print('Получены списки организация ${response.data}');

      final List data = response.data;
      List<Organization> organizations = [];
      for(var item in data){
        organizations.add(Organization.fromJson(item));
      }

      print('organizations ${organizations}');
      return organizations;
    }catch(e){
      if (e is DioError) {
        // Здесь можно обработать ошибку более детально
        print("DioError: ${e.response?.data}");
        throw Exception('Ошибка запроса: ${e.message}');
      }
      throw Exception('Ошибка запроса: ${e}');
    }
  }


  Future<List<District>> getDistricts()async{
    try{
      final response = await _dio.get(
        'api/District/GetAllDistricts/All',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      print('Получены списки районов ${response.data}');

      final List data = response.data;
      List<District> districts = [];
      for(var item in data){
        districts.add(District.fromJson(item));
      }

      print('districts ${districts}');
      return districts;
    }catch(e){
      if (e is DioError) {
        // Здесь можно обработать ошибку более детально
        print("DioError: ${e.response?.data}");
        throw Exception('Ошибка запроса: ${e.message}');
      }
      throw Exception('Ошибка запроса: ${e}');
    }
  }

}
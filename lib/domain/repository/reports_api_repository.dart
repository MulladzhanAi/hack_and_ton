import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';
import 'package:hack_and_ton/data/models/report.dart';
import 'package:hack_and_ton/domain/repository/storage_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/token_interseptor.dart';

class ReportsApiRepository{
  late Dio _dio;

  ReportsApiRepository(){
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


  Future<void> createReport({
    required String description,
    required String address,
    required String districtId,
    required String organizationId,
  })async{
    try{

      final userId = await storageRepository.getUserId();

      final data = {
        "description" : description,
        "address" : address,
        "districtId" : districtId,
        "organizationId" : organizationId,
        "userId" : userId,
      };

      final response = await _dio.post(
        'api/Report/CreateReport',
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      if(response.statusCode == 204){
        print('report успешно создан');
      }
      else{
        print('report НЕ создан');
      }



    }catch(e){
      if (e is DioError) {
        // Здесь можно обработать ошибку более детально
        print("DioError: ${e.response?.data}");
        throw Exception('Ошибка запроса: ${e.message}');
      }

      print('error is ${e}');
    }
  }


  Future<List<Report>> getUserReports()async{
    try{
      await storageRepository.ensureInitialized();
      final userId = await storageRepository.getUserId();

      final response = await _dio.get(
        'api/Report/GetAllReportsOfUser/AllRepOfUser',
        queryParameters: {
          'UserId' : userId,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      print('Получены списки организация ${response.data}');

      final List data = response.data;
      List<Report> reports = [];
      for(var item in data){
        reports.add(Report(
          id: item['id'],
          address: item['address'],
          reportStatus: ReportStatus.values.firstWhere((test)=>test.name==item['status'],orElse: (){
            return ReportStatus.another;
          }),
          organization: Organization(
            id: item['organizationId'],
            name: item['organization'],
          ),
          district: District(
            id: item['districtId'],
            name: item['district'],
          ),
          description: item['description'],
        ));
        //reports.add(Report.fromJson(item));
      }

      print('organizations ${reports}');
      return reports;
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
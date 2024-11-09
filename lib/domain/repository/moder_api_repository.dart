import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/data/models/district.dart';
import 'package:hack_and_ton/data/models/organization.dart';
import 'package:hack_and_ton/data/models/problem.dart';
import 'package:hack_and_ton/data/models/report.dart';
import 'package:hack_and_ton/domain/repository/storage_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/token_interseptor.dart';

class ModerApiRepository{
  late Dio _dio;

  ModerApiRepository(){
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



  Future<List<Report>> getModerReports()async{
    try{
      await storageRepository.ensureInitialized();
      final userId = await storageRepository.getUserId();

      final response = await _dio.get(
        'api/Report/GetAllReportForModer/AllRepForModer',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      print('Получены списки репортов ${response.data}');

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
          user_id: item['userId'],
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

  Future<void> createProblem({
    required String description,
    required String districtId,
    required String organizationId,
    required List<Report> reports,
  })async{
    try{

      List<String?> reportIds = reports.map((report) => report.id).toList();

      final data = {
        "description" : description,
        "districtId" : districtId,
        "organizationId" : organizationId,
        "reports" : reportIds,
      };

      final response = await _dio.post(
        'api/Problem/CreateProblem',
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


  Future<List<Problem>> getProblems({
    required String status,
    String? organization,
    String? district,
  })async{
    try{

      final response = await _dio.get(
        'api/Problem/GetAllProblems/GetAllProblems',
        queryParameters: {
          'Filter.Status' : status,
          'Filter.Organization' : organization ?? "",
          'Filter.District' : district ?? "",
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      print('Получены списки проблем по статусу ${response.data}');

      final List data = response.data;
      List<Problem> problems = [];
      for(var item in data){
        problems.add(Problem(
          id: item['id'],
          description: item['desctription'],
          organization: Organization(
            id: item['organizationId'],
            name: item['organization'],
          ),
          district: District(
            id: item['districtId'],
            name: item['district'],
          ),
          repostStatus: ReportStatus.values.firstWhere((test)=>test.name==item['status'],orElse: (){
            return ReportStatus.another;
          })
        ));
        //reports.add(Report.fromJson(item));
      }

      print('organizations ${problems}');
      return problems;
    }catch(e){
      if (e is DioError) {
        // Здесь можно обработать ошибку более детально
        print("DioError: ${e.response?.data}");
        throw Exception('Ошибка запроса: ${e.message}');
      }
      throw Exception('Ошибка запроса: ${e}');
    }
  }

  Future<void> upgateProblemStatus({
    required String problemId,
    required String status,

  })async{
    try{


      final data = {
        "problemId" : problemId,
        "status" : status,
      };

      final response = await _dio.put(
        'api/Problem/UpdateProblemStatus/UpdateProblemStatus',
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      if(response.statusCode == 204){
        print('статус проблемы  успешно обновлен');
      }
      else{
        print('статус проблемы не обновлен');
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


}
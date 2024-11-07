import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hack_and_ton/domain/helpers/token_interseptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiRepository{
  late Dio _dio;

  ApiRepository(){
    _dio = Dio(
      BaseOptions(
        baseUrl: "",
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

}
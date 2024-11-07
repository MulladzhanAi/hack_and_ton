import 'package:dio/dio.dart';
import 'package:hack_and_ton/domain/repository/storage_repository.dart';

class TokenInterceptor extends QueuedInterceptorsWrapper{
  final StorageRepository storageRepository = StorageRepository();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    bool needAddToken = false;
    if(needAddToken){
      final token =await storageRepository.getToken();
      if(token!=null && token.isNotEmpty){
        options.headers['Authorization'] = "Bearer $token";
      }
    }
    super.onRequest(options, handler);
  }
}
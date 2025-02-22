import 'package:dio/dio.dart';

Dio createDio({required String baseUrl, required Duration timeout}){
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: timeout,
      receiveTimeout: timeout,
    )
  );
}
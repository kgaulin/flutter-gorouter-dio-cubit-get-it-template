import 'package:dio/dio.dart';
import 'package:flutter_cubit_gorouter_template/core/interceptors/token_interceptor.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @lazySingleton
  Dio get getStore {
    final dio = Dio();

    dio.interceptors.add(TokenInterceptor());

    return dio;
  }
}

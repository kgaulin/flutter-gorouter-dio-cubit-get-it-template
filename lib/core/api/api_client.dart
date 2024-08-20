import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'jsonplaceholder/jsonplaceholder_datasource.dart';

@LazySingleton()
class ApiClient {
  final Dio dio;

  ApiClient({required this.dio});

  JsonplaceholderDatasource get jsonplaceholder =>
      JsonplaceholderDatasource(dio);
}

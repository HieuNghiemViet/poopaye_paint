import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService extends DioMixin {
  ApiService() {
    options = BaseOptions(
      baseUrl: 'https://www.themealdb.com/api/json/v1',
    );
    interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
      )
    ]);
    httpClientAdapter = HttpClientAdapter();
  }
}
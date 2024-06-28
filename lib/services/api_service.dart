import 'package:dio/dio.dart';

class ApiService extends DioMixin {
  ApiService() {
    options = BaseOptions(
      baseUrl: '',
    );
    httpClientAdapter = HttpClientAdapter();
  }
}
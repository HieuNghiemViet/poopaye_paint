import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService extends DioMixin {
  ApiService() {
    options = BaseOptions(
      baseUrl: 'https://api.thecogapi.com/v1',
      headers: {
        'Content-Type' : 'application/json',
        'x-api-key' : 'live_Q7NsX6Tz9BmA2TLJTs7nMZyy2CDeIHihx0OjZHIEGxvpTl6R7cixMc0DMtzvG1wj'
      }
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
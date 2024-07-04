import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService extends DioMixin {
  static const kTimeout = Duration(seconds: 180);

  ApiService() {
    options = BaseOptions(
      baseUrl: 'www.themealdb.com/api/json/v1',
      headers: {
        'Content-Type' : 'application/json',
        'x-api-key' : 'live_mGcvruSeDDFF68Vk4mnYYvZHUkCqKlf7BMhKXTT74rxp7mSD5DVvPxlQI8QNFRdX'
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
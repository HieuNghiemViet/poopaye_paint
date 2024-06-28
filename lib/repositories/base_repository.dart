import 'package:poopaye_paint/services/api_service.dart';

abstract class BaseRepository {
  final ApiService apiService;

  BaseRepository(this.apiService);
}
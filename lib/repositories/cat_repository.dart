import 'package:poopaye_paint/model/cat.dart';
import 'package:poopaye_paint/services/api_path.dart';
import 'package:poopaye_paint/services/api_service.dart';


class CatRepository  {
  final apiService = ApiService();

  Future<Cat> fetchCats() async {
    final response = await apiService.get(ApiPath.cat);
    return Cat.fromJson(response.data);
  }
}
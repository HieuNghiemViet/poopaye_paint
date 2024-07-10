import 'package:poopaye_paint/model/meal.dart';
import 'package:poopaye_paint/services/api_path.dart';
import 'base_repository.dart';

class MealsRepository extends BaseRepository {
  MealsRepository(super.apiService);

  Future<List<Meals>> fetchMeals({String? kw}) async {
    final response = await apiService.get(ApiPath.meals(kw));
    final meals = (response.data["meals"] as List<dynamic>)
        .map((e) => Meals.fromJson(e))
        .toList();
    return meals;
  }
}

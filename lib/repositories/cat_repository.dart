import 'package:poopaye_paint/model/meal.dart';
import 'package:poopaye_paint/services/api_path.dart';
import 'base_repository.dart';

class MealsRepository extends BaseRepository {
  MealsRepository(super.apiService);

  Future<Meals> fetchMeals() async {
    final response = await apiService.get(ApiPath.cat);
    return Meals.fromJson(response.data);
  }
}

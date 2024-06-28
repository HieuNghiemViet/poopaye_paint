import 'package:poopaye_paint/model/dog.dart';
import 'package:poopaye_paint/repositories/base_repository.dart';
import 'package:poopaye_paint/services/api_path.dart';

abstract class DogRepositoryI extends BaseRepository {
  DogRepositoryI(super.apiService);

  Future<List<Dog>> fetchRecipes();
}

class RecipeRepository extends DogRepositoryI {
  RecipeRepository(super.apiService);

  @override
  Future<List<Dog>> fetchRecipes() async {
    final response = await apiService.get(ApiPath.dog);
    return [];
  }
}
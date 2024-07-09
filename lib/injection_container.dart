import 'package:get_it/get_it.dart';
import 'package:poopaye_paint/cubit/meals_cubit.dart';
import 'package:poopaye_paint/repositories/meals_repository.dart';
import 'package:poopaye_paint/services/api_service.dart';

final sl= GetIt.instance;

void configureDependencies() {
  // Cubit factory
  sl.registerFactory(() => MealsCubit(sl()));

  // Repository
  sl.registerLazySingleton<MealsRepository>(() => MealsRepository(sl()));

  // Others
  sl.registerLazySingleton<ApiService>(() => ApiService());
}

import 'package:get_it/get_it.dart';
import 'package:poopaye_paint/cubit/cat_cubit.dart';
import 'package:poopaye_paint/repositories/cat_repository.dart';
import 'package:poopaye_paint/services/api_service.dart';

final sl= GetIt.instance;

void configureDependencies() {
  // Cubit factory
  sl.registerFactory(() => CatCubit(sl()));

  // Repository
  sl.registerLazySingleton<MealsRepository>(() => MealsRepository(sl()));

  // Others
  sl.registerLazySingleton<ApiService>(() => ApiService());
}

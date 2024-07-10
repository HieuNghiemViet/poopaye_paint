import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poopaye_paint/cubit/meal_state.dart';
import 'package:poopaye_paint/enums.dart';
import 'package:poopaye_paint/repositories/meals_repository.dart';

class MealsCubit extends Cubit<MealState> {
  MealsCubit(this._catRepository)
      : super(const MealState(meals: [], viewStatus: ViewState.initial));

  final MealsRepository _catRepository;

  Future<void> fetchMeals({bool isShowLoading = false, String kw = ""}) async {
    try {
      if (isShowLoading) {
        emit(state.copyWith(viewStatus: ViewState.loading));
      }
      final data = await _catRepository.fetchMeals(kw: kw);
      emit(state.copyWith(viewStatus: ViewState.success, meals: data));
    } catch (e) {
      emit(state.copyWith(viewStatus: ViewState.failure, error: e));
    }
  }
}

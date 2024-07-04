import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:poopaye_paint/model/meal.dart';
import 'package:poopaye_paint/repositories/cat_repository.dart';
part 'meal_state.dart';

class CatCubit extends Cubit<MealsState> {
  CatCubit(this._catRepository) : super(MealsInitial());

  final MealsRepository _catRepository;

  void fetchCat() async {
    try {
      emit(MealsLoading());
      final data = await _catRepository.fetchMeals();
      emit(MealsSuccess(data));
    } catch (e) {
      emit(MealsFailure(e));
      print(e);
    }
  }
}

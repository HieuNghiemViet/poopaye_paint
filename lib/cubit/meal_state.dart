import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poopaye_paint/enums.dart';
import 'package:poopaye_paint/model/meal.dart';

part 'meal_state.freezed.dart';

@freezed
class MealState with _$MealState {
  const factory MealState({
    required ViewState viewStatus,
    required List<Meals> meals,
    Object? error,
  }) = _MealState;
}

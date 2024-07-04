part of 'cat_cubit.dart';

@immutable
sealed class MealsState {}

final class MealsInitial extends MealsState {}

final class MealsLoading extends MealsState {}

final class MealsSuccess extends MealsState {
  final Meals meals;

  MealsSuccess(this.meals);
}

final class MealsFailure extends MealsState {
  final Object object;

  MealsFailure(this.object);
}

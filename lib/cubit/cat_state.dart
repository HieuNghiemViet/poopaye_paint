part of 'cat_cubit.dart';

@immutable
sealed class CatState {}

final class CatInitial extends CatState {}

final class CatLoading extends CatState {}

final class CatSuccess extends CatState {
  final Cat cat;

  CatSuccess(this.cat);
}

final class CatFailure extends CatState {
  final Object object;

  CatFailure(this.object);
}

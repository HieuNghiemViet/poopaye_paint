import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:poopaye_paint/model/cat.dart';
import 'package:poopaye_paint/repositories/cat_repository.dart';

part 'cat_state.dart';

class CatCubit extends Cubit<CatState> {
  CatCubit() : super(CatInitial());

  final CatRepository catRepository = CatRepository();

  void fetchCat() async {
    try {
      emit(CatLoading());
      final data = await catRepository.fetchCats();
      emit(CatSuccess(data));
    } catch (e) {
      emit(CatFailure(e));
      print(e);
    }
  }
}

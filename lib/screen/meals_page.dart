import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poopaye_paint/cubit/cat_cubit.dart';
import 'package:poopaye_paint/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poopaye_paint/repositories/cat_repository.dart';
import 'package:poopaye_paint/screen/meals_item.dart';

class CatPage extends StatelessWidget {
  const CatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CatCubit>(),
      child: const CatView(),
    );
  }
}

class CatView extends StatefulWidget {
  const CatView({super.key});

  @override
  State<CatView> createState() => _CatViewState();
}

class _CatViewState extends State<CatView> {
  @override
  void initState() {
    super.initState();
    context.read<CatCubit>().fetchCat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: BlocConsumer<CatCubit, MealsState>(
        listener: (context, state) {
          // if (state.status == RecipeStatus.failure && state.error != null) {
          //   handleError(state.error!);
          // }
        },
        builder: (context, state) {
          switch (state) {
            case MealsInitial():
            case MealsLoading():
              return const CircularProgressIndicator(color: Colors.red);
            case MealsSuccess():
              final meals = state.meals;
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => MealsItem(meals: meals),
              );
            case MealsFailure():
              return const Text("Oops!");
          }
        },
      )),
    );
  }
}

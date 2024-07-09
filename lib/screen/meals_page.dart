import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poopaye_paint/cubit/meal_state.dart';
import 'package:poopaye_paint/cubit/meals_cubit.dart';
import 'package:poopaye_paint/enums.dart';
import 'package:poopaye_paint/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poopaye_paint/repositories/meals_repository.dart';
import 'package:poopaye_paint/screen/meals_item.dart';
import 'package:poopaye_paint/widgets/base_widget.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<MealsCubit>(),
      child: const MealsView(),
    );
  }
}

class MealsView extends StatefulWidget {
  const MealsView({super.key});

  @override
  State<MealsView> createState() => _MealsViewState();
}

class _MealsViewState extends State<MealsView> {
  @override
  void initState() {
    super.initState();
    context.read<MealsCubit>().fetchMeals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals"),
      ),
      body: Center(
        child: BlocBuilder<MealsCubit, MealState>(
          builder: (context, state) {
            switch (state.viewStatus) {
              case ViewState.initial:
              case ViewState.loading:
                return const CircularProgressIndicator(color: Colors.red);
              case ViewState.success:
                final meals = state.meals;
                return ListView.builder(
                  itemCount: meals.length,
                  itemBuilder: (context, index) =>
                      MealsItem(meals: meals.elementAt(index)),
                );
              case ViewState.failure:
                return const Text("Oops!");
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poopaye_paint/cubit/cat_cubit.dart';
import 'package:poopaye_paint/model/cat.dart';
import 'package:poopaye_paint/repositories/cat_repository.dart';
import 'package:poopaye_paint/screen/cat_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CatCubit catCubit = CatCubit();

  @override
  void initState() {
    super.initState();
    catCubit.fetchCat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (_) => CatCubit(),
        child: BlocBuilder<CatCubit, CatState>(builder: (context, state) {
          switch (state) {
            case CatInitial():
              return Container();
            case CatSuccess():
              return ListView.separated(
                itemCount: state.cat.breeds?.length ?? 0,
                itemBuilder: (index, context) {
                  final cat = state.cat;
                  return CatItem(
                    cat: cat,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(height: 10);
                },
              );
            case CatLoading():
              return const CupertinoActivityIndicator();
            case CatFailure():
              return ErrorWidget(state.object);
          }
        }),
      ),
    );
  }
}

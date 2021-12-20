import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_flutter_amigos/app/home/cubit/home_cubit.dart';
import 'package:movie_flutter_amigos/app/home/cubit/home_state.dart';

class HomePage extends StatelessWidget {
  final HomeCubit _homeCubit = Modular.get<HomeCubit>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movies")),
      body: BlocBuilder<HomeCubit, HomeState>(
          bloc: _homeCubit..fetchMovies(),
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is HomeSuccessState) {
              return ListView.separated(
                  itemBuilder: (context, index) => Text(state.movies[index].title),
                  separatorBuilder: (context, intex) => const SizedBox(height: 16),
                  itemCount: state.movies.length,
                );
            }
            if (state is HomeFailureState) {
              return Center(child: Text(state.error.message));
            }
            return const SizedBox.shrink();
          }),
    );
  }
}

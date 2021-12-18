import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_flutter_amigos/app/data/repository/movie_repository.dart';
import 'package:movie_flutter_amigos/app/home/cubit/home_cubit.dart';
import 'package:movie_flutter_amigos/app/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) => HomeCubit(i<MovieRepository>())),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (ctx, args) => HomePage()),
  ];
}
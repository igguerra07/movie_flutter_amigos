import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_flutter_amigos/app/data/datasources/movie_remote_data.dart';
import 'package:movie_flutter_amigos/app/data/datasources/movie_remote_data_impl.dart';
import 'package:movie_flutter_amigos/app/data/repository/movie_repository.impl.dart';
import 'package:movie_flutter_amigos/app/home/home_module.dart';
import 'package:movie_flutter_amigos/app/services/api/api_client.dart';
import 'package:movie_flutter_amigos/app/services/api/api_client_impl.dart';
import 'package:movie_flutter_amigos/app/services/api/api_inteceptor.dart';
import 'package:movie_flutter_amigos/app/services/api/api_service.dart';
import 'package:movie_flutter_amigos/app/services/api/api_service_impl.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> binds = [
    Bind.lazySingleton((i) => Dio()), 
    Bind.lazySingleton((i) => AuthInterceptor()),
    Bind.lazySingleton((i) => ApiClientImpl(i<Dio>(), [ i<AuthInterceptor>() ])),
    Bind.lazySingleton((i) => ApiServiceImpl(i<ApiClient>())),
    Bind.lazySingleton((i) => MovieRemoteDataSourceImpl(i<ApiService>())),
    Bind.lazySingleton((i) => MovieRepositoryImpl(i<MovieRemoteDataSource>()))
  ];

  @override
  List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}

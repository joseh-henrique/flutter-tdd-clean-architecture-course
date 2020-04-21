import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';
import 'core/util/input_converter.dart';
import 'features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'features/number_trivia/presentation/store/number_trivia_store.dart';
import 'main.dart';

class AppModule extends MainModule {
  final String route;
  final SharedPreferences sharedPreferences;

  AppModule({this.route = "/", @required this.sharedPreferences});

  @override
  List<Bind> get binds => [
        Bind((i) => DataConnectionChecker()),
        Bind((i) => http.Client()),
        Bind((i) => sharedPreferences),
        Bind((i) => DataConnectionChecker()),
        Bind<NetworkInfo>((i) => NetworkInfoImpl(i.get())),
        Bind((i) => InputConverter()),
        Bind<NumberTriviaLocalDataSource>(
            (i) => NumberTriviaLocalDataSourceImpl(sharedPreferences: i.get())),
        Bind<NumberTriviaRemoteDataSource>(
            (i) => NumberTriviaRemoteDataSourceImpl(client: i.get())),
        Bind<NumberTriviaRepository>((i) => NumberTriviaRepositoryImpl(
              localDataSource: i.get(),
              networkInfo: i.get(),
              remoteDataSource: i.get(),
            )),
        Bind((i) => GetConcreteNumberTrivia(i.get())),
        Bind((i) => GetRandomNumberTrivia(i.get())),
        Bind((i) => NumberTriviaStore(
              concrete: i.get(),
              inputConverter: i.get(),
              random: i.get(),
            )),
      ];

  @override
  List<Router> get routers => [];

  @override
  Widget get bootstrap => MyApp();

  static Inject get to => Inject<AppModule>.of();
}

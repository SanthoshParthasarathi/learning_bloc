import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/bloc/game_data_bloc.dart';
import 'package:learning_bloc/firstscreen.dart';
import 'package:learning_bloc/repo/games_repo.dart';
import 'package:learning_bloc/routes/custom_router.dart';

import 'screens/landing_page.dart';

void main() {
  runApp( BlocProvider<GameDataBloc>(
    create: (context) => GameDataBloc(GamesRepo()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

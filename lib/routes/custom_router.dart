import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:learning_bloc/model/data_model.dart';
import 'package:learning_bloc/screens/details_page.dart';
import 'package:learning_bloc/screens/landing_page.dart';

part 'custom_router.gr.dart';



@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailsPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
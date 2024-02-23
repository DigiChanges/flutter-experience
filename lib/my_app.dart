import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    final appRouter = context.watch<RouterSimpleCubit>().state;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Experience',
      routerConfig: appRouter,
    );
  }
}
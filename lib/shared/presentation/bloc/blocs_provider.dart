import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_experience/main.dart';

import '../../../core/router/app_routes.dart';
import '../../../my_app.dart';

class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:  [
          BlocProvider(create: (context) => RouterSimpleCubit()),
        ],
        child: const MyApp()
    );
  }

}
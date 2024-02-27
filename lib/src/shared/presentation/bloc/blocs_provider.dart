import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_experience/src/shared/presentation/i18n/i18n_wrapper.dart';

import '../../../../my_app.dart';
import '../../../core/router/app_routes.dart';

class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:  [
          BlocProvider(create: (context) => RouterSimpleCubit()),
        ],
        child: I18NWrapper.createLocalizationWrapper(const MyApp())
    );
  }

}
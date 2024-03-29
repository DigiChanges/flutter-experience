import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/welcome/presentation/page/welcome_page.dart';

final _publicRouter = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const WelcomePage()),
]);

class RouterSimpleCubit extends Cubit<GoRouter> {
  RouterSimpleCubit():super(_publicRouter);

  void goBack() {
    state.pop();
  }

  void goHome() {
    state.push('/');
  }
}

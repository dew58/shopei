import 'package:flutter/material.dart';

import '../../features/auth/presentation/screens/sign_up.dart';
import '../../features/auth/presentation/screens/on_bording.dart';
import 'routes_name.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onBorder:
        return MaterialPageRoute(builder: (_) => const OnBording());

      case Routers.logIn:
        return MaterialPageRoute(builder: (_) => const SignUp());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

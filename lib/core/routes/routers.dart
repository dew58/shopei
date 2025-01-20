import 'package:flutter/material.dart';
import 'package:shopie/core/routes/routes_name.dart';
import 'package:shopie/features/auth/presentation/screens/on_bording.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onBorder:
        return MaterialPageRoute(builder: (_) => const OnBording());

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

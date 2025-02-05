import 'package:flutter/material.dart';
import 'package:shopie/features/auth/logic/cubit/auth_cubit.dart';
import 'package:shopie/features/auth/presentation/screens/log_in.dart';
import 'package:shopie/features/main_home/logic/home_cubit.dart';
import 'package:shopie/features/main_home/presentation/screens/main_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/presentation/screens/sign_up.dart';
import '../../features/auth/presentation/screens/on_bording.dart';
import 'routes_name.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onBorder:
        return MaterialPageRoute(builder: (_) => const OnBording());

      case Routers.singUp:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<AuthCubit>.value(
                  value: AuthCubit(),
                  child: const SignUp(),
                ));

      case Routers.logIn:
        return MaterialPageRoute(builder: (_) => const LogIn());

      case Routers.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (_) => HomeCubit(),
                  child: const MainHome(),
                ));

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

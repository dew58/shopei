import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopie/core/helper/extension.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/routes/routes_name.dart';

part 'auth_state.dart';

final supabase = Supabase.instance.client;

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  ///This function to sign up new user for a first time using supabase (email, password)
  signUpEmailAndPassword(String email, String password) async {
    try {
      final AuthResponse res = await supabase.auth
          .signUp(
        email: email,
        password: password,
      )
          .timeout(const Duration(seconds: 50), onTimeout: () {
        throw Exception('Connection timed out');
      });
      final Session? session = res.session;
      final User? user = res.user;
      print("succcessssseee!!!!!!");
      emit(AuthSuccsessful());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  /// this is function fot login exesting users using supabase
  logInEmailAndPassword(String email, String password) async {
    try {
      final AuthResponse res = await supabase.auth.signInWithPassword(
        email: 'example@email.com',
        password: 'example-password',
      );
      final Session? session = res.session;
      final User? user = res.user;
      print("succcessssseee!!!!!!");
      emit(AuthSuccsessful());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  /// this function to sign in using google account
  signUpWithGoogle(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
          // clientId:
          //     "181350402532-9ddof8q248obhgh1io0q92mrvqm8skku.apps.googleusercontent.com",
          );
      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      final idToken = googleAuth.idToken;

      if (idToken == null) {
        throw 'No ID Token found.';
      }

      supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
      );

      print("succcessssseee!!!!!!");
      emit(AuthSuccsessful());
      context.pushNamed(Routers.home);
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}

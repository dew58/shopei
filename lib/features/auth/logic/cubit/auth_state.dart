part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccsessful extends AuthState {}

final class AuthFailed extends AuthState {
  final String message;
  AuthFailed(this.message);
}

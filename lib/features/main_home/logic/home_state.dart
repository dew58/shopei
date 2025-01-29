part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLodding extends HomeState {}

final class HomeLoadded extends HomeState {
  final List<dynamic> productList;
  final List<dynamic> categorytList;

  HomeLoadded(this.productList, this.categorytList);
}

final class HomeError extends HomeState {
  final String message;
  HomeError(this.message);
}

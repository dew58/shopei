import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions(
        baseUrl: 'https://api.example.com',
        connectTimeout: Duration(milliseconds: 5000),
        receiveTimeout: Duration(milliseconds: 3000),
      )));
}

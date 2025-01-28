import 'package:dio/dio.dart';

import '../constants/API_end_points.dart';

class NetworkManager {
  final dio = Dio();

  Future<void> getProducts() async {
    final response = await dio.get(APIEndPoints.getProduct);
    print(response.data);
  }
  // Dio dio = Dio(
  //   BaseOptions(
  //     baseUrl: APIEndPoints.getProduct,
  //     connectTimeout: Duration(milliseconds: 5000),
  //     receiveTimeout: Duration(milliseconds: 3000),
  //   ),
  // );
}

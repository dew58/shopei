import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../constants/API_end_points.dart';

class NetworkManager {
  final dio = Dio();

  Future<List<dynamic>> getProducts() async {
    try {
      final response = await dio.get(APIEndPoints.getProduct);
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getCategory() async {
    try {
      final response = await dio.get(APIEndPoints.getCatigory);
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopie/features/main_home/repo/product_repo.dart';
import 'package:meta/meta.dart';
import '../repo/category_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  getProducts() async {
    emit(HomeLodding());
    try {
      var productList = await ProductRepo().getProducts();
      print(productList);
      var categoryList = await CategoryRepo().getCategory();
      print(categoryList);
      emit(HomeLoadded(productList, categoryList));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}

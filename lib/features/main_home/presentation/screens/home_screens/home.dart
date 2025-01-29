import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopie/features/main_home/logic/home_cubit.dart';

import '../../../../../core/helper/spacer.dart';
import '../../../../../core/themes/my_colors.dart';
import '../../widgets/discover.dart';
import '../../widgets/my_catigory.dart';
import '../../widgets/my_product_card.dart';
import '../../widgets/my_search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white0,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Discover(),
              verticalSpace(20),
              MySearchBar(),
              verticalSpace(20),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                  bloc: HomeCubit()..getProducts(),
                  builder: (context, state) {
                    if (state is HomeLodding) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is HomeLoadded) {
                      return Column(
                        children: [
                          MyCatigory(
                            categoryList: state.categorytList,
                          ),
                          verticalSpace(20),
                          Expanded(
                            child: MyProductCard(
                              productCardList: state.productList,
                            ),
                          ),
                        ],
                      );
                    } else if (state is HomeError) {
                      return Center(
                        child: Text(state.message),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

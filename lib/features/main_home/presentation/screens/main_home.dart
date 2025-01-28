import 'package:flutter/material.dart';
import 'package:shopie/core/helper/spacer.dart';

import '../../../../core/themes/my_colors.dart';
import '../widgets/discover.dart';
import '../widgets/my_catigory.dart';
import '../widgets/my_search_bar.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white0,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Discover(),
                    verticalSpace(20),
                    MySearchBar(),
                    verticalSpace(20),
                    MyCatigory(),
                    verticalSpace(20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Account',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

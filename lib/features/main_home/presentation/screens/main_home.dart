import 'package:flutter/material.dart';

import 'package:shopie/features/main_home/presentation/screens/home_screens/account.dart';
import 'package:shopie/features/main_home/presentation/screens/home_screens/cart.dart';
import 'package:shopie/features/main_home/presentation/screens/home_screens/home.dart';
import 'package:shopie/features/main_home/presentation/screens/home_screens/saved.dart';
import 'package:shopie/features/main_home/presentation/screens/home_screens/search.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currentIndex = 0;
  List pages = [
    Home(),
    Search(),
    Cart(),
    Saved(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white0,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle:
            MyStyle.mediam12white.copyWith(color: MyColors.black9),
        unselectedLabelStyle:
            MyStyle.mediam12white.copyWith(color: MyColors.white4),
        backgroundColor: MyColors.white0,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/Home.png'),
                color: MyColors.white4),
            activeIcon: ImageIcon(AssetImage('assets/icons/Home.png'),
                color: MyColors.black9),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/Search.png'),
                color: MyColors.white4),
            activeIcon: ImageIcon(AssetImage('assets/icons/Search.png'),
                color: MyColors.black9),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/Heart1.png'),
                color: MyColors.white4),
            activeIcon: ImageIcon(AssetImage('assets/icons/Heart1.png'),
                color: MyColors.black9),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/Cart.png'),
                color: MyColors.white4),
            activeIcon: ImageIcon(AssetImage('assets/icons/Cart.png'),
                color: MyColors.black9),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/User.png'),
                color: MyColors.white4),
            activeIcon: ImageIcon(
                AssetImage(
                  'assets/icons/User.png',
                ),
                color: MyColors.black9),
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

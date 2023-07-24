import 'package:flutter/material.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/wallet_screen.dart';
import 'package:grocery_app/widgets/bottom_nav_bar.dart';

import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int selectedIndex = 0;
  List<Widget> allpages = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    WalletScreen(),
    ProfileScreen()
  ];
  void tabChanged(int index) {
    setState(() {
      print(index);
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allpages.elementAt(selectedIndex),
      bottomNavigationBar: BottomBarNav(
        selectedIndex: selectedIndex,
        allpages: allpages,
        onTabChange: tabChanged,
      ),
    );
  }
}

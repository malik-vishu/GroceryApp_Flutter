import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBarNav extends StatelessWidget {
  BottomBarNav(
      {Key? key,
      required this.selectedIndex,
      required this.allpages,
      required this.onTabChange})
      : super(key: key);

  int selectedIndex;
  final List<Widget> allpages;
  final ValueChanged<int> onTabChange;

  List<GButton> tabs = [];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              spreadRadius: -10,
              blurRadius: 60,
              color: Colors.black.withOpacity(.20),
              offset: const Offset(0, 15),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 22),
          child: GNav(
            gap: 6,
            color: Colors.grey[600],
            activeColor: Colors.white,
            rippleColor: Colors.grey[800]!,
            hoverColor: Colors.grey[700]!,
            iconSize: 25,
            textStyle: const TextStyle(fontSize: 16, color: Colors.white),
            tabBackgroundColor: Colors.grey[900]!,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16.5),
            duration: const Duration(milliseconds: 750),
            tabs: const [
              GButton(
                icon: CupertinoIcons.house,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: CupertinoIcons.shopping_cart,
                text: 'Cart',
              ),
              GButton(
                icon: CupertinoIcons.creditcard,
                text: 'Wallet',
              ),
              GButton(
                icon: CupertinoIcons.person_alt_circle,
                text: 'Profile',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: onTabChange,
          ),
        ),
      ),
    );
  }
}

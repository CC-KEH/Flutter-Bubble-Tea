import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNav({super.key,required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: (value)=> onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        color: Colors.brown,
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        tabs: const [
          //About
          GButton(
            icon: Icons.home,
            text: 'About',
          ),
          //Shop
          GButton(
            icon: Icons.shop,
            text: 'Shop',
          ),
          //Cart
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}

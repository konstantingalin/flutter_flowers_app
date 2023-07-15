import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/screens/home_scrren.dart';
import 'package:flutter_flowers_app/screens/orders_screen.dart';
import 'package:flutter_flowers_app/screens/wishlist_screen.dart';

import '../screens/cart_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      enableFeedback: false,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      elevation: 16,
      useLegacyColorScheme: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Container(
              width: 48,
              margin: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                icon: Image.asset(
                  'assets/icons/homeIcon.png',
                  width: 48,
                ),
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, WishlistScreen.routeName);
                },
                icon: Image.asset(
                  'assets/icons/favoriteIcon.png',
                  width: 48,
                ),
              ),
            ),
            label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, OrdersScreen.routeName);
                },
                icon: Image.asset(
                  'assets/icons/ordersIcon.png',
                  width: 48,
                ),
              ),
            ),
            label: 'Orders'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                icon: Image.asset(
                  'assets/icons/cartIcon.png',
                  width: 48,
                ),
              ),
            ),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                },
                icon: Image.asset(
                  'assets/icons/profileIcon.png',
                  width: 48,
                ),
              ),
            ),
            label: 'Profile'),
      ],
    );
  }
}

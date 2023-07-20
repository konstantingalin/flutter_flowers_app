import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/provider/favorite_provider.dart';
import 'package:flutter_flowers_app/screens/cart_screen.dart';
import 'package:flutter_flowers_app/screens/home_scrren.dart';
import 'package:flutter_flowers_app/screens/profile_screen.dart';
import 'package:provider/provider.dart';

import 'screens/card_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/wishlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          '/card': (context) => CardScreen(),
          '/cart': (context) => CartScreen(),
          '/wishlist': (context) => WishlistScreen(),
          '/orders': (context) => OrdersScreen(),
          '/profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}

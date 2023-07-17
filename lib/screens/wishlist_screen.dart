import 'package:flutter/material.dart';

import '../data/wishlist_data.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class WishlistScreen extends StatelessWidget {
  WishlistScreen({super.key});

  static const routeName = '/wishlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          child: Header(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 1),
      body: Text('faf'),
    );
  }
}

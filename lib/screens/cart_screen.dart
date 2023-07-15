import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          child: Header(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 3),
      body: Text('Корзина'),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  static const routeName = '/orders';

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
      body: Text('Заказы'),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: SafeArea(
            child: Header(),
          ),
        ),
      bottomNavigationBar: BottomNavBar(
        index: 0,
      ),
      body: Text('Content'),
    );
  }
}

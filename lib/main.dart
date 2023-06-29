import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/screens/home_scrren.dart';

import 'screens/card_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        '/card': (context) => CardScreen(),
      },
    );
  }
}

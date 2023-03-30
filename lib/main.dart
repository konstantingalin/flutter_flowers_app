import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Header(),
        ),
        body: null,
      ),
    );
  }
}

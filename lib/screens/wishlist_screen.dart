import 'package:flutter/material.dart';

import '../bloc/favorite/favorite_bloc.dart';
import '../data/wishlist_data.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class WishlistScreen extends StatelessWidget {
  WishlistScreen({super.key});

  static const routeName = '/wishlist';

  final _favorite_bloc = FavoriteBloc();

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
      body: ListView.builder(
        itemCount: wishlist.length,
        itemBuilder: (context, index) {
          final flower = wishlist[index];
          return ListTile(
            leading: Image.asset(
              flower.thumbnailPath,
              width: 50,
              height: 50,
            ),
            title: Text(flower.name),
            subtitle: Text(flower.price),
            onTap: () {
              // Обработка нажатия на элемент списка
            },
          );
        },
      ),
    );
  }
}

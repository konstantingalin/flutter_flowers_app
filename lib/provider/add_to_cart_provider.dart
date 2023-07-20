import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/models/flower_model.dart';

class AddToCartProvider extends ChangeNotifier {
  final List<FlowerModel> _cart_flowers = [];

  List<FlowerModel> get flowers => _cart_flowers;

  bool isExist(FlowerModel flower) {
    final isExist = _cart_flowers.contains(flower);
    return isExist;
  }

  void toggleFavorite(FlowerModel flower) {
    final isExist = _cart_flowers.contains(flower);

    if (isExist) {
      _cart_flowers.remove(flower);
    } else {
      _cart_flowers.add(flower);
    }

    notifyListeners();
  }
}

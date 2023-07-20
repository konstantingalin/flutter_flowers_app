import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/models/flower_model.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<FlowerModel> _favorites_flowers = [];

  List<FlowerModel> get flowers => _favorites_flowers;

  bool isExist(FlowerModel flower) {
    final isExist = _favorites_flowers.contains(flower);
    return isExist;
  }

  void toggleFavorite(FlowerModel flower) {
    final isExist = _favorites_flowers.contains(flower);

    if (isExist) {
      _favorites_flowers.remove(flower);
    } else {
      _favorites_flowers.add(flower);
    }

    notifyListeners();
  }
}

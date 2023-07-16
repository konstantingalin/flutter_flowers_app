part of 'favorite_bloc.dart';

class FavoriteEvent {}

class AddFavorite extends FavoriteEvent {
  final FlowerModel FlowerCard;

  AddFavorite({
    required this.FlowerCard,
  });
}

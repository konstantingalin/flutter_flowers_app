part of 'favorite_bloc.dart';

class FavoriteState {
  get isFavorite => false;
}

class FavoriteInitial extends FavoriteState {}

class FavoriteAddedState extends FavoriteState {
  FavoriteAddedState({
    required this.isFavorite,
  });

  bool isFavorite = false;
}

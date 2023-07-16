import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flowers_app/data/wishlist_data.dart';
import 'package:flutter_flowers_app/models/flower_model.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    emit(FavoriteAddedState(isFavorite: false));

    on<AddFavorite>((event, emit) {
      wishlist.add(event.FlowerCard);
      emit(FavoriteAddedState(isFavorite: true));
    });
  }
}

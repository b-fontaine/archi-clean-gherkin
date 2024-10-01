import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'recipes_event.dart';
import 'recipes_interactor.dart';
import 'recipes_state.dart';

@injectable
class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  final RecipesInteractor _interactor;

  @factoryMethod
  RecipesBloc(this._interactor) : super(InitialRecipesState()) {
    on<RecipesStartingEvent>(_init);
    on<SearchRecipesEvent>(_search);
  }

  FutureOr<void> _init(
      RecipesStartingEvent event, Emitter<RecipesState> emit) async {
    await emit.onEach(
      _interactor.recipes,
      onData: (data) => emit(LoadedRecipesState(recipes: data)),
    );
  }

  FutureOr<void> _search(
          SearchRecipesEvent event, Emitter<RecipesState> emit) =>
      _interactor(event.searchText);
}

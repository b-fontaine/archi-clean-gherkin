sealed class RecipesEvent {}

class RecipesStartingEvent extends RecipesEvent {}

class SearchRecipesEvent extends RecipesEvent {
  final String searchText;

  SearchRecipesEvent({required this.searchText});
}
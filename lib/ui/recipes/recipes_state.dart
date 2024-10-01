import 'package:archi_clean_gherkin/domain/domain_module.dart';

sealed class RecipesState {}

class InitialRecipesState extends RecipesState {}

class LoadedRecipesState extends RecipesState {
  List<RecipeEntity> recipes;

  LoadedRecipesState({required this.recipes});
}
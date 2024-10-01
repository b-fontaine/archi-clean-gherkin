import 'package:injectable/injectable.dart';
import 'package:archi_clean_gherkin/domain/domain_module.dart';

@singleton
class RecipesInteractor {
  final SearchRecipes _useCase;

  RecipesInteractor(this._useCase);

  Stream<List<RecipeEntity>> get recipes => _useCase.stream;

  Future<void> call(String searchText) => _useCase(searchText);

}
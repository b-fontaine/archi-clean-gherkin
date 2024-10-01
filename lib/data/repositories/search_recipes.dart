import 'package:archi_clean_gherkin/core/di/di_module.dart';
import 'package:archi_clean_gherkin/data/dto/recipe_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRecipesRepository {
  final ApiModule _apiModule;
  final Configuration _configuration;

  @factoryMethod
  SearchRecipesRepository(this._apiModule, this._configuration);

  Future<List<RecipeDto>> call(String searchText) async {
    var list = await _apiModule.client.searchRecipes(
      _configuration.apiToken,
      searchText,
      5,
    );
    return list.recipes;
  }
}

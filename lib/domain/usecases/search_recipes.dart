import 'dart:async';

import 'package:archi_clean_gherkin/data/repositories/search_recipes.dart';
import 'package:archi_clean_gherkin/domain/domain_module.dart';
import 'package:injectable/injectable.dart';

@singleton
class SearchRecipes {
  final SearchRecipesRepository _repository;
  final StreamController<List<RecipeEntity>> _controller =
      StreamController<List<RecipeEntity>>();
  late final Stream<List<RecipeEntity>> _stream;

  SearchRecipes(this._repository) {
    _stream = _controller.stream.asBroadcastStream();
  }

  Stream<List<RecipeEntity>> get stream => _stream;

  Future<void> call(String searchText) async {
    var listDto = await _repository(searchText);
    var listEntity = listDto.map(RecipeEntity.fromDto);
    _controller.sink.add(listEntity.toList());
  }
}

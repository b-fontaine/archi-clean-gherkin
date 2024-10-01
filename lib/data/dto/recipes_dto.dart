import 'package:json_annotation/json_annotation.dart';

import 'recipe_dto.dart';

part 'recipes_dto.g.dart';

@JsonSerializable(createToJson: false)
class RecipesDto {
  @JsonKey(name: 'menuItems')
  final List<RecipeDto> recipes;

  RecipesDto({required this.recipes});

  factory RecipesDto.fromJson(Map<String, dynamic> json) =>
      _$RecipesDtoFromJson(json);
}

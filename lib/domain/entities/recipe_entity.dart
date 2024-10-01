import 'package:archi_clean_gherkin/data/dto/recipe_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_entity.freezed.dart';

@freezed
class RecipeEntity with _$RecipeEntity {
  factory RecipeEntity({
    required int id,
    required String title,
    required String imageUrl,
    required String restaurant,
  }) = _RecipeEntity;

  factory RecipeEntity.fromDto(RecipeDto dto) => RecipeEntity(
        id: dto.id,
        title: dto.title,
        imageUrl: dto.image,
        restaurant: dto.restaurantChain,
      );
}

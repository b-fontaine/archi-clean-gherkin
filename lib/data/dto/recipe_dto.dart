import 'package:json_annotation/json_annotation.dart';

part 'recipe_dto.g.dart';

@JsonSerializable(createToJson: false)
class RecipeDto {
  final int id;
  final String title;
  final String image;
  final String restaurantChain;

  RecipeDto({
    required this.id,
    required this.title,
    required this.image,
    required this.restaurantChain,
  });

  factory RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDtoFromJson(json);
}

import 'package:archi_clean_gherkin/data/dto/dto_module.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: '')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/food/menuItems/search')
  Future<RecipesDto> searchRecipes(
    @Query('apiKey') String apiKey,
    @Query('query') String searchText,
    @Query('number') int quantity,
  );
}

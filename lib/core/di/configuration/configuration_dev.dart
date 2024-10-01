import 'package:injectable/injectable.dart';

import 'configuration.dart';

@dev
@Order(-1)
@Singleton(as: Configuration)
class ConfigurationDev implements Configuration {
  @override
  String get apiBaseUrl => "https://api.spoonacular.com/food/";

  @override
  String get apiToken => "fake-token";
}
// coverage:ignore-file

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'flavors.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

const recette = Environment('recette');
const production = Environment('production');

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() =>
    getIt.init(environment: F.name);

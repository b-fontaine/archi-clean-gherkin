// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/di/configuration/configuration.dart' as _i459;
import 'core/di/configuration/configuration_dev.dart' as _i404;
import 'core/di/configuration/configuration_production.dart' as _i812;
import 'core/di/configuration/configuration_recette.dart' as _i593;
import 'core/di/configuration/configuration_test.dart' as _i595;
import 'core/di/di_module.dart' as _i268;
import 'core/di/network/api_module_impl.dart' as _i1022;
import 'core/di/network/api_module_stub.dart' as _i763;
import 'data/repositories/search_recipes.dart' as _i407;
import 'domain/domain_module.dart' as _i230;
import 'domain/usecases/search_recipes.dart' as _i966;
import 'ui/recipes/recipes_bloc.dart' as _i696;
import 'ui/recipes/recipes_interactor.dart' as _i1000;

const String _test = 'test';
const String _dev = 'dev';
const String _production = 'production';
const String _recette = 'recette';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i459.Configuration>(
      () => _i595.ConfigurationDev(),
      registerFor: {_test},
    );
    gh.singleton<_i459.Configuration>(
      () => _i404.ConfigurationDev(),
      registerFor: {_dev},
    );
    gh.singleton<_i459.Configuration>(
      () => _i812.ConfigurationDev(),
      registerFor: {_production},
    );
    gh.singleton<_i459.Configuration>(
      () => _i593.ConfigurationDev(),
      registerFor: {_recette},
    );
    gh.singleton<_i268.ApiModule>(
      () => _i763.ApiModuleImpl(gh<_i268.Configuration>()),
      registerFor: {_test},
    );
    gh.factory<_i407.SearchRecipesRepository>(
        () => _i407.SearchRecipesRepository(
              gh<_i268.ApiModule>(),
              gh<_i268.Configuration>(),
            ));
    gh.singleton<_i268.ApiModule>(
      () => _i1022.ApiModuleImpl(gh<_i268.Configuration>()),
      registerFor: {
        _dev,
        _recette,
        _production,
      },
    );
    gh.singleton<_i966.SearchRecipes>(
        () => _i966.SearchRecipes(gh<_i407.SearchRecipesRepository>()));
    gh.singleton<_i1000.RecipesInteractor>(
        () => _i1000.RecipesInteractor(gh<_i230.SearchRecipes>()));
    gh.factory<_i696.RecipesBloc>(
        () => _i696.RecipesBloc(gh<_i1000.RecipesInteractor>()));
    return this;
  }
}

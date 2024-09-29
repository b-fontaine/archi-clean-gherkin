# Architecture Clean et Modulaire avec Flutter : De la Structure aux Tests Gherkin

Ceci est le code source associé à l'article Medium: [Architecture Clean et Modulaire avec Flutter : De la Structure aux Tests Gherkin](https://medium.com/@benotfontaine/architecture-clean-et-modulaire-avec-flutter-de-la-structure-aux-tests-gherkin-879a37c0c2a5)

Ce projet utilise l'[API Spoonacular](https://spoonacular.com/food-api/). Pour l'utiliser, vous devrez :
1. Créer un compte sur le site [Spoonacular](https://spoonacular.com/food-api/).
2. Récupérer l'api-key
3. la renseigner dans le répertoire `lib/core/di/configuration/` pour chaque environnement ciblé.

## Créer un projet Clean

Pour créer un projet comme celui-ci, vous pouvez reprendre l'ensemble des dépendances du `pubspec.yaml` :

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_web_plugins:
    sdk: flutter
  cupertino_icons: 
  http:
  get_it: 
  injectable: 
  flutter_bloc: 
  dio: 
  retrofit: 
  json_annotation: 
  flavor: 
  intl: 
  dio_mocked_responses: 
  flutter_svg: 
  characters: 
  dio_cache_interceptor: 
  dio_cache_interceptor_hive_store: 
  hive: 
  freezed_annotation: 
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: 
  build_runner: 
  injectable_generator: 
  retrofit_generator: 
  json_serializable: 
  flutter_flavorizr: 
  bdd_widget_test: 
  freezed: 
  http_mock_adapter: 
```

Puis reprendre l'organisation des répertoires (avec ou sans les `*_module.dart` selon vos préférences).
Ne pas oublier d'utiliser `freezed` pour les entities et `JsonSerializable` pour les dto.

J'ai choisi explicitement de mettre la couche de conversion dto->entity dans l'entity mais rien de vous empêche de créer une nouvelle couche `protocol` pour y réunir l'ensemble des conversions (ce sont des ACL, Anti Corruption Layers).

Pour le reste, j'ai tendance à privilégier le pattern **Factory** pour les `repositories` et le pattern `Singleton` pour les `usecases`.
Le singleton servirait ici à stocker le `Stream` des résultats pour une diffusion globale des résultats d'API.  

### Mettre en place Flavorizr
Pour le configurer, c'est très simple : 
- créer un fichier flavorizr.yaml (celui-ci est un exemple)
```yaml
flavors:
  production:
    app:
      name: "Exemple Clean Archi"
    android:
      applicationId: "org.compagny.archi_clean_gherkin"
    ios:
      bundleId: "org.compagny.archi_clean_gherkino"
    macos:
      bundleId: "org.compagny.archi_clean_gherkin"
  recette:
    app:
      name: "Clean Recette"
    android:
      applicationId: "org.compagny.archi_clean_gherkin.recette"
    ios:
      bundleId: "org.compagny.archi_clean_gherkin.recette"
    macos:
      bundleId: "org.compagny.archi_clean_gherkin.recette"
  dev:
    app:
      name: "Clean DEV"
    android:
      applicationId: "org.compagny.archi_clean_gherkin.dev"
    ios:
      bundleId: "org.compagny.archi_clean_gherkin.dev"
    macos:
      bundleId: "org.compagny.archi_clean_gherkin.dev"
  test:
    app:
      name: "Clean Test"
    android:
      applicationId: "org.compagny.archi_clean_gherkin.test"
    ios:
      bundleId: "org.compagny.archi_clean_gherkin.test"
    macos:
      bundleId: "org.compagny.archi_clean_gherkin.test"

ide: idea
```

> **ATTENTION** Garder impérativement les flavors `test`, `dev` et `production` qui constitueront respectivement :
> - les tests automatisés Gherkin
> - votre poste de travail (exécution locale)
> - l'application qui sera déployée pour vos utilisateurs

- lancer la commande
```shell
flutter pub run flutter_flavorizr
```

> **ATTENTION** Ecrase les fichiers `main.dart` et `main_*.dart`

### Ajouter des fonctionnalités

Avant de commencer à coder, il est nécessaire de lancer les scripts :
``` shell
flutter pub get
```

et

``` shell
flutter pub run build_runner watch --delete-conflicting-outputs
```

Ces commandes permettent d'installer ou mettre à jour les dépendances du projet et de l'écoute des modification pour les générateurs de code (tests Gherkin, injection de dépendances, etc).


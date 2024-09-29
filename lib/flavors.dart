enum Flavor {
  production,
  recette,
  dev,
  test,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.production:
        return 'Exemple Clean Archi';
      case Flavor.recette:
        return 'Clean Recette';
      case Flavor.dev:
        return 'Clean DEV';
      case Flavor.test:
        return 'Clean Test';
      default:
        return 'title';
    }
  }

}

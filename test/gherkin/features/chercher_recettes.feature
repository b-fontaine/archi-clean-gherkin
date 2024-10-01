Feature: Recherche de recettes par mot-clé
  En tant qu'utilisateur,
  Je souhaite pouvoir rechercher des recettes en saisissant un mot-clé,
  Afin de voir les 5 premières recettes correspondantes.

  Scenario: L'utilisateur effectue une recherche de recettes par mot-clé
    Given l'application est en cours d'exécution
    When je saisis {"healthy"} dans le champ de recherche
    And j'appuie sur le bouton {"Rechercher"}
    Then je vois les 5 premières recettes
      | "Healthy Chicken Burger"         | "https://spoonacular.com/menuItemImages/chicken-sandwich.jpg" | "Original Joe's" |
      | "Mashed Healthy Potato"          | "https://img.spoonacular.com/menu-items/354978-312x231.jpg"   | "Original Joe's" |
      | "Blackened Healthy Salmon"       | "https://spoonacular.com/menuItemImages/sandwich.jpg"         | "Original Joe's" |
      | "Roundhouse - Healthy Wheat Bun" | "https://spoonacular.com/menuItemImages/roll.jpg"             | "Original Joe's" |
      | "Healthy Harvest Muffin"         | "https://spoonacular.com/menuItemImages/bran-muffin.jpg"      | "Port City Java" |

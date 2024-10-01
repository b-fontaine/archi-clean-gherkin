Feature: Recherche de recettes par mot-clé
  En tant qu'utilisateur,
  Je souhaite pouvoir rechercher des recettes en saisissant un mot-clé,
  Afin de voir les 5 premières recettes correspondantes.

  Scenario: L'utilisateur effectue une recherche de recettes par mot-clé
    Given l'application est en cours d'exécution
    When je saisis {"healthy"} dans le champ de recherche
    And j'appuie sur le bouton {"Rechercher"}
    Then je vois les 5 premières recettes
      | "Healthy kiss Sandwich"     | "https://spoonacular.com/menuItemImages/sandwich.jpg"       | "4food"           |
      | "Blackened Healthy Salmon"  | "https://spoonacular.com/menuItemImages/grilled-salmon.jpg" | "Original Joe's"  |
      | "Omelette, Healthy Start"   | "https://spoonacular.com/menuItemImages/plain-omelet.jpg"   | "Shari's"         |
      | "Healthy Breakfast Burrito" | "https://spoonacular.com/menuItemImages/burrito-plain.jpg"  | "Egg Harbor Cafe" |
      | "Healthy Caesar Salad"      | "https://spoonacular.com/menuItemImages/caesar-salad.png"  | "Original Joe's"  |

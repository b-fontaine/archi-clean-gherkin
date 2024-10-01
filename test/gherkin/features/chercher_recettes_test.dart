// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../steps/lapplication_est_en_cours_dexecution.dart';
import './../steps/je_saisis_dans_le_champ_de_recherche.dart';
import './../steps/jappuie_sur_le_bouton.dart';
import './../steps/je_vois_les5_premieres_recettes.dart';

void main() {
  group('''Recherche de recettes par mot-clé''', () {
    testWidgets(
        '''L'utilisateur effectue une recherche de recettes par mot-clé''',
        (tester) async {
      await lapplicationEstEnCoursDexecution(tester);
      await jeSaisisDansLeChampDeRecherche(tester, "healthy");
      await jappuieSurLeBouton(tester, "Rechercher");
      await jeVoisLes5PremieresRecettes(
          tester,
          const bdd.DataTable([
            [
              "Healthy kiss Sandwich",
              "https://spoonacular.com/menuItemImages/sandwich.jpg",
              "4food"
            ],
            [
              "Blackened Healthy Salmon",
              "https://spoonacular.com/menuItemImages/grilled-salmon.jpg",
              "Original Joe's"
            ],
            [
              "Omelette, Healthy Start",
              "https://spoonacular.com/menuItemImages/plain-omelet.jpg",
              "Shari's"
            ],
            [
              "Healthy Breakfast Burrito",
              "https://spoonacular.com/menuItemImages/burrito-plain.jpg",
              "Egg Harbor Cafe"
            ],
            [
              "Healthy Caesar Salad",
              "https://spoonacular.com/menuItemImages/caesar-salad.png",
              "Original Joe's"
            ]
          ]));
    });
  });
}

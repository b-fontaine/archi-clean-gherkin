// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../steps/lapplication_est_en_cours_dexecution.dart';
import '../../gherkin/steps/je_saisis_dans_le_champ_de_recherche.dart';
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
              "Healthy Chicken Burger",
              "https://spoonacular.com/menuItemImages/chicken-sandwich.jpg",
              "Original Joe's"
            ],
            [
              "Mashed Healthy Potato",
              "https://img.spoonacular.com/menu-items/354978-312x231.jpg",
              "Original Joe's"
            ],
            [
              "Blackened Healthy Salmon",
              "https://spoonacular.com/menuItemImages/sandwich.jpg",
              "Original Joe's"
            ],
            [
              "Roundhouse - Healthy Wheat Bun",
              "https://spoonacular.com/menuItemImages/roll.jpg",
              "Original Joe's"
            ],
            [
              "Healthy Harvest Muffin",
              "https://spoonacular.com/menuItemImages/bran-muffin.jpg",
              "Port City Java"
            ]
          ]));
    });
  });
}

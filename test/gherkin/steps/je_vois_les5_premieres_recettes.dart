import 'package:archi_clean_gherkin/ui/recipes/view/components/recipe_card.dart';
import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: je vois les 5 premières recettes
Future<void> jeVoisLes5PremieresRecettes(
    WidgetTester tester, bdd.DataTable dataTable) async {
  await tester.pumpAndSettle(const Duration(milliseconds: 500));
  var list = find.byType(ListView);
  expect(list, findsOneWidget);
  var elements = find.descendant(of: list, matching: find.byType(RecipeCard));
  expect(elements, findsNWidgets(dataTable.asLists().length));
  for (var i = 0; i < dataTable.asLists().length; i++) {
    var widget = tester.widget<RecipeCard>(elements.at(i));
    expect(widget.title, equals(dataTable.asLists()[i][0]));
    expect(widget.image, equals(dataTable.asLists()[i][1]));
    expect(widget.subtitle, equals(dataTable.asLists()[i][2]));
  }
}

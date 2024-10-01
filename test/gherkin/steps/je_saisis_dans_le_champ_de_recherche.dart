import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: je saisis {"healthy"} dans le champ de recherche
Future<void> jeSaisisDansLeChampDeRecherche(
    WidgetTester tester, String searchText) async {
  var input = find.byWidgetPredicate((widget) => widget is TextField && (widget.decoration?.labelText ?? "") == "Mots clé");
  expect(input, findsOneWidget);

  await tester.enterText(input, searchText);
  await tester.pumpAndSettle();
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: j'appuie sur le bouton {"Rechercher"}
Future<void> jappuieSurLeBouton(WidgetTester tester, String buttonLabel) async {
  var button = find.widgetWithText(ElevatedButton, buttonLabel);
  expect(button, findsOneWidget);
  await tester.tap(button);
  await tester.pumpAndSettle();
}

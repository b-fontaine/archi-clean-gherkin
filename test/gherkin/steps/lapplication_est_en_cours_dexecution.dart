import 'dart:io';

import 'package:archi_clean_gherkin/flavors.dart';
import 'package:archi_clean_gherkin/injection.dart';
import 'package:archi_clean_gherkin/ui/ui_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: l'application est en cours d'exécution
Future<void> lapplicationEstEnCoursDexecution(WidgetTester tester) async {
  HttpOverrides.global = null;
  F.appFlavor = Flavor.test;
  getIt.allowReassignment = true;
  configureDependencies();
  TestWidgetsFlutterBinding.ensureInitialized();
  await tester.pumpWidget(App());
  tester.view.physicalSize = Size(1900, 1900);
  tester.view.devicePixelRatio = 1;
  tester.view.platformDispatcher.textScaleFactorTestValue = 0.5;
  await tester.pumpAndSettle();
  addTearDown(() => tester.view.reset());

}

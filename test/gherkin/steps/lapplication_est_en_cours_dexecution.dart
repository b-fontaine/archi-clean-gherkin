import 'package:archi_clean_gherkin/flavors.dart';
import 'package:archi_clean_gherkin/injection.dart';
import 'package:archi_clean_gherkin/ui/ui_module.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: l'application est en cours d'exécution
Future<void> lapplicationEstEnCoursDexecution(WidgetTester tester) async {
  F.appFlavor = Flavor.test;
  getIt.allowReassignment = true;
  configureDependencies();
  TestWidgetsFlutterBinding.ensureInitialized();
  await tester.pumpWidget(App());
}

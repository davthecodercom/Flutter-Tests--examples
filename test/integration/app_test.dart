import 'package:bloc_pattern/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('DoD integration app test', (){

    testWidgets('title is correct', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();
      expect(find.text('Flutter Demo Home Page'), findsOneWidget);
    });

    testWidgets('counter increments', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
      await widgetTester.tap(find.byIcon(Icons.add));
      await widgetTester.pumpAndSettle();
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('counter decrements', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);
      await widgetTester.tap(find.byIcon(Icons.remove));
      await widgetTester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);
    });

  });
}

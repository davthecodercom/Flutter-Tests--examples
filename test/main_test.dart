import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloc_pattern/main.dart';

void main() {
  testWidgets('Title contains expected sentence', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Demo Home Page'), findsOneWidget);
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    const tapTimes = 30;
    for (var i = 0; i < tapTimes; i++) {
      await tester.tap(find.byIcon(Icons.add));
    }
    await tester.pump();

    // Verify that our counter has incremented.
    for (var i = 0; i < tapTimes; i++) {
      expect(find.text('$i'), findsNothing);
    }
    expect(find.text('$tapTimes'), findsOneWidget);
  });

  testWidgets('Counter decrements smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}

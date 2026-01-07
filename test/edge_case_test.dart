import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_text/rainbow_text.dart';

void main() {
  testWidgets('RainbowText renders correctly with valid colors', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: RainbowText(
            'Hello World',
            colors: [Colors.red, Colors.blue],
          ),
        ),
      ),
    );

    expect(find.text('Hello World'), findsOneWidget);
    expect(find.byType(RainbowText), findsOneWidget);
  });

  testWidgets('RainbowText handles single color gracefully', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: RainbowText(
            'Single Color Test',
            colors: [Colors.red],
          ),
        ),
      ),
    );
     
     expect(find.text('Single Color Test'), findsOneWidget);
     expect(tester.takeException(), isNull);
  });

  testWidgets('RainbowText handles empty colors gracefully', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: RainbowText(
            'Empty Colors Test',
            colors: [],
          ),
        ),
      ),
    );

     expect(find.text('Empty Colors Test'), findsOneWidget);
     expect(tester.takeException(), isNull);
  });
}

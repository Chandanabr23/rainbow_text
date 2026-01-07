import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_text/rainbow_text.dart'; // Import your package

void main() {
  testWidgets('RainbowText renders correctly', (WidgetTester tester) async {
    // 1. Build the widget
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

    // 2. Search for the widget by text
    final finder = find.text('Hello World');

    // 3. Verify it exists exactly once
    expect(finder, findsOneWidget);

    // 4. (Advanced) Verify it has a ShaderMask as a parent
    // This confirms our logic is actually running
    expect(
      find.ancestor(of: finder, matching: find.byType(ShaderMask)),
      findsOneWidget,
    );
  });
}
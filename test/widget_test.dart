import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter/main.dart';

void main() {
  testWidgets('increments counter on tap', (tester) async {
    await tester.pumpWidget(const CounterApp());
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}

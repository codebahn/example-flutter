import 'package:flutter_test/flutter_test.dart';
import 'package:counter/main.dart';

void main() {
  testWidgets('displays counter and responds to taps', (tester) async {
    await tester.pumpWidget(const CounterApp());

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byKey(const Key('increment')));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byKey(const Key('increment')));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);

    await tester.tap(find.byKey(const Key('decrement')));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}

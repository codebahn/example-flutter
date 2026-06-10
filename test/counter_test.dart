import 'package:flutter_test/flutter_test.dart';
import 'package:counter/counter.dart';

void main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  test('starts at zero', () {
    expect(counter.value, equals(0));
  });

  test('increment increases value', () {
    counter.increment();
    expect(counter.value, equals(1));

    counter.increment();
    expect(counter.value, equals(2));
  });

  test('decrement decreases value', () {
    counter.decrement();
    expect(counter.value, equals(-1));
  });

  test('reset returns to zero', () {
    counter.increment();
    counter.increment();
    counter.reset();
    expect(counter.value, equals(0));
  });

  test('notifies listeners on change', () {
    var notified = false;
    counter.addListener(() => notified = true);

    counter.increment();
    expect(notified, isTrue);
  });
}

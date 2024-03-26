import 'package:bloc_pattern/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CounterCubit emits states increment in order', () {
    final counterCubit = CounterCubit();
    final expected = [1, 2];

    expectLater(
      counterCubit.stream,
      emitsInOrder(expected),
    );

    counterCubit.increment();
    counterCubit.increment();
  });

  test('CounterCubit always 0 when decrement status is already 0', () {
    final counterCubit = CounterCubit();
    final expected = [1, 2, 1, 0];

    expectLater(
      counterCubit.stream,
      emitsInOrder(expected),
    );

    // increment 2 times
    for (var i = 0; i < 2; i++) {
      counterCubit.increment();
    }

    // decrement 5 times
    for (var i = 0; i < 5; i++) {
      counterCubit.decrement();
    }
  });
}
part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  const CounterState();

  // Required for the subclasses to be recognized of holding such value
  get counter => null;
  get goal => null;
  get increaseValue => null;
  get decreaseValue => null;

  bool goalReached();
}

class CounterNew extends CounterState {
  @override
  final int counter, goal, increaseValue, decreaseValue;
  const CounterNew(
      this.counter, this.goal, this.increaseValue, this.decreaseValue);

  @override
  bool goalReached() {
    return counter >= goal;
  }
}

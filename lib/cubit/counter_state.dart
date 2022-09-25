part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  const CounterState();

  // Required for the subclasses to be recognized of holding such value
  get counter => null;
}

class CounterInitial extends CounterState {
  @override
  final int counter;
  const CounterInitial(this.counter);
}

class CounterUpdated extends CounterState {
  @override
  final int counter;
  const CounterUpdated(this.counter);
}

import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class CounterState {
  int counter = 0;
  int incStep = 1;
  int decStep = 1;

  CounterState(this.counter, {this.incStep = 1, this.decStep = 1});
}

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(int startValue, int incrementStep, int decrementStep)
      : super(CounterState(startValue));

  // void increment() => emit(state + state.incStep);
  // void decrement() => emit(state - state.incStep);
  // void increase(int value) => emit(state + value);
  // void decrease(int value) => emit(state - value);
  // void reset() => emit(CounterState(0));
}

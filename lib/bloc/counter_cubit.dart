import 'package:bloc/bloc.dart';

class CounterState {
  int currentValue = 0;
  int incrementStep = 1;
  int decrementStep = 1;

  CounterState(this.currentValue, this.incrementStep, this.decrementStep);
}

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(int startValue, int incrementStep, int decrementStep)
      : super(CounterState(startValue, incrementStep, decrementStep));

  void increment() => emit(state + incrementStep);
  void decrement() => emit(state - decrementStep);
  void increase(int value) => emit(state + value);
  void decrease(int value) => emit(state - value);
}

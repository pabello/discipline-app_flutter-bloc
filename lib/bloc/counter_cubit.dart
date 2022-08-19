import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  int incrementStep;
  int decrementStep;

  CounterCubit(this.incrementStep, int startValue, int decrementStep)
      : super(startValue) {
    try {
      this.decrementStep = decrementStep;
    } catch (exception) {
      decrementStep = 1;
    }
  }

  void increment() => emit(state + incrementStep);
  void decrement() => emit(state - decrementStep);
}

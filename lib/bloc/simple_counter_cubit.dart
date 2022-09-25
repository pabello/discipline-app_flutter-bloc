import 'package:bloc/bloc.dart';

class SimpleCounterCubit extends Cubit<int> {
  SimpleCounterCubit(this.increaseValue, this.decreaseValue) : super(0);
  int increaseValue;
  int decreaseValue;

  int getState() => state;
  void increment() => emit(state + increaseValue);
  void decrement() => emit(state - decreaseValue);
}

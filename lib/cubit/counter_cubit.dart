import 'package:bloc/bloc.dart';
import 'package:discipline_app_bloc/bloc/counter_cubit.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(int initialValue, int goal, int increaseValue, int decreaseValue)
      : super(CounterNew(initialValue));
  int decreaseValue;

  void increment() => emit(CounterNew(state.counter + increaseValue));
  void decrement() => emit(CounterNew(state.counter - decreaseValue));
}

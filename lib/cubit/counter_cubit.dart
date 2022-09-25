import 'package:bloc/bloc.dart';
import 'package:discipline_app_bloc/bloc/counter_cubit.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(int initialValue, this.increaseValue, this.decreaseValue)
      : super(CounterInitial(initialValue));
  int increaseValue;
  int decreaseValue;

  void increment() => emit(CounterUpdated(state.counter + increaseValue));
  void decrement() => emit(CounterUpdated(state.counter - decreaseValue));
}

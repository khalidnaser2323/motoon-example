import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(10);
  void incrementCounter() {
    if (state < 15) {
      emit(state + 1);
    }
  }

  void decrementCounter() {
    emit(state - 1);
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter_event.dart';

// Counter

// class CounterBloc extends Cubit<int> {
//   CounterBloc() : super(0);

//   void decrement() => emit(state - 1);
//   void increment() => emit(state + 1);
// }

// BLoC

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.decrement) {
        emit(state - 1);
      } else {
        emit(state + 1);
      }
    });
  }
}

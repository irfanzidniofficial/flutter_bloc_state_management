import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter_event.dart';

// BLoC

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int i) : super(0) {
    on<DecrementCounter>((event, emit) {
      emit((state - 1) * event.value);
    });
    on<IncrementCounter>((event, emit) {
      emit((state + 1) * event.value);
    });
  }

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onError(error, trace) {
    print(error);
    print(trace);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}

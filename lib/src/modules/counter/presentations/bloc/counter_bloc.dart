import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<CounterEvent>(
      (event, emit) {
        emit(state);
      },
    );
    on<IncrementEvent>(
      (event, emit) => emit(
        CounterIncrementState(state.count + 1),
      ),
    );
  }
}

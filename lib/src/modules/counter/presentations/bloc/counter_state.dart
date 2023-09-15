part of 'counter_bloc.dart';

@immutable
sealed class CounterState extends Equatable {
  const CounterState(this.count);

  final int count;

  @override
  List<Object> get props => [count];

  @override
  String toString() {
    return "$count";
  }
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}

final class CounterIncrementState extends CounterState {
  const CounterIncrementState(super.count);
}

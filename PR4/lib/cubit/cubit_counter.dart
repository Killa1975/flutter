import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class CounterState{
  final int value;
  CounterState({
    this.value = 0
  });
}

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterState());

  void increment([int valueplus=1]){
    final value = state.value + valueplus;
    final updateState = CounterState(value: value);
    emit(updateState);
  }

  void decrement([int valueminus=1]){
    final value = state.value - valueminus;
    final updateState = CounterState(value: value);
    emit(updateState);
  }
}

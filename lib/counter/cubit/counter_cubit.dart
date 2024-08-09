import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages a state containing an [int] and a [Color].
/// {@endtemplate}
class CounterCubit extends Cubit<Map<int, Color>> {
  /// {@macro counter_cubit}
  CounterCubit() : super({0: Colors.red});

  /// Add 1 to the current state.
  void increment() {
    final newState = state.keys.first + 1;
    emit({newState: _getColor(newState)});
  }

  /// Subtract 1 from the current state.
  void decrement() {
    final newState = state.keys.first - 1;
    emit({newState: _getColor(newState)});
  }

  /// Returns a color based on whether the number is even or odd.
  Color _getColor(int number) {
    return number % 2 == 0 ? Colors.red : Colors.blue;
  }
}

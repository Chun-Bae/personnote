import 'package:flutter/material.dart';
import 'package:personnote/models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  Counter _counter = Counter();

  int get counter => _counter.value;

  void increment() {
    _counter.value++;
    notifyListeners();
  }

  void decrement() {
    _counter.value--;
    notifyListeners();
  }
}

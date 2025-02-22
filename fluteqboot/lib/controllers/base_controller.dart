import 'package:flutter/widgets.dart';

abstract class Controller<T> with ChangeNotifier {
  Controller({required T initState}) : _state = initState;

  T _state;
  T get state => _state;

  void emit(T newState) {
    _state = newState;
    notifyListeners();
  }
}
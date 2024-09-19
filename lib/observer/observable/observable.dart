import 'package:reactive_flutter/observer/observable/observer.dart';

abstract class Observable<T> {
  void addObservers(Observer<T> addObserver) {}

  void removeObservers(Observer<T> removeObserver) {}

  void notifyObservers(T newValue) {}
}

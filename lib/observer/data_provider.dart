import 'package:reactive_flutter/observer/observable/observer.dart';

import 'observable/observable.dart';

class DataProvider implements Observable<int> {
  static final DataProvider _instance = DataProvider._internal();

  factory DataProvider() {
    return _instance;
  }

  DataProvider._internal();

  final List<Observer> _observerList = [];
  int _count = 0;

  void changeCount() {
    _count++;
    notifyObservers(_count);
  }

  @override
  void addObservers(Observer<int> addObserver) {
    _observerList.add(addObserver);
  }

  @override
  void notifyObservers(int newValue) {
    for (var observer in _observerList) {
      observer.notifyChange(newValue);
    }
  }

  @override
  void removeObservers(Observer<int> removeObserver) {
    _observerList.remove(removeObserver);
  }
}

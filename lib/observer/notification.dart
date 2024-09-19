import 'package:flutter/material.dart';
import 'package:reactive_flutter/observer/data_provider.dart';
import 'package:reactive_flutter/widget/cart_notification.dart';

import 'observable/observer.dart';

class NotificationOne extends StatefulWidget {
  const NotificationOne({super.key});

  @override
  State<NotificationOne> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationOne> implements Observer<int> {
  final DataProvider _dataProvider = DataProvider();
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return CartNotification(count: itemCount);
  }

  @override
  void initState() {
    _dataProvider.addObservers(this);
    super.initState();
  }

  @override
  void dispose() {
    _dataProvider.removeObservers(this);
    super.dispose();
  }

  @override
  void notifyChange(newValue) {
    setState(() {
      itemCount = newValue;
    });
  }
}

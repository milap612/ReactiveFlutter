import 'package:flutter/material.dart';
import 'package:reactive_flutter/observer/data_provider.dart';
import 'package:reactive_flutter/observer/notification.dart';
import 'package:reactive_flutter/observer/observer_grid.dart';

class ObserverPage extends StatelessWidget {
  const ObserverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = DataProvider();
    return Scaffold(
      appBar: AppBar(
        actions: const [
          NotificationOne(),
        ],
      ),
      body: ObserverGrid(
        onTap: () {
          dataProvider.changeCount();
        },
      ),
    );
  }
}

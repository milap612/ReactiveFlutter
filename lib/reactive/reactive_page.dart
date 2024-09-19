import 'package:flutter/material.dart';
import 'package:reactive_flutter/widget/cart_notification.dart';

import 'cart_provider.dart';
import 'product_grid.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          StreamBuilder<int>(
              stream: cartBloc.itemCount,
              initialData: 0,
              builder: (_, snapData) {
                return CartNotification(count: snapData.data!);
              })
        ],
      ),
      body: const ProductGrid(),
    );
  }
}

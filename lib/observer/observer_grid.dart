import 'package:flutter/material.dart';

import '../products.dart';
import '../widget/product_square.dart';

class ObserverGrid extends StatelessWidget {
  const ObserverGrid({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: products
          .map((product) => ProductSquare(
                product: product,
                onTap: onTap,
              ))
          .toList(),
    );
  }
}

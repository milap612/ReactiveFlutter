import 'package:flutter/material.dart';

import '../products.dart';
import 'cart_provider.dart';
import '../widget/product_square.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = CartProvider.of(context);
    return GridView.count(
      crossAxisCount: 2,
      children: products
          .map((product) => ProductSquare(
                product: product,
                onTap: () {
                  cartBloc.addition.add(product);
                },
              ))
          .toList(),
    );
  }
}

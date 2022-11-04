import 'package:flutter/material.dart';
import 'package:shopping_cart/view/cart_total.dart';

import '../widgets/cart_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CartProduct(),
          CartTotal(),
        ],
      ),
    );
  }
}

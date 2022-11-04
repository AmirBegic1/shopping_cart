import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/view/cart_screen.dart';

import '../widgets/catalog_products.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CatalogProdutcs(),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const CartScreen());
                },
                child: const Text("Go to Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

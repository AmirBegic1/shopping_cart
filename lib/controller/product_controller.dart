import 'package:get/get.dart';
import 'package:shopping_cart/firebase/firebase_db.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}

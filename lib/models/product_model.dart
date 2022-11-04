// varijable name, price, imageUrl.

import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product(
      {required this.name, required this.price, required this.imageUrl});

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      price: snap['price'],
      imageUrl: snap['imageUrl'],
    );
    return product;
  }

  // static const List<Product> products = [
  //   Product(
  //       name: 'Apple',
  //       price: '2.99',
  //       imageUrl:
  //           'https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-1727544364.jpg'),
  //   Product(
  //       name: 'Orange',
  //       price: '2.99',
  //       imageUrl:
  //           'https://media.istockphoto.com/photos/orange-picture-id185284489?k=20&m=185284489&s=612x612&w=0&h=LLY2os0YTG2uAzpBKpQZOAC4DGiXBt1jJrltErTJTKI='),
  //   Product(
  //       name: 'Pear',
  //       price: '2.99',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/pears-isolated-on-white-background-260nw-104754677.jpg'),
  // ];
}

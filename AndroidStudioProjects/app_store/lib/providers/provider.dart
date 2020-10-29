import 'package:flutter/material.dart';
import 'package:ios_store/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _item = [
    Product(
      id: 'image1',
      appName: 'GitHub GUI',
      companyName: 'GitHub',
      mainImage: 'assets/github_app.png',
      logoImage: 'assets/github_logo.jpg',
      price: '\$ 2.99',
    ),
    Product(
      id: 'image2',
      appName: 'Nike Run App',
      companyName: 'Nike',
      mainImage: 'assets/nike_app.jpg',
      logoImage: 'assets/nike_logo.png',
      price: 'Free',
    ),
    Product(
      id: 'image3',
      appName: 'Puzzle',
      companyName: 'Wilmot\'s Warehouse',
      mainImage: 'assets/puzzle_app.jpg',
      logoImage: 'assets/puzzle_logo.jpg',
      price: '\$ 4.99',
    ),
    Product(
      id: 'image4',
      appName: 'Viber',
      companyName: 'Rakuten Viber',
      mainImage: 'assets/viber_app.jpg',
      logoImage: 'assets/viber_logo.png',
      price: '\$ 1.99',
    ),
  ];

  List<Product> get item {
    return [..._item];
  }

  Product findById(String id) {
    return _item.firstWhere((product) => product.id == id);
  }
}

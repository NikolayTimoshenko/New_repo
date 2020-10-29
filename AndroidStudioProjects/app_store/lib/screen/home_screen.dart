import 'package:app_store_transition/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ProductsGrid(),
      ),
    );
  }
}

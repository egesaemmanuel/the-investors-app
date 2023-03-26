import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: const Text(
            'Products page',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

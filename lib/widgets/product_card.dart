import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  //product that will be displayed in the card
  final Product product;
  //action to be performed when the add to cart button is pressed
  final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: IconButton(
          onPressed: onAddToCart,
          icon: const Icon(Icons.add_shopping_cart),
        ),
        title: Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(product.weight),
        trailing: Text(
          '€${product.price}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

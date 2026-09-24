import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../data/products.dart';
import '../models/product.dart';
import '../widgets/most_purchased_section.dart';
import '../widgets/category_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //create am empty cart
  final List<Product> cart = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spice App'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MostPurchasedSection(),
          const SizedBox(height: 20),
          const CategorySection(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Our Products',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  onAddToCart: () {
                    cart.add(products[index]);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${products[index].name} added to cart'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

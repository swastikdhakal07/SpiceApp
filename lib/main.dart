import 'package:flutter/material.dart';

void main() {
  runApp(const SpiceApp());
}

class SpiceApp extends StatelessWidget {
  const SpiceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spice App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Test data
    final products = [
      {'name': 'Turmeric Powder', 'weight': '500 g', 'price': 3.99},
      {'name': 'Cumin Powder', 'weight': '250 g', 'price': 3.99},
      {'name': 'Coriander Powder', 'weight': '250 g', 'price': 3.99},
      {'name': 'Chili Powder', 'weight': '250 g', 'price': 3.99},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spice App')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            //creats a card with a margin of 8 pixels on all sides for demo
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              //placeholder Icon as product image
              leading: const Icon(Icons.shopping_bag),
              //Name of the product in bold
              title: Text(
                products[index]['name'].toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(products[index]['weight'].toString()),
              trailing: Text(
                '€${products[index]['price']}',
                //Price of the product in bold
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}

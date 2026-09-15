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
    final products = [
      'Turmeric Powder',
      'Cumin Powder',
      'Coriander Powder',
      'Chili Powder',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spice App')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(products[index]));
        },
      ),
    );
  }
}

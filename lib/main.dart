import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SpiceApp());
}

class SpiceApp extends StatelessWidget {
  const SpiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spice App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

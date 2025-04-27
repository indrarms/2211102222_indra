import 'package:flutter/material.dart'; // Import material.dart
import 'package:provider/provider.dart'; // Import provider.dart
import 'models/cart_model.dart'; // Import cart_model.dart
import 'screens/home_screen.dart'; // Import home_screen.dart

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(), // Inisialisasi Provider
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'indrarms', // Set title
      theme: ThemeData(primarySwatch: Colors.blue), // Set theme
      home: HomeScreen(), // Set home screen
    );
  }
}

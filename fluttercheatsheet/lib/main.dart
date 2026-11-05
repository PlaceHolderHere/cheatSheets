import 'package:flutter/material.dart';
import 'pages/1.home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  // Format: Color(0x[Alpha][HexCode])
  static const customColorOrange = Color(0xFFFF5733); // Example of a custom color

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: const HomePage(),
    );
  }
}
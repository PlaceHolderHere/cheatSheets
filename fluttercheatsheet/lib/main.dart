import 'package:flutter/material.dart';
import 'pages/1.home.dart';
import 'package:google_fonts/google_fonts.dart';

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
      
      // === ThemeData === //
      theme: ThemeData(
        // === Colors === //
        brightness: Brightness.light, // Light or Dark theme
        scaffoldBackgroundColor: Colors.grey[200], // Background color for Scaffold
        primaryColor: Colors.green[900], // Primary color for the app

        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.poppins(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.inter(),
          displaySmall: GoogleFonts.inter(),
        ),


      ),

      home: const HomePage(),
    );
  }
}
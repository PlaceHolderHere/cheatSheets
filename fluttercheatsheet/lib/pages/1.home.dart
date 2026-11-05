import 'package:flutter/material.dart';
import '2.colors.dart';
import '3.images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text("1. Home")
          ),
          backgroundColor: Colors.green[900], // Example of built in colors
        ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Page One
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColorsPage()),
                );
              },
              child: const Text('Go to 2.Colors'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Page Two
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImagesPage()),
                );
              },
              child: const Text('Go to 3.Images'),
            ),
          ],
        ),
      ),
    );
  }
}
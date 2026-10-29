import 'package:flutter/material.dart';

void main() {
  // Format: Color(0x[Alpha][HexCode])
  const customColorOrange = Color(0xFFFF5733); // Example of a custom color

  runApp( // Starts the app
    MaterialApp( // App named MaterialApp
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("App Bar")
          ),
          backgroundColor: Colors.green[900], // Example of built in colors
        ),
        body: Center(
          child: Column(
            children:[
              Text("This is the body"),

              // === COLORS === //
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Colors.green), // Built in Colors for Buttons
                  ),
                  child: const Text("Built in Color"),
                  onPressed: (){}
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(customColorOrange), // Custom color for Button
                  ),
                  child: const Text("Custom Color"),
                  onPressed: (){}
              ),

              // === IMAGES === //
              Image(
                image: AssetImage('images/dog.jpg'), // Image from assets
              )
            ]
          )
        ),
      )
    )
  );
}
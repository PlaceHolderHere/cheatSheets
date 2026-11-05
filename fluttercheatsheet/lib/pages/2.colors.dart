import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget{
  const ColorsPage({super.key});

  // Format: Color(0x[Alpha][HexCode])
  static const customColorOrange = Color(0xFFFF5733); // Example of a custom color

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("2. Colors")
          ),
          backgroundColor: Colors.green[900], // Example of built in colors
        ),
        body: Center(
          child: Column(
            children:[
              ElevatedButton(
                onPressed: () {
                  // Go back to the previous page
                  Navigator.pop(context);
                },
                child: const Text('Back to Home'),
              ),

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
            ]
          )
        ),
      )
    );
  }
}
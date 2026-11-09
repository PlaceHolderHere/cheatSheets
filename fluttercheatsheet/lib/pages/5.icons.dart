import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget{
  const IconsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Icons Page")
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

              // === Icons === //
              // Just an Icon //
              Icon(
                Icons.home,
              ),

              // Optional Color Parameter //
              Icon(
                Icons.home,
                color: Colors.green[900], // Example of using an optional color 
              ),

              // Optional Size Parameter //
              Icon(
                Icons.home,
                size: 50.0, // Example of using an optional size
              ),

              // Example //
              Icon(
                Icons.home,
                color: Colors.green[900], // Example of using an optional color 
                size: 50.0, // Example of using an optional size
              )
            ]
          )
        ),
      )
    );
  }
}
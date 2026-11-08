import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget{
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Padding Page")
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
              Container(
                color: Colors.blue,
                width: 500,
                height: 500,

                // === Padding === //
                // Adds padding to a parent widget, just like container, but only padding
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    color: Colors.orange,
                    width: 100, 
                    height: 100,
                    child: const Text("Container with Padding"),
                  ),
                ),
              )
            ]
          )
        ),
      )
    );
  }
}
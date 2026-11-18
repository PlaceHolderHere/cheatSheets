import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget{
  const SizedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("SizedBox Page")
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

              // === SizedBox === //
              // Similar to a container, but only contains height and width attributes 
              // makes it cheaper than a container if you only need those attributes
              SizedBox(
                width: 300,
                height: 200,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text("SizedBox Example"),
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
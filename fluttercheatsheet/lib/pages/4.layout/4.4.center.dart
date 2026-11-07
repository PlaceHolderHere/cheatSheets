import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget{
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Center Page")
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
                width: 400,
                height: 400,
                color: Colors.blue,
                // === Center === //
                // Centers a child widget within its parent
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Hello"
                    )
                  )
                ),
              )
            ]
          )
        ),
      )
    );
  }
}
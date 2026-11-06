import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget{
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Container Page")
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
              
              // === Container === //
              // Bascically a box you can put components inside
              Container(
                width: 300, // double.infinity = full parent width
                height: 300, // double.infinity = full parent height
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration( // Styling
                  borderRadius: BorderRadius.circular(25), // Rounded corners
                  color: Colors.red,
                ),
                child: const Text("This is a container"),
              ),
            ]
          )
        ),
      )
    );
  }
}
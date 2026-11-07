import 'package:flutter/material.dart';

class StackPage extends StatelessWidget{
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Stack Page")
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
              
              // === Stack === //
              // Allows you to stack/place components on top of each other
              Stack(
                alignment: Alignment.topRight, // Aligns the children within the stack
                children: [
                  Image.network("https://picsum.photos/250?image=9"),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ]                
              ),
            ]
          )
        ),
      )
    );
  }
}
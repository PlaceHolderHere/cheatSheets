import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget{
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Wrap Page")
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
              
              // === 7. Wrap === //
              // Automatically moves/wraps content or widgets within it to the next line when they overflow beyond the screen
              Wrap(
                children: [
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 200,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                ]
              )
            ]
          )
        ),
      )
    );
  }
}
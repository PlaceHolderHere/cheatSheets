import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget{
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        // === Drawer === //
        // a hideable sidebar that can be accessed by clicking on the hamburger menu
        drawer: Drawer(
          child: Column(
            children: [
              // === Drawer Header === //
              // a header for the drawer
              const DrawerHeader(
                child: Text('Drawer Header'),
              ),
              
              // === Drawer Items === //
              ListTile(
                title: const Text('Item 1'),
              ),
              ListTile(
                title: const Text('Item 2'),
              ),
            ],
          ),
        ),

        appBar: AppBar(
          title: Center(
            child: Text("Drawer Page")
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
              
            ]
          )
        ),
      )
    );
  }
}
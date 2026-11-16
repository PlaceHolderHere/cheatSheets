import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget{
  const SafeAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(  

        // === SafeArea === //
        // restricts widgets to stay within the "safe area" so that it doesnt overlap with system UI like the camera notch, navigation bar, etc.
        drawer: SafeArea(
          child: Drawer(
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
        ),

        appBar: AppBar(
          title: Center(
            child: Text("SafeArea Page")
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
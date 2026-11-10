import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget{
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("List Tile Page")
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


              // === ListTile === //
              // tile that takes up the entire width the parent
              ListTile(
                title: Text("Sample List Tile 1"),
              ),

              // Other Optional Attributes for ListTile //
              ListTile(
                tileColor: Colors.orange, // Background color
                leading: Icon(Icons.home), // Optional Icon
                trailing: Text("Subtitle"), // Optional, additional text
                onTap: (){ // Optional Function when list tile is clicked
                  print("List Tile 2 tapped");
                },
                title: Text("Sample List Tile 2"),
              ),
            ]
          )
        ),
      )
    );
  }
}
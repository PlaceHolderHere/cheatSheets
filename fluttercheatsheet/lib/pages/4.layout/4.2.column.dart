import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget{
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Column Page")
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
              
              // === Column === //
              // Allows you to stack/arrange components in a vertical order
              // By Default, takes up as little space as possible
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Aligns vertically within the column
                crossAxisAlignment: CrossAxisAlignment.center, // Aligns horizontally column
                children: [
                  Container(
                    width: 100, // double.infinity = full parent width
                    height: 100, // double.infinity = full parent height
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(25),
                    decoration: BoxDecoration( // Styling
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                      color: Colors.red,
                    ),
                    child: const Text("Container 1"),
                  ),
                  
                  Container(
                    width: 100, // double.infinity = full parent width
                    height: 100, // double.infinity = full parent height
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration( // Styling
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                      color: Colors.red,
                    ),
                    child: const Text("Container 2"),
                  ),

                  Container(
                    width: 100, // double.infinity = full parent width
                    height: 100, // double.infinity = full parent height
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration( // Styling
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                      color: Colors.red,
                    ),
                    child: const Text("Container 3"),
                  ),
                ],
              ),
            ]
          )
        ),
      )
    );
  }
}
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
              
              Container(
                height: 500,
                color: Colors.blue,
                
                // === Column === //
                // Allows you to stack/arrange components in a vertical order
                // By Default, takes up as little space as possible
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Aligns vertically within the column
                  crossAxisAlignment: CrossAxisAlignment.center, // Aligns horizontally column
                  children: [
                    Container(
                        width: 100, 
                        height: 100,
                        color: Colors.orange,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        child: const Text("Container 1"),
                      ),
                
                      Container(
                        width: 100, 
                        height: 100,
                        color: Colors.orange,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        child: const Text("Container 2"),
                      ),
                
                      Container(
                        width: 100, 
                        height: 100,
                        color: Colors.orange,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        child: const Text("Container 3"),
                      ),
                  ],
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}
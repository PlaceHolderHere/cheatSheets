import 'package:flutter/material.dart';
import 'package:fluttercheatsheet/12.widgets/12.1.custom-stateful-widget.dart';

class CustomStatefulWidgetPage extends StatelessWidget{
  const CustomStatefulWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("CustomStatefulWidgetPage Bar Page")
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

        // == Using the 12.1.Custom stateful widget == //
        bottomNavigationBar: NavbarWidget(),
      )
    );
  }
}
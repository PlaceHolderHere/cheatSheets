import 'package:flutter/material.dart';

void main() {
  runApp( // Starts the app
    MaterialApp( // App named MaterialApp
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("App Bar")
          )
        ),
        body: Center(
          child: Text("This is the body")
        ),
      )
    )
  );
}
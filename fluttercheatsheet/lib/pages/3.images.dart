import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget{
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("3. Images")
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

              // === IMAGES === //
              // Network Image - Images you can load from the internet, to your app
              Image.network("https://picsum.photos/250?image=9"),

              // Local Image
              Image(
                image: AssetImage('images/dog.jpg'), // Image from assets
              )
            ]
          )
        ),
      );
  }
}
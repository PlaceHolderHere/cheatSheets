import 'package:flutter/material.dart';

class StatefulPage extends StatelessWidget{
  const StatefulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulWidgetPage();
  }
}

// === STATEFUL WIDGETS === //
// Widgets that allow you to refresh the page when their state changes
class StatefulWidgetPage extends StatefulWidget{
  const StatefulWidgetPage({super.key});

  @override
  State <StatefulWidgetPage> createState() => _StatefulWidgetPage();
}

class _StatefulWidgetPage extends State<StatefulWidgetPage>{
  int counter = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Stateful Page")
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
              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Text('Increase Counter'),
              ),
              
              Text(counter.toString()),
            ]
          )
        ),
      );
  }
}
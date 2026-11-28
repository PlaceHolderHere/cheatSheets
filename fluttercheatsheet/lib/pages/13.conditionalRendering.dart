import 'package:flutter/material.dart';

class ConditionalPage extends StatelessWidget{
  const ConditionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulWidgetPage();
  }
}

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
          backgroundColor: Colors.green[900],
        ),
        body: Center(
          child: Column(
            children:[
              ElevatedButton(
                onPressed: () {
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

              // ==============================================================================================
              // === CONDITIONAL RENDERING === //
              // Decide whether or not certain components are rendered based on conditions

              // == IF STATEMENTS == //
              if (counter > 4)
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                  child: Text("The counter is greater than 4") 
                ),

              // == TERNARY OPERATORS == //
              // Similar to if-else
              // SYNTAX: ([condition]) ? [value when true] : [value when false]
              (counter > 6) ?
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Text("The counter is greater than 6") 
                ) :
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text("The counter is less than or equal to 6") 
                ),

              // == MULTIPLE WIDGETS == //
              // Conditionally render a list of widgets using the spread operator (...)
              if (counter % 2 == 0) ...[
                Text("This list displays if the counter is even"),
                Text("This list displays if the counter is even"),
                Text("This list displays if the counter is even"),
                Text("This list displays if the counter is even")
              ],
              // ==============================================================================================
            ]
          )
        ),
      );
  }
}
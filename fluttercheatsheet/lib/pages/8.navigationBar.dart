import 'package:flutter/material.dart';

class NavigationBarPage extends StatelessWidget{
  const NavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      
      // Widgets are stored here in the "Widget Tree"
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Navigation Bar Page")
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

        bottomNavigationBar: NavigationBar(
          // === NavigationDestinations === // 
          // List of destinations that show up as buttons in the navbar
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],

          selectedIndex: 1, // Index of which destination is currently selected
          
          // Runs a function when a destination is selected
          onDestinationSelected: (int index) {
            // Handle destination selection
            print('Selected destination index: $index');
          },
        )
      )
    );
  }
}
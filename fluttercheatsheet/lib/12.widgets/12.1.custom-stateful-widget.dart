// === Creating a custom widget === //
// Creating a custom, stateful widget allows you to update only the widget when the state changes, rather than the entire scaffold

import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget{
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget>{
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "home"),
        NavigationDestination(icon: Icon(Icons.person), label: "profile")
      ],
      onDestinationSelected: (int value) {
        setState(() {
          selectedIndex = value;
        });
      },
      selectedIndex: selectedIndex,
    );
  }


}
import 'package:flutter/material.dart';

class NavigationBarPage extends StatefulWidget {
  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {

  int _selectedIndex = 0;

  static List<Widget> _pageOptions = <Widget>[
    Text('Index 0: Home'),
    Text('Index 1: Messages'),
    Text('Index 2: Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Bottom Navigation Bar')),
      body: Center(child: _pageOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.mail)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),
        ],  
        currentIndex: _selectedIndex, 
        onTap: _onItemTapped,
      ),     
    );     // Scaffold  									 
  }                                               
}
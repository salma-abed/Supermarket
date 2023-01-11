import 'package:flutter/material.dart';

class NavigationBarPage extends StatefulWidget {
  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {

  int _selectedIndex = 0;

  static List<Widget> _pageOptions = <Widget>[
    Text('Index 0: DashBoard'),
    Text('Index 1: Past-Orders'),
    Text('Index 2: Account'),
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

          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Dashboard')),

          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), title: Text('Messages')),

          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Settings')),

        ],  

        currentIndex: _selectedIndex,   // this will be set when a new tab is tapped  

        onTap: _onItemTapped, // new function callback on tab selection  

      ),   // This trailing comma makes auto-formatting nicer for build methods.  

    );     // Scaffold  
    												// end of the class Navigation bar page state  
  }                                               // end of the class navigation bar page stateful widget  
}